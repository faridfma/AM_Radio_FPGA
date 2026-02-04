## Clock signal
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVDS_25} [get_ports clk_p]
set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVDS_25} [get_ports clk_n]
create_clock -add -name sys_clk_pin -period 8 [get_nets clk];

#Reset
set_property -dict {PACKAGE_PIN AE14 IOSTANDARD LVCMOS33} [get_ports reset]


## On board silk screen 'PL LEDs' 'LED0' 'DS38'
#set_property -dict { PACKAGE_PIN AG14 IOSTANDARD LVCMOS33 } [get_ports LED_out1];
#set_property -dict { PACKAGE_PIN AF13 IOSTANDARD LVCMOS33 } [get_ports LED_out2];
set_property -dict {PACKAGE_PIN AE13 IOSTANDARD LVCMOS33} [get_ports LED_out3]

#
#ADC
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[0]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[1]}]
set_property -dict {PACKAGE_PIN A22 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[2]}]
set_property -dict {PACKAGE_PIN E20 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[3]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[4]}]
set_property -dict {PACKAGE_PIN C21 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[5]}]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[6]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {ADC_Data_In[7]}]

set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {Dac_Out[5]}]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS33} [get_ports {Dac_Out[7]}]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS33} [get_ports {Dac_Out[9]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {Dac_Out[11]}]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports ChipSeclect_n]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports WriteEnable]

#15MHz
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS33} [get_ports  clk15MHz_out]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets  clk15MHz_out]


set_property PACKAGE_PIN AM14 [get_ports {Dac_Out[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[10]}]
set_property PACKAGE_PIN AN12 [get_ports {Dac_Out[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[8]}]
set_property PACKAGE_PIN AN13 [get_ports {Dac_Out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[6]}]
set_property PACKAGE_PIN AP12 [get_ports {Dac_Out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[4]}]
set_property PACKAGE_PIN AP14 [get_ports {Dac_Out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[3]}]
set_property PACKAGE_PIN AL13 [get_ports {Dac_Out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[2]}]
set_property PACKAGE_PIN AN14 [get_ports {Dac_Out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[1]}]
set_property PACKAGE_PIN AK13 [get_ports {Dac_Out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Dac_Out[0]}]


