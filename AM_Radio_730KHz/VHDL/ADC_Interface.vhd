library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ADC1173_DSP is
port(
    Clk                     : in std_logic; 
    reset                   : in std_logic; 
    ADC_Data_In             : in std_logic_vector(7 downto 0); 
    ADC_Data_In_out         : out std_logic_vector(7 downto 0)  
   ); 
   
end ADC1173_DSP;

architecture Behavioral of ADC1173_DSP is


signal sample_counter          : integer range 0 to 4; 
signal ADC_Data_In_Sig         : signed(15 downto 0); 
signal ADC_Data_In_Sig_Dly1         : signed(15 downto 0); 
signal ADC_Data_In_Sig_Dly2         : signed(15 downto 0);
signal ADC_Data_In_Sig_Dly3         : signed(15 downto 0);


signal ADC_Data_In_sync1 : std_logic_vector(7 downto 0);  -- Synchronizer stage 1
signal ADC_Data_In_sync2 : std_logic_vector(7 downto 0);  -- Synchronizer stage 2
signal ADC_Data_In_sync3 : std_logic_vector(7 downto 0);  -- Synchronizer stage 2

begin

process(Clk,reset)

variable scaled_value : integer :=0; 
begin

if(reset = '1') then
  sample_counter <= 0;
  ADC_Data_In_Sig <= (others => '0');  -- Initialize to zero on reset
  
  ADC_Data_In_sync1 <= (others => '0');
  ADC_Data_In_sync2 <= (others => '0');
  ADC_Data_In_sync3 <= (others => '0');

elsif(rising_edge(Clk)) then

     -- Two-stage synchronizer to deal with metastability
     ADC_Data_In_sync1 <= ADC_Data_In;
     ADC_Data_In_sync2 <= ADC_Data_In_sync1;
--     ADC_Data_In_sync3 <= ADC_Data_In_sync2;
   
 end if;
end process; 

--ADC_Data_In_out <= ADC_Data_In_Sig_Dly3; 
ADC_Data_In_out <= ADC_Data_In_sync2;  


end Behavioral;