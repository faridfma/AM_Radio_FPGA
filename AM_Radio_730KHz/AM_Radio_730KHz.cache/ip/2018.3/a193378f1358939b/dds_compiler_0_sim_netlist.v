// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jan 28 17:33:25 2026
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
  (* C_PHASE_INCREMENT_VALUE = "111011110011010011010,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "111011110011010011010,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "111011110011010011010,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
XxgrvuFnjvZ44THdetRKQe4RmNOgCZN2I1jHPBBuXkBWW41+9U2KeGNhOuwSBucIyx3q+pcu1kAq
oNWsvuN4JAeg9rusP2MUTQhukSNPAnAbMB4wkS+ksjUqPQR83iNj3RbspmoFvcCj2T92WZ5UMoUm
SeM4HLk36CwKn1mFAkZZTe2eAQDnV+UDs3S4jwiya6wD9zc30DIngjVGB5paoXNcD6YZQ3yNOqjT
j3wuZhB+KwWZs5uA7vppm+y+zKJMu1cACVbdsujaYOUgY2ash3ikgOPeHwklGlA0V5FBu1Fm8jcJ
EWcts5H/Asei1939s2ZOHQHdykMKF0e4twE4DA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KLWAafd/kb2X3AUL6oCSaY0P2OMk13mXLsA3UImQItc+9jX6JlZAytm87sy1ixjmimLgroiMMR0U
AGxiJYXFkgNN9sdOfUCdCS3ngEe3ZDWpp3+LMvaye8xaFYvbsfi7E2pJmY5FVvufj9Pp84iCfdMJ
iHQiQuhZ8kBiX5mLugQHgsIKhJg/hZ4VVRNOfaPMmuC+D+gFqTA16vWKnM25FfJufOTHweleCqAU
KBQALS6x/Pd3hXFZ6lg7TRP11AiHHJw9rUa3UvFRLyKgn3sVRrB4fXkLqebiA2bSkh4FAAC3bH0O
VGet7zzR3zuXiwf1K8HLyKQyf+IZKNnHRGpi/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36304)
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
