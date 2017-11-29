`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 09:52:19
// Design Name: 
// Module Name: isa_send_param
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


module isa_send_param(
    input isa_reset,//in
    input isa_clk,//in    
    input isa_cs,//in
    input isa_wr,//in
    input isa_rd,//in
    input isa_adv,//in   
    input [7:0]  isa_getdata,//in    
    output wire [7:0] isa_senddata,    
        
    //系统参数    
    input [7:0]rreg_system_status,
    input rreg_system_status_valid,
    input [7:0]rreg_system_debug1,
    input rreg_system_debug1_valid,
    input [7:0]rreg_system_debug2,
    input rreg_system_debug2_valid,
    input [7:0]rreg_system_debug3,
    input rreg_system_debug3_valid,
    input [7:0]rreg_system_debug4,    
    input rreg_system_debug4_valid,
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
    //mem存储
    input [7:0]rreg_mem_status,
    input rreg_mem_status_valid,   
    input rreg_mem_data_wr_en,
    input [15:0] rreg_mem_data_wr_addr,
    input [7:0] rreg_mem_data_wr_data,
    //ddr读写数据
    input [7:0]rreg_ddr_status,
    input rreg_ddr_status_valid,   
    input rreg_ddr_data_wr_en,
    input rreg_ddr_data_wr_clk,
    input [15:0] rreg_ddr_data_wr_addr,
    input [31:0] rreg_ddr_data_wr_data,  
    //连续数据
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
    input rreg_series_trigger_stoptime_valid                                               
    
 );
////////////////////////////////////////////////////////////////////////////
//系统参数
wire [7:0] rreg_system_status_send;
wire [7:0] rreg_system_debug1_send;
wire [7:0] rreg_system_debug2_send;
wire [7:0] rreg_system_debug3_send;
wire [7:0] rreg_system_debug4_send;
wire [7:0] rreg_system_coe_send;
wire [7:0] rreg_system_version_send;
wire [7:0] rreg_system_rtctime_send;
wire [7:0] rreg_system_batteryvalue_send;
wire [7:0] rreg_system_syncstatus_send;
wire [7:0] rreg_system_syncfrq_send;
////////////////////////////////////////////////////////////////////////////
//mem
wire [7:0] rreg_mem_status_send;
wire [7:0] rreg_mem_data_send;
////////////////////////////////////////////////////////////////////////////
//ddr
wire [7:0] rreg_ddr_status_send;
wire [7:0] rreg_ddr_data_send;
////////////////////////////////////////////////////////////////////////////
//连续数据
wire [7:0] rreg_series_status_send;
wire [7:0] rreg_series_starttime_send;
wire [7:0] rreg_series_stoptime_send;
wire [7:0] rreg_series_maxdata_send;
wire [7:0] rreg_series_data_send;
wire [7:0] rreg_series_trigger_starttime_send;
wire [7:0] rreg_series_trigger_stoptime_send;

/////////////////////////////////////////////////send tab
isa_send_select   select_send(
        .isa_reset(isa_reset),
        .isa_clk(isa_clk),       
        .isa_cs(isa_cs),
        .isa_rd(isa_rd),
        .isa_wr(isa_wr),     
        .isa_adv(isa_adv),  
        .isa_getdata(isa_getdata),        
        .senddata(isa_senddata),
        .addr000(0),
        .addr001(rreg_system_debug1_send),
        .addr002(rreg_system_debug2_send),
        .addr003(rreg_system_debug3_send),
        .addr004(rreg_system_debug4_send),
        .addr005(0),
        .addr006(0),
        .addr007(0),
        .addr008(rreg_system_status_send),
        .addr009(rreg_system_coe_send),
        .addr010(rreg_system_version_send),
        .addr011(rreg_system_rtctime_send),
        .addr012(0),
        .addr013(rreg_system_batteryvalue_send),
        .addr014(rreg_system_syncstatus_send),
        .addr015(rreg_system_syncfrq_send),
        .addr016(0),
        .addr017(0),
        .addr018(rreg_mem_status_send),
        .addr019(rreg_mem_data_send),
        .addr020(0),
        .addr021(0),
        .addr022(rreg_ddr_status_send),
        .addr023(rreg_ddr_data_send),
        .addr024(0),
        .addr025(0),
        .addr026(0),
        .addr027(0),
        .addr028(0),
        .addr029(0),
        .addr030(0),
        .addr031(0),
        .addr032(0),
        .addr033(0),
        .addr034(0),
        .addr035(0),
        .addr036(0),
        .addr037(0),
        .addr038(0),
        .addr039(0),
        .addr040(0),
        .addr041(0),
        .addr042(0),
        .addr043(0),
        .addr044(0),
        .addr045(0),
        .addr046(0),
        .addr047(0),
        .addr048(0),
        .addr049(0),
        .addr050(0),
        .addr051(0),
        .addr052(0),
        .addr053(0),
        .addr054(0),
        .addr055(0),
        .addr056(0),
        .addr057(0),
        .addr058(0),
        .addr059(0),
        .addr060(0),
        .addr061(0),
        .addr062(0),
        .addr063(0),
        .addr064(0),
        .addr065(0),
        .addr066(0),
        .addr067(rreg_series_status_send),
        .addr068(rreg_series_starttime_send),
        .addr069(rreg_series_stoptime_send),
        .addr070(rreg_series_maxdata_send),
        .addr071(rreg_series_data_send),
        .addr072(rreg_series_trigger_starttime_send),
        .addr073(rreg_series_trigger_stoptime_send),
        .addr074(0),
        .addr075(0),
        .addr076(0),
        .addr077(0),
        .addr078(0),
        .addr079(0),
        .addr080(0),
        .addr081(0),
        .addr082(0),
        .addr083(0),
        .addr084(0),
        .addr085(0),
        .addr086(0),
        .addr087(0),
        .addr088(0),
        .addr089(0),
        .addr090(0),
        .addr091(0),
        .addr092(0),
        .addr093(0),
        .addr094(0),
        .addr095(0),
        .addr096(0),
        .addr097(0),
        .addr098(0),
        .addr099(0),
        .addr100(0),
        .addr101(0),
        .addr102(0),
        .addr103(0),
        .addr104(0),
        .addr105(0),
        .addr106(0),
        .addr107(0),
        .addr108(0),
        .addr109(0),
        .addr110(0)      
     ); 
 
 
///////////////////////////////////////////////////////////////////////////////////
//系统参数
isa_send_reg#(
        .TARGET_ADDR(1), 
        .DATA_WIDTH(8)              
    )
rreg_system_debug1_d01_w08 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_debug1),//in
     .getdata_valid(rreg_system_debug1_valid),//in     
     .senddata(rreg_system_debug1_send)//out     
   );   

isa_send_reg#(
        .TARGET_ADDR(2), 
        .DATA_WIDTH(8)              
    )
rreg_system_debug2_d02_w08 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_debug2),//in
     .getdata_valid(rreg_system_debug2_valid),//in     
     .senddata(rreg_system_debug2_send)//out     
   );   

isa_send_reg#(
        .TARGET_ADDR(3), 
        .DATA_WIDTH(8)              
    )
rreg_system_debug3_d03_w08 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_debug3),//in
     .getdata_valid(rreg_system_debug3_valid),//in     
     .senddata(rreg_system_debug3_send)//out     
   );    

isa_send_reg#(
        .TARGET_ADDR(4), 
        .DATA_WIDTH(8)              
    )
rreg_system_debug4_d04_w08 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_debug4),//in
     .getdata_valid(rreg_system_debug4_valid),//in     
     .senddata(rreg_system_debug4_send)//out     
   );      
   
   
isa_send_reg#(
        .TARGET_ADDR(8), 
        .DATA_WIDTH(8)              
    )
rreg_system_status_d08_w08 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_status),//in
     .getdata_valid(rreg_system_status_valid),//in     
     .senddata(rreg_system_status_send)//out     
   );     

//读配置参数/////////////////////////////////////////////////////////////
isa_send_rom#(
        .TARGET_ADDR(9)              
    )
rreg_system_coe_d09 (
    .isa_reset(isa_reset),//in
    .isa_clk(isa_clk),//in    
    .isa_cs(isa_cs),//in
    .isa_wr(isa_wr),//in
    .isa_rd(isa_rd),//in
    .isa_adv(isa_adv),//in   
    .isa_getdata(isa_getdata),//in             
    .senddata(rreg_system_coe_send)//out 
   );     

isa_send_reg#(
        .TARGET_ADDR(10), 
        .DATA_WIDTH(48)              
    )
rreg_system_version_d10_w48 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_version),//in
     .getdata_valid(rreg_system_version_valid),//in     
     .senddata(rreg_system_version_send)//out     
   ); 

isa_send_reg#(
        .TARGET_ADDR(11), 
        .DATA_WIDTH(64)              
    )
rreg_system_rtctime_d11_w64 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_rtctime),//in
     .getdata_valid(rreg_system_rtctime_valid),//in     
     .senddata(rreg_system_rtctime_send)//out     
   ); 

// isa_send_reg#(
//        .TARGET_ADDR(12), 
//        .DATA_WIDTH(x)              
//    )
//rreg_system_gposition_d12_wx (
//     .isa_reset(isa_reset),//in
//     .isa_clk(isa_clk),//in    
//     .isa_cs(isa_cs),//in
//     .isa_wr(isa_wr),//in
//     .isa_rd(isa_rd),//in
//     .isa_adv(isa_adv),//in   
//     .isa_getdata(isa_getdata),//in          
//     .getdata(rreg_system_rtctime),//in
//     .getdata_valid(rreg_system_rtctime_valid),//in     
//     .senddata(rreg_system_rtctime_send)//out     
//   ); 

isa_send_reg#(
        .TARGET_ADDR(13), 
        .DATA_WIDTH(16)              
    )
rreg_system_batteryvalue_d13_w16 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_batteryvalue),//in
     .getdata_valid(rreg_system_batteryvalue_valid),//in     
     .senddata(rreg_system_batteryvalue_send)//out     
   );  

isa_send_reg#(
        .TARGET_ADDR(14), 
        .DATA_WIDTH(8)              
    )
rreg_system_syncstatus_d14_w8 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_syncstatus),//in
     .getdata_valid(rreg_system_syncstatus_valid),//in     
     .senddata(rreg_system_syncstatus_send)//out     
   );   

isa_send_reg#(
        .TARGET_ADDR(15), 
        .DATA_WIDTH(32)              
    )
rreg_system_syncfrq_d15_w32 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_system_syncfrq),//in
     .getdata_valid(rreg_system_syncfrq_valid),//in     
     .senddata(rreg_system_syncfrq_send)//out     
   );      
///////////////////////////////////////////////////////////////////
//mem存储
isa_send_reg#(
        .TARGET_ADDR(18), 
        .DATA_WIDTH(8)              
    )
rreg_mem_status_d18_w8 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_mem_status),//in
     .getdata_valid(rreg_mem_status_valid),//in     
     .senddata(rreg_mem_status_send)//out     
   );   

//发送MEM数据
isa_send_smallram#(
        .TARGET_ADDR(19)              
    )
rreg_mem_data_d19   (
   .isa_reset(isa_reset),//in
   .isa_clk(isa_clk),//in    
   .isa_cs(isa_cs),//in
   .isa_wr(isa_wr),//in
   .isa_rd(isa_rd),//in
   .isa_adv(isa_adv),//in   
   .isa_getdata(isa_getdata),//in        
   .wr_en(rreg_mem_data_wr_en),//in
   .wr_addr(rreg_mem_data_wr_addr),//in
   .wr_data(rreg_mem_data_wr_data),//in     
   .senddata(rreg_mem_data_send)//out 
   );   
////////////////////////////////////////////////////////////////////////
//ddr
isa_send_reg#(
        .TARGET_ADDR(22), 
        .DATA_WIDTH(8)              
    )
rreg_ddr_status_d22_w8 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_ddr_status),//in
     .getdata_valid(rreg_ddr_status_valid),//in     
     .senddata(rreg_ddr_status_send)//out     
   );   

/////////////////////发送ddr数据
isa_send_bigram#(
        .TARGET_ADDR(23)              
    )
rreg_ddr_data_d23   (
   .isa_reset(isa_reset),//in
   .isa_clk(isa_clk),//in    
   .isa_cs(isa_cs),//in
   .isa_wr(isa_wr),//in
   .isa_rd(isa_rd),//in
   .isa_adv(isa_adv),//in   
   .isa_getdata(isa_getdata),//in       
   .wr_clk(rreg_ddr_data_wr_clk), 
   .wr_en(rreg_ddr_data_wr_en),//in
   .wr_addr(rreg_ddr_data_wr_addr),//in
   .wr_data(rreg_ddr_data_wr_data),//in     
   .senddata(rreg_ddr_data_send)//out 
   );        

////////////////////////////////////////////////////////////////////////
//连续数据
isa_send_reg#(
        .TARGET_ADDR(67), 
        .DATA_WIDTH(8)              
    )
rreg_series_status_d67_w8 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_series_status),//in
     .getdata_valid(rreg_series_status_valid),//in     
     .senddata(rreg_series_status_send)//out     
   );   

isa_send_reg#(
        .TARGET_ADDR(68), 
        .DATA_WIDTH(64)              
    )
rreg_series_starttime_d68_w64 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_series_starttime),//in
     .getdata_valid(rreg_series_starttime_valid),//in     
     .senddata(rreg_series_starttime_send)//out     
   );   

isa_send_reg#(
        .TARGET_ADDR(69), 
        .DATA_WIDTH(64)              
    )
rreg_series_stoptime_d69_w64 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_series_stoptime),//in
     .getdata_valid(rreg_series_stoptime_valid),//in     
     .senddata(rreg_series_stoptime_send)//out     
   );    
 
isa_send_reg#(
        .TARGET_ADDR(70), 
        .DATA_WIDTH(80)              
    )
rreg_series_maxdata_d70_w79 (
     .isa_reset(isa_reset),//in
     .isa_clk(isa_clk),//in    
     .isa_cs(isa_cs),//in
     .isa_wr(isa_wr),//in
     .isa_rd(isa_rd),//in
     .isa_adv(isa_adv),//in   
     .isa_getdata(isa_getdata),//in          
     .getdata(rreg_series_maxdata),//in
     .getdata_valid(rreg_series_maxdata_valid),//in     
     .senddata(rreg_series_maxdata_send)//out     
   );  
       

isa_send_bigram#(
        .TARGET_ADDR(71)              
    )
rreg_series_data_d71   (
   .isa_reset(isa_reset),//in
   .isa_clk(isa_clk),//in    
   .isa_cs(isa_cs),//in
   .isa_wr(isa_wr),//in
   .isa_rd(isa_rd),//in
   .isa_adv(isa_adv),//in   
   .isa_getdata(isa_getdata),//in        
   .wr_clk(rreg_series_data_wr_clk), 
   .wr_en(rreg_series_data_wr_en),//in
   .wr_addr(rreg_series_data_wr_addr),//in
   .wr_data(rreg_series_data_wr_data),//in     
   .senddata(rreg_series_data_send)//out 
   );     
   
   
isa_send_reg#(
           .TARGET_ADDR(72), 
           .DATA_WIDTH(64)              
       )
   rreg_series_trigger_starttime_d72_w64 (
        .isa_reset(isa_reset),//in
        .isa_clk(isa_clk),//in    
        .isa_cs(isa_cs),//in
        .isa_wr(isa_wr),//in
        .isa_rd(isa_rd),//in
        .isa_adv(isa_adv),//in   
        .isa_getdata(isa_getdata),//in          
        .getdata(rreg_series_trigger_starttime),//in
        .getdata_valid(rreg_series_trigger_starttime_valid),//in     
        .senddata(rreg_series_trigger_starttime_send)//out     
      ); 

isa_send_reg#(
           .TARGET_ADDR(73), 
           .DATA_WIDTH(64)              
       )
   rreg_series_trigger_stoptime_d73_w64 (
        .isa_reset(isa_reset),//in
        .isa_clk(isa_clk),//in    
        .isa_cs(isa_cs),//in
        .isa_wr(isa_wr),//in
        .isa_rd(isa_rd),//in
        .isa_adv(isa_adv),//in   
        .isa_getdata(isa_getdata),//in          
        .getdata(rreg_series_trigger_stoptime),//in
        .getdata_valid(rreg_series_trigger_stoptime_valid),//in     
        .senddata(rreg_series_trigger_stoptime_send)//out     
      ); 
   
   
endmodule
