`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 15:11:50
// Design Name: 
// Module Name: get_param_ddr
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


module get_param_ddr(
    input isa_reset,
    input isa_clk,    
    input isa_cs,
    input isa_wr,
    input isa_rd,
    input isa_adv,   
    input [7:0]  isa_getdata, 
    
    output wire [7:0] wreg_ddr_ctrl,
    output wire wreg_ddr_ctrl_valid,    
    output wire [31:0] wreg_ddr_addr,
    output wire wreg_ddr_addr_valid,
    output wire [31:0] wreg_ddr_len,
    output wire wreg_ddr_len_valid  

);

isa_get_reg#(            
    .TARGET_ADDR(47),     
    .DATA_WIDTH(8)  
)
wreg_ddr_ctrl_d47_w8(
 .isa_reset(isa_reset),
 .isa_clk(isa_clk),    
 .isa_cs(isa_cs),
 .isa_wr(isa_wr),
 .isa_rd(isa_rd),
 .isa_adv(isa_adv),   
 .isa_getdata(isa_getdata),
 .outreg(wreg_ddr_ctrl),
 .valid(wreg_ddr_ctrl_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(48),     
    .DATA_WIDTH(32)  
)
wreg_ddr_addr_d48_w32(
 .isa_reset(isa_reset),
 .isa_clk(isa_clk),    
 .isa_cs(isa_cs),
 .isa_wr(isa_wr),
 .isa_rd(isa_rd),
 .isa_adv(isa_adv),   
 .isa_getdata(isa_getdata),
 .outreg(wreg_ddr_addr),
 .valid(wreg_ddr_addr_valid)
);  

isa_get_reg#(            
    .TARGET_ADDR(49),     
    .DATA_WIDTH(32)  
)
wreg_ddr_len_d49_w32(
 .isa_reset(isa_reset),
 .isa_clk(isa_clk),    
 .isa_cs(isa_cs),
 .isa_wr(isa_wr),
 .isa_rd(isa_rd),
 .isa_adv(isa_adv),   
 .isa_getdata(isa_getdata),
 .outreg(wreg_ddr_len),
 .valid(wreg_ddr_len_valid)
);     

endmodule
