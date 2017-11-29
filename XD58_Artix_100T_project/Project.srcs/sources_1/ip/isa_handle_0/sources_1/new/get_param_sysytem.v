`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/09 14:57:13
// Design Name: 
// Module Name: wreg_param_sysytem
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
module get_param_sysytem(
     
    input isa_reset,
    input isa_clk,    
    input isa_cs,
    input isa_wr,
    input isa_rd,
    input isa_adv,   
    input [7:0]  isa_getdata, 
  
   
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
    output wire wreg_system_ch_sel_valid       
    
    );      
     
   isa_get_reg#(            
            .TARGET_ADDR(1),     
            .DATA_WIDTH(8)  
        )
 wreg_system_ctrl_d01_w8(
         .isa_reset(isa_reset),
         .isa_clk(isa_clk),    
         .isa_cs(isa_cs),
         .isa_wr(isa_wr),
         .isa_rd(isa_rd),
         .isa_adv(isa_adv),   
         .isa_getdata(isa_getdata),
         .outreg(wreg_system_ctrl),
         .valid(wreg_system_ctrl_valid)
       );  
       
      isa_get_reg#(            
                .TARGET_ADDR(4),     
                .DATA_WIDTH(8)  
            )
 wreg_system_sel_rtc_d04_w8(
             .isa_reset(isa_reset),
             .isa_clk(isa_clk),    
             .isa_cs(isa_cs),
             .isa_wr(isa_wr),
             .isa_rd(isa_rd),
             .isa_adv(isa_adv),   
             .isa_getdata(isa_getdata),
             .outreg(wreg_system_sel_rtc),
             .valid(wreg_system_sel_rtc_valid)
           );   
           
     isa_get_reg#(            
             .TARGET_ADDR(5),     
             .DATA_WIDTH(64)  
                      )
wreg_system_set_rtctime_d05_w64(
             .isa_reset(isa_reset),
             .isa_clk(isa_clk),    
             .isa_cs(isa_cs),
             .isa_wr(isa_wr),
             .isa_rd(isa_rd),
             .isa_adv(isa_adv),   
             .isa_getdata(isa_getdata),
             .outreg(wreg_system_set_rtctime),
             .valid(wreg_system_set_rtctime_valid)
        );   

     isa_get_reg#(            
             .TARGET_ADDR(6),     
             .DATA_WIDTH(16)  
                      )
wreg_system_sync_minfrq_d06_w16(
             .isa_reset(isa_reset),
             .isa_clk(isa_clk),    
             .isa_cs(isa_cs),
             .isa_wr(isa_wr),
             .isa_rd(isa_rd),
             .isa_adv(isa_adv),   
             .isa_getdata(isa_getdata),
             .outreg(wreg_system_sync_minfrq),
             .valid(wreg_system_sync_minfrq_valid)
        );      

     isa_get_reg#(            
             .TARGET_ADDR(7),     
             .DATA_WIDTH(16)  
                      )
wreg_system_sync_max_d07_w16(
             .isa_reset(isa_reset),
             .isa_clk(isa_clk),    
             .isa_cs(isa_cs),
             .isa_wr(isa_wr),
             .isa_rd(isa_rd),
             .isa_adv(isa_adv),   
             .isa_getdata(isa_getdata),
             .outreg(wreg_system_sync_max),
             .valid(wreg_system_sync_max_valid)
        ); 

     isa_get_reg#(            
             .TARGET_ADDR(8),     
             .DATA_WIDTH(8)  
                      )
wreg_system_sync_sel_d08_w8(
             .isa_reset(isa_reset),
             .isa_clk(isa_clk),    
             .isa_cs(isa_cs),
             .isa_wr(isa_wr),
             .isa_rd(isa_rd),
             .isa_adv(isa_adv),   
             .isa_getdata(isa_getdata),
             .outreg(wreg_system_sync_sel),
             .valid(wreg_system_sync_sel_valid)
        ); 

     isa_get_reg#(            
             .TARGET_ADDR(9),     
             .DATA_WIDTH(8)  
                      )
wreg_system_ch_sel_d09_w8(
             .isa_reset(isa_reset),
             .isa_clk(isa_clk),    
             .isa_cs(isa_cs),
             .isa_wr(isa_wr),
             .isa_rd(isa_rd),
             .isa_adv(isa_adv),   
             .isa_getdata(isa_getdata),
             .outreg(wreg_system_ch_sel),
             .valid(wreg_system_ch_sel_valid)
        );                  
endmodule
