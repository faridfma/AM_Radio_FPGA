-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Vivadonew2018/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Vivadonew2018/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../../FPGA/FIR_SysGen/SysGenIP/ip/clk_wiz_0_19/clk_wiz_0_clk_wiz.v" \
  "../../../../../../../FPGA/FIR_SysGen/SysGenIP/ip/clk_wiz_0_19/clk_wiz_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

