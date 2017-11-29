`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 15:56:43
// Design Name: 
// Module Name: get_param_ch
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


module get_param_ch(
    input isa_reset,
    input isa_clk,    
    input isa_cs,
    input isa_wr,
    input isa_rd,
    input isa_adv,   
    input [7:0]  isa_getdata,  
    
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
    output wire [3:0] wreg_ch_filter_rd_len  
             
);
 

isa_get_reg#(            
    .TARGET_ADDR(55),     
    .DATA_WIDTH(16)  
)
wreg_ch_zero_cal_d55_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_zero_cal),
    .valid(wreg_ch_zero_cal_valid)
);  


isa_get_reg#(            
    .TARGET_ADDR(56),     
    .DATA_WIDTH(16)  
)
wreg_ch_sample_rate_d56_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_sample_rate),
    .valid(wreg_ch_sample_rate_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(57),     
    .DATA_WIDTH(8)  
)
wreg_ch_sign_handle_d57_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_sign_handle),
    .valid(wreg_ch_sign_handle_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(58),     
    .DATA_WIDTH(8)  
)
wreg_ch_main_amp_d58_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_main_amp),
    .valid(wreg_ch_main_amp_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(59),     
    .DATA_WIDTH(8)  
)
wreg_ch_pre_amp_d59_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_pre_amp),
    .valid(wreg_ch_pre_amp_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(60),     
    .DATA_WIDTH(8)  
)
wreg_ch_v_amp_d60_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_v_amp),
    .valid(wreg_ch_v_amp_valid)
);  


isa_get_reg#(            
    .TARGET_ADDR(61),     
    .DATA_WIDTH(8)  
)
wreg_ch_i_amp_d61_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_i_amp),
    .valid(wreg_ch_i_amp_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(63),     
    .DATA_WIDTH(8)  
)
wreg_ch_noise_comp_d63_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_noise_comp),
    .valid(wreg_ch_noise_comp_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(64),     
    .DATA_WIDTH(16)  
)
wreg_ch_noise_amp_cof_d64_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_noise_amp_cof),
    .valid(wreg_ch_noise_amp_cof_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(65),     
    .DATA_WIDTH(8)  
)
wreg_ch_noise_delay_d65_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_noise_delay),
    .valid(wreg_ch_noise_delay_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(66),     
    .DATA_WIDTH(64)  
)
wreg_ch_start_targettime_d66_w64(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_start_targettime),
    .valid(wreg_ch_start_targettime_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(67),     
    .DATA_WIDTH(32)  
)
wreg_ch_start_sustime_d67_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_start_sustime),
    .valid(wreg_ch_start_sustime_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(68),     
    .DATA_WIDTH(32)  
)
wreg_ch_start_susnum_d68_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_start_susnum),
    .valid(wreg_ch_start_susnum_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(69),     
    .DATA_WIDTH(8)  
)
wreg_ch_start_suscycle_d69_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_start_suscycle),
    .valid(wreg_ch_start_suscycle_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(70),     
    .DATA_WIDTH(32)  
)
wreg_ch_stop_sustime_d70_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_stop_sustime),
    .valid(wreg_ch_stop_sustime_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(71),     
    .DATA_WIDTH(32)  
)
wreg_ch_stop_susnum_d71_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_stop_susnum),
    .valid(wreg_ch_stop_susnum_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(72),     
    .DATA_WIDTH(8)  
)
wreg_ch_stop_suscycle_d72_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_stop_suscycle),
    .valid(wreg_ch_stop_suscycle_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(73),     
    .DATA_WIDTH(16)  
)
wreg_ch_trig_threshold_p_d73_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_threshold_p),
    .valid(wreg_ch_trig_threshold_p_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(74),     
    .DATA_WIDTH(16)  
)
wreg_ch_trig_threshold_n_d74_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_threshold_n),
    .valid(wreg_ch_trig_threshold_n_valid)
); 

isa_get_reg#(            
    .TARGET_ADDR(75),     
    .DATA_WIDTH(16)  
)
wreg_ch_trig_risetime_d75_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_risetime),
    .valid(wreg_ch_trig_risetime_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(76),     
    .DATA_WIDTH(16)  
)
wreg_ch_trig_droptime_d76_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_droptime),
    .valid(wreg_ch_trig_droptime_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(77),     
    .DATA_WIDTH(16)  
)
wreg_ch_trig_pulsewidth_d77_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_pulsewidth),
    .valid(wreg_ch_trig_pulsewidth_valid)
); 

isa_get_reg#(            
    .TARGET_ADDR(78),     
    .DATA_WIDTH(8)  
)
wreg_ch_trig_riseratio_d78_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_riseratio),
    .valid(wreg_ch_trig_riseratio_valid)
); 

isa_get_reg#(            
    .TARGET_ADDR(79),     
    .DATA_WIDTH(8)  
)
wreg_ch_trig_dropratio_d79_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_dropratio),
    .valid(wreg_ch_trig_dropratio_valid)
); 

isa_get_reg#(            
    .TARGET_ADDR(80),     
    .DATA_WIDTH(16)  
)
wreg_ch_trig_rmsvalue_d80_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_ch_trig_rmsvalue),
    .valid(wreg_ch_trig_rmsvalue_valid)
); 


isa_get_fifo#(       
     .TARGET_ADDR(62)       
       )
wreg_ch_filter_data_d62(
     .isa_reset(isa_reset),
     .isa_clk(isa_clk),    
     .isa_cs(isa_cs),
     .isa_wr(isa_wr),
     .isa_rd(isa_rd),
     .isa_adv(isa_adv),   
     .isa_getdata(isa_getdata),
        
     .rd_en(wreg_ch_filter_rd_en),      
     .rd_data(wreg_ch_filter_rd_data),
     .rd_len(wreg_ch_filter_rd_len)   
                
  );
  
                  
endmodule
 
