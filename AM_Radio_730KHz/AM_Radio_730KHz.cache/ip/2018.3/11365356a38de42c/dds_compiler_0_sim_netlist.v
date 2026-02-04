// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jan 30 10:37:02 2026
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
  wire [25:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [25:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [25:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "26" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "1100011101010110101100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[25:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[25:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[25:0]),
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

(* C_ACCUMULATOR_WIDTH = "26" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
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
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "1100011101010110101100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  output [25:0]debug_axi_pinc_in;
  output [25:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [25:0]debug_phase;
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
  wire [25:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [25:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [25:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
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
  (* C_ACCUMULATOR_WIDTH = "26" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "1100011101010110101100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[25:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[25:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[25:0]),
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
oS2a+G8u4uNvuZGd9z1mmMva2s0JAkmPJgJBBHACZO0UCu9v7Zoxb5B+1CnfadWHd3Um20s2C6NO
3z7ZBytxX0Et3xJnH9xLTdTQSn4gX9+E/HNgpVk3NXZQUwLF4IE7UCN+IryNtDlWclzLCOhw0AGN
bCWmqucJuhabC+jlIcEkUCh57WPsJWUpAwfrQbDDb6wBGfgnJzWIyo3rpcvWBcrj02hFS9Au9z+5
o8EJ76nbwIOvnuZ3WIFVoAyuiE6spDgMaOZAnwij5OnICWNCwE9P/E9y5I2BKKPsgFKzaj+WXZk9
o3K/w41ocrx7iFZ7dV/gsh2iB5IVQ6+0OucJ9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JPxqZ381TgKTgtf5iYyGRALwPACHCoJVMaNc1/q+AWPn/qNZUU3MykfGIBd+X453Vmi2+MX6HJXh
qIwAXGDcSKzUCRMaq+dT+vKkoiMpuVBgrClPGaAhX08vHRnreQvj8MqzySrZmBPOc2tX7WUCtEO5
b5vp064Wi+bNzBPnS/1/a3hWFEcS7O4HjORu7JM7R21A5bWNXXuvI/Z/lCY8DZI3nnzHV/F5hT8q
e6c1SW1wh0tiTVG4RYZBxsM9Km1MWgZotV6Nc5l43ljcRLrmhqXuvU7bJ9YVcvBctEL2J4bCOzR4
xbWcMro81h8L2bqoD5dKfefctlHlqSqOZxqxkw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34832)
`pragma protect data_block
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
gI+DWV0=
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
