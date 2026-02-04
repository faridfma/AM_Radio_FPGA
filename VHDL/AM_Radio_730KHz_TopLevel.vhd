library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.numeric_std.all;





Library UNISIM;
use UNISIM.vcomponents.all;

 
entity AM_DeModulator_TopLevel is
  port (
    clk_p         : in  STD_LOGIC;
    clk_n         : in  STD_LOGIC;
    reset         : in STD_LOGIC; 
    
    Dac_Out       : out std_logic_vector(11 downto 0); 
    ChipSeclect_n : out STD_LOGIC; 
    WriteEnable   : out STD_LOGIC
  );
end AM_DeModulator_TopLevel;

architecture behavioral of AM_DeModulator_TopLevel is

signal clk200MHz                : std_logic; 
signal clk400MHz                : std_logic;           
signal locked_Sig               : std_logic;
signal DDS0_tvalid_out          : std_logic;
signal CarrierFrequency         : std_logic_vector(15 downto 0); 
signal CarrierFrequency_dly     : std_logic_vector(15 downto 0);

signal DDS1_tvalid_out          : std_logic; 
signal MultAdd_In_valid         : std_logic; 
signal MessageTone_Signal       : std_logic_vector(15 downto 0); 
signal MessageCarrierMultiplied : std_logic_vector(31 downto 0); 

signal MessageCarrierMultipliedScaled  : std_logic_vector(15 downto 0);
signal AM_ModulatedSignal       : std_logic_vector(16 downto 0);


signal CarrierFrequency_dly1 : std_logic_vector(15 downto 0);
signal CarrierFrequency_dly2 : std_logic_vector(15 downto 0);
signal CarrierFrequency_dly3 : std_logic_vector(15 downto 0);
signal CarrierFrequency_dly4 : std_logic_vector(15 downto 0);

signal counter1                         : integer range 0 to 1 := 0;     -- counter for decimation

signal AM_ModulatedSignal_Decimated    : std_logic_vector(11 downto 0); -- decimated output
signal sample_valid                    : std_logic := '0';              -- output valid signal

signal clk                : std_logic := '0';
signal clk_aux            : std_logic := '0';
signal clk20MHz           : std_logic := '0';

signal AM_ModulatedSignalScaled    : std_logic_vector(11 downto 0); 
signal AM_ModulatedSig_WithOffset  : std_logic_vector(16 downto 0); 

signal Dac_Out_Sig :  std_logic_vector(11 downto 0);
signal cs_hold_cnt : integer range 0 to 2 := 0;
signal temp :std_logic_vector( 0 downto 0); 
signal ChipSeclect_n_sig :  std_logic := '0';
signal DACSample_Sig :  std_logic := '0';
signal WriteEnable_IntSig    : std_logic:= '0';

-- State machine state
signal state : integer := 0;


--DEMODULATION 
signal DDS2_data_tvalid           : std_logic:= '0';
signal DD2_CarrierFrequency       : std_logic_vector( 15 downto 0); 
signal AM_Sig_Carrier_Multiplied  : std_logic_vector( 32 downto 0);
signal FIR_Valid_in               : std_logic:= '0';
signal FIR_data_tready            : std_logic:= '0';
signal FIR_data_tvalid            : std_logic:= '0';
signal FIR_Data_in                : STD_LOGIC_VECTOR(39 DOWNTO 0);
signal DemodulatedSignal          : STD_LOGIC_VECTOR(55 DOWNTO 0); 
signal DemodulatedSignalScaleDown : std_logic_vector(18 downto 0);
 



component clk_wiz_0
port
 (
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;
  clk_out3          : out    std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;


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
    B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

COMPONENT dds_compiler_1
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

 -- this DDS is used for demodulation
COMPONENT dds_compiler_2
  PORT (
    aclk : IN STD_LOGIC;
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT; 

 -- this Multiplier is used for demodulation
COMPONENT mult_gen_1
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(32 DOWNTO 0)
  );
END COMPONENT;

-- this Multiplier is used for demodulation: fc= 10KHz
COMPONENT fir_compiler_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(55 DOWNTO 0)
  );
END COMPONENT;

 -- this adder is used for modulation
COMPONENT c_addsub_0
  PORT (
    A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    CLK : IN STD_LOGIC;
    S : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

--COMPONENT ila_0
--PORT (
--	clk : IN STD_LOGIC;
--	probe0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
--	probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
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
   clk_out2 => clk400MHz, 
   clk_out3 => clk20MHz,          
   locked => locked_Sig,
   clk_in1 => clk
 );
    

DDS_0 : dds_compiler_0
  PORT MAP (
    aclk => clk200MHz,
    m_axis_data_tvalid => DDS0_tvalid_out,
    m_axis_data_tdata => CarrierFrequency
  ); 
 
 DDS1 : dds_compiler_1
 PORT MAP (   
    aclk => clk200MHz,
    m_axis_data_tvalid => DDS1_tvalid_out,
    m_axis_data_tdata => MessageTone_Signal
  );
 

Multiplier : mult_gen_0
  PORT MAP (
    CLK => clk200MHz,  
    A => CarrierFrequency,
    B => MessageTone_Signal,
    P => MessageCarrierMultiplied
  );


--scale to 16 bits after multiplication
MessageCarrierMultipliedScaled <=MessageCarrierMultiplied(31 downto 16); 

 ----------------------------------------------------------------------
 -- This process is used to synchronize Muliplication and addition 
 -- operation: it takes 4 clock cycles to complete one multiplication
 -----------------------------------------------------------------------  
DELAY_PROC: process(clk200MHz)
begin
  if rising_edge(clk200MHz) then
    if reset = '1' then
      CarrierFrequency_dly1 <= (others => '0');
      CarrierFrequency_dly2 <= (others => '0');
      CarrierFrequency_dly3 <= (others => '0');
      CarrierFrequency_dly4 <= (others => '0');
    else
      CarrierFrequency_dly1 <= CarrierFrequency;
      CarrierFrequency_dly2 <= CarrierFrequency_dly1; 
      CarrierFrequency_dly3 <= CarrierFrequency_dly2;  
      CarrierFrequency_dly4 <= CarrierFrequency_dly3;
    end if;
  end if;
end process;

-- add 16 bits signed to 16 bits signed: sum is 17 bits signed
ADDSUB : c_addsub_0
  PORT MAP (
    A => CarrierFrequency_dly4,
    B => MessageCarrierMultipliedScaled,
    CLK => clk200MHz,
    S => AM_ModulatedSignal
  );

-------------------------------------------------------------------------------
---- This process is used to decimate the modulated AM frequency so that it can 
---- be sent to the DAC: AD5445 at 20MHz frequency 
-------------------------------------------------------------------------------

--process(clk200MHz)
--begin
--    if rising_edge(clk200MHz) then
--        if reset = '1' then
--            AM_ModulatedSig_WithOffset <= (others => '0');   
--            AM_ModulatedSignalScaled <= (others => '0'); 
--        else
--            -- Offset + scaling
--            AM_ModulatedSig_WithOffset <= AM_ModulatedSignal ; --+ "10000000000000000";
--            AM_ModulatedSignalScaled   <= AM_ModulatedSig_WithOffset(16 downto 5);
--            end if;
--       end if;
--    --end if;
--end process;


--AM_ModulatedSig_WithOffset <= AM_ModulatedSignal + "10000000000000000"; -- add 2^17 offset: 65,536
--AM_ModulatedSignalScaled <= AM_ModulatedSig_WithOffset( 16 downto 5); --scale downto 12 bits


--MyILA : ila_0
--PORT MAP (
--	clk => clk200MHz,
--	probe0 =>  Dac_Out_Sig,
--	probe1 => temp
--);

----------------------------------------------------------------
--This Process generates a pulse used to load data into DAC
-- AD5445: data is loaded at 10 MHz rate to the DAC
----------------------------------------------------------------

process(clk20MHz,reset)

begin
  if(reset='1') then
      DACSample_Sig <= '0'; 
  elsif(rising_edge(clk20MHz)) then
        DACSample_Sig <= NOT DACSample_Sig; 
  end if;
end process;

----------------------------------------------------------------
--This Process implements a state machine that write to the DAC
-- AD5445
----------------------------------------------------------------
process(clk200MHz,reset)

begin
  if(reset='1') then
  
    ChipSeclect_n_sig  <= '1';  
    WriteEnable_IntSig  <= '1'; 
    Dac_Out_Sig <="000000000000"; 
    state <= 0; 
    
  elsif(rising_edge(clk200MHz)) then
  
    case state is
       when 0 =>
        if (DACSample_Sig = '1')  then
          ChipSeclect_n_sig  <= '0'; 
          WriteEnable_IntSig   <='0';
          state <= 1; 
        end if; 
          
       --convert 16 bits signed to 12 bit unsigned.  
       when 1 =>
        --Dac_Out_Sig <= AM_ModulatedSignalScaled;
         Dac_Out_Sig <= DemodulatedSignalScaleDown(11 downto 0);
        
        state <= 2;
        
     when 2 =>
     
     if (DACSample_Sig = '0')  then
        ChipSeclect_n_sig <= '1'; 
        WriteEnable_IntSig <='0';
        state <= 0;
      end if; 
      
     when others =>
        state <= 0;
        
    end case; 
    
 end if; 
end process;


ChipSeclect_n<= ChipSeclect_n_sig;
WriteEnable    <= WriteEnable_IntSig; 

temp(0) <=ChipSeclect_n_sig; 
Dac_Out <= Dac_Out_Sig;


-----------------------------------------------------------------------
--AM DEMODULATION: take AM_ModulatedSignal and mulilpied it with 
-- Carrier frequency. I use a DDS to generate this frequency and use a 
-- multiplier. 
----------------------------------------------------------------------
DD2_INSt : dds_compiler_2
  PORT MAP (
    aclk => clk200MHz,
    m_axis_data_tvalid => DDS2_data_tvalid,
    m_axis_data_tdata => DD2_CarrierFrequency
  );
  
Demod_Multi : mult_gen_1
  PORT MAP (
    CLK => clk200MHz,
    A => AM_ModulatedSignal,
    B => DD2_CarrierFrequency,
    P => AM_Sig_Carrier_Multiplied
  );

FIR_10KHz : fir_compiler_0
  PORT MAP (
    aclk => clk200MHz,
    s_axis_data_tvalid =>FIR_Valid_in,
    s_axis_data_tready =>FIR_data_tready,
    s_axis_data_tdata => FIR_Data_in, 
    m_axis_data_tvalid =>FIR_data_tvalid,
    m_axis_data_tdata => DemodulatedSignal
  );
 
 FIR_Data_in <= std_logic_vector(resize(signed(AM_Sig_Carrier_Multiplied), 40)); 
 
 -- this range is selected as per simulation inspection
 DemodulatedSignalScaleDown <= DemodulatedSignal(55 downto 37); 
 

----------------------------------------------------------------
--This Process generates 500 KHz clock to be used by FIR
--signal valid input.
----------------------------------------------------------------
process(clk200MHz,reset)
    variable cnt : integer range 0 to 199 := 0;
begin
    if reset = '1' then
        cnt           := 0;
        FIR_Valid_in <= '0';

    elsif rising_edge(clk200MHz) then
        if cnt = 199 then
            cnt := 0;
            FIR_Valid_in <= not FIR_Valid_in;  -- toggle every 1 µs
        else
            cnt := cnt + 1;
        end if;
    end if;
end process;






 
end behavioral; 
