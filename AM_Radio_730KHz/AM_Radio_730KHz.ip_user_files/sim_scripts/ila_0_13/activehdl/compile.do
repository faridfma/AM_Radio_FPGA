vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../../../../FPGA/FIR_SysGen/SysGenIP/ip/ila_0_13/hdl/verilog" \
"C:/Vivadonew2018/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Vivadonew2018/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../../../FPGA/FIR_SysGen/SysGenIP/ip/ila_0_13/sim/ila_0.vhd" \


vlog -work xil_defaultlib \
"glbl.v"

