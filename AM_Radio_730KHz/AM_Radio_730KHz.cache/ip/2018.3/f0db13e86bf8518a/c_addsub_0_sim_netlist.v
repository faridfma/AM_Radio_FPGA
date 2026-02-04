// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  6 12:34:44 2026
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
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [16:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "17" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "17" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [16:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "17" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
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
Y67O4zxbh7HN7WPliYk+ac/3i1y58XWt/adZwEY1mhpB8+xOsmtvedjVk9cnpGWtOkrQGC4Ls2UI
LwIg2vpqhwEbYsaYgNAaCz91akuiw21rtcgqyZ7ej3g7ePuK6xMqBPSG8vjyp7oICgokOExsMFIW
MJtJ4pnX2f38qzAkDdqVlnBAEufTU0B6lvAZ7K7pZJwbFIoM91ViWBcOj7B3JcQR2UT5ybnoMCxQ
lJGF5iEM14LluDGoI36CcuXy/dqtfo/NrM5Pr45iuNLHWV97/8YRCWq1Crl9kQpeRPHU8h4dtt4s
mmi19ipVI6r02gr/U1/YrM9zpqYk7NefeDRJSQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hRMUTwm32y7nGjCo8nDyiynqnBWZU8KRLCbxa4SUrhjG745W+F046PMi4FpLxPL5RKj6YAF2Sxek
13CPgA/6P0SNV4VNiYGspuKya/N82JCAAnuF3zUD0VAtk9qpipgirw4Dne45DRbPzaGjNhjuYN5V
2JGaBpBEKKdbJlFXan8y6CFTt1ax7TeWybEFTYInjW8GNImh4rkXzqevChVT5wmm6By1Zx10peKn
1q7dDEsdd328+JyANyD4ow5xSr0DKMZ0dXsi+VD2Vm8J32iSBrCISrT/b16DhyOdQYwSIbUTiZif
GNJHFuOJlYP4H/T2pYBz/v67+1uxek+R/M3cVQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23888)
`pragma protect data_block
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
dsTzIak=
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
