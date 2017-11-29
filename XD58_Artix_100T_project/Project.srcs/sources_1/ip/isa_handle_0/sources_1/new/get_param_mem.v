`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 15:42:26
// Design Name: 
// Module Name: get_param_mem
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


module get_param_mem(

    input isa_reset,
    input isa_clk,    
    input isa_cs,
    input isa_wr,
    input isa_rd,
    input isa_adv,   
    input [7:0]  isa_getdata,   
    
   
    output wire [7:0] wreg_mem_ctrl,
    output wire wreg_mem_ctrl_valid,     
    output wire [15:0] wreg_mem_addr,
    output wire wreg_mem_addr_valid,
    output wire [7:0] wreg_mem_len,
    output wire wreg_mem_len_valid,  
    
    input wreg_mem_rd_en,
    output wire [7:0] wreg_mem_rd_data,                 
    output wire [4:0] wreg_mem_rd_len      
  );
 

     isa_get_reg#(            
             .TARGET_ADDR(14),     
             .DATA_WIDTH(8)  
                      )
wreg_mem_ctrl_d14_w8(
             .isa_reset(isa_reset),
             .isa_clk(isa_clk),    
             .isa_cs(isa_cs),
             .isa_wr(isa_wr),
             .isa_rd(isa_rd),
             .isa_adv(isa_adv),   
             .isa_getdata(isa_getdata),
             .outreg(wreg_mem_ctrl),
             .valid(wreg_mem_ctrl_valid)
        );    
        	
     isa_get_reg#(            
                .TARGET_ADDR(15),     
                .DATA_WIDTH(16)  
                         )
wreg_mem_addr_d15_w16(
                .isa_reset(isa_reset),
                .isa_clk(isa_clk),    
                .isa_cs(isa_cs),
                .isa_wr(isa_wr),
                .isa_rd(isa_rd),
                .isa_adv(isa_adv),   
                .isa_getdata(isa_getdata),
                .outreg(wreg_mem_addr),
                .valid(wreg_mem_addr_valid)
           );   	
  

     isa_get_reg#(            
                .TARGET_ADDR(16),     
                .DATA_WIDTH(8)  
                         )
wreg_mem_len_d16_w8(
                .isa_reset(isa_reset),
                .isa_clk(isa_clk),    
                .isa_cs(isa_cs),
                .isa_wr(isa_wr),
                .isa_rd(isa_rd),
                .isa_adv(isa_adv),   
                .isa_getdata(isa_getdata),
                .outreg(wreg_mem_len),
                .valid(wreg_mem_len_valid)
           );            
           
           
isa_get_fifo#(       
           .TARGET_ADDR(17)       
              )
wreg_mem_data_d17(
                .isa_reset(isa_reset),
                .isa_clk(isa_clk),    
                .isa_cs(isa_cs),
                .isa_wr(isa_wr),
                .isa_rd(isa_rd),
                .isa_adv(isa_adv),   
                .isa_getdata(isa_getdata),
                
                .rd_en(wreg_mem_rd_en), 
                .rd_data(wreg_mem_rd_data),
                .rd_len(wreg_mem_rd_len)   
                
              );                
endmodule
