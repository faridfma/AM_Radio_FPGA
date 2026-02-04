library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.numeric_std.all;

Library UNISIM;
use UNISIM.vcomponents.all;

 
entity AM_Radio_730_KHz_TopLevel is
  port (
    clk_p         : in  STD_LOGIC;
    clk_n         : in  STD_LOGIC;
    clk15MHz_out  : Out std_logic;
    reset         : in  STD_LOGIC; 
    
    ADC_Data_In   : in std_logic_vector(7 downto 0); 
       
    Dac_Out       : out std_logic_vector(11 downto 0); 
    ChipSeclect_n : out STD_LOGIC; 
    WriteEnable   : out STD_LOGIC
  );
end AM_Radio_730_KHz_TopLevel;

architecture behavioral of AM_Radio_730_KHz_TopLevel is

signal clk200MHz                : std_logic; 
signal clk400MHz                : std_logic;  
signal clk15MHz                 : std_logic;
signal clk                      : std_logic := '0';
signal clk_aux                  : std_logic := '0';
signal clk20MHz                 : std_logic := '0';

signal ADC_Data_Out_IntSig     : std_logic_vector(7 downto 0) := (others => '0');
signal ADC_Data_Out_Vector     : std_logic_vector(7 downto 0); 
 
signal locked_Sig               : std_logic;
signal DDS0_tvalid_out          : std_logic;
signal CarrierFrequency         : std_logic_vector(15 downto 0); 
signal CarrierFrequency_dly     : std_logic_vector(15 downto 0);

signal DDS1_tvalid_out          : std_logic; 
signal MultAdd_In_valid         : std_logic; 
signal MessageTone_Signal       : std_logic_vector(15 downto 0); 
signal MessageCarrierMultiplied : std_logic_vector(31 downto 0); 

signal MessageCarrierMultipliedScaled  : std_logic_vector(15 downto 0);
signal AM_ModulatedSignal              : std_logic_vector(15 downto 0);
signal CarrierFrequencyWithOffset      : std_logic_vector(15 downto 0);

signal counter1                         : integer range 0 to 1 := 0;     -- counter for decimation

signal AM_ModulatedSignal_Decimated    : std_logic_vector(11 downto 0); -- decimated output
signal sample_valid                    : std_logic := '0';              -- output valid signal

signal AM_ModulatedSignalScaled    : std_logic_vector(11 downto 0); 
signal AM_ModulatedSig_WithOffset  : std_logic_vector(15 downto 0); 

signal Dac_Out_Sig :  std_logic_vector(11 downto 0);
signal ChipSeclect_n_sig :  std_logic := '0';
signal DACSample_Sig :  std_logic := '0';
signal WriteEnable_IntSig    : std_logic:= '0';

-- State machine state
signal state : integer := 0;


signal adc_sync1 :std_logic_vector( 7 downto 0); 
signal adc_sync2 :std_logic_vector( 7 downto 0); 
signal adc_sync3 :std_logic_vector( 7 downto 0); 

signal clk_and_CE : std_logic_vector(1 downto 0):="00";
signal MixerClkEnable_ILA : std_logic_vector(0 downto 0):= "0"; 
    
--DEMODULATION 
signal DDS2_data_tvalid           : std_logic:= '0';
signal DD2_CarrierFrequency       : std_logic_vector( 15 downto 0); 
signal AM_Sig_Carrier_Multiplied  : std_logic_vector( 23 downto 0);
signal FIR_Valid_in               : std_logic:= '0';
signal FIR_Valid_in_Sig           : std_logic:= '0';


signal FIR_data_tready            : std_logic:= '0';
signal FIR_data_tvalid            : std_logic:= '0';
signal FIR_Data_in                : STD_LOGIC_VECTOR(23 DOWNTO 0);
signal FIR_Data_in_Sig            : STD_LOGIC_VECTOR(23 DOWNTO 0);
signal DemodulatedSignal          : STD_LOGIC_VECTOR(47 DOWNTO 0); 
signal DemodulatedSignalScaleDown : std_logic_vector(14 downto 0);
 
signal ADC_Data_tvalid            : std_logic:= '0';
signal DDS_Data_tvalid            : std_logic:= '0';
signal Multiplier_Data_Out_Valid  : std_logic; 

signal ADC_Data_Out_IntSig_16Bits       : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal CarrierFrequency_32Bits          : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal AM_Sig_Carrier_Multiplied_48Bits : STD_LOGIC_VECTOR(47 DOWNTO 0);

signal MixerClk       : std_logic:= '0';
signal MixerState     : integer := 0;
--variable MixerCounter : integer range 0 to 6 := 0; 
signal MixerClkEnable  : std_logic:= '0';

signal clk15MHz_Dly   : std_logic:= '0';
signal CarrierFrequency_sync1  :std_logic_vector(15 downto 0); 
signal CarrierFrequency_sync2  :std_logic_vector(15 downto 0); 

signal slow_d1, slow_d2,slow_d3, slow_mid : std_logic := '0';
signal pulse_4clk      : std_logic := '0';
signal cnt             : integer range 0 to 4 := 0;
signal fir_valid_sync1, fir_valid_sync2 : std_logic;

signal fir_valid_d     : std_logic;
signal fir_valid_200   : std_logic;
signal stretch_cnt     : integer range 0 to 1 := 0;
signal BitVal : unsigned(0 downto 0):= (others => '0');
signal slow_pulse : std_logic;
       
component clk_wiz_0
port
 (
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;

  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;


--this is for the carrier frequency 730KHz that needs to be multiplied by the 
--message signal 
COMPONENT dds_compiler_0
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mult_gen_0
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    CE : IN STD_LOGIC;
    P : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;


-- this Multiplier is used for demodulation: fc= 10KHz
COMPONENT fir_compiler_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END COMPONENT;

COMPONENT ADC1173_DSP 
port(
   Clk                     : in std_logic; 
   reset                   : in std_logic; 
   ADC_Data_In             : in std_logic_vector(7 downto 0); 
   ADC_Data_In_out         : out std_logic_vector(7 downto 0)   
); 
end component; 

--COMPONENT ila_0
--PORT (
--	clk    : IN STD_LOGIC;
--   probe0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
----	probe1 : IN STD_LOGIC_VECTOR(14 DOWNTO 0) 
------	probe2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
------	probe3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
------	probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--);
--END COMPONENT;
 

begin

-- Instantiate the differential clock buffer
ibufds_inst : IBUFDS
   port map (
    I  => clk_p,
    IB => clk_n,
    O  => clk_aux --125MHz
);


-- Global Clock Buffer
clk_buf : BUFG port map (
    I => clk_aux,
    O => clk
);


Clk_Wizard: clk_wiz_0
   port map (  
   clk_out1 => clk200MHz,
   clk_out2 => clk15MHz,        
   locked => locked_Sig,
   clk_in1 => clk
 );
    
--this is for the carrier frequency 730KHz that needs to be multiplied by the 
--message signal 
DDS_0 : dds_compiler_0
  PORT MAP (
    aclk => clk15MHz,
    m_axis_data_tvalid => DDS0_tvalid_out,
    m_axis_data_tdata => CarrierFrequency
  ); 
 
 ADC1173: ADC1173_DSP   
PORT MAP(
    Clk                     => clk15MHz, 
    reset                   => reset, 
    ADC_Data_In             => ADC_Data_In, 
    ADC_Data_In_out         => ADC_Data_Out_IntSig
   ); 
   
   clk15MHz_out    <= clk15MHz;
   ADC_Data_Out_Vector<= ADC_Data_Out_IntSig;
   

Demodulation : mult_gen_0
  PORT MAP (
    CLK => clk200MHz,  
    A => CarrierFrequency_sync2, --CarrierFrequency_sync2, --CarrierFrequency_sync1,
    B => adc_sync2,   --adc_sync1, 
    CE => MixerClkEnable, 
    P => AM_Sig_Carrier_Multiplied
  );
--------------------------------

process(clk15MHz, reset)
begin
  if reset = '1' then
    slow_pulse <= '0';
  elsif rising_edge(clk15MHz) then
    slow_pulse <= NOT slow_pulse ;   -- one 15 MHz cycle pulse
  end if;
end process;



----------------------------------
process(clk200MHz,reset)

begin
  if(reset='1') then
     slow_d1 <= '0'; 
     slow_d2 <= '0'; 
     
     adc_sync1 <="00000000";
     adc_sync2 <="00000000";
     
    CarrierFrequency_sync1 <="0000000000000000";
    CarrierFrequency_sync2 <="0000000000000000";

   elsif rising_edge(clk200MHz) then
     -- Synchronize slow clock
     slow_d1 <= slow_pulse; --clk15MHz;
     slow_d2 <= slow_d1;
     slow_d3 <= slow_d2;
     
    --synchronize ADC Data 
    adc_sync1 <= ADC_Data_Out_IntSig;
    adc_sync2 <= adc_sync1;
    
    adc_sync3 <= adc_sync2;
    
    CarrierFrequency_sync1 <= CarrierFrequency; 
    CarrierFrequency_sync2 <=  CarrierFrequency_sync1;

        -- Detect rising edge of slow clock
    --if (slow_d1 = '1' and slow_d2 = '0') then
    if (slow_d2 = '1' and slow_d3 = '0') then
            cnt <= 4;   -- load 4 fast cycles
        elsif cnt > 0 then
            cnt <= cnt - 1;
        end if;

        -- Stretch pulse
        if cnt > 0 then
            MixerClkEnable <= '1';
        else
            MixerClkEnable <= '0';
        end if;

    end if;
end process;

--process(clk200MHz, reset)
--begin
--  if reset = '1' then
--    slow_d1 <= '0';
--    slow_mid <= '0';
--    slow_d2 <= '0';
--    cnt <= 0;
--    MixerClkEnable <= '0';

--  elsif rising_edge(clk200MHz) then

--    -- Synchronize slow clock (first stage)
--    slow_d1 <= clk15MHz;

--    -- Force LUT delay to fix hold time
--    slow_mid <= slow_d1 xor '0';

--    -- Second sync stage
--    slow_d2 <= slow_mid;

--    -- Detect rising edge of slow clock
--    if (slow_mid = '1' and slow_d2 = '0') then
--      cnt <= 4;   -- load 4 fast cycles
--    elsif cnt > 0 then
--      cnt <= cnt - 1;
--    end if;

--    -- Stretch pulse
--    if cnt > 0 then
--      MixerClkEnable <= '1';
--    else
--      MixerClkEnable <= '0';
--    end if;

--  end if;
--end process;


--MyILA : ila_0
--PORT MAP (
--	clk => clk200MHz,
--	probe0 => Dac_Out_Sig --(FIR_data_tready(0)&FIR_data_tvalid(0)),  --AM_Sig_Carrier_Multiplied,  --DemodulatedSignal --AM_Sig_Carrier_Multiplied --DemodulatedSignal --ADC_Data_Out_IntSig
----    probe0(0) => FIR_data_tready, 
----    probe0(1) => FIR_data_tvalid, 
----    probe1 => DemodulatedSignalScaleDown
------    probe1(0) => clk15MHz,
------    probe2 => CarrierFrequency_sync,  
------    probe3 => adc_sync1, 
------    probe4(0) => MixerClkEnable
--);

----------------------------------------------------------------
--This Process implements a state machine that write to the DAC
-- AD5445
----------------------------------------------------------------
process(clk200MHz,reset)
 variable scaled : signed(11 downto 0):= (others => '0');
begin
  if(reset='1') then
  
    ChipSeclect_n_sig  <= '1';  
    WriteEnable_IntSig  <= '1'; 
    Dac_Out_Sig <="000000000000"; 
    
--    adc_sync1 <="00000000";
--    adc_sync2 <="00000000";
    CarrierFrequencyWithOffset <="0000000000000000"; 
    
    state <= 0; 
    
  elsif(rising_edge(clk200MHz)) then
  
--    --synchronize ADC Data 
--    adc_sync1 <= ADC_Data_Out_IntSig;
--    adc_sync2 <= adc_sync1;
    
--    CarrierFrequency_sync1 <= CarrierFrequency; 
--    CarrierFrequency_sync2 <=  CarrierFrequency_sync1;
    
    case state is
       when 0 =>
        if (FIR_data_tvalid = '1' AND FIR_data_tready ='1')  then
          ChipSeclect_n_sig  <= '0'; 
          WriteEnable_IntSig   <='0';
          
          -- Arithmetic shift right by 33 bits, keep sign
          scaled := resize(shift_right(signed(DemodulatedSignal), 33), 12); 
          
          state <= 1; 
        end if; 
           
       when 1 =>
       
         -- --convert 16 bits signed to 12 bit unsigned. 
         Dac_Out_Sig<= std_logic_vector(unsigned(scaled + to_signed(2048, 12))); 
  
         state <= 2;
           
      when 2 =>
     
        ChipSeclect_n_sig <= '1'; 
        WriteEnable_IntSig <='0';
        state <= 0;
      
     when others =>
        state <= 0;
        
    end case; 
    
 end if; 
end process;


ChipSeclect_n<= ChipSeclect_n_sig;
WriteEnable    <= WriteEnable_IntSig; 


Dac_Out <= Dac_Out_Sig;


FIR_10KHz : fir_compiler_0
  PORT MAP (
    aclk => clk200MHz,
    s_axis_data_tvalid => fir_valid_200, --FIR_Valid_in,
    s_axis_data_tready =>FIR_data_tready,
    s_axis_data_tdata => FIR_Data_in, --AM_Sig_Carrier_Multiplied, --FIR_Data_in, 
    m_axis_data_tvalid =>FIR_data_tvalid,
    m_axis_data_tdata => DemodulatedSignal
  );
 
 
 --DemodulatedSignal comes from the FIR: it is signed 
 DemodulatedSignalScaleDown <=
 std_logic_vector(resize(shift_right(signed(DemodulatedSignal),33),15));



process(clk15MHz,reset)
    variable cnt : integer range 0 to 5 := 0;
begin
    if reset = '1' then
        cnt := 0;
        FIR_Data_in  <= (others => '0');
        FIR_Valid_in <= '0';

        FIR_Valid_in_Sig  <= '0'; 
        FIR_Data_in_Sig <= (others => '0');
        
    elsif rising_edge(clk15MHz) then
        if cnt = 4 then
         cnt := 0;
         FIR_Data_in_Sig <=AM_Sig_Carrier_Multiplied; 
         FIR_Data_in<= FIR_Data_in_Sig; 
         
         --FIR_Valid_in <='1'; 
         FIR_Valid_in_Sig <='1'; 
         FIR_Valid_in <= FIR_Valid_in_Sig; 
        else
         cnt := cnt + 1;
         FIR_Valid_in <='0'; 
        end if; 
     end if;   
end process; 
  
-- 200 MHz domain: CDC synchronizer
process(clk200MHz, reset)
begin
    if reset = '1' then
        fir_valid_sync1 <= '0';
        fir_valid_sync2 <= '0';
        fir_valid_d     <= '0';
        fir_valid_200   <= '0';
        stretch_cnt     <= 0;
    elsif rising_edge(clk200MHz) then
        -- 2-stage synchronizer for FIR_Valid_in
        fir_valid_sync1 <= FIR_Valid_in;
        fir_valid_sync2 <= fir_valid_sync1;

        -- delay register for edge detect
        fir_valid_d <= fir_valid_sync2;

        -- default output
        fir_valid_200 <= '0';

        -- detect rising edge
        if (fir_valid_sync2 = '1' and fir_valid_d = '0') then
            fir_valid_200 <= '1';
        end if; 
    end if;
end process;


 
end behavioral; 
