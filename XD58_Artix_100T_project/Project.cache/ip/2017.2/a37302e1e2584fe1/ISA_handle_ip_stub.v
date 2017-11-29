// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Nov 18 15:20:51 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ISA_handle_ip_stub.v
// Design      : ISA_handle_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "isa_handle,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(reset, clk, pin_isa_cs, pin_isa_wr, pin_isa_rd, 
  pin_isa_adv, pin_isa_data, rreg_system_debug1, rreg_system_debug1_valid, 
  rreg_system_debug2, rreg_system_debug2_valid, rreg_system_debug3, 
  rreg_system_debug3_valid, rreg_system_debug4, rreg_system_debug4_valid, 
  rreg_system_status, rreg_system_status_valid, rreg_system_version, 
  rreg_system_version_valid, rreg_system_rtctime, rreg_system_rtctime_valid, 
  rreg_system_batteryvalue, rreg_system_batteryvalue_valid, rreg_system_syncstatus, 
  rreg_system_syncstatus_valid, rreg_system_syncfrq, rreg_system_syncfrq_valid, 
  rreg_mem_status, rreg_mem_status_valid, rreg_mem_data_wr_en, rreg_mem_data_wr_addr, 
  rreg_mem_data_wr_data, rreg_ddr_status, rreg_ddr_status_valid, rreg_ddr_data_wr_en, 
  rreg_ddr_data_wr_addr, rreg_ddr_data_wr_data, rreg_series_status, 
  rreg_series_status_valid, rreg_series_starttime, rreg_series_starttime_valid, 
  rreg_series_stoptime, rreg_series_stoptime_valid, rreg_series_maxdata, 
  rreg_series_maxdata_valid, rreg_series_data_wr_en, rreg_series_data_wr_addr, 
  rreg_series_data_wr_data, wreg_system_ctrl, wreg_system_ctrl_valid, 
  wreg_system_sel_rtc, wreg_system_sel_rtc_valid, wreg_system_set_rtctime, 
  wreg_system_set_rtctime_valid, wreg_system_sync_minfrq, 
  wreg_system_sync_minfrq_valid, wreg_system_sync_max, wreg_system_sync_max_valid, 
  wreg_system_sync_sel, wreg_system_sync_sel_valid, wreg_system_ch_sel, 
  wreg_system_ch_sel_valid, wreg_ddr_ctrl, wreg_ddr_ctrl_valid, wreg_ddr_addr, 
  wreg_ddr_addr_valid, wreg_ddr_len, wreg_ddr_len_valid, wreg_out_ctrl, 
  wreg_out_ctrl_valid, wreg_out_sel, wreg_out_sel_valid, wreg_out_time, 
  wreg_out_time_valid, wreg_out_level, wreg_out_level_valid, wreg_out_startmode, 
  wreg_out_startmode_valid, wreg_out_start_targettime, wreg_out_start_targettime_valid, 
  wreg_out_start_subtime, wreg_out_start_subtime_valid, wreg_out_start_subnum, 
  wreg_out_start_subnum_valid, wreg_out_start_subcycle, wreg_out_start_subcycle_valid, 
  wreg_out_start_trigmode1, wreg_out_start_trigmode1_valid, wreg_out_start_trigmode2, 
  wreg_out_start_trigmode2_valid, wreg_out_start_trigmode3, 
  wreg_out_start_trigmode3_valid, wreg_out_start_trigmode4, 
  wreg_out_start_trigmode4_valid, wreg_out_trig_threshold_p, 
  wreg_out_trig_threshold_p_valid, wreg_out_trig_threshold_n, 
  wreg_out_trig_threshold_n_valid, wreg_out_trig_risetime, 
  wreg_out_trig_risetime_valid, wreg_out_trig_droptime, wreg_out_trig_droptime_valid, 
  wreg_out_trig_pulsewidth, wreg_out_trig_pulsewidth_valid, wreg_out_trig_riseratio, 
  wreg_out_trig_riseratio_valid, wreg_out_trig_dropratio, 
  wreg_out_trig_dropratio_valid, wreg_out_trig_rmsvalue, wreg_out_trig_rmsvalue_valid, 
  wreg_mem_rd_en, wreg_mem_ctrl, wreg_mem_ctrl_valid, wreg_mem_addr, wreg_mem_addr_valid, 
  wreg_mem_len, wreg_mem_len_valid, wreg_mem_clr, wreg_mem_rd_data, wreg_mem_rd_len, 
  wreg_ch_zero_cal, wreg_ch_zero_cal_valid, wreg_ch_sample_rate, 
  wreg_ch_sample_rate_valid, wreg_ch_sign_handle, wreg_ch_sign_handle_valid, 
  wreg_ch_main_amp, wreg_ch_main_amp_valid, wreg_ch_pre_amp, wreg_ch_pre_amp_valid, 
  wreg_ch_v_amp, wreg_ch_v_amp_valid, wreg_ch_i_amp, wreg_ch_i_amp_valid, 
  wreg_ch_noise_comp, wreg_ch_noise_comp_valid, wreg_ch_noise_amp_cof, 
  wreg_ch_noise_amp_cof_valid, wreg_ch_noise_delay, wreg_ch_noise_delay_valid, 
  wreg_ch_start_targettime, wreg_ch_start_targettime_valid, wreg_ch_start_sustime, 
  wreg_ch_start_sustime_valid, wreg_ch_start_susnum, wreg_ch_start_susnum_valid, 
  wreg_ch_start_suscycle, wreg_ch_start_suscycle_valid, wreg_ch_stop_sustime, 
  wreg_ch_stop_sustime_valid, wreg_ch_stop_susnum, wreg_ch_stop_susnum_valid, 
  wreg_ch_stop_suscycle, wreg_ch_stop_suscycle_valid, wreg_ch_trig_threshold_p, 
  wreg_ch_trig_threshold_p_valid, wreg_ch_trig_threshold_n, 
  wreg_ch_trig_threshold_n_valid, wreg_ch_trig_risetime, wreg_ch_trig_risetime_valid, 
  wreg_ch_trig_droptime, wreg_ch_trig_droptime_valid, wreg_ch_trig_pulsewidth, 
  wreg_ch_trig_pulsewidth_valid, wreg_ch_trig_riseratio, wreg_ch_trig_riseratio_valid, 
  wreg_ch_trig_dropratio, wreg_ch_trig_dropratio_valid, wreg_ch_trig_rmsvalue, 
  wreg_ch_trig_rmsvalue_valid, wreg_ch_filter_rd_en, wreg_ch_filter_clr, 
  wreg_ch_filter_rd_data, wreg_ch_filter_rd_len, wreg_series_ctrl, 
  wreg_series_ctrl_valid, wreg_series_data_type, wreg_series_data_type_valid, 
  wreg_series_sample_cycle, wreg_series_sample_cycle_valid, wreg_series_comp_ratio, 
  wreg_series_comp_ratio_valid, wreg_series_comp_num, wreg_series_comp_num_valid, 
  wreg_series_validmode_data, wreg_series_validmode_data_valid, 
  wreg_series_start_ddraddr, wreg_series_start_ddraddr_valid, wreg_series_stop_ddraddr, 
  wreg_series_stop_ddraddr_valid, wreg_series_startmode, wreg_series_startmode_valid, 
  wreg_series_star_trigmode1, wreg_series_star_trigmode1_valid, 
  wreg_series_star_trigmode2, wreg_series_star_trigmode2_valid, 
  wreg_series_star_trigmode3, wreg_series_star_trigmode3_valid, 
  wreg_series_star_trigmode4, wreg_series_star_trigmode4_valid, wreg_series_stopmode, 
  wreg_series_stopmode_valid, wreg_series_stop_trigmode1, 
  wreg_series_stop_trigmode1_valid, wreg_series_stop_trigmode2, 
  wreg_series_stop_trigmode2_valid, wreg_series_stop_trigmode3, 
  wreg_series_stop_trigmode3_valid, wreg_series_stop_trigmode4, 
  wreg_series_stop_trigmode4_valid, wreg_series_seek_startime, 
  wreg_series_seek_startime_valid, wreg_series_seek_zoom, wreg_series_seek_zoom_valid, 
  wreg_series_seek_datalen, wreg_series_seek_datalen_valid)
/* synthesis syn_black_box black_box_pad_pin="reset,clk,pin_isa_cs,pin_isa_wr,pin_isa_rd,pin_isa_adv,pin_isa_data[7:0],rreg_system_debug1[7:0],rreg_system_debug1_valid,rreg_system_debug2[7:0],rreg_system_debug2_valid,rreg_system_debug3[7:0],rreg_system_debug3_valid,rreg_system_debug4[7:0],rreg_system_debug4_valid,rreg_system_status[7:0],rreg_system_status_valid,rreg_system_version[47:0],rreg_system_version_valid,rreg_system_rtctime[63:0],rreg_system_rtctime_valid,rreg_system_batteryvalue[15:0],rreg_system_batteryvalue_valid,rreg_system_syncstatus[7:0],rreg_system_syncstatus_valid,rreg_system_syncfrq[31:0],rreg_system_syncfrq_valid,rreg_mem_status[7:0],rreg_mem_status_valid,rreg_mem_data_wr_en,rreg_mem_data_wr_addr[15:0],rreg_mem_data_wr_data[7:0],rreg_ddr_status[7:0],rreg_ddr_status_valid,rreg_ddr_data_wr_en,rreg_ddr_data_wr_addr[15:0],rreg_ddr_data_wr_data[31:0],rreg_series_status[7:0],rreg_series_status_valid,rreg_series_starttime[63:0],rreg_series_starttime_valid,rreg_series_stoptime[63:0],rreg_series_stoptime_valid,rreg_series_maxdata[79:0],rreg_series_maxdata_valid,rreg_series_data_wr_en,rreg_series_data_wr_addr[15:0],rreg_series_data_wr_data[31:0],wreg_system_ctrl[7:0],wreg_system_ctrl_valid,wreg_system_sel_rtc[7:0],wreg_system_sel_rtc_valid,wreg_system_set_rtctime[63:0],wreg_system_set_rtctime_valid,wreg_system_sync_minfrq[15:0],wreg_system_sync_minfrq_valid,wreg_system_sync_max[15:0],wreg_system_sync_max_valid,wreg_system_sync_sel[7:0],wreg_system_sync_sel_valid,wreg_system_ch_sel[7:0],wreg_system_ch_sel_valid,wreg_ddr_ctrl[7:0],wreg_ddr_ctrl_valid,wreg_ddr_addr[31:0],wreg_ddr_addr_valid,wreg_ddr_len[31:0],wreg_ddr_len_valid,wreg_out_ctrl[7:0],wreg_out_ctrl_valid,wreg_out_sel[7:0],wreg_out_sel_valid,wreg_out_time[63:0],wreg_out_time_valid,wreg_out_level[7:0],wreg_out_level_valid,wreg_out_startmode[7:0],wreg_out_startmode_valid,wreg_out_start_targettime[63:0],wreg_out_start_targettime_valid,wreg_out_start_subtime[31:0],wreg_out_start_subtime_valid,wreg_out_start_subnum[31:0],wreg_out_start_subnum_valid,wreg_out_start_subcycle[7:0],wreg_out_start_subcycle_valid,wreg_out_start_trigmode1[31:0],wreg_out_start_trigmode1_valid,wreg_out_start_trigmode2[31:0],wreg_out_start_trigmode2_valid,wreg_out_start_trigmode3[31:0],wreg_out_start_trigmode3_valid,wreg_out_start_trigmode4[31:0],wreg_out_start_trigmode4_valid,wreg_out_trig_threshold_p[15:0],wreg_out_trig_threshold_p_valid,wreg_out_trig_threshold_n[15:0],wreg_out_trig_threshold_n_valid,wreg_out_trig_risetime[15:0],wreg_out_trig_risetime_valid,wreg_out_trig_droptime[15:0],wreg_out_trig_droptime_valid,wreg_out_trig_pulsewidth[15:0],wreg_out_trig_pulsewidth_valid,wreg_out_trig_riseratio[7:0],wreg_out_trig_riseratio_valid,wreg_out_trig_dropratio[7:0],wreg_out_trig_dropratio_valid,wreg_out_trig_rmsvalue[15:0],wreg_out_trig_rmsvalue_valid,wreg_mem_rd_en,wreg_mem_ctrl[7:0],wreg_mem_ctrl_valid,wreg_mem_addr[15:0],wreg_mem_addr_valid,wreg_mem_len[7:0],wreg_mem_len_valid,wreg_mem_clr,wreg_mem_rd_data[7:0],wreg_mem_rd_len[3:0],wreg_ch_zero_cal[15:0],wreg_ch_zero_cal_valid,wreg_ch_sample_rate[15:0],wreg_ch_sample_rate_valid,wreg_ch_sign_handle[7:0],wreg_ch_sign_handle_valid,wreg_ch_main_amp[7:0],wreg_ch_main_amp_valid,wreg_ch_pre_amp[7:0],wreg_ch_pre_amp_valid,wreg_ch_v_amp[7:0],wreg_ch_v_amp_valid,wreg_ch_i_amp[7:0],wreg_ch_i_amp_valid,wreg_ch_noise_comp[7:0],wreg_ch_noise_comp_valid,wreg_ch_noise_amp_cof[15:0],wreg_ch_noise_amp_cof_valid,wreg_ch_noise_delay[7:0],wreg_ch_noise_delay_valid,wreg_ch_start_targettime[63:0],wreg_ch_start_targettime_valid,wreg_ch_start_sustime[31:0],wreg_ch_start_sustime_valid,wreg_ch_start_susnum[31:0],wreg_ch_start_susnum_valid,wreg_ch_start_suscycle[7:0],wreg_ch_start_suscycle_valid,wreg_ch_stop_sustime[31:0],wreg_ch_stop_sustime_valid,wreg_ch_stop_susnum[31:0],wreg_ch_stop_susnum_valid,wreg_ch_stop_suscycle[7:0],wreg_ch_stop_suscycle_valid,wreg_ch_trig_threshold_p[15:0],wreg_ch_trig_threshold_p_valid,wreg_ch_trig_threshold_n[15:0],wreg_ch_trig_threshold_n_valid,wreg_ch_trig_risetime[15:0],wreg_ch_trig_risetime_valid,wreg_ch_trig_droptime[15:0],wreg_ch_trig_droptime_valid,wreg_ch_trig_pulsewidth[15:0],wreg_ch_trig_pulsewidth_valid,wreg_ch_trig_riseratio[7:0],wreg_ch_trig_riseratio_valid,wreg_ch_trig_dropratio[7:0],wreg_ch_trig_dropratio_valid,wreg_ch_trig_rmsvalue[15:0],wreg_ch_trig_rmsvalue_valid,wreg_ch_filter_rd_en,wreg_ch_filter_clr,wreg_ch_filter_rd_data[7:0],wreg_ch_filter_rd_len[3:0],wreg_series_ctrl[7:0],wreg_series_ctrl_valid,wreg_series_data_type[7:0],wreg_series_data_type_valid,wreg_series_sample_cycle[7:0],wreg_series_sample_cycle_valid,wreg_series_comp_ratio[31:0],wreg_series_comp_ratio_valid,wreg_series_comp_num[15:0],wreg_series_comp_num_valid,wreg_series_validmode_data[31:0],wreg_series_validmode_data_valid,wreg_series_start_ddraddr[31:0],wreg_series_start_ddraddr_valid,wreg_series_stop_ddraddr[31:0],wreg_series_stop_ddraddr_valid,wreg_series_startmode[7:0],wreg_series_startmode_valid,wreg_series_star_trigmode1[31:0],wreg_series_star_trigmode1_valid,wreg_series_star_trigmode2[31:0],wreg_series_star_trigmode2_valid,wreg_series_star_trigmode3[31:0],wreg_series_star_trigmode3_valid,wreg_series_star_trigmode4[31:0],wreg_series_star_trigmode4_valid,wreg_series_stopmode[7:0],wreg_series_stopmode_valid,wreg_series_stop_trigmode1[31:0],wreg_series_stop_trigmode1_valid,wreg_series_stop_trigmode2[31:0],wreg_series_stop_trigmode2_valid,wreg_series_stop_trigmode3[31:0],wreg_series_stop_trigmode3_valid,wreg_series_stop_trigmode4[31:0],wreg_series_stop_trigmode4_valid,wreg_series_seek_startime[63:0],wreg_series_seek_startime_valid,wreg_series_seek_zoom[31:0],wreg_series_seek_zoom_valid,wreg_series_seek_datalen[31:0],wreg_series_seek_datalen_valid" */;
  input reset;
  input clk;
  input pin_isa_cs;
  input pin_isa_wr;
  input pin_isa_rd;
  input pin_isa_adv;
  inout [7:0]pin_isa_data;
  input [7:0]rreg_system_debug1;
  input rreg_system_debug1_valid;
  input [7:0]rreg_system_debug2;
  input rreg_system_debug2_valid;
  input [7:0]rreg_system_debug3;
  input rreg_system_debug3_valid;
  input [7:0]rreg_system_debug4;
  input rreg_system_debug4_valid;
  input [7:0]rreg_system_status;
  input rreg_system_status_valid;
  input [47:0]rreg_system_version;
  input rreg_system_version_valid;
  input [63:0]rreg_system_rtctime;
  input rreg_system_rtctime_valid;
  input [15:0]rreg_system_batteryvalue;
  input rreg_system_batteryvalue_valid;
  input [7:0]rreg_system_syncstatus;
  input rreg_system_syncstatus_valid;
  input [31:0]rreg_system_syncfrq;
  input rreg_system_syncfrq_valid;
  input [7:0]rreg_mem_status;
  input rreg_mem_status_valid;
  input rreg_mem_data_wr_en;
  input [15:0]rreg_mem_data_wr_addr;
  input [7:0]rreg_mem_data_wr_data;
  input [7:0]rreg_ddr_status;
  input rreg_ddr_status_valid;
  input rreg_ddr_data_wr_en;
  input [15:0]rreg_ddr_data_wr_addr;
  input [31:0]rreg_ddr_data_wr_data;
  input [7:0]rreg_series_status;
  input rreg_series_status_valid;
  input [63:0]rreg_series_starttime;
  input rreg_series_starttime_valid;
  input [63:0]rreg_series_stoptime;
  input rreg_series_stoptime_valid;
  input [79:0]rreg_series_maxdata;
  input rreg_series_maxdata_valid;
  input rreg_series_data_wr_en;
  input [15:0]rreg_series_data_wr_addr;
  input [31:0]rreg_series_data_wr_data;
  output [7:0]wreg_system_ctrl;
  output wreg_system_ctrl_valid;
  output [7:0]wreg_system_sel_rtc;
  output wreg_system_sel_rtc_valid;
  output [63:0]wreg_system_set_rtctime;
  output wreg_system_set_rtctime_valid;
  output [15:0]wreg_system_sync_minfrq;
  output wreg_system_sync_minfrq_valid;
  output [15:0]wreg_system_sync_max;
  output wreg_system_sync_max_valid;
  output [7:0]wreg_system_sync_sel;
  output wreg_system_sync_sel_valid;
  output [7:0]wreg_system_ch_sel;
  output wreg_system_ch_sel_valid;
  output [7:0]wreg_ddr_ctrl;
  output wreg_ddr_ctrl_valid;
  output [31:0]wreg_ddr_addr;
  output wreg_ddr_addr_valid;
  output [31:0]wreg_ddr_len;
  output wreg_ddr_len_valid;
  output [7:0]wreg_out_ctrl;
  output wreg_out_ctrl_valid;
  output [7:0]wreg_out_sel;
  output wreg_out_sel_valid;
  output [63:0]wreg_out_time;
  output wreg_out_time_valid;
  output [7:0]wreg_out_level;
  output wreg_out_level_valid;
  output [7:0]wreg_out_startmode;
  output wreg_out_startmode_valid;
  output [63:0]wreg_out_start_targettime;
  output wreg_out_start_targettime_valid;
  output [31:0]wreg_out_start_subtime;
  output wreg_out_start_subtime_valid;
  output [31:0]wreg_out_start_subnum;
  output wreg_out_start_subnum_valid;
  output [7:0]wreg_out_start_subcycle;
  output wreg_out_start_subcycle_valid;
  output [31:0]wreg_out_start_trigmode1;
  output wreg_out_start_trigmode1_valid;
  output [31:0]wreg_out_start_trigmode2;
  output wreg_out_start_trigmode2_valid;
  output [31:0]wreg_out_start_trigmode3;
  output wreg_out_start_trigmode3_valid;
  output [31:0]wreg_out_start_trigmode4;
  output wreg_out_start_trigmode4_valid;
  output [15:0]wreg_out_trig_threshold_p;
  output wreg_out_trig_threshold_p_valid;
  output [15:0]wreg_out_trig_threshold_n;
  output wreg_out_trig_threshold_n_valid;
  output [15:0]wreg_out_trig_risetime;
  output wreg_out_trig_risetime_valid;
  output [15:0]wreg_out_trig_droptime;
  output wreg_out_trig_droptime_valid;
  output [15:0]wreg_out_trig_pulsewidth;
  output wreg_out_trig_pulsewidth_valid;
  output [7:0]wreg_out_trig_riseratio;
  output wreg_out_trig_riseratio_valid;
  output [7:0]wreg_out_trig_dropratio;
  output wreg_out_trig_dropratio_valid;
  output [15:0]wreg_out_trig_rmsvalue;
  output wreg_out_trig_rmsvalue_valid;
  input wreg_mem_rd_en;
  output [7:0]wreg_mem_ctrl;
  output wreg_mem_ctrl_valid;
  output [15:0]wreg_mem_addr;
  output wreg_mem_addr_valid;
  output [7:0]wreg_mem_len;
  output wreg_mem_len_valid;
  output wreg_mem_clr;
  output [7:0]wreg_mem_rd_data;
  output [3:0]wreg_mem_rd_len;
  output [15:0]wreg_ch_zero_cal;
  output wreg_ch_zero_cal_valid;
  output [15:0]wreg_ch_sample_rate;
  output wreg_ch_sample_rate_valid;
  output [7:0]wreg_ch_sign_handle;
  output wreg_ch_sign_handle_valid;
  output [7:0]wreg_ch_main_amp;
  output wreg_ch_main_amp_valid;
  output [7:0]wreg_ch_pre_amp;
  output wreg_ch_pre_amp_valid;
  output [7:0]wreg_ch_v_amp;
  output wreg_ch_v_amp_valid;
  output [7:0]wreg_ch_i_amp;
  output wreg_ch_i_amp_valid;
  output [7:0]wreg_ch_noise_comp;
  output wreg_ch_noise_comp_valid;
  output [15:0]wreg_ch_noise_amp_cof;
  output wreg_ch_noise_amp_cof_valid;
  output [7:0]wreg_ch_noise_delay;
  output wreg_ch_noise_delay_valid;
  output [63:0]wreg_ch_start_targettime;
  output wreg_ch_start_targettime_valid;
  output [31:0]wreg_ch_start_sustime;
  output wreg_ch_start_sustime_valid;
  output [31:0]wreg_ch_start_susnum;
  output wreg_ch_start_susnum_valid;
  output [7:0]wreg_ch_start_suscycle;
  output wreg_ch_start_suscycle_valid;
  output [31:0]wreg_ch_stop_sustime;
  output wreg_ch_stop_sustime_valid;
  output [31:0]wreg_ch_stop_susnum;
  output wreg_ch_stop_susnum_valid;
  output [7:0]wreg_ch_stop_suscycle;
  output wreg_ch_stop_suscycle_valid;
  output [15:0]wreg_ch_trig_threshold_p;
  output wreg_ch_trig_threshold_p_valid;
  output [15:0]wreg_ch_trig_threshold_n;
  output wreg_ch_trig_threshold_n_valid;
  output [15:0]wreg_ch_trig_risetime;
  output wreg_ch_trig_risetime_valid;
  output [15:0]wreg_ch_trig_droptime;
  output wreg_ch_trig_droptime_valid;
  output [15:0]wreg_ch_trig_pulsewidth;
  output wreg_ch_trig_pulsewidth_valid;
  output [7:0]wreg_ch_trig_riseratio;
  output wreg_ch_trig_riseratio_valid;
  output [7:0]wreg_ch_trig_dropratio;
  output wreg_ch_trig_dropratio_valid;
  output [15:0]wreg_ch_trig_rmsvalue;
  output wreg_ch_trig_rmsvalue_valid;
  input wreg_ch_filter_rd_en;
  output wreg_ch_filter_clr;
  output [7:0]wreg_ch_filter_rd_data;
  output [3:0]wreg_ch_filter_rd_len;
  output [7:0]wreg_series_ctrl;
  output wreg_series_ctrl_valid;
  output [7:0]wreg_series_data_type;
  output wreg_series_data_type_valid;
  output [7:0]wreg_series_sample_cycle;
  output wreg_series_sample_cycle_valid;
  output [31:0]wreg_series_comp_ratio;
  output wreg_series_comp_ratio_valid;
  output [15:0]wreg_series_comp_num;
  output wreg_series_comp_num_valid;
  output [31:0]wreg_series_validmode_data;
  output wreg_series_validmode_data_valid;
  output [31:0]wreg_series_start_ddraddr;
  output wreg_series_start_ddraddr_valid;
  output [31:0]wreg_series_stop_ddraddr;
  output wreg_series_stop_ddraddr_valid;
  output [7:0]wreg_series_startmode;
  output wreg_series_startmode_valid;
  output [31:0]wreg_series_star_trigmode1;
  output wreg_series_star_trigmode1_valid;
  output [31:0]wreg_series_star_trigmode2;
  output wreg_series_star_trigmode2_valid;
  output [31:0]wreg_series_star_trigmode3;
  output wreg_series_star_trigmode3_valid;
  output [31:0]wreg_series_star_trigmode4;
  output wreg_series_star_trigmode4_valid;
  output [7:0]wreg_series_stopmode;
  output wreg_series_stopmode_valid;
  output [31:0]wreg_series_stop_trigmode1;
  output wreg_series_stop_trigmode1_valid;
  output [31:0]wreg_series_stop_trigmode2;
  output wreg_series_stop_trigmode2_valid;
  output [31:0]wreg_series_stop_trigmode3;
  output wreg_series_stop_trigmode3_valid;
  output [31:0]wreg_series_stop_trigmode4;
  output wreg_series_stop_trigmode4_valid;
  output [63:0]wreg_series_seek_startime;
  output wreg_series_seek_startime_valid;
  output [31:0]wreg_series_seek_zoom;
  output wreg_series_seek_zoom_valid;
  output [31:0]wreg_series_seek_datalen;
  output wreg_series_seek_datalen_valid;
endmodule
