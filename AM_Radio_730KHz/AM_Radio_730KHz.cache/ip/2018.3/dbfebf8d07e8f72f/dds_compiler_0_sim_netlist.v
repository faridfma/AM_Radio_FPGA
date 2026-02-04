// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  6 12:42:26 2026
// Host        : DVANOFFICE-071 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [28:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [28:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [28:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "29" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "10000011000100100110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[28:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[28:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[28:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "29" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "16" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "10000011000100100110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "zynquplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [15:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [28:0]debug_axi_pinc_in;
  output [28:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [28:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [28:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [28:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [28:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[28] = \<const0> ;
  assign debug_axi_pinc_in[27] = \<const0> ;
  assign debug_axi_pinc_in[26] = \<const0> ;
  assign debug_axi_pinc_in[25] = \<const0> ;
  assign debug_axi_pinc_in[24] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[28] = \<const0> ;
  assign debug_axi_poff_in[27] = \<const0> ;
  assign debug_axi_poff_in[26] = \<const0> ;
  assign debug_axi_poff_in[25] = \<const0> ;
  assign debug_axi_poff_in[24] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[28] = \<const0> ;
  assign debug_phase[27] = \<const0> ;
  assign debug_phase[26] = \<const0> ;
  assign debug_phase[25] = \<const0> ;
  assign debug_phase[24] = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_missing = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "29" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "10000011000100100110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[28:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[28:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[28:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gl8oTb3yK39LjDQS0B4PYP+vte8cGiBpEmJ9JLxCkI04rBQJe5sCt4dvUGvg1Ga0GoPkN0BTvh6i
v1YMWuZiJg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LV5tnIhV6fXU4gAQOLXCxdxya9doivJt+Y+5yV24zJ1I56Mu4gOTYyKzdDBlwz49as5fPNOvHvtM
FEjflUU6R2Yh76tXBr2An7Tc7qdcv/WUX57JWpXSPQfxdtsoJzfNEA5lf9cFyHWa+eE27NH4fCIB
fHvZTqNYCqZpO8hMEWo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CtefK+dE5tJYyIkOlXrI1GU3HbXkaFgSREpPJj1NZdNualyVqOHiPJK5xJ71xxO6zkXYtBYfzkxn
9Eqf7SpqFizTSC3YZVNAp0ix3wloJ2xu9/08YGAzwYtrD72s/REOd9GdOS5BW5KfXcLDWxJnWFK3
mjj+cPJfHeoGuNLu6gH6HD/lNP6geaOelYYVD/TVk4P/j6qWfCikFKKuomVo3jbRD7F7QdkJDCeh
d5Xc8VxEXSaKIjFRuMTWZtjAQjFH5UpSMVhxV/fXhvzSM6V5P4QZA+memX692B8GYsTFU76iMlss
d7ocDlaRWbY0BTXFb2HZNfGcl+sqYKs8PYn/UA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UTuJ2/FiXz7w8k47LqoJjpB8chaAWEBjYpgn4jj1PBd2l6Nj6avA0We0iYNi5AJkwcUofxaNsFtE
+sVWsmGPk/0vN5Q90wbwbfGu18ni9SqWiSNRSUzzfB9h0bol599BuMG2pbcdYlanUIn9oPi4ZKeJ
2M667aoQ2BTcU/o1U8nn5wuoiboeNIqzcJS0jj+j6J5UYz5aHgwMcFlCGUwSQuAp+2VIulW4T1IV
NW+4iXCF7wife+1/XS6RYcYu+n4km8U2A8z/nLIuNXSO1T2HaR6rR3YxTorPEFUQnfrre1FxRLzT
6pi4dXPFPyG1bXISdn2AleLyNN3VFQjTEgHwsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMUkchj5p9XvgJ9tR5grSuP9aw5xa30l1YgNWO9WvtYYjYtQnsPBns5ryDL+PXPqQYQ3i0NvbEVZ
mN4H44H269BdOgH+vRRI3SR79goz8NqADp1QSv06wD02bUASlMq9aM6Phdxmqoalzn7A7dWDa+nU
2QokmpYQQylaKE1ZbXrz6loBY1IeoaMxbsQcvxJcI2aG1HO9NfyR9d5i3K9UmO1t9jFA+8k+GsKj
kNnLxX6I0J9fN8wKc7D007S9DgoQs6+WuCL6CudeG25OH6Gy/uLkY2Udzdpodegx89FgRLo92dDh
+0eWKh3H5TN2vtQ9mtD1iH6zm1l1IqnYy2G06A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
IjA88m1asiYMyCqMLSP/pVhA6mm9v8t5bFtEAMOvlQO8WTy5Vpca8kFPPuhuf6voqy+zwcLXRU9a
5UwLvCxgOEOo68GA3l4AR9WaPmcxPTPUwChO8zkHIDrS0eoDFMY1OTr1Lv8pbJknphtPExopREwk
KuHbtq4Mg3zw+se7q5E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZ0uDa4zhbQfoZoNpOAKrHOsOrOlSYjg5j1zWlifZ7mksZmmo1GUwbu4BrFKsE9nPAJUOa85AaS6
3sPqXGDLUL68TzDI06mN0/idhoIRBSJNinUfJpw4Ro9h/zNx1E//RfaHklSArW0rHrP6JnabQq/E
ywpKofyKtfWBjZrTJqD+xFD3BsXO9W35e9lAY/pTqzN6C7dC2o6xELYMw7a37e+7TEDqEPb1kk1i
VC/DX7v1veomIkT4wlTej+pa1pSQH6uN/huOhLuz4yEz/zZdnoDInKQyuWaZgdQV+2dfYBgbf+po
404pK0Ii/DBBTh6IKooZGzVmsyG/5MKNX6F9vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b/nE6VtxfHy0ASyM7T2hOi/TjwzZ5mn7rF3iWf7pPpC1jZbz5g6ekRfF3tEz5EkExUrjK47NBDDN
edixAnsOPZJyPVAfIBQegc4clVcSdE654hOxhthiv2rOCD8rsNxxtKJoZbOndEvUWaVxwpbaJXsN
t243ti0FL2PM6MslY3YmAO3s7xIiO97WCZBNuefP5UqzoNM0ufMXdo0wxJlvWySXukTHxxUx/YW/
AAEWPUSSbuiRIQgqvqoiMg87UObsu6DcS80Uo+/XQYJ3G6aexxDty+huZuIRigYEiH0Bus3/2PZ2
9TY/FJ+vgVRhO7Wj1cE5xddKJKEvBXYB4kjsjg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JXn1RxUfj8lDPIvw0ccFWvBWZ5CDgrvPUtuCxfZv/EFztM//UVaDV3X745KqaQSSouLs3m3pVYvk
+8qLv5qXt8fZBquX10G13qTkbucT+ZVsDoG5MInSCRtpt7CRD1MPsgspCLVQHCR6n6gE08YchESk
8/uAFWrigxzoxeZkNykbUBddEM2OgwebzQOCp+Hr33h4lEHXx5GjlaFHxqA7iAYETMRkB90x7JBh
tSaA+8VzKFZc1RGc7wa+npr419bfYmipxNWryhlq7EHQd1TUR/BWJcEfhMqw+xhqZv/CPGrIcAX7
n5vqr4ExwfZYRBYdVbKNRPaU8pZ1bdLctcgtAg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35376)
`pragma protect data_block
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
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
