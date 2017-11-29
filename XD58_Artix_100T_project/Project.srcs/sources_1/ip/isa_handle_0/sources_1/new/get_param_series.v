`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 16:57:47
// Design Name: 
// Module Name: get_param_series
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


module get_param_series(
    input isa_reset,
    input isa_clk,    
    input isa_cs,
    input isa_wr,
    input isa_rd,
    input isa_adv,   
    input [7:0]  isa_getdata,  
    
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

isa_get_reg#(            
    .TARGET_ADDR(100),     
    .DATA_WIDTH(8)  
)
wreg_series_ctrl_d100_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_ctrl),
    .valid(wreg_series_ctrl_valid)
);     

isa_get_reg#(            
    .TARGET_ADDR(101),     
    .DATA_WIDTH(8)  
)
wreg_series_data_type_d101_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_data_type),
    .valid(wreg_series_data_type_valid)
);       

isa_get_reg#(            
    .TARGET_ADDR(102),     
    .DATA_WIDTH(8)  
)
wreg_series_sample_cycle_d102_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_sample_cycle),
    .valid(wreg_series_sample_cycle_valid)
);      

isa_get_reg#(            
    .TARGET_ADDR(103),     
    .DATA_WIDTH(32)  
)
wreg_series_comp_ratio_d103_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_comp_ratio),
    .valid(wreg_series_comp_ratio_valid)
);      

isa_get_reg#(            
    .TARGET_ADDR(104),     
    .DATA_WIDTH(16)  
)
wreg_series_comp_num_d104_w16(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_comp_num),
    .valid(wreg_series_comp_num_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(105),     
    .DATA_WIDTH(32)  
)
wreg_series_validmode_data_d105_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_validmode_data),
    .valid(wreg_series_validmode_data_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(106),     
    .DATA_WIDTH(32)  
)
wreg_series_start_ddraddr_d106_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_start_ddraddr),
    .valid(wreg_series_start_ddraddr_valid)
); 

isa_get_reg#(            
    .TARGET_ADDR(107),     
    .DATA_WIDTH(32)  
)
wreg_series_stop_ddraddr_d107_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_stop_ddraddr),
    .valid(wreg_series_stop_ddraddr_valid)
);     
    
isa_get_reg#(            
    .TARGET_ADDR(108),     
    .DATA_WIDTH(8)  
)
wreg_series_startmode_d108_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_startmode),
    .valid(wreg_series_startmode_valid)
);       
    
isa_get_reg#(            
    .TARGET_ADDR(109),     
    .DATA_WIDTH(32)  
)
wreg_series_star_trigmode1_d109_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_star_trigmode1),
    .valid(wreg_series_star_trigmode1_valid)
);      

isa_get_reg#(            
    .TARGET_ADDR(110),     
    .DATA_WIDTH(32)  
)
wreg_series_star_trigmode2_d110_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_star_trigmode2),
    .valid(wreg_series_star_trigmode2_valid)
);    

isa_get_reg#(            
    .TARGET_ADDR(111),     
    .DATA_WIDTH(32)  
)
wreg_series_star_trigmode1_d111_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_star_trigmode3),
    .valid(wreg_series_star_trigmode3_valid)
);    

isa_get_reg#(            
    .TARGET_ADDR(112),     
    .DATA_WIDTH(32)  
)
wreg_series_star_trigmode1_d112_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_star_trigmode4),
    .valid(wreg_series_star_trigmode4_valid)
);    

isa_get_reg#(            
    .TARGET_ADDR(113),     
    .DATA_WIDTH(8)  
)
wreg_series_stopmode_d113_w8(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_stopmode),
    .valid(wreg_series_stopmode_valid)
);    
    
isa_get_reg#(            
    .TARGET_ADDR(114),     
    .DATA_WIDTH(32)  
)
wreg_series_stop_trigmode1_d114_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_stop_trigmode1),
    .valid(wreg_series_stop_trigmode1_valid)
);       
    
isa_get_reg#(            
    .TARGET_ADDR(115),     
    .DATA_WIDTH(32)  
)
wreg_series_stop_trigmode2_d115_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_stop_trigmode2),
    .valid(wreg_series_stop_trigmode2_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(116),     
    .DATA_WIDTH(32)  
)
wreg_series_stop_trigmode3_d116_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_stop_trigmode3),
    .valid(wreg_series_stop_trigmode3_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(117),     
    .DATA_WIDTH(32)  
)
wreg_series_stop_trigmode4_d117_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_stop_trigmode4),
    .valid(wreg_series_stop_trigmode4_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(118),     
    .DATA_WIDTH(64)  
)
wreg_series_seek_startime_d118_w64(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_seek_startime),
    .valid(wreg_series_seek_startime_valid)
);      

isa_get_reg#(            
    .TARGET_ADDR(119),     
    .DATA_WIDTH(32)  
)
wreg_series_seek_zoom_d119_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_seek_zoom),
    .valid(wreg_series_seek_zoom_valid)
);      

isa_get_reg#(            
    .TARGET_ADDR(120),     
    .DATA_WIDTH(32)  
)
wreg_series_seek_datalen_d120_w32(
    .isa_reset(isa_reset),
    .isa_clk(isa_clk),    
    .isa_cs(isa_cs),
    .isa_wr(isa_wr),
    .isa_rd(isa_rd),
    .isa_adv(isa_adv),   
    .isa_getdata(isa_getdata),
    .outreg(wreg_series_seek_datalen),
    .valid(wreg_series_seek_datalen_valid)
);      
    
    
    
    
    
endmodule
