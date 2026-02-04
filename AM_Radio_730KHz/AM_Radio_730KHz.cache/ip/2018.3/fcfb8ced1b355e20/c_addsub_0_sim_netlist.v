// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  6 12:30:10 2026
// Host        : DVANOFFICE-071 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [14:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [14:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [14:0]S;

  wire [14:0]A;
  wire [14:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "15" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "15" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000" *) 
(* C_B_WIDTH = "15" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "15" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynquplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [14:0]A;
  input [14:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [14:0]S;

  wire \<const0> ;
  wire [14:0]A;
  wire [14:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "15" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pw1OpTwt+n3mpD+uThUSv/H9lW7TqgS5rwr7GRAlkIHb16vcfDfOwlWgmS5oWutXTIzMHuj8zZ64
XJ7MS/8sazt/pjiMrZAo/PvzQSWMgKZ1YE4Pd8pmdPAbOlLBfLxEy/QDz73SnymaFTqBLjg3t41E
4OPnTh0AJ0I89hKxfCTadXMd/Ykn3S70iv4q1XpjnEBWaagZN/WBR0Yai+sFo3+C5o8BeQhUyafU
5XkoNCXJZ2XdIVBHIZ5hQW4A7crN5y4ORDXgcZZi9qCd6SDkKZLdRU9EXqOirEQZZfHlnLhmZm9O
syrU6HWAfJSawaTxoJfaXL6bipo6Oy0PowQ5Ug==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zexdgIysLPZKVhU2+M4r43RbhodAo/FTZzJQBkYYZUnkPuS744+1ecbr1j9NwkolAvFk5bWT8aMt
hw99BYCrGduFPEEsJj9XYtBYK9uCoMUwNC5FKheIOOPoVu16eBMtHEHvnpexK85YRveOOw9kiF7J
i6ct78U5tZ903mufs1PJ4B/PiIXuF0DZWLmBgnVjZRNuN5osmgOTjVaUXzcqvQb5pzD5K+eqJB/L
QWBzLHVXA/Asm4Fp+6uAgUh0SHM9ZAj0VfE57YV/3ENoyYFslhhb5kBTtNNxbvjDgfaJgi6MHrG4
Vd05wsjzluUf9SspH9YTGd9YRKuK6QRSo2buRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12432)
`pragma protect data_block
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
fMHlQ8lk
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
