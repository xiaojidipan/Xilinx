`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/21 19:27:54
// Design Name: 
// Module Name: ddr3_block
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


module ddr3_block(
                    input clk,
                    input rst_n,
                    
                    input [15:0] series_comp_point_A,//压缩点数
                    input [15:0] series_comp_point_B,//压缩点数
                    input [15:0] series_comp_point_C,//压缩点数
                    input [15:0] series_comp_point_D,//压缩点数
                    input [ 7:0] series_data_type_A,//数据
                    input [ 7:0] series_data_type_B,
                    input [ 7:0] series_data_type_C,
                    input [ 7:0] series_data_type_D,
                    
                    input [31:0] wr_start_addr_par_A,
                    input [31:0] wr_start_addr_par_B,
                    input [31:0] wr_start_addr_par_C,
                    input [31:0] wr_start_addr_par_D,
                    
                    input [31:0] wr_over_addr_par_A,
                    input [31:0] wr_over_addr_par_B,
                    input [31:0] wr_over_addr_par_C,
                    input [31:0] wr_over_addr_par_D,
                    
                    input [10:0] fifo_ddr3_sgl_A,
                    input [10:0] fifo_ddr3_sgl_B,
                    input [10:0] fifo_ddr3_sgl_C,
                    input [10:0] fifo_ddr3_sgl_D,
                    
                    input [31:0] fifo_rd_data_A,
                    input [31:0] fifo_rd_data_B,
                    input [31:0] fifo_rd_data_C,
                    input [31:0] fifo_rd_data_D,
                    
                    input [31:0] fifo_time_code_A,
                    input [31:0] fifo_time_code_B,
                    input [31:0] fifo_time_code_C,
                    input [31:0] fifo_time_code_D,                         
                    
                    input              user_rd_data_en,
                    input              txn_done,//写完成
                    output wire        user_wr_en, //写开始命令   

                    output wire        user_wr_satisfy, //写数据满足        
                    output wire [31:0] user_wr_base_addr,
                    output wire [31:0] user_wr_data,
                    
                    output wire [15:0] user_wr_len,
                    output wire [ 7:0] user_wr_burst_len,
                    output wire [ 3:0] fifo_rd_ddr3_data_en,
                    output wire [ 3:0] fifo_rd_time_code_en,
                    
                    output wire [31:0] wr_start_addr_A,
                    output wire [31:0] wr_start_addr_B,
                    output wire [31:0] wr_start_addr_C,
                    output wire [31:0] wr_start_addr_D,
                    
                    output wire [31:0] wr_over_addr_A,
                    output wire [31:0] wr_over_addr_B,
                    output wire [31:0] wr_over_addr_C,
                    output wire [31:0] wr_over_addr_D
                   );
wire [3:0]  ddr3_wr_done;//每bit代表一路                    
wire [3:0]  wr_ddr3_ch_sel;

assign ddr3_wr_done[3:1] = 3'd0;

wr_ddr3_data_sel wr_ddr3_data_sel(
                                    .clk(clk),
                                    .rst_n(rst_n),
                                    
                                    .series_comp_point_A(series_comp_point_A),//压缩点数 input [15:0] 
                                    .series_comp_point_B(series_comp_point_B),//压缩点数 input [15:0] 
                                    .series_comp_point_C(series_comp_point_C),//压缩点数
                                    .series_comp_point_D(series_comp_point_D),//压缩点数
                                    .series_data_type_A(series_data_type_A),//数据 input [7:0]  
                                    .series_data_type_B(series_data_type_B),
                                    .series_data_type_C(series_data_type_C),
                                    .series_data_type_D(series_data_type_D),
                                    
                                    .fifo_ddr3_sgl_A(fifo_ddr3_sgl_A),//input [10:0] 
//                                    .fifo_ddr3_sgl_B(fifo_ddr3_sgl_B),
//                                    .fifo_ddr3_sgl_C(fifo_ddr3_sgl_C),
//                                    .fifo_ddr3_sgl_D(fifo_ddr3_sgl_D),
                                    .fifo_ddr3_sgl_B(0),
                                    .fifo_ddr3_sgl_C(0),
                                    .fifo_ddr3_sgl_D(0),
                                    
                                    .ddr3_wr_done(ddr3_wr_done),//每bit代表一路 input [3:0]                                      
                                    .wr_ddr3_ch_sel(wr_ddr3_ch_sel)//output reg [3:0] 
                                   ); 

wr_ddr3_ctrl_block wr_ddr3_ctrl_block(
                                        .clk(clk),
                                        .rst_n(rst_n),
                                       
                                        .wr_ddr3_ch_sel(wr_ddr3_ch_sel),//input [3:0] 
                                       
                                        .fifo_rd_data_A(fifo_rd_data_A),//input [31:0] 
                                        .fifo_rd_data_B(fifo_rd_data_B),//input [31:0] 
                                        .fifo_rd_data_C(fifo_rd_data_C),//input [31:0] 
                                        .fifo_rd_data_D(fifo_rd_data_D),//input [31:0] 
                                        
                                        .fifo_time_code_A(fifo_time_code_A),//input [31:0] 
                                        .fifo_time_code_B(fifo_time_code_B),//input [31:0] 
                                        .fifo_time_code_C(fifo_time_code_C),//input [31:0] 
                                        .fifo_time_code_D(fifo_time_code_D),//input [31:0] 
                                       
                                        .series_comp_point_A(series_comp_point_A),//压缩点数input [15:0] 
                                        .series_comp_point_B(series_comp_point_B),//压缩点数input [15:0] 
                                        .series_comp_point_C(series_comp_point_C),//压缩点数input [15:0] 
                                        .series_comp_point_D(series_comp_point_D),//压缩点数input [15:0] 
                                       
                                        .series_data_type_A(series_data_type_A),//数据类型input [7:0]  
                                        .series_data_type_B(series_data_type_B),//input [7:0]  
                                        .series_data_type_C(series_data_type_C),//input [7:0]  
                                        .series_data_type_D(series_data_type_D), //input [7:0]  
                                        
                                        .wr_start_addr_par_A(wr_start_addr_par_A),//ddr写起始地址input [31:0] 
                                        .wr_start_addr_par_B(wr_start_addr_par_B),
                                        .wr_start_addr_par_C(wr_start_addr_par_C),
                                        .wr_start_addr_par_D(wr_start_addr_par_D),
                                        
                                        .wr_over_addr_par_A(wr_over_addr_par_A),//ddr写结束地址
                                        .wr_over_addr_par_B(wr_over_addr_par_B),
                                        .wr_over_addr_par_C(wr_over_addr_par_C),
                                        .wr_over_addr_par_D(wr_over_addr_par_D),
                                        
                                        .user_rd_data_en(user_rd_data_en),//input              
                                        .txn_done(txn_done),//写完成input              
                                        .user_wr_en(user_wr_en), //写开始命令output  reg  
                                        .ddr3_wr_done(ddr3_wr_done[0]),//output reg [3:0]            
                                        .user_wr_satisfy(user_wr_satisfy), //写数据满足 output  reg               
                                        .user_wr_base_addr(user_wr_base_addr),//output  reg [31:0] 
                                        .user_wr_data(user_wr_data),//output  reg [31:0] 
                                        
                                        .user_wr_len(user_wr_len),//output  reg [15:0] 
                                        .user_wr_burst_len(user_wr_burst_len),//output  wire [7:0] 
                                        .fifo_rd_ddr3_data_en(fifo_rd_ddr3_data_en),//output  reg [ 3:0] 
                                        .fifo_rd_time_code_en(fifo_rd_time_code_en),//output  reg [ 3:0] 
                                        
                                        .wr_start_addr_A(wr_start_addr_A),//output  reg [31:0] 
                                        .wr_start_addr_B(wr_start_addr_B),
                                        .wr_start_addr_C(wr_start_addr_C),
                                        .wr_start_addr_D(wr_start_addr_D),
                                        
                                        .wr_over_addr_A(wr_over_addr_A),//output  reg [31:0] 
                                        .wr_over_addr_B(wr_over_addr_B),
                                        .wr_over_addr_C(wr_over_addr_C),
                                        .wr_over_addr_D(wr_over_addr_D)        
                                       );
endmodule
