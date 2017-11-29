`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 08:15:06
// Design Name: 
// Module Name: isa_handle
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module isa_handle(
      input reset,//input reset enable=low
      input clk,//input
      input pin_isa_cs,//input
      input pin_isa_wr,//input
      input pin_isa_rd,//input
      input pin_isa_adv,//input
      inout[7:0] pin_isa_data,//input        
      output wire [7:0]isa_getdata,
      //发送参数
       
      //////////////////////////////////////////////////系统参数    
      //发送的数据
      input [7:0]rreg_system_debug1,
      input rreg_system_debug1_valid,
      input [7:0]rreg_system_debug2,
      input rreg_system_debug2_valid,
      input [7:0]rreg_system_debug3,
      input rreg_system_debug3_valid,
      input [7:0]rreg_system_debug4,    
      input rreg_system_debug4_valid,          
      input [7:0]rreg_system_status,
      input rreg_system_status_valid,
      input [47:0]rreg_system_version,
      input rreg_system_version_valid,
      input [63:0]rreg_system_rtctime,
      input rreg_system_rtctime_valid,
      input [15:0]rreg_system_batteryvalue,
      input rreg_system_batteryvalue_valid,
      input [7:0]rreg_system_syncstatus,
      input rreg_system_syncstatus_valid,
      input [31:0]rreg_system_syncfrq,
      input rreg_system_syncfrq_valid,
      //读取的参数
      output wire [7:0] wreg_system_ctrl,
      output wire wreg_system_ctrl_valid,     
      output wire [7:0] wreg_system_sel_rtc,
      output wire wreg_system_sel_rtc_valid,     
      output wire [63:0] wreg_system_set_rtctime,
      output wire wreg_system_set_rtctime_valid,     
      output wire [15:0] wreg_system_sync_minfrq,
      output wire wreg_system_sync_minfrq_valid, 
      output wire [15:0] wreg_system_sync_max,
      output wire wreg_system_sync_max_valid,     
      output wire [7:0] wreg_system_sync_sel,
      output wire wreg_system_sync_sel_valid,     
      output wire [7:0] wreg_system_ch_sel,
      output wire wreg_system_ch_sel_valid,  
      
      ///////////////////////////////////////////////////mem存储
      //发送的数据
      input [7:0]rreg_mem_status,
      input rreg_mem_status_valid,   
      input rreg_mem_data_wr_en,
      input [15:0] rreg_mem_data_wr_addr,
      input [7:0] rreg_mem_data_wr_data,
      //读取的状态
      input wreg_mem_rd_en,//EPROM读使能
      output wire [7:0] wreg_mem_ctrl,
      output wire wreg_mem_ctrl_valid,     
      output wire [15:0] wreg_mem_addr,
      output wire wreg_mem_addr_valid,
      output wire [7:0] wreg_mem_len,
      output wire wreg_mem_len_valid,  
      output wire [7:0] wreg_mem_rd_data,                 
      output wire [4:0] wreg_mem_rd_len,
      ///////////////////////////////////////////////////ddr读写数据
      //发送的数据
      input [7:0]rreg_ddr_status,
      input rreg_ddr_status_valid,   
      input rreg_ddr_data_wr_clk,
      input rreg_ddr_data_wr_en,
      input [15:0] rreg_ddr_data_wr_addr,
      input [31:0] rreg_ddr_data_wr_data,  
      //获取的参数
      output wire [7:0] wreg_ddr_ctrl,
      output wire wreg_ddr_ctrl_valid,    
      output wire [31:0] wreg_ddr_addr,
      output wire wreg_ddr_addr_valid,
      output wire [31:0] wreg_ddr_len,
      output wire wreg_ddr_len_valid,
      //////////////////////////////////////////////////////////////输出端口寄存器
      output wire [7:0] wreg_out_ctrl,
      output wire wreg_out_ctrl_valid,
      output wire [7:0] wreg_out_sel,
      output wire wreg_out_sel_valid,         
      output wire [7:0] wreg_out_level,
      output wire wreg_out_level_valid,
      output wire [7:0] wreg_out_startmode,
      output wire wreg_out_startmode_valid,
      output wire [63:0] wreg_out_start_targettime,
      output wire wreg_out_start_targettime_valid,
      output wire [31:0] wreg_out_start_subtime,
      output wire wreg_out_start_subtime_valid,
      output wire [31:0] wreg_out_start_subnum,
      output wire wreg_out_start_subnum_valid,
      output wire [7:0] wreg_out_start_subcycle,
      output wire wreg_out_start_subcycle_valid,
      output wire [31:0] wreg_out_start_trigmode1,
      output wire wreg_out_start_trigmode1_valid,
      output wire [31:0] wreg_out_start_trigmode2,
      output wire wreg_out_start_trigmode2_valid,                             
      output wire [31:0] wreg_out_start_trigmode3,
      output wire wreg_out_start_trigmode3_valid,      
      output wire [31:0] wreg_out_start_trigmode4,
      output wire wreg_out_start_trigmode4_valid,  
      output wire [15:0] wreg_out_trig_threshold_p,
      output wire wreg_out_trig_threshold_p_valid,   
      output wire [15:0] wreg_out_trig_threshold_n,
      output wire wreg_out_trig_threshold_n_valid,   
      output wire [15:0] wreg_out_trig_risetime,
      output wire wreg_out_trig_risetime_valid,      
      output wire [15:0] wreg_out_trig_droptime,
      output wire wreg_out_trig_droptime_valid,    
      output wire [15:0] wreg_out_trig_pulsewidth,
      output wire wreg_out_trig_pulsewidth_valid,          
      output wire [7:0] wreg_out_trig_riseratio,
      output wire wreg_out_trig_riseratio_valid,       
      output wire [7:0] wreg_out_trig_dropratio,
      output wire wreg_out_trig_dropratio_valid,         
      output wire [15:0] wreg_out_trig_rmsvalue,
      output wire wreg_out_trig_rmsvalue_valid,
      input wreg_out_time_rd_en,
      output wire [7:0] wreg_out_time_rd_data,                 
      output wire [4:0] wreg_out_time_rd_len,   
      ///////////////////////////////////////////////////////////////////通道寄存器
      output wire [15:0] wreg_ch_zero_cal,
      output wire wreg_ch_zero_cal_valid,    
      output wire [15:0] wreg_ch_sample_rate,
      output wire wreg_ch_sample_rate_valid,    
      output wire [7:0] wreg_ch_sign_handle,
      output wire wreg_ch_sign_handle_valid,    
      output wire [7:0] wreg_ch_main_amp,
      output wire wreg_ch_main_amp_valid,        
      output wire [7:0] wreg_ch_pre_amp,
      output wire wreg_ch_pre_amp_valid,        
      output wire [7:0] wreg_ch_v_amp,
      output wire wreg_ch_v_amp_valid,       
      output wire [7:0] wreg_ch_i_amp,
      output wire wreg_ch_i_amp_valid,        
      output wire [7:0] wreg_ch_noise_comp,
      output wire wreg_ch_noise_comp_valid,        
      output wire [15:0] wreg_ch_noise_amp_cof,
      output wire wreg_ch_noise_amp_cof_valid,       
      output wire [7:0] wreg_ch_noise_delay,
      output wire wreg_ch_noise_delay_valid,        
      output wire [63:0] wreg_ch_start_targettime,
      output wire wreg_ch_start_targettime_valid,       
      output wire [31:0] wreg_ch_start_sustime,
      output wire wreg_ch_start_sustime_valid,       
      output wire [31:0] wreg_ch_start_susnum,
      output wire wreg_ch_start_susnum_valid,       
      output wire [7:0] wreg_ch_start_suscycle,
      output wire wreg_ch_start_suscycle_valid,        
      output wire [31:0] wreg_ch_stop_sustime,
      output wire wreg_ch_stop_sustime_valid,  
      output wire [31:0] wreg_ch_stop_susnum,
      output wire wreg_ch_stop_susnum_valid,            
      output wire [7:0] wreg_ch_stop_suscycle,
      output wire wreg_ch_stop_suscycle_valid,    
      output wire [15:0] wreg_ch_trig_threshold_p,
      output wire wreg_ch_trig_threshold_p_valid,       
      output wire [15:0] wreg_ch_trig_threshold_n,
      output wire wreg_ch_trig_threshold_n_valid,       
      output wire [15:0] wreg_ch_trig_risetime,
      output wire wreg_ch_trig_risetime_valid,           
      output wire [15:0] wreg_ch_trig_droptime,
      output wire wreg_ch_trig_droptime_valid, 
      output wire [15:0] wreg_ch_trig_pulsewidth,
      output wire wreg_ch_trig_pulsewidth_valid,       
      output wire [7:0] wreg_ch_trig_riseratio,
      output wire wreg_ch_trig_riseratio_valid,       
      output wire [7:0] wreg_ch_trig_dropratio,
      output wire wreg_ch_trig_dropratio_valid,           
      output wire [15:0] wreg_ch_trig_rmsvalue,
      output wire wreg_ch_trig_rmsvalue_valid,   
      input wreg_ch_filter_rd_en,  
      output wire [7:0] wreg_ch_filter_rd_data,                 
      output wire [3:0] wreg_ch_filter_rd_len,  
      /////////////////////////////////////////////////////////////连续数据
      //发送的数据
      input [7:0]rreg_series_status,
      input rreg_series_status_valid, 
      input [63:0]rreg_series_starttime,
      input rreg_series_starttime_valid, 
      input [63:0]rreg_series_stoptime,
      input rreg_series_stoptime_valid, 
      input [79:0]rreg_series_maxdata,
      input rreg_series_maxdata_valid, 
      input rreg_series_data_wr_clk,
      input rreg_series_data_wr_en,
      input [15:0] rreg_series_data_wr_addr,
      input [31:0] rreg_series_data_wr_data,
      input [63:0] rreg_series_trigger_starttime,
      input rreg_series_trigger_starttime_valid,
      input [63:0] rreg_series_trigger_stoptime,
      input rreg_series_trigger_stoptime_valid,     
      //读取的参数           
      output wire [7:0] wreg_series_ctrl,
      output wire wreg_series_ctrl_valid,    
      output wire [7:0] wreg_series_data_type,
      output wire wreg_series_data_type_valid,    
      output wire [7:0] wreg_series_sample_cycle,
      output wire wreg_series_sample_cycle_valid,   
      output wire [31:0] wreg_series_comp_ratio,
      output wire wreg_series_comp_ratio_valid,      
      output wire [15:0] wreg_series_comp_num,
      output wire wreg_series_comp_num_valid,       
      output wire [31:0] wreg_series_validmode_data,
      output wire wreg_series_validmode_data_valid,       
      output wire [31:0] wreg_series_start_ddraddr,
      output wire wreg_series_start_ddraddr_valid,       
      output wire [31:0] wreg_series_stop_ddraddr,
      output wire wreg_series_stop_ddraddr_valid,       
      output wire [7:0] wreg_series_startmode,
      output wire wreg_series_startmode_valid,      
      output wire [31:0] wreg_series_star_trigmode1,
      output wire wreg_series_star_trigmode1_valid,            
      output wire [31:0] wreg_series_star_trigmode2,
      output wire wreg_series_star_trigmode2_valid,   
      output wire [31:0] wreg_series_star_trigmode3,
      output wire wreg_series_star_trigmode3_valid,       
      output wire [31:0] wreg_series_star_trigmode4,
      output wire wreg_series_star_trigmode4_valid,      
      output wire [7:0] wreg_series_stopmode,
      output wire wreg_series_stopmode_valid,       
      output wire [31:0] wreg_series_stop_trigmode1,
      output wire wreg_series_stop_trigmode1_valid,      
      output wire [31:0] wreg_series_stop_trigmode2,
      output wire wreg_series_stop_trigmode2_valid,      
      output wire [31:0] wreg_series_stop_trigmode3,
      output wire wreg_series_stop_trigmode3_valid,       
      output wire [31:0] wreg_series_stop_trigmode4,
      output wire wreg_series_stop_trigmode4_valid,   
      output wire [63:0] wreg_series_seek_startime,
      output wire wreg_series_seek_startime_valid,      
      output wire [31:0] wreg_series_seek_zoom,
      output wire wreg_series_seek_zoom_valid,     
      output wire [31:0] wreg_series_seek_datalen,
      output wire wreg_series_seek_datalen_valid            
      
    );
////////////////////////////////////////////////////////////////////////
//bus isa    
wire isa_reset,isa_clk,isa_cs,isa_wr,isa_rd,isa_adv;
wire [7:0] isa_senddata;   
 ////////////////////////////////////////////////////////////////////////
//  端口数据输入输出三态
////////////////////////////////////////////////////////////////////////
isa_inout   inout_isa(        
            .reset(reset),//input
            .clk(clk),//input            
            .pin_isa_cs(pin_isa_cs), //input
            .pin_isa_rd(pin_isa_rd), //input
            .pin_isa_wr(pin_isa_wr), //input    
            .pin_isa_adv(pin_isa_adv), //input 
            .pin_isa_data(pin_isa_data), //input
            .isa_senddata(isa_senddata), //input senddata 
            .isa_reset(isa_reset),//out
            .isa_clk(isa_clk), //out 
            .isa_cs(isa_cs),//out
            .isa_wr(isa_wr),//out
            .isa_rd(isa_rd),//out
            .isa_adv(isa_adv),//out
            .isa_getdata(isa_getdata)// output getdata 
   );

////////////////////////////////////////////////////////////////////////
//
//  发送数据
//
//////////////////////////////////////////////////////////////////////// 
isa_send_param  send_param_all(
    .isa_reset(isa_reset),//in
    .isa_clk(isa_clk),//in    
    .isa_cs(isa_cs),//in
    .isa_wr(isa_wr),//in
    .isa_rd(isa_rd),//in
    .isa_adv(isa_adv),//in   
    .isa_getdata(isa_getdata),//in   
    .isa_senddata(isa_senddata),//out    
        
     ///////////////////////////////////////////////////////////////////////////////系统参数
     .rreg_system_debug1(rreg_system_debug1),
     .rreg_system_debug1_valid(rreg_system_debug1_valid),
     .rreg_system_debug2(rreg_system_debug2),
     .rreg_system_debug2_valid(rreg_system_debug2_valid),
     .rreg_system_debug3(rreg_system_debug3),
     .rreg_system_debug3_valid(rreg_system_debug3_valid),
     .rreg_system_debug4(rreg_system_debug4),
     .rreg_system_debug4_valid(rreg_system_debug4_valid),
     .rreg_system_status(rreg_system_status),
     .rreg_system_status_valid(rreg_system_status_valid),    
     .rreg_system_version(rreg_system_version),
     .rreg_system_version_valid(rreg_system_version_valid),
     .rreg_system_rtctime(rreg_system_rtctime),
     .rreg_system_rtctime_valid(rreg_system_rtctime_valid),
     .rreg_system_batteryvalue(rreg_system_batteryvalue),
     .rreg_system_batteryvalue_valid(rreg_system_batteryvalue_valid),
     .rreg_system_syncstatus(rreg_system_syncstatus),
     .rreg_system_syncstatus_valid(rreg_system_syncstatus_valid),
     .rreg_system_syncfrq(rreg_system_syncfrq),
     .rreg_system_syncfrq_valid(rreg_system_syncfrq_valid),
      //mem存储
     .rreg_mem_status(rreg_mem_status),
     .rreg_mem_status_valid(rreg_mem_status_valid),   
     .rreg_mem_data_wr_en(rreg_mem_data_wr_en),
     .rreg_mem_data_wr_addr(rreg_mem_data_wr_addr),
     .rreg_mem_data_wr_data(rreg_mem_data_wr_data),
      //ddr读写数据
     .rreg_ddr_status(rreg_ddr_status),
     .rreg_ddr_status_valid(rreg_ddr_status_valid),   
     .rreg_ddr_data_wr_clk(rreg_ddr_data_wr_clk),
     .rreg_ddr_data_wr_en(rreg_ddr_data_wr_en),
     .rreg_ddr_data_wr_addr(rreg_ddr_data_wr_addr),
     .rreg_ddr_data_wr_data(rreg_ddr_data_wr_data),
      //连续数据
     .rreg_series_status(rreg_series_status),
     .rreg_series_status_valid(rreg_series_status_valid), 
     .rreg_series_starttime(rreg_series_starttime),
     .rreg_series_starttime_valid(rreg_series_starttime_valid), 
     .rreg_series_stoptime(rreg_series_stoptime),
     .rreg_series_stoptime_valid(rreg_series_stoptime_valid), 
     .rreg_series_maxdata(rreg_series_maxdata),
     .rreg_series_maxdata_valid(rreg_series_maxdata_valid), 
     .rreg_series_data_wr_clk(rreg_series_data_wr_clk),
     .rreg_series_data_wr_en(rreg_series_data_wr_en),
     .rreg_series_data_wr_addr(rreg_series_data_wr_addr), 
     .rreg_series_data_wr_data(rreg_series_data_wr_data),
     .rreg_series_trigger_starttime(rreg_series_trigger_starttime),
     .rreg_series_trigger_starttime_valid(rreg_series_trigger_starttime_valid),
     .rreg_series_trigger_stoptime(rreg_series_trigger_stoptime),
     .rreg_series_trigger_stoptime_valid(rreg_series_trigger_stoptime_valid)      
 
 ); 
 

////////////////////////////////////////////////////////////////////////
//  获取系统寄存器
////////////////////////////////////////////////////////////////////////
 get_param_sysytem   get_system_param(     
     .isa_reset(isa_reset),
     .isa_clk(isa_clk),    
     .isa_cs(isa_cs),
     .isa_wr(isa_wr),
     .isa_rd(isa_rd),
     .isa_adv(isa_adv),   
     .isa_getdata(isa_getdata),     
     .wreg_system_ctrl(wreg_system_ctrl),
     .wreg_system_ctrl_valid(wreg_system_ctrl_valid),     
     .wreg_system_sel_rtc(wreg_system_sel_rtc),
     .wreg_system_sel_rtc_valid(wreg_system_sel_rtc_valid),     
     .wreg_system_set_rtctime(wreg_system_set_rtctime),
     .wreg_system_set_rtctime_valid(wreg_system_set_rtctime_valid),     
     .wreg_system_sync_minfrq(wreg_system_sync_minfrq),
     .wreg_system_sync_minfrq_valid(wreg_system_sync_minfrq_valid), 
     .wreg_system_sync_max(wreg_system_sync_max),
     .wreg_system_sync_max_valid(wreg_system_sync_max_valid),     
     .wreg_system_sync_sel(wreg_system_sync_sel),
     .wreg_system_sync_sel_valid(wreg_system_sync_sel_valid),     
     .wreg_system_ch_sel(wreg_system_ch_sel),
     .wreg_system_ch_sel_valid(wreg_system_ch_sel_valid)        
 );    
 ////////////////////////////////////////////////////////////////////////
 //  DDR 接口控制寄存器
 ////////////////////////////////////////////////////////////////////////
  get_param_ddr  get_ddr_param(
      .isa_reset(isa_reset),
      .isa_clk(isa_clk),    
      .isa_cs(isa_cs),
      .isa_wr(isa_wr),
      .isa_rd(isa_rd),
      .isa_adv(isa_adv),   
      .isa_getdata(isa_getdata),       
      .wreg_ddr_ctrl(wreg_ddr_ctrl),
      .wreg_ddr_ctrl_valid(wreg_ddr_ctrl_valid),    
      .wreg_ddr_addr(wreg_ddr_addr),
      .wreg_ddr_addr_valid(wreg_ddr_addr_valid),
      .wreg_ddr_len(wreg_ddr_len),
      .wreg_ddr_len_valid(wreg_ddr_len_valid)  
 
 );
 ////////////////////////////////////////////////////////////////////////
 //  端口输出寄存器
 ////////////////////////////////////////////////////////////////////////
  get_param_out  get_out_param(
      .isa_reset(isa_reset),
      .isa_clk(isa_clk),    
      .isa_cs(isa_cs),
      .isa_wr(isa_wr),
      .isa_rd(isa_rd),
      .isa_adv(isa_adv),   
      .isa_getdata(isa_getdata),    
      .wreg_out_ctrl(wreg_out_ctrl),
      .wreg_out_ctrl_valid(wreg_out_ctrl_valid),
      .wreg_out_sel(wreg_out_sel),
      .wreg_out_sel_valid(wreg_out_sel_valid), 
      .wreg_out_level(wreg_out_level),
      .wreg_out_level_valid(wreg_out_level_valid),     
      .wreg_out_startmode(wreg_out_startmode),
      .wreg_out_startmode_valid(wreg_out_startmode_valid),
      .wreg_out_start_targettime(wreg_out_start_targettime),
      .wreg_out_start_targettime_valid(wreg_out_start_targettime_valid),
      .wreg_out_start_subtime(wreg_out_start_subtime),
      .wreg_out_start_subtime_valid(wreg_out_start_subtime_valid),
      .wreg_out_start_subnum(wreg_out_start_subnum),
      .wreg_out_start_subnum_valid(wreg_out_start_subnum_valid),
      .wreg_out_start_subcycle(wreg_out_start_subcycle),
      .wreg_out_start_subcycle_valid(wreg_out_start_subcycle_valid),
      .wreg_out_start_trigmode1(wreg_out_start_trigmode1),
      .wreg_out_start_trigmode1_valid(wreg_out_start_trigmode1_valid),
      .wreg_out_start_trigmode2(wreg_out_start_trigmode2),
      .wreg_out_start_trigmode2_valid(wreg_out_start_trigmode2_valid),                             
      .wreg_out_start_trigmode3(wreg_out_start_trigmode3),
      .wreg_out_start_trigmode3_valid(wreg_out_start_trigmode3_valid),      
      .wreg_out_start_trigmode4(wreg_out_start_trigmode4),
      .wreg_out_start_trigmode4_valid(wreg_out_start_trigmode4_valid),  
      .wreg_out_trig_threshold_p(wreg_out_trig_threshold_p),
      .wreg_out_trig_threshold_p_valid(wreg_out_trig_threshold_p_valid),   
      .wreg_out_trig_threshold_n(wreg_out_trig_threshold_n),
      .wreg_out_trig_threshold_n_valid(wreg_out_trig_threshold_n_valid),   
      .wreg_out_trig_risetime(wreg_out_trig_risetime),
      .wreg_out_trig_risetime_valid(wreg_out_trig_risetime_valid),      
      .wreg_out_trig_droptime(wreg_out_trig_droptime),
      .wreg_out_trig_droptime_valid(wreg_out_trig_droptime_valid),    
      .wreg_out_trig_pulsewidth(wreg_out_trig_pulsewidth),
      .wreg_out_trig_pulsewidth_valid(wreg_out_trig_pulsewidth_valid),          
      .wreg_out_trig_riseratio(wreg_out_trig_riseratio),
      .wreg_out_trig_riseratio_valid(wreg_out_trig_riseratio_valid),       
      .wreg_out_trig_dropratio(wreg_out_trig_dropratio),
      .wreg_out_trig_dropratio_valid(wreg_out_trig_dropratio_valid),         
      .wreg_out_trig_rmsvalue(wreg_out_trig_rmsvalue),
      .wreg_out_trig_rmsvalue_valid(wreg_out_trig_rmsvalue_valid),
      .wreg_out_time_rd_en(wreg_out_time_rd_en),
      .wreg_out_time_rd_data(wreg_out_time_rd_data),                 
      .wreg_out_time_rd_len(wreg_out_time_rd_len)   
                
 );  
 ////////////////////////////////////////////////////////////////////////
 //  EPROM控制寄存器
 ////////////////////////////////////////////////////////////////////////
  get_param_mem get_mem_param( 
      .isa_reset(isa_reset),
      .isa_clk(isa_clk),    
      .isa_cs(isa_cs),
      .isa_wr(isa_wr),
      .isa_rd(isa_rd),
      .isa_adv(isa_adv),   
      .isa_getdata(isa_getdata),  
      .wreg_mem_rd_en(wreg_mem_rd_en),//in    
      .wreg_mem_ctrl(wreg_mem_ctrl),//out
      .wreg_mem_ctrl_valid(wreg_mem_ctrl_valid),     
      .wreg_mem_addr(wreg_mem_addr),
      .wreg_mem_addr_valid(wreg_mem_addr_valid),
      .wreg_mem_len(wreg_mem_len),
      .wreg_mem_len_valid(wreg_mem_len_valid),
      .wreg_mem_rd_data(wreg_mem_rd_data),                 
      .wreg_mem_rd_len(wreg_mem_rd_len)      
   );
 ////////////////////////////////////////////////////////////////////////
 // 通道控制寄存器
 //////////////////////////////////////////////////////////////////////// 
  get_param_ch  get_ch_param(
      .isa_reset(isa_reset),
      .isa_clk(isa_clk),    
      .isa_cs(isa_cs),
      .isa_wr(isa_wr),
      .isa_rd(isa_rd),
      .isa_adv(isa_adv),   
      .isa_getdata(isa_getdata),       
      .wreg_ch_zero_cal(wreg_ch_zero_cal),
     .wreg_ch_zero_cal_valid(wreg_ch_zero_cal_valid),    
     .wreg_ch_sample_rate(wreg_ch_sample_rate),
     .wreg_ch_sample_rate_valid(wreg_ch_sample_rate_valid),    
     .wreg_ch_sign_handle(wreg_ch_sign_handle),
     .wreg_ch_sign_handle_valid(wreg_ch_sign_handle_valid),    
     .wreg_ch_main_amp(wreg_ch_main_amp),
     .wreg_ch_main_amp_valid(wreg_ch_main_amp_valid),        
     .wreg_ch_pre_amp(wreg_ch_pre_amp),
     .wreg_ch_pre_amp_valid(wreg_ch_pre_amp_valid),        
     .wreg_ch_v_amp(wreg_ch_v_amp),
     .wreg_ch_v_amp_valid(wreg_ch_v_amp_valid),       
     .wreg_ch_i_amp(wreg_ch_i_amp),
     .wreg_ch_i_amp_valid(wreg_ch_i_amp_valid),        
     .wreg_ch_noise_comp(wreg_ch_noise_comp),
     .wreg_ch_noise_comp_valid(wreg_ch_noise_comp_valid),        
     .wreg_ch_noise_amp_cof(wreg_ch_noise_amp_cof),
     .wreg_ch_noise_amp_cof_valid(wreg_ch_noise_amp_cof_valid),       
     .wreg_ch_noise_delay(wreg_ch_noise_delay),
     .wreg_ch_noise_delay_valid(wreg_ch_noise_delay_valid),        
     .wreg_ch_start_targettime(wreg_ch_start_targettime),
     .wreg_ch_start_targettime_valid(wreg_ch_start_targettime_valid),       
     .wreg_ch_start_sustime(wreg_ch_start_sustime),
     .wreg_ch_start_sustime_valid(wreg_ch_start_sustime_valid),       
     .wreg_ch_start_susnum(wreg_ch_start_susnum),
     .wreg_ch_start_susnum_valid(wreg_ch_start_susnum_valid),       
     .wreg_ch_start_suscycle(wreg_ch_start_suscycle),
     .wreg_ch_start_suscycle_valid(wreg_ch_start_suscycle_valid),        
     .wreg_ch_stop_sustime(wreg_ch_stop_sustime),
     .wreg_ch_stop_sustime_valid(wreg_ch_stop_sustime_valid),  
     .wreg_ch_stop_susnum(wreg_ch_stop_susnum),
     .wreg_ch_stop_susnum_valid(wreg_ch_stop_susnum_valid),            
     .wreg_ch_stop_suscycle(wreg_ch_stop_suscycle),
     .wreg_ch_stop_suscycle_valid(wreg_ch_stop_suscycle_valid),    
     .wreg_ch_trig_threshold_p(wreg_ch_trig_threshold_p),
     .wreg_ch_trig_threshold_p_valid(wreg_ch_trig_threshold_p_valid),       
     .wreg_ch_trig_threshold_n(wreg_ch_trig_threshold_n),
     .wreg_ch_trig_threshold_n_valid(wreg_ch_trig_threshold_n_valid),       
     .wreg_ch_trig_risetime(wreg_ch_trig_risetime),
     .wreg_ch_trig_risetime_valid(wreg_ch_trig_risetime_valid),           
     .wreg_ch_trig_droptime(wreg_ch_trig_droptime),
     .wreg_ch_trig_droptime_valid(wreg_ch_trig_droptime_valid), 
     .wreg_ch_trig_pulsewidth(wreg_ch_trig_pulsewidth),
     .wreg_ch_trig_pulsewidth_valid(wreg_ch_trig_pulsewidth_valid),       
     .wreg_ch_trig_riseratio(wreg_ch_trig_riseratio),
     .wreg_ch_trig_riseratio_valid(wreg_ch_trig_riseratio_valid),       
     .wreg_ch_trig_dropratio(wreg_ch_trig_dropratio),
     .wreg_ch_trig_dropratio_valid(wreg_ch_trig_dropratio_valid),           
     .wreg_ch_trig_rmsvalue(wreg_ch_trig_rmsvalue),
     .wreg_ch_trig_rmsvalue_valid(wreg_ch_trig_rmsvalue_valid),  
     .wreg_ch_filter_rd_en(wreg_ch_filter_rd_en),//in    
     .wreg_ch_filter_rd_data(wreg_ch_filter_rd_data),                 
     .wreg_ch_filter_rd_len(wreg_ch_filter_rd_len)  
              
 );
 ////////////////////////////////////////////////////////////////////////
 // 连续寄存器
 //////////////////////////////////////////////////////////////////////// 
get_param_series  get_series_param(
       .isa_reset(isa_reset),
       .isa_clk(isa_clk),    
       .isa_cs(isa_cs),
       .isa_wr(isa_wr),
       .isa_rd(isa_rd),
       .isa_adv(isa_adv),   
       .isa_getdata(isa_getdata),  
       .wreg_series_ctrl(wreg_series_ctrl),
       .wreg_series_ctrl_valid(wreg_series_ctrl_valid),    
       .wreg_series_data_type(wreg_series_data_type),
       .wreg_series_data_type_valid(wreg_series_data_type_valid),    
       .wreg_series_sample_cycle(wreg_series_sample_cycle),
       .wreg_series_sample_cycle_valid(wreg_series_sample_cycle_valid),   
       .wreg_series_comp_ratio(wreg_series_comp_ratio),
       .wreg_series_comp_ratio_valid(wreg_series_comp_ratio_valid),      
       .wreg_series_comp_num(wreg_series_comp_num),
       .wreg_series_comp_num_valid(wreg_series_comp_num_valid),       
       .wreg_series_validmode_data(wreg_series_validmode_data),
       .wreg_series_validmode_data_valid(wreg_series_validmode_data_valid),       
       .wreg_series_start_ddraddr(wreg_series_start_ddraddr),
       .wreg_series_start_ddraddr_valid(wreg_series_start_ddraddr_valid),       
       .wreg_series_stop_ddraddr(wreg_series_stop_ddraddr),
       .wreg_series_stop_ddraddr_valid(wreg_series_stop_ddraddr_valid),       
       .wreg_series_startmode(wreg_series_startmode),
       .wreg_series_startmode_valid(wreg_series_startmode_valid),      
       .wreg_series_star_trigmode1(wreg_series_star_trigmode1),
       .wreg_series_star_trigmode1_valid(wreg_series_star_trigmode1_valid),            
       .wreg_series_star_trigmode2(wreg_series_star_trigmode2),
       .wreg_series_star_trigmode2_valid(wreg_series_star_trigmode2_valid),   
       .wreg_series_star_trigmode3(wreg_series_star_trigmode3),
       .wreg_series_star_trigmode3_valid(wreg_series_star_trigmode3_valid),       
       .wreg_series_star_trigmode4(wreg_series_star_trigmode4),
       .wreg_series_star_trigmode4_valid(wreg_series_star_trigmode4_valid),      
       .wreg_series_stopmode(wreg_series_stopmode),
       .wreg_series_stopmode_valid(wreg_series_stopmode_valid),       
       .wreg_series_stop_trigmode1(wreg_series_stop_trigmode1),
       .wreg_series_stop_trigmode1_valid(wreg_series_stop_trigmode1_valid),      
       .wreg_series_stop_trigmode2(wreg_series_stop_trigmode2),
       .wreg_series_stop_trigmode2_valid(wreg_series_stop_trigmode2_valid),      
       .wreg_series_stop_trigmode3(wreg_series_stop_trigmode3),
       .wreg_series_stop_trigmode3_valid(wreg_series_stop_trigmode3_valid),       
       .wreg_series_stop_trigmode4(wreg_series_stop_trigmode4),
       .wreg_series_stop_trigmode4_valid(wreg_series_stop_trigmode4_valid),   
       .wreg_series_seek_startime(wreg_series_seek_startime),
       .wreg_series_seek_startime_valid(wreg_series_seek_startime_valid),      
       .wreg_series_seek_zoom(wreg_series_seek_zoom),
       .wreg_series_seek_zoom_valid(wreg_series_seek_zoom_valid),     
       .wreg_series_seek_datalen(wreg_series_seek_datalen),
       .wreg_series_seek_datalen_valid(wreg_series_seek_datalen_valid)     
       
); 

  
       
endmodule
