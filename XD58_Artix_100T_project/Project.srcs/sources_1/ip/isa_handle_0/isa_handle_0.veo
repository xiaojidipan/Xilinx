// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:user:isa_handle:1.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
isa_handle_0 your_instance_name (
  .reset(reset),                                                              // input wire reset
  .clk(clk),                                                                  // input wire clk
  .pin_isa_cs(pin_isa_cs),                                                    // input wire pin_isa_cs
  .pin_isa_wr(pin_isa_wr),                                                    // input wire pin_isa_wr
  .pin_isa_rd(pin_isa_rd),                                                    // input wire pin_isa_rd
  .pin_isa_adv(pin_isa_adv),                                                  // input wire pin_isa_adv
  .pin_isa_data(pin_isa_data),                                                // inout wire [7 : 0] pin_isa_data
  .isa_getdata(isa_getdata),                                                  // output wire [7 : 0] isa_getdata
  .rreg_system_debug1(rreg_system_debug1),                                    // input wire [7 : 0] rreg_system_debug1
  .rreg_system_debug1_valid(rreg_system_debug1_valid),                        // input wire rreg_system_debug1_valid
  .rreg_system_debug2(rreg_system_debug2),                                    // input wire [7 : 0] rreg_system_debug2
  .rreg_system_debug2_valid(rreg_system_debug2_valid),                        // input wire rreg_system_debug2_valid
  .rreg_system_debug3(rreg_system_debug3),                                    // input wire [7 : 0] rreg_system_debug3
  .rreg_system_debug3_valid(rreg_system_debug3_valid),                        // input wire rreg_system_debug3_valid
  .rreg_system_debug4(rreg_system_debug4),                                    // input wire [7 : 0] rreg_system_debug4
  .rreg_system_debug4_valid(rreg_system_debug4_valid),                        // input wire rreg_system_debug4_valid
  .rreg_system_status(rreg_system_status),                                    // input wire [7 : 0] rreg_system_status
  .rreg_system_status_valid(rreg_system_status_valid),                        // input wire rreg_system_status_valid
  .rreg_system_version(rreg_system_version),                                  // input wire [47 : 0] rreg_system_version
  .rreg_system_version_valid(rreg_system_version_valid),                      // input wire rreg_system_version_valid
  .rreg_system_rtctime(rreg_system_rtctime),                                  // input wire [63 : 0] rreg_system_rtctime
  .rreg_system_rtctime_valid(rreg_system_rtctime_valid),                      // input wire rreg_system_rtctime_valid
  .rreg_system_batteryvalue(rreg_system_batteryvalue),                        // input wire [15 : 0] rreg_system_batteryvalue
  .rreg_system_batteryvalue_valid(rreg_system_batteryvalue_valid),            // input wire rreg_system_batteryvalue_valid
  .rreg_system_syncstatus(rreg_system_syncstatus),                            // input wire [7 : 0] rreg_system_syncstatus
  .rreg_system_syncstatus_valid(rreg_system_syncstatus_valid),                // input wire rreg_system_syncstatus_valid
  .rreg_system_syncfrq(rreg_system_syncfrq),                                  // input wire [31 : 0] rreg_system_syncfrq
  .rreg_system_syncfrq_valid(rreg_system_syncfrq_valid),                      // input wire rreg_system_syncfrq_valid
  .wreg_system_ctrl(wreg_system_ctrl),                                        // output wire [7 : 0] wreg_system_ctrl
  .wreg_system_ctrl_valid(wreg_system_ctrl_valid),                            // output wire wreg_system_ctrl_valid
  .wreg_system_sel_rtc(wreg_system_sel_rtc),                                  // output wire [7 : 0] wreg_system_sel_rtc
  .wreg_system_sel_rtc_valid(wreg_system_sel_rtc_valid),                      // output wire wreg_system_sel_rtc_valid
  .wreg_system_set_rtctime(wreg_system_set_rtctime),                          // output wire [63 : 0] wreg_system_set_rtctime
  .wreg_system_set_rtctime_valid(wreg_system_set_rtctime_valid),              // output wire wreg_system_set_rtctime_valid
  .wreg_system_sync_minfrq(wreg_system_sync_minfrq),                          // output wire [15 : 0] wreg_system_sync_minfrq
  .wreg_system_sync_minfrq_valid(wreg_system_sync_minfrq_valid),              // output wire wreg_system_sync_minfrq_valid
  .wreg_system_sync_max(wreg_system_sync_max),                                // output wire [15 : 0] wreg_system_sync_max
  .wreg_system_sync_max_valid(wreg_system_sync_max_valid),                    // output wire wreg_system_sync_max_valid
  .wreg_system_sync_sel(wreg_system_sync_sel),                                // output wire [7 : 0] wreg_system_sync_sel
  .wreg_system_sync_sel_valid(wreg_system_sync_sel_valid),                    // output wire wreg_system_sync_sel_valid
  .wreg_system_ch_sel(wreg_system_ch_sel),                                    // output wire [7 : 0] wreg_system_ch_sel
  .wreg_system_ch_sel_valid(wreg_system_ch_sel_valid),                        // output wire wreg_system_ch_sel_valid
  .rreg_mem_status(rreg_mem_status),                                          // input wire [7 : 0] rreg_mem_status
  .rreg_mem_status_valid(rreg_mem_status_valid),                              // input wire rreg_mem_status_valid
  .rreg_mem_data_wr_en(rreg_mem_data_wr_en),                                  // input wire rreg_mem_data_wr_en
  .rreg_mem_data_wr_addr(rreg_mem_data_wr_addr),                              // input wire [15 : 0] rreg_mem_data_wr_addr
  .rreg_mem_data_wr_data(rreg_mem_data_wr_data),                              // input wire [7 : 0] rreg_mem_data_wr_data
  .wreg_mem_rd_en(wreg_mem_rd_en),                                            // input wire wreg_mem_rd_en
  .wreg_mem_ctrl(wreg_mem_ctrl),                                              // output wire [7 : 0] wreg_mem_ctrl
  .wreg_mem_ctrl_valid(wreg_mem_ctrl_valid),                                  // output wire wreg_mem_ctrl_valid
  .wreg_mem_addr(wreg_mem_addr),                                              // output wire [15 : 0] wreg_mem_addr
  .wreg_mem_addr_valid(wreg_mem_addr_valid),                                  // output wire wreg_mem_addr_valid
  .wreg_mem_len(wreg_mem_len),                                                // output wire [7 : 0] wreg_mem_len
  .wreg_mem_len_valid(wreg_mem_len_valid),                                    // output wire wreg_mem_len_valid
  .wreg_mem_rd_data(wreg_mem_rd_data),                                        // output wire [7 : 0] wreg_mem_rd_data
  .wreg_mem_rd_len(wreg_mem_rd_len),                                          // output wire [4 : 0] wreg_mem_rd_len
  .rreg_ddr_status(rreg_ddr_status),                                          // input wire [7 : 0] rreg_ddr_status
  .rreg_ddr_status_valid(rreg_ddr_status_valid),                              // input wire rreg_ddr_status_valid
  .rreg_ddr_data_wr_clk(rreg_ddr_data_wr_clk),                                // input wire rreg_ddr_data_wr_clk
  .rreg_ddr_data_wr_en(rreg_ddr_data_wr_en),                                  // input wire rreg_ddr_data_wr_en
  .rreg_ddr_data_wr_addr(rreg_ddr_data_wr_addr),                              // input wire [15 : 0] rreg_ddr_data_wr_addr
  .rreg_ddr_data_wr_data(rreg_ddr_data_wr_data),                              // input wire [31 : 0] rreg_ddr_data_wr_data
  .wreg_ddr_ctrl(wreg_ddr_ctrl),                                              // output wire [7 : 0] wreg_ddr_ctrl
  .wreg_ddr_ctrl_valid(wreg_ddr_ctrl_valid),                                  // output wire wreg_ddr_ctrl_valid
  .wreg_ddr_addr(wreg_ddr_addr),                                              // output wire [31 : 0] wreg_ddr_addr
  .wreg_ddr_addr_valid(wreg_ddr_addr_valid),                                  // output wire wreg_ddr_addr_valid
  .wreg_ddr_len(wreg_ddr_len),                                                // output wire [31 : 0] wreg_ddr_len
  .wreg_ddr_len_valid(wreg_ddr_len_valid),                                    // output wire wreg_ddr_len_valid
  .wreg_out_ctrl(wreg_out_ctrl),                                              // output wire [7 : 0] wreg_out_ctrl
  .wreg_out_ctrl_valid(wreg_out_ctrl_valid),                                  // output wire wreg_out_ctrl_valid
  .wreg_out_sel(wreg_out_sel),                                                // output wire [7 : 0] wreg_out_sel
  .wreg_out_sel_valid(wreg_out_sel_valid),                                    // output wire wreg_out_sel_valid
  .wreg_out_level(wreg_out_level),                                            // output wire [7 : 0] wreg_out_level
  .wreg_out_level_valid(wreg_out_level_valid),                                // output wire wreg_out_level_valid
  .wreg_out_startmode(wreg_out_startmode),                                    // output wire [7 : 0] wreg_out_startmode
  .wreg_out_startmode_valid(wreg_out_startmode_valid),                        // output wire wreg_out_startmode_valid
  .wreg_out_start_targettime(wreg_out_start_targettime),                      // output wire [63 : 0] wreg_out_start_targettime
  .wreg_out_start_targettime_valid(wreg_out_start_targettime_valid),          // output wire wreg_out_start_targettime_valid
  .wreg_out_start_subtime(wreg_out_start_subtime),                            // output wire [31 : 0] wreg_out_start_subtime
  .wreg_out_start_subtime_valid(wreg_out_start_subtime_valid),                // output wire wreg_out_start_subtime_valid
  .wreg_out_start_subnum(wreg_out_start_subnum),                              // output wire [31 : 0] wreg_out_start_subnum
  .wreg_out_start_subnum_valid(wreg_out_start_subnum_valid),                  // output wire wreg_out_start_subnum_valid
  .wreg_out_start_subcycle(wreg_out_start_subcycle),                          // output wire [7 : 0] wreg_out_start_subcycle
  .wreg_out_start_subcycle_valid(wreg_out_start_subcycle_valid),              // output wire wreg_out_start_subcycle_valid
  .wreg_out_start_trigmode1(wreg_out_start_trigmode1),                        // output wire [31 : 0] wreg_out_start_trigmode1
  .wreg_out_start_trigmode1_valid(wreg_out_start_trigmode1_valid),            // output wire wreg_out_start_trigmode1_valid
  .wreg_out_start_trigmode2(wreg_out_start_trigmode2),                        // output wire [31 : 0] wreg_out_start_trigmode2
  .wreg_out_start_trigmode2_valid(wreg_out_start_trigmode2_valid),            // output wire wreg_out_start_trigmode2_valid
  .wreg_out_start_trigmode3(wreg_out_start_trigmode3),                        // output wire [31 : 0] wreg_out_start_trigmode3
  .wreg_out_start_trigmode3_valid(wreg_out_start_trigmode3_valid),            // output wire wreg_out_start_trigmode3_valid
  .wreg_out_start_trigmode4(wreg_out_start_trigmode4),                        // output wire [31 : 0] wreg_out_start_trigmode4
  .wreg_out_start_trigmode4_valid(wreg_out_start_trigmode4_valid),            // output wire wreg_out_start_trigmode4_valid
  .wreg_out_trig_threshold_p(wreg_out_trig_threshold_p),                      // output wire [15 : 0] wreg_out_trig_threshold_p
  .wreg_out_trig_threshold_p_valid(wreg_out_trig_threshold_p_valid),          // output wire wreg_out_trig_threshold_p_valid
  .wreg_out_trig_threshold_n(wreg_out_trig_threshold_n),                      // output wire [15 : 0] wreg_out_trig_threshold_n
  .wreg_out_trig_threshold_n_valid(wreg_out_trig_threshold_n_valid),          // output wire wreg_out_trig_threshold_n_valid
  .wreg_out_trig_risetime(wreg_out_trig_risetime),                            // output wire [15 : 0] wreg_out_trig_risetime
  .wreg_out_trig_risetime_valid(wreg_out_trig_risetime_valid),                // output wire wreg_out_trig_risetime_valid
  .wreg_out_trig_droptime(wreg_out_trig_droptime),                            // output wire [15 : 0] wreg_out_trig_droptime
  .wreg_out_trig_droptime_valid(wreg_out_trig_droptime_valid),                // output wire wreg_out_trig_droptime_valid
  .wreg_out_trig_pulsewidth(wreg_out_trig_pulsewidth),                        // output wire [15 : 0] wreg_out_trig_pulsewidth
  .wreg_out_trig_pulsewidth_valid(wreg_out_trig_pulsewidth_valid),            // output wire wreg_out_trig_pulsewidth_valid
  .wreg_out_trig_riseratio(wreg_out_trig_riseratio),                          // output wire [7 : 0] wreg_out_trig_riseratio
  .wreg_out_trig_riseratio_valid(wreg_out_trig_riseratio_valid),              // output wire wreg_out_trig_riseratio_valid
  .wreg_out_trig_dropratio(wreg_out_trig_dropratio),                          // output wire [7 : 0] wreg_out_trig_dropratio
  .wreg_out_trig_dropratio_valid(wreg_out_trig_dropratio_valid),              // output wire wreg_out_trig_dropratio_valid
  .wreg_out_trig_rmsvalue(wreg_out_trig_rmsvalue),                            // output wire [15 : 0] wreg_out_trig_rmsvalue
  .wreg_out_trig_rmsvalue_valid(wreg_out_trig_rmsvalue_valid),                // output wire wreg_out_trig_rmsvalue_valid
  .wreg_out_time_rd_en(wreg_out_time_rd_en),                                  // input wire wreg_out_time_rd_en
  .wreg_out_time_rd_data(wreg_out_time_rd_data),                              // output wire [7 : 0] wreg_out_time_rd_data
  .wreg_out_time_rd_len(wreg_out_time_rd_len),                                // output wire [4 : 0] wreg_out_time_rd_len
  .wreg_ch_zero_cal(wreg_ch_zero_cal),                                        // output wire [15 : 0] wreg_ch_zero_cal
  .wreg_ch_zero_cal_valid(wreg_ch_zero_cal_valid),                            // output wire wreg_ch_zero_cal_valid
  .wreg_ch_sample_rate(wreg_ch_sample_rate),                                  // output wire [15 : 0] wreg_ch_sample_rate
  .wreg_ch_sample_rate_valid(wreg_ch_sample_rate_valid),                      // output wire wreg_ch_sample_rate_valid
  .wreg_ch_sign_handle(wreg_ch_sign_handle),                                  // output wire [7 : 0] wreg_ch_sign_handle
  .wreg_ch_sign_handle_valid(wreg_ch_sign_handle_valid),                      // output wire wreg_ch_sign_handle_valid
  .wreg_ch_main_amp(wreg_ch_main_amp),                                        // output wire [7 : 0] wreg_ch_main_amp
  .wreg_ch_main_amp_valid(wreg_ch_main_amp_valid),                            // output wire wreg_ch_main_amp_valid
  .wreg_ch_pre_amp(wreg_ch_pre_amp),                                          // output wire [7 : 0] wreg_ch_pre_amp
  .wreg_ch_pre_amp_valid(wreg_ch_pre_amp_valid),                              // output wire wreg_ch_pre_amp_valid
  .wreg_ch_v_amp(wreg_ch_v_amp),                                              // output wire [7 : 0] wreg_ch_v_amp
  .wreg_ch_v_amp_valid(wreg_ch_v_amp_valid),                                  // output wire wreg_ch_v_amp_valid
  .wreg_ch_i_amp(wreg_ch_i_amp),                                              // output wire [7 : 0] wreg_ch_i_amp
  .wreg_ch_i_amp_valid(wreg_ch_i_amp_valid),                                  // output wire wreg_ch_i_amp_valid
  .wreg_ch_noise_comp(wreg_ch_noise_comp),                                    // output wire [7 : 0] wreg_ch_noise_comp
  .wreg_ch_noise_comp_valid(wreg_ch_noise_comp_valid),                        // output wire wreg_ch_noise_comp_valid
  .wreg_ch_noise_amp_cof(wreg_ch_noise_amp_cof),                              // output wire [15 : 0] wreg_ch_noise_amp_cof
  .wreg_ch_noise_amp_cof_valid(wreg_ch_noise_amp_cof_valid),                  // output wire wreg_ch_noise_amp_cof_valid
  .wreg_ch_noise_delay(wreg_ch_noise_delay),                                  // output wire [7 : 0] wreg_ch_noise_delay
  .wreg_ch_noise_delay_valid(wreg_ch_noise_delay_valid),                      // output wire wreg_ch_noise_delay_valid
  .wreg_ch_start_targettime(wreg_ch_start_targettime),                        // output wire [63 : 0] wreg_ch_start_targettime
  .wreg_ch_start_targettime_valid(wreg_ch_start_targettime_valid),            // output wire wreg_ch_start_targettime_valid
  .wreg_ch_start_sustime(wreg_ch_start_sustime),                              // output wire [31 : 0] wreg_ch_start_sustime
  .wreg_ch_start_sustime_valid(wreg_ch_start_sustime_valid),                  // output wire wreg_ch_start_sustime_valid
  .wreg_ch_start_susnum(wreg_ch_start_susnum),                                // output wire [31 : 0] wreg_ch_start_susnum
  .wreg_ch_start_susnum_valid(wreg_ch_start_susnum_valid),                    // output wire wreg_ch_start_susnum_valid
  .wreg_ch_start_suscycle(wreg_ch_start_suscycle),                            // output wire [7 : 0] wreg_ch_start_suscycle
  .wreg_ch_start_suscycle_valid(wreg_ch_start_suscycle_valid),                // output wire wreg_ch_start_suscycle_valid
  .wreg_ch_stop_sustime(wreg_ch_stop_sustime),                                // output wire [31 : 0] wreg_ch_stop_sustime
  .wreg_ch_stop_sustime_valid(wreg_ch_stop_sustime_valid),                    // output wire wreg_ch_stop_sustime_valid
  .wreg_ch_stop_susnum(wreg_ch_stop_susnum),                                  // output wire [31 : 0] wreg_ch_stop_susnum
  .wreg_ch_stop_susnum_valid(wreg_ch_stop_susnum_valid),                      // output wire wreg_ch_stop_susnum_valid
  .wreg_ch_stop_suscycle(wreg_ch_stop_suscycle),                              // output wire [7 : 0] wreg_ch_stop_suscycle
  .wreg_ch_stop_suscycle_valid(wreg_ch_stop_suscycle_valid),                  // output wire wreg_ch_stop_suscycle_valid
  .wreg_ch_trig_threshold_p(wreg_ch_trig_threshold_p),                        // output wire [15 : 0] wreg_ch_trig_threshold_p
  .wreg_ch_trig_threshold_p_valid(wreg_ch_trig_threshold_p_valid),            // output wire wreg_ch_trig_threshold_p_valid
  .wreg_ch_trig_threshold_n(wreg_ch_trig_threshold_n),                        // output wire [15 : 0] wreg_ch_trig_threshold_n
  .wreg_ch_trig_threshold_n_valid(wreg_ch_trig_threshold_n_valid),            // output wire wreg_ch_trig_threshold_n_valid
  .wreg_ch_trig_risetime(wreg_ch_trig_risetime),                              // output wire [15 : 0] wreg_ch_trig_risetime
  .wreg_ch_trig_risetime_valid(wreg_ch_trig_risetime_valid),                  // output wire wreg_ch_trig_risetime_valid
  .wreg_ch_trig_droptime(wreg_ch_trig_droptime),                              // output wire [15 : 0] wreg_ch_trig_droptime
  .wreg_ch_trig_droptime_valid(wreg_ch_trig_droptime_valid),                  // output wire wreg_ch_trig_droptime_valid
  .wreg_ch_trig_pulsewidth(wreg_ch_trig_pulsewidth),                          // output wire [15 : 0] wreg_ch_trig_pulsewidth
  .wreg_ch_trig_pulsewidth_valid(wreg_ch_trig_pulsewidth_valid),              // output wire wreg_ch_trig_pulsewidth_valid
  .wreg_ch_trig_riseratio(wreg_ch_trig_riseratio),                            // output wire [7 : 0] wreg_ch_trig_riseratio
  .wreg_ch_trig_riseratio_valid(wreg_ch_trig_riseratio_valid),                // output wire wreg_ch_trig_riseratio_valid
  .wreg_ch_trig_dropratio(wreg_ch_trig_dropratio),                            // output wire [7 : 0] wreg_ch_trig_dropratio
  .wreg_ch_trig_dropratio_valid(wreg_ch_trig_dropratio_valid),                // output wire wreg_ch_trig_dropratio_valid
  .wreg_ch_trig_rmsvalue(wreg_ch_trig_rmsvalue),                              // output wire [15 : 0] wreg_ch_trig_rmsvalue
  .wreg_ch_trig_rmsvalue_valid(wreg_ch_trig_rmsvalue_valid),                  // output wire wreg_ch_trig_rmsvalue_valid
  .wreg_ch_filter_rd_en(wreg_ch_filter_rd_en),                                // input wire wreg_ch_filter_rd_en
  .wreg_ch_filter_rd_data(wreg_ch_filter_rd_data),                            // output wire [7 : 0] wreg_ch_filter_rd_data
  .wreg_ch_filter_rd_len(wreg_ch_filter_rd_len),                              // output wire [3 : 0] wreg_ch_filter_rd_len
  .rreg_series_status(rreg_series_status),                                    // input wire [7 : 0] rreg_series_status
  .rreg_series_status_valid(rreg_series_status_valid),                        // input wire rreg_series_status_valid
  .rreg_series_starttime(rreg_series_starttime),                              // input wire [63 : 0] rreg_series_starttime
  .rreg_series_starttime_valid(rreg_series_starttime_valid),                  // input wire rreg_series_starttime_valid
  .rreg_series_stoptime(rreg_series_stoptime),                                // input wire [63 : 0] rreg_series_stoptime
  .rreg_series_stoptime_valid(rreg_series_stoptime_valid),                    // input wire rreg_series_stoptime_valid
  .rreg_series_maxdata(rreg_series_maxdata),                                  // input wire [79 : 0] rreg_series_maxdata
  .rreg_series_maxdata_valid(rreg_series_maxdata_valid),                      // input wire rreg_series_maxdata_valid
  .rreg_series_data_wr_clk(rreg_series_data_wr_clk),                          // input wire rreg_series_data_wr_clk
  .rreg_series_data_wr_en(rreg_series_data_wr_en),                            // input wire rreg_series_data_wr_en
  .rreg_series_data_wr_addr(rreg_series_data_wr_addr),                        // input wire [15 : 0] rreg_series_data_wr_addr
  .rreg_series_data_wr_data(rreg_series_data_wr_data),                        // input wire [31 : 0] rreg_series_data_wr_data
  .rreg_series_trigger_starttime(rreg_series_trigger_starttime),              // input wire [63 : 0] rreg_series_trigger_starttime
  .rreg_series_trigger_starttime_valid(rreg_series_trigger_starttime_valid),  // input wire rreg_series_trigger_starttime_valid
  .rreg_series_trigger_stoptime(rreg_series_trigger_stoptime),                // input wire [63 : 0] rreg_series_trigger_stoptime
  .rreg_series_trigger_stoptime_valid(rreg_series_trigger_stoptime_valid),    // input wire rreg_series_trigger_stoptime_valid
  .wreg_series_ctrl(wreg_series_ctrl),                                        // output wire [7 : 0] wreg_series_ctrl
  .wreg_series_ctrl_valid(wreg_series_ctrl_valid),                            // output wire wreg_series_ctrl_valid
  .wreg_series_data_type(wreg_series_data_type),                              // output wire [7 : 0] wreg_series_data_type
  .wreg_series_data_type_valid(wreg_series_data_type_valid),                  // output wire wreg_series_data_type_valid
  .wreg_series_sample_cycle(wreg_series_sample_cycle),                        // output wire [7 : 0] wreg_series_sample_cycle
  .wreg_series_sample_cycle_valid(wreg_series_sample_cycle_valid),            // output wire wreg_series_sample_cycle_valid
  .wreg_series_comp_ratio(wreg_series_comp_ratio),                            // output wire [31 : 0] wreg_series_comp_ratio
  .wreg_series_comp_ratio_valid(wreg_series_comp_ratio_valid),                // output wire wreg_series_comp_ratio_valid
  .wreg_series_comp_num(wreg_series_comp_num),                                // output wire [15 : 0] wreg_series_comp_num
  .wreg_series_comp_num_valid(wreg_series_comp_num_valid),                    // output wire wreg_series_comp_num_valid
  .wreg_series_validmode_data(wreg_series_validmode_data),                    // output wire [31 : 0] wreg_series_validmode_data
  .wreg_series_validmode_data_valid(wreg_series_validmode_data_valid),        // output wire wreg_series_validmode_data_valid
  .wreg_series_start_ddraddr(wreg_series_start_ddraddr),                      // output wire [31 : 0] wreg_series_start_ddraddr
  .wreg_series_start_ddraddr_valid(wreg_series_start_ddraddr_valid),          // output wire wreg_series_start_ddraddr_valid
  .wreg_series_stop_ddraddr(wreg_series_stop_ddraddr),                        // output wire [31 : 0] wreg_series_stop_ddraddr
  .wreg_series_stop_ddraddr_valid(wreg_series_stop_ddraddr_valid),            // output wire wreg_series_stop_ddraddr_valid
  .wreg_series_startmode(wreg_series_startmode),                              // output wire [7 : 0] wreg_series_startmode
  .wreg_series_startmode_valid(wreg_series_startmode_valid),                  // output wire wreg_series_startmode_valid
  .wreg_series_star_trigmode1(wreg_series_star_trigmode1),                    // output wire [31 : 0] wreg_series_star_trigmode1
  .wreg_series_star_trigmode1_valid(wreg_series_star_trigmode1_valid),        // output wire wreg_series_star_trigmode1_valid
  .wreg_series_star_trigmode2(wreg_series_star_trigmode2),                    // output wire [31 : 0] wreg_series_star_trigmode2
  .wreg_series_star_trigmode2_valid(wreg_series_star_trigmode2_valid),        // output wire wreg_series_star_trigmode2_valid
  .wreg_series_star_trigmode3(wreg_series_star_trigmode3),                    // output wire [31 : 0] wreg_series_star_trigmode3
  .wreg_series_star_trigmode3_valid(wreg_series_star_trigmode3_valid),        // output wire wreg_series_star_trigmode3_valid
  .wreg_series_star_trigmode4(wreg_series_star_trigmode4),                    // output wire [31 : 0] wreg_series_star_trigmode4
  .wreg_series_star_trigmode4_valid(wreg_series_star_trigmode4_valid),        // output wire wreg_series_star_trigmode4_valid
  .wreg_series_stopmode(wreg_series_stopmode),                                // output wire [7 : 0] wreg_series_stopmode
  .wreg_series_stopmode_valid(wreg_series_stopmode_valid),                    // output wire wreg_series_stopmode_valid
  .wreg_series_stop_trigmode1(wreg_series_stop_trigmode1),                    // output wire [31 : 0] wreg_series_stop_trigmode1
  .wreg_series_stop_trigmode1_valid(wreg_series_stop_trigmode1_valid),        // output wire wreg_series_stop_trigmode1_valid
  .wreg_series_stop_trigmode2(wreg_series_stop_trigmode2),                    // output wire [31 : 0] wreg_series_stop_trigmode2
  .wreg_series_stop_trigmode2_valid(wreg_series_stop_trigmode2_valid),        // output wire wreg_series_stop_trigmode2_valid
  .wreg_series_stop_trigmode3(wreg_series_stop_trigmode3),                    // output wire [31 : 0] wreg_series_stop_trigmode3
  .wreg_series_stop_trigmode3_valid(wreg_series_stop_trigmode3_valid),        // output wire wreg_series_stop_trigmode3_valid
  .wreg_series_stop_trigmode4(wreg_series_stop_trigmode4),                    // output wire [31 : 0] wreg_series_stop_trigmode4
  .wreg_series_stop_trigmode4_valid(wreg_series_stop_trigmode4_valid),        // output wire wreg_series_stop_trigmode4_valid
  .wreg_series_seek_startime(wreg_series_seek_startime),                      // output wire [63 : 0] wreg_series_seek_startime
  .wreg_series_seek_startime_valid(wreg_series_seek_startime_valid),          // output wire wreg_series_seek_startime_valid
  .wreg_series_seek_zoom(wreg_series_seek_zoom),                              // output wire [31 : 0] wreg_series_seek_zoom
  .wreg_series_seek_zoom_valid(wreg_series_seek_zoom_valid),                  // output wire wreg_series_seek_zoom_valid
  .wreg_series_seek_datalen(wreg_series_seek_datalen),                        // output wire [31 : 0] wreg_series_seek_datalen
  .wreg_series_seek_datalen_valid(wreg_series_seek_datalen_valid)            // output wire wreg_series_seek_datalen_valid
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file isa_handle_0.v when simulating
// the core, isa_handle_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

