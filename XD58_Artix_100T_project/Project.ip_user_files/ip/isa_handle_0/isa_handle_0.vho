-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:isa_handle:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT isa_handle_0
  PORT (
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    pin_isa_cs : IN STD_LOGIC;
    pin_isa_wr : IN STD_LOGIC;
    pin_isa_rd : IN STD_LOGIC;
    pin_isa_adv : IN STD_LOGIC;
    pin_isa_data : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    isa_getdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_system_debug1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_system_debug1_valid : IN STD_LOGIC;
    rreg_system_debug2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_system_debug2_valid : IN STD_LOGIC;
    rreg_system_debug3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_system_debug3_valid : IN STD_LOGIC;
    rreg_system_debug4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_system_debug4_valid : IN STD_LOGIC;
    rreg_system_status : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_system_status_valid : IN STD_LOGIC;
    rreg_system_version : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    rreg_system_version_valid : IN STD_LOGIC;
    rreg_system_rtctime : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    rreg_system_rtctime_valid : IN STD_LOGIC;
    rreg_system_batteryvalue : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rreg_system_batteryvalue_valid : IN STD_LOGIC;
    rreg_system_syncstatus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_system_syncstatus_valid : IN STD_LOGIC;
    rreg_system_syncfrq : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rreg_system_syncfrq_valid : IN STD_LOGIC;
    wreg_system_ctrl : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_system_ctrl_valid : OUT STD_LOGIC;
    wreg_system_sel_rtc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_system_sel_rtc_valid : OUT STD_LOGIC;
    wreg_system_set_rtctime : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    wreg_system_set_rtctime_valid : OUT STD_LOGIC;
    wreg_system_sync_minfrq : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_system_sync_minfrq_valid : OUT STD_LOGIC;
    wreg_system_sync_max : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_system_sync_max_valid : OUT STD_LOGIC;
    wreg_system_sync_sel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_system_sync_sel_valid : OUT STD_LOGIC;
    wreg_system_ch_sel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_system_ch_sel_valid : OUT STD_LOGIC;
    rreg_mem_status : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_mem_status_valid : IN STD_LOGIC;
    rreg_mem_data_wr_en : IN STD_LOGIC;
    rreg_mem_data_wr_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rreg_mem_data_wr_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_mem_rd_en : IN STD_LOGIC;
    wreg_mem_ctrl : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_mem_ctrl_valid : OUT STD_LOGIC;
    wreg_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_mem_addr_valid : OUT STD_LOGIC;
    wreg_mem_len : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_mem_len_valid : OUT STD_LOGIC;
    wreg_mem_rd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_mem_rd_len : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    rreg_ddr_status : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_ddr_status_valid : IN STD_LOGIC;
    rreg_ddr_data_wr_clk : IN STD_LOGIC;
    rreg_ddr_data_wr_en : IN STD_LOGIC;
    rreg_ddr_data_wr_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rreg_ddr_data_wr_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_ddr_ctrl : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ddr_ctrl_valid : OUT STD_LOGIC;
    wreg_ddr_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_ddr_addr_valid : OUT STD_LOGIC;
    wreg_ddr_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_ddr_len_valid : OUT STD_LOGIC;
    wreg_out_ctrl : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_ctrl_valid : OUT STD_LOGIC;
    wreg_out_sel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_sel_valid : OUT STD_LOGIC;
    wreg_out_level : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_level_valid : OUT STD_LOGIC;
    wreg_out_startmode : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_startmode_valid : OUT STD_LOGIC;
    wreg_out_start_targettime : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    wreg_out_start_targettime_valid : OUT STD_LOGIC;
    wreg_out_start_subtime : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_out_start_subtime_valid : OUT STD_LOGIC;
    wreg_out_start_subnum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_out_start_subnum_valid : OUT STD_LOGIC;
    wreg_out_start_subcycle : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_start_subcycle_valid : OUT STD_LOGIC;
    wreg_out_start_trigmode1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_out_start_trigmode1_valid : OUT STD_LOGIC;
    wreg_out_start_trigmode2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_out_start_trigmode2_valid : OUT STD_LOGIC;
    wreg_out_start_trigmode3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_out_start_trigmode3_valid : OUT STD_LOGIC;
    wreg_out_start_trigmode4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_out_start_trigmode4_valid : OUT STD_LOGIC;
    wreg_out_trig_threshold_p : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_out_trig_threshold_p_valid : OUT STD_LOGIC;
    wreg_out_trig_threshold_n : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_out_trig_threshold_n_valid : OUT STD_LOGIC;
    wreg_out_trig_risetime : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_out_trig_risetime_valid : OUT STD_LOGIC;
    wreg_out_trig_droptime : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_out_trig_droptime_valid : OUT STD_LOGIC;
    wreg_out_trig_pulsewidth : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_out_trig_pulsewidth_valid : OUT STD_LOGIC;
    wreg_out_trig_riseratio : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_trig_riseratio_valid : OUT STD_LOGIC;
    wreg_out_trig_dropratio : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_trig_dropratio_valid : OUT STD_LOGIC;
    wreg_out_trig_rmsvalue : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_out_trig_rmsvalue_valid : OUT STD_LOGIC;
    wreg_out_time_rd_en : IN STD_LOGIC;
    wreg_out_time_rd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_out_time_rd_len : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    wreg_ch_zero_cal : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_zero_cal_valid : OUT STD_LOGIC;
    wreg_ch_sample_rate : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_sample_rate_valid : OUT STD_LOGIC;
    wreg_ch_sign_handle : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_sign_handle_valid : OUT STD_LOGIC;
    wreg_ch_main_amp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_main_amp_valid : OUT STD_LOGIC;
    wreg_ch_pre_amp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_pre_amp_valid : OUT STD_LOGIC;
    wreg_ch_v_amp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_v_amp_valid : OUT STD_LOGIC;
    wreg_ch_i_amp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_i_amp_valid : OUT STD_LOGIC;
    wreg_ch_noise_comp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_noise_comp_valid : OUT STD_LOGIC;
    wreg_ch_noise_amp_cof : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_noise_amp_cof_valid : OUT STD_LOGIC;
    wreg_ch_noise_delay : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_noise_delay_valid : OUT STD_LOGIC;
    wreg_ch_start_targettime : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    wreg_ch_start_targettime_valid : OUT STD_LOGIC;
    wreg_ch_start_sustime : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_ch_start_sustime_valid : OUT STD_LOGIC;
    wreg_ch_start_susnum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_ch_start_susnum_valid : OUT STD_LOGIC;
    wreg_ch_start_suscycle : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_start_suscycle_valid : OUT STD_LOGIC;
    wreg_ch_stop_sustime : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_ch_stop_sustime_valid : OUT STD_LOGIC;
    wreg_ch_stop_susnum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_ch_stop_susnum_valid : OUT STD_LOGIC;
    wreg_ch_stop_suscycle : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_stop_suscycle_valid : OUT STD_LOGIC;
    wreg_ch_trig_threshold_p : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_trig_threshold_p_valid : OUT STD_LOGIC;
    wreg_ch_trig_threshold_n : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_trig_threshold_n_valid : OUT STD_LOGIC;
    wreg_ch_trig_risetime : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_trig_risetime_valid : OUT STD_LOGIC;
    wreg_ch_trig_droptime : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_trig_droptime_valid : OUT STD_LOGIC;
    wreg_ch_trig_pulsewidth : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_trig_pulsewidth_valid : OUT STD_LOGIC;
    wreg_ch_trig_riseratio : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_trig_riseratio_valid : OUT STD_LOGIC;
    wreg_ch_trig_dropratio : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_trig_dropratio_valid : OUT STD_LOGIC;
    wreg_ch_trig_rmsvalue : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_ch_trig_rmsvalue_valid : OUT STD_LOGIC;
    wreg_ch_filter_rd_en : IN STD_LOGIC;
    wreg_ch_filter_rd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_ch_filter_rd_len : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rreg_series_status : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rreg_series_status_valid : IN STD_LOGIC;
    rreg_series_starttime : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    rreg_series_starttime_valid : IN STD_LOGIC;
    rreg_series_stoptime : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    rreg_series_stoptime_valid : IN STD_LOGIC;
    rreg_series_maxdata : IN STD_LOGIC_VECTOR(79 DOWNTO 0);
    rreg_series_maxdata_valid : IN STD_LOGIC;
    rreg_series_data_wr_clk : IN STD_LOGIC;
    rreg_series_data_wr_en : IN STD_LOGIC;
    rreg_series_data_wr_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rreg_series_data_wr_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rreg_series_trigger_starttime : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    rreg_series_trigger_starttime_valid : IN STD_LOGIC;
    rreg_series_trigger_stoptime : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    rreg_series_trigger_stoptime_valid : IN STD_LOGIC;
    wreg_series_ctrl : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_series_ctrl_valid : OUT STD_LOGIC;
    wreg_series_data_type : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_series_data_type_valid : OUT STD_LOGIC;
    wreg_series_sample_cycle : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_series_sample_cycle_valid : OUT STD_LOGIC;
    wreg_series_comp_ratio : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_comp_ratio_valid : OUT STD_LOGIC;
    wreg_series_comp_num : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wreg_series_comp_num_valid : OUT STD_LOGIC;
    wreg_series_validmode_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_validmode_data_valid : OUT STD_LOGIC;
    wreg_series_start_ddraddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_start_ddraddr_valid : OUT STD_LOGIC;
    wreg_series_stop_ddraddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_stop_ddraddr_valid : OUT STD_LOGIC;
    wreg_series_startmode : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_series_startmode_valid : OUT STD_LOGIC;
    wreg_series_star_trigmode1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_star_trigmode1_valid : OUT STD_LOGIC;
    wreg_series_star_trigmode2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_star_trigmode2_valid : OUT STD_LOGIC;
    wreg_series_star_trigmode3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_star_trigmode3_valid : OUT STD_LOGIC;
    wreg_series_star_trigmode4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_star_trigmode4_valid : OUT STD_LOGIC;
    wreg_series_stopmode : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wreg_series_stopmode_valid : OUT STD_LOGIC;
    wreg_series_stop_trigmode1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_stop_trigmode1_valid : OUT STD_LOGIC;
    wreg_series_stop_trigmode2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_stop_trigmode2_valid : OUT STD_LOGIC;
    wreg_series_stop_trigmode3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_stop_trigmode3_valid : OUT STD_LOGIC;
    wreg_series_stop_trigmode4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_stop_trigmode4_valid : OUT STD_LOGIC;
    wreg_series_seek_startime : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    wreg_series_seek_startime_valid : OUT STD_LOGIC;
    wreg_series_seek_zoom : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_seek_zoom_valid : OUT STD_LOGIC;
    wreg_series_seek_datalen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wreg_series_seek_datalen_valid : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : isa_handle_0
  PORT MAP (
    reset => reset,
    clk => clk,
    pin_isa_cs => pin_isa_cs,
    pin_isa_wr => pin_isa_wr,
    pin_isa_rd => pin_isa_rd,
    pin_isa_adv => pin_isa_adv,
    pin_isa_data => pin_isa_data,
    isa_getdata => isa_getdata,
    rreg_system_debug1 => rreg_system_debug1,
    rreg_system_debug1_valid => rreg_system_debug1_valid,
    rreg_system_debug2 => rreg_system_debug2,
    rreg_system_debug2_valid => rreg_system_debug2_valid,
    rreg_system_debug3 => rreg_system_debug3,
    rreg_system_debug3_valid => rreg_system_debug3_valid,
    rreg_system_debug4 => rreg_system_debug4,
    rreg_system_debug4_valid => rreg_system_debug4_valid,
    rreg_system_status => rreg_system_status,
    rreg_system_status_valid => rreg_system_status_valid,
    rreg_system_version => rreg_system_version,
    rreg_system_version_valid => rreg_system_version_valid,
    rreg_system_rtctime => rreg_system_rtctime,
    rreg_system_rtctime_valid => rreg_system_rtctime_valid,
    rreg_system_batteryvalue => rreg_system_batteryvalue,
    rreg_system_batteryvalue_valid => rreg_system_batteryvalue_valid,
    rreg_system_syncstatus => rreg_system_syncstatus,
    rreg_system_syncstatus_valid => rreg_system_syncstatus_valid,
    rreg_system_syncfrq => rreg_system_syncfrq,
    rreg_system_syncfrq_valid => rreg_system_syncfrq_valid,
    wreg_system_ctrl => wreg_system_ctrl,
    wreg_system_ctrl_valid => wreg_system_ctrl_valid,
    wreg_system_sel_rtc => wreg_system_sel_rtc,
    wreg_system_sel_rtc_valid => wreg_system_sel_rtc_valid,
    wreg_system_set_rtctime => wreg_system_set_rtctime,
    wreg_system_set_rtctime_valid => wreg_system_set_rtctime_valid,
    wreg_system_sync_minfrq => wreg_system_sync_minfrq,
    wreg_system_sync_minfrq_valid => wreg_system_sync_minfrq_valid,
    wreg_system_sync_max => wreg_system_sync_max,
    wreg_system_sync_max_valid => wreg_system_sync_max_valid,
    wreg_system_sync_sel => wreg_system_sync_sel,
    wreg_system_sync_sel_valid => wreg_system_sync_sel_valid,
    wreg_system_ch_sel => wreg_system_ch_sel,
    wreg_system_ch_sel_valid => wreg_system_ch_sel_valid,
    rreg_mem_status => rreg_mem_status,
    rreg_mem_status_valid => rreg_mem_status_valid,
    rreg_mem_data_wr_en => rreg_mem_data_wr_en,
    rreg_mem_data_wr_addr => rreg_mem_data_wr_addr,
    rreg_mem_data_wr_data => rreg_mem_data_wr_data,
    wreg_mem_rd_en => wreg_mem_rd_en,
    wreg_mem_ctrl => wreg_mem_ctrl,
    wreg_mem_ctrl_valid => wreg_mem_ctrl_valid,
    wreg_mem_addr => wreg_mem_addr,
    wreg_mem_addr_valid => wreg_mem_addr_valid,
    wreg_mem_len => wreg_mem_len,
    wreg_mem_len_valid => wreg_mem_len_valid,
    wreg_mem_rd_data => wreg_mem_rd_data,
    wreg_mem_rd_len => wreg_mem_rd_len,
    rreg_ddr_status => rreg_ddr_status,
    rreg_ddr_status_valid => rreg_ddr_status_valid,
    rreg_ddr_data_wr_clk => rreg_ddr_data_wr_clk,
    rreg_ddr_data_wr_en => rreg_ddr_data_wr_en,
    rreg_ddr_data_wr_addr => rreg_ddr_data_wr_addr,
    rreg_ddr_data_wr_data => rreg_ddr_data_wr_data,
    wreg_ddr_ctrl => wreg_ddr_ctrl,
    wreg_ddr_ctrl_valid => wreg_ddr_ctrl_valid,
    wreg_ddr_addr => wreg_ddr_addr,
    wreg_ddr_addr_valid => wreg_ddr_addr_valid,
    wreg_ddr_len => wreg_ddr_len,
    wreg_ddr_len_valid => wreg_ddr_len_valid,
    wreg_out_ctrl => wreg_out_ctrl,
    wreg_out_ctrl_valid => wreg_out_ctrl_valid,
    wreg_out_sel => wreg_out_sel,
    wreg_out_sel_valid => wreg_out_sel_valid,
    wreg_out_level => wreg_out_level,
    wreg_out_level_valid => wreg_out_level_valid,
    wreg_out_startmode => wreg_out_startmode,
    wreg_out_startmode_valid => wreg_out_startmode_valid,
    wreg_out_start_targettime => wreg_out_start_targettime,
    wreg_out_start_targettime_valid => wreg_out_start_targettime_valid,
    wreg_out_start_subtime => wreg_out_start_subtime,
    wreg_out_start_subtime_valid => wreg_out_start_subtime_valid,
    wreg_out_start_subnum => wreg_out_start_subnum,
    wreg_out_start_subnum_valid => wreg_out_start_subnum_valid,
    wreg_out_start_subcycle => wreg_out_start_subcycle,
    wreg_out_start_subcycle_valid => wreg_out_start_subcycle_valid,
    wreg_out_start_trigmode1 => wreg_out_start_trigmode1,
    wreg_out_start_trigmode1_valid => wreg_out_start_trigmode1_valid,
    wreg_out_start_trigmode2 => wreg_out_start_trigmode2,
    wreg_out_start_trigmode2_valid => wreg_out_start_trigmode2_valid,
    wreg_out_start_trigmode3 => wreg_out_start_trigmode3,
    wreg_out_start_trigmode3_valid => wreg_out_start_trigmode3_valid,
    wreg_out_start_trigmode4 => wreg_out_start_trigmode4,
    wreg_out_start_trigmode4_valid => wreg_out_start_trigmode4_valid,
    wreg_out_trig_threshold_p => wreg_out_trig_threshold_p,
    wreg_out_trig_threshold_p_valid => wreg_out_trig_threshold_p_valid,
    wreg_out_trig_threshold_n => wreg_out_trig_threshold_n,
    wreg_out_trig_threshold_n_valid => wreg_out_trig_threshold_n_valid,
    wreg_out_trig_risetime => wreg_out_trig_risetime,
    wreg_out_trig_risetime_valid => wreg_out_trig_risetime_valid,
    wreg_out_trig_droptime => wreg_out_trig_droptime,
    wreg_out_trig_droptime_valid => wreg_out_trig_droptime_valid,
    wreg_out_trig_pulsewidth => wreg_out_trig_pulsewidth,
    wreg_out_trig_pulsewidth_valid => wreg_out_trig_pulsewidth_valid,
    wreg_out_trig_riseratio => wreg_out_trig_riseratio,
    wreg_out_trig_riseratio_valid => wreg_out_trig_riseratio_valid,
    wreg_out_trig_dropratio => wreg_out_trig_dropratio,
    wreg_out_trig_dropratio_valid => wreg_out_trig_dropratio_valid,
    wreg_out_trig_rmsvalue => wreg_out_trig_rmsvalue,
    wreg_out_trig_rmsvalue_valid => wreg_out_trig_rmsvalue_valid,
    wreg_out_time_rd_en => wreg_out_time_rd_en,
    wreg_out_time_rd_data => wreg_out_time_rd_data,
    wreg_out_time_rd_len => wreg_out_time_rd_len,
    wreg_ch_zero_cal => wreg_ch_zero_cal,
    wreg_ch_zero_cal_valid => wreg_ch_zero_cal_valid,
    wreg_ch_sample_rate => wreg_ch_sample_rate,
    wreg_ch_sample_rate_valid => wreg_ch_sample_rate_valid,
    wreg_ch_sign_handle => wreg_ch_sign_handle,
    wreg_ch_sign_handle_valid => wreg_ch_sign_handle_valid,
    wreg_ch_main_amp => wreg_ch_main_amp,
    wreg_ch_main_amp_valid => wreg_ch_main_amp_valid,
    wreg_ch_pre_amp => wreg_ch_pre_amp,
    wreg_ch_pre_amp_valid => wreg_ch_pre_amp_valid,
    wreg_ch_v_amp => wreg_ch_v_amp,
    wreg_ch_v_amp_valid => wreg_ch_v_amp_valid,
    wreg_ch_i_amp => wreg_ch_i_amp,
    wreg_ch_i_amp_valid => wreg_ch_i_amp_valid,
    wreg_ch_noise_comp => wreg_ch_noise_comp,
    wreg_ch_noise_comp_valid => wreg_ch_noise_comp_valid,
    wreg_ch_noise_amp_cof => wreg_ch_noise_amp_cof,
    wreg_ch_noise_amp_cof_valid => wreg_ch_noise_amp_cof_valid,
    wreg_ch_noise_delay => wreg_ch_noise_delay,
    wreg_ch_noise_delay_valid => wreg_ch_noise_delay_valid,
    wreg_ch_start_targettime => wreg_ch_start_targettime,
    wreg_ch_start_targettime_valid => wreg_ch_start_targettime_valid,
    wreg_ch_start_sustime => wreg_ch_start_sustime,
    wreg_ch_start_sustime_valid => wreg_ch_start_sustime_valid,
    wreg_ch_start_susnum => wreg_ch_start_susnum,
    wreg_ch_start_susnum_valid => wreg_ch_start_susnum_valid,
    wreg_ch_start_suscycle => wreg_ch_start_suscycle,
    wreg_ch_start_suscycle_valid => wreg_ch_start_suscycle_valid,
    wreg_ch_stop_sustime => wreg_ch_stop_sustime,
    wreg_ch_stop_sustime_valid => wreg_ch_stop_sustime_valid,
    wreg_ch_stop_susnum => wreg_ch_stop_susnum,
    wreg_ch_stop_susnum_valid => wreg_ch_stop_susnum_valid,
    wreg_ch_stop_suscycle => wreg_ch_stop_suscycle,
    wreg_ch_stop_suscycle_valid => wreg_ch_stop_suscycle_valid,
    wreg_ch_trig_threshold_p => wreg_ch_trig_threshold_p,
    wreg_ch_trig_threshold_p_valid => wreg_ch_trig_threshold_p_valid,
    wreg_ch_trig_threshold_n => wreg_ch_trig_threshold_n,
    wreg_ch_trig_threshold_n_valid => wreg_ch_trig_threshold_n_valid,
    wreg_ch_trig_risetime => wreg_ch_trig_risetime,
    wreg_ch_trig_risetime_valid => wreg_ch_trig_risetime_valid,
    wreg_ch_trig_droptime => wreg_ch_trig_droptime,
    wreg_ch_trig_droptime_valid => wreg_ch_trig_droptime_valid,
    wreg_ch_trig_pulsewidth => wreg_ch_trig_pulsewidth,
    wreg_ch_trig_pulsewidth_valid => wreg_ch_trig_pulsewidth_valid,
    wreg_ch_trig_riseratio => wreg_ch_trig_riseratio,
    wreg_ch_trig_riseratio_valid => wreg_ch_trig_riseratio_valid,
    wreg_ch_trig_dropratio => wreg_ch_trig_dropratio,
    wreg_ch_trig_dropratio_valid => wreg_ch_trig_dropratio_valid,
    wreg_ch_trig_rmsvalue => wreg_ch_trig_rmsvalue,
    wreg_ch_trig_rmsvalue_valid => wreg_ch_trig_rmsvalue_valid,
    wreg_ch_filter_rd_en => wreg_ch_filter_rd_en,
    wreg_ch_filter_rd_data => wreg_ch_filter_rd_data,
    wreg_ch_filter_rd_len => wreg_ch_filter_rd_len,
    rreg_series_status => rreg_series_status,
    rreg_series_status_valid => rreg_series_status_valid,
    rreg_series_starttime => rreg_series_starttime,
    rreg_series_starttime_valid => rreg_series_starttime_valid,
    rreg_series_stoptime => rreg_series_stoptime,
    rreg_series_stoptime_valid => rreg_series_stoptime_valid,
    rreg_series_maxdata => rreg_series_maxdata,
    rreg_series_maxdata_valid => rreg_series_maxdata_valid,
    rreg_series_data_wr_clk => rreg_series_data_wr_clk,
    rreg_series_data_wr_en => rreg_series_data_wr_en,
    rreg_series_data_wr_addr => rreg_series_data_wr_addr,
    rreg_series_data_wr_data => rreg_series_data_wr_data,
    rreg_series_trigger_starttime => rreg_series_trigger_starttime,
    rreg_series_trigger_starttime_valid => rreg_series_trigger_starttime_valid,
    rreg_series_trigger_stoptime => rreg_series_trigger_stoptime,
    rreg_series_trigger_stoptime_valid => rreg_series_trigger_stoptime_valid,
    wreg_series_ctrl => wreg_series_ctrl,
    wreg_series_ctrl_valid => wreg_series_ctrl_valid,
    wreg_series_data_type => wreg_series_data_type,
    wreg_series_data_type_valid => wreg_series_data_type_valid,
    wreg_series_sample_cycle => wreg_series_sample_cycle,
    wreg_series_sample_cycle_valid => wreg_series_sample_cycle_valid,
    wreg_series_comp_ratio => wreg_series_comp_ratio,
    wreg_series_comp_ratio_valid => wreg_series_comp_ratio_valid,
    wreg_series_comp_num => wreg_series_comp_num,
    wreg_series_comp_num_valid => wreg_series_comp_num_valid,
    wreg_series_validmode_data => wreg_series_validmode_data,
    wreg_series_validmode_data_valid => wreg_series_validmode_data_valid,
    wreg_series_start_ddraddr => wreg_series_start_ddraddr,
    wreg_series_start_ddraddr_valid => wreg_series_start_ddraddr_valid,
    wreg_series_stop_ddraddr => wreg_series_stop_ddraddr,
    wreg_series_stop_ddraddr_valid => wreg_series_stop_ddraddr_valid,
    wreg_series_startmode => wreg_series_startmode,
    wreg_series_startmode_valid => wreg_series_startmode_valid,
    wreg_series_star_trigmode1 => wreg_series_star_trigmode1,
    wreg_series_star_trigmode1_valid => wreg_series_star_trigmode1_valid,
    wreg_series_star_trigmode2 => wreg_series_star_trigmode2,
    wreg_series_star_trigmode2_valid => wreg_series_star_trigmode2_valid,
    wreg_series_star_trigmode3 => wreg_series_star_trigmode3,
    wreg_series_star_trigmode3_valid => wreg_series_star_trigmode3_valid,
    wreg_series_star_trigmode4 => wreg_series_star_trigmode4,
    wreg_series_star_trigmode4_valid => wreg_series_star_trigmode4_valid,
    wreg_series_stopmode => wreg_series_stopmode,
    wreg_series_stopmode_valid => wreg_series_stopmode_valid,
    wreg_series_stop_trigmode1 => wreg_series_stop_trigmode1,
    wreg_series_stop_trigmode1_valid => wreg_series_stop_trigmode1_valid,
    wreg_series_stop_trigmode2 => wreg_series_stop_trigmode2,
    wreg_series_stop_trigmode2_valid => wreg_series_stop_trigmode2_valid,
    wreg_series_stop_trigmode3 => wreg_series_stop_trigmode3,
    wreg_series_stop_trigmode3_valid => wreg_series_stop_trigmode3_valid,
    wreg_series_stop_trigmode4 => wreg_series_stop_trigmode4,
    wreg_series_stop_trigmode4_valid => wreg_series_stop_trigmode4_valid,
    wreg_series_seek_startime => wreg_series_seek_startime,
    wreg_series_seek_startime_valid => wreg_series_seek_startime_valid,
    wreg_series_seek_zoom => wreg_series_seek_zoom,
    wreg_series_seek_zoom_valid => wreg_series_seek_zoom_valid,
    wreg_series_seek_datalen => wreg_series_seek_datalen,
    wreg_series_seek_datalen_valid => wreg_series_seek_datalen_valid
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file isa_handle_0.vhd when simulating
-- the core, isa_handle_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

