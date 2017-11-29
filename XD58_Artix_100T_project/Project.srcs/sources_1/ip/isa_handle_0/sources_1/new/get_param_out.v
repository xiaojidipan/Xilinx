`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 15:08:54
// Design Name: 
// Module Name: get_param_out
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


module get_param_out(
    input isa_reset,
    input isa_clk,    
    input isa_cs,
    input isa_wr,
    input isa_rd,
    input isa_adv,   
    input [7:0]  isa_getdata,    
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
    output wire [4:0] wreg_out_time_rd_len            
     
);  

isa_get_reg#(            
     .TARGET_ADDR(23),     
     .DATA_WIDTH(8)  
 )
wreg_out_ctrl_d23_w8(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_ctrl),
  .valid(wreg_out_ctrl_valid)
);

isa_get_reg#(            
     .TARGET_ADDR(24),     
     .DATA_WIDTH(8)  
 )
wreg_out_sel_d24_w8(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_sel),
  .valid(wreg_out_sel_valid)
);   

isa_get_fifo#(       
           .TARGET_ADDR(25)       
              )
wreg_out_time_d25(
       .isa_reset(isa_reset),
       .isa_clk(isa_clk),    
       .isa_cs(isa_cs),
       .isa_wr(isa_wr),
       .isa_rd(isa_rd),
       .isa_adv(isa_adv),   
       .isa_getdata(isa_getdata),
                
       .rd_en(wreg_out_time_rd_en), 
       .rd_data(wreg_out_time_rd_data),
       .rd_len(wreg_out_time_rd_len)   
                
              );      

isa_get_reg#(            
     .TARGET_ADDR(26),     
     .DATA_WIDTH(8)  
 )
wreg_out_level_d26_w8(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_level),
  .valid(wreg_out_level_valid)
);   


isa_get_reg#(            
     .TARGET_ADDR(27),     
     .DATA_WIDTH(8)  
 )
wreg_out_startmode_d27_w8(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_startmode),
  .valid(wreg_out_startmode_valid)
);   

isa_get_reg#(            
     .TARGET_ADDR(28),     
     .DATA_WIDTH(64)  
 )
wreg_out_start_targettime_d28_w64(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_targettime),
  .valid(wreg_out_start_targettime_valid)
);      

isa_get_reg#(            
     .TARGET_ADDR(29),     
     .DATA_WIDTH(32)  
 )
wreg_out_start_subtime_d29_w32(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_subtime),
  .valid(wreg_out_start_subtime_valid)
);      

isa_get_reg#(            
     .TARGET_ADDR(30),     
     .DATA_WIDTH(32)  
 )
wreg_out_start_subnum_d30_w32(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_subnum),
  .valid(wreg_out_start_subnum_valid)
);   

isa_get_reg#(            
     .TARGET_ADDR(31),     
     .DATA_WIDTH(8)  
 )
wreg_out_start_subcycle_d31_w8(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_subcycle),
  .valid(wreg_out_start_subcycle_valid)
); 

isa_get_reg#(            
     .TARGET_ADDR(32),     
     .DATA_WIDTH(32)  
 )
wreg_out_start_trigmode1_d32_w32(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_trigmode1),
  .valid(wreg_out_start_trigmode1_valid)
);    

isa_get_reg#(            
     .TARGET_ADDR(33),     
     .DATA_WIDTH(32)  
 )
wreg_out_start_trigmode2_d33_w32(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_trigmode2),
  .valid(wreg_out_start_trigmode2_valid)
);           

isa_get_reg#(            
     .TARGET_ADDR(34),     
     .DATA_WIDTH(32)  
 )
wreg_out_start_trigmode3_d34_w32(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_trigmode3),
  .valid(wreg_out_start_trigmode3_valid)
);   

isa_get_reg#(            
     .TARGET_ADDR(35),     
     .DATA_WIDTH(32)  
 )
wreg_out_start_trigmode4_d35_w32(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_start_trigmode4),
  .valid(wreg_out_start_trigmode4_valid)
);      

isa_get_reg#(            
     .TARGET_ADDR(36),     
     .DATA_WIDTH(16)  
 )
wreg_out_trig_threshold_p_d36_w16(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_threshold_p),
  .valid(wreg_out_trig_threshold_p_valid)
);         

isa_get_reg#(            
     .TARGET_ADDR(37),     
     .DATA_WIDTH(16)  
 )
wreg_out_trig_threshold_n_d37_w16(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_threshold_n),
  .valid(wreg_out_trig_threshold_n_valid)
);      

isa_get_reg#(            
     .TARGET_ADDR(38),     
     .DATA_WIDTH(16)  
 )
wreg_out_trig_risetime_d38_w16(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_risetime),
  .valid(wreg_out_trig_risetime_valid)
);      

isa_get_reg#(            
     .TARGET_ADDR(39),     
     .DATA_WIDTH(16)  
 )
wreg_out_trig_droptime_d39_w16(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_droptime),
  .valid(wreg_out_trig_droptime_valid)
);        

isa_get_reg#(            
     .TARGET_ADDR(40),     
     .DATA_WIDTH(16)  
 )
wreg_out_trig_pulsewidth_d40_w16(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_pulsewidth),
  .valid(wreg_out_trig_pulsewidth_valid)
);         

isa_get_reg#(            
     .TARGET_ADDR(41),     
     .DATA_WIDTH(8)  
 )
wreg_out_trig_riseratio_d41_w8(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_riseratio),
  .valid(wreg_out_trig_riseratio_valid)
);       

isa_get_reg#(            
     .TARGET_ADDR(42),     
     .DATA_WIDTH(8)  
 )
wreg_out_trig_dropratio_d42_w8(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_dropratio),
  .valid(wreg_out_trig_dropratio_valid)
);          

isa_get_reg#(            
     .TARGET_ADDR(43),     
     .DATA_WIDTH(16)  
 )
wreg_out_trig_rmsvalue_d43_w16(
  .isa_reset(isa_reset),
  .isa_clk(isa_clk),    
  .isa_cs(isa_cs),
  .isa_wr(isa_wr),
  .isa_rd(isa_rd),
  .isa_adv(isa_adv),   
  .isa_getdata(isa_getdata),
  .outreg(wreg_out_trig_rmsvalue),
  .valid(wreg_out_trig_rmsvalue_valid)
);     
 
               
endmodule
