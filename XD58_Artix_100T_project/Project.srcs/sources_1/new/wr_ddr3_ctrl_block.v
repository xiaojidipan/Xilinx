`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/27 09:28:34
// Design Name: 
// Module Name: wr_ddr3_ctrl_block
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


module wr_ddr3_ctrl_block(
                            input clk,
                            input rst_n,
                             
                            input [3:0] wr_ddr3_ch_sel,
                             
                            input [31:0] fifo_rd_data_A,
                            input [31:0] fifo_rd_data_B,
                            input [31:0] fifo_rd_data_C,
                            input [31:0] fifo_rd_data_D,
                            
                            input [31:0] fifo_time_code_A,
                            input [31:0] fifo_time_code_B,
                            input [31:0] fifo_time_code_C,
                            input [31:0] fifo_time_code_D,
                             
                            input [15:0] series_comp_point_A,//压缩点数
                            input [15:0] series_comp_point_B,//压缩点数
                            input [15:0] series_comp_point_C,//压缩点数
                            input [15:0] series_comp_point_D,//压缩点数
                             
                            input [7:0]  series_data_type_A,//数据类型
                            input [7:0]  series_data_type_B,
                            input [7:0]  series_data_type_C,
                            input [7:0]  series_data_type_D,
                            input [31:0] wr_start_addr_par_A,
                            input [31:0] wr_start_addr_par_B,
                            input [31:0] wr_start_addr_par_C,
                            input [31:0] wr_start_addr_par_D,
                            
                            input [31:0] wr_over_addr_par_A,
                            input [31:0] wr_over_addr_par_B,
                            input [31:0] wr_over_addr_par_C,
                            input [31:0] wr_over_addr_par_D,
                            
                            input              user_rd_data_en,
                            input              txn_done,//写完成
                             
                            output  reg         user_wr_en, //写开始命令   
                            output  wire [3:0]  ddr3_wr_done,
                            output  reg         user_wr_satisfy, //写数据满足        
                            output  reg  [31:0] user_wr_base_addr,
                            output  reg  [31:0] user_wr_data,
                             
                            output  reg  [15:0] user_wr_len,
                            output  reg  [ 7:0] user_wr_burst_len,
                            output  wire [ 3:0] fifo_rd_ddr3_data_en,
                            output  wire [ 3:0] fifo_rd_time_code_en,
                            output  wire [31:0] wr_start_addr_A,
                            output  wire [31:0] wr_start_addr_B,
                            output  wire [31:0] wr_start_addr_C,
                            output  wire [31:0] wr_start_addr_D,
                            output  wire [31:0] wr_over_addr_A,                     
                            output  wire [31:0] wr_over_addr_B,                     
                            output  wire [31:0] wr_over_addr_C,                     
                            output  wire [31:0] wr_over_addr_D          
                           );

assign fifo_rd_ddr3_data_en[3:1] = 3'd0;
assign fifo_rd_time_code_en[3:1] = 3'd0;

reg  user_rd_data_en_A;
reg  user_rd_data_en_B;
reg  user_rd_data_en_C;
reg  user_rd_data_en_D;
reg  txn_done_A;
reg  txn_done_B;
reg  txn_done_C;
reg  txn_done_D;

wire       user_wr_en_A;
wire       user_wr_en_B;
wire       user_wr_en_C;
wire       user_wr_en_D;
wire       user_wr_satisfy_A;
wire       user_wr_satisfy_B;
wire       user_wr_satisfy_C;
wire       user_wr_satisfy_D;

wire [31:0] user_wr_base_addr_A;
wire [31:0] user_wr_base_addr_B;
wire [31:0] user_wr_base_addr_C;
wire [31:0] user_wr_base_addr_D;

wire [31:0] user_wr_data_A;
wire [31:0] user_wr_data_B;
wire [31:0] user_wr_data_C;
wire [31:0] user_wr_data_D;

wire [15:0] user_wr_len_A;
wire [15:0] user_wr_len_B;
wire [15:0] user_wr_len_C;
wire [15:0] user_wr_len_D;

wire [ 7:0] user_wr_burst_len_A;
wire [ 7:0] user_wr_burst_len_B;
wire [ 7:0] user_wr_burst_len_C;
wire [ 7:0] user_wr_burst_len_D;


always @(*)
begin
    case(wr_ddr3_ch_sel)
        4'b0001:begin
                    user_rd_data_en_A = user_rd_data_en;
                    user_wr_en = user_wr_en_A;
                    user_wr_satisfy = user_wr_satisfy_A;
                    user_wr_base_addr = user_wr_base_addr_A;
                    user_wr_data = user_wr_data_A;
                    user_wr_len = user_wr_len_A;
                    user_wr_burst_len = user_wr_burst_len_A;
                end
        4'b0010:begin
                    user_rd_data_en_B = user_rd_data_en;
                    user_wr_en = user_wr_en_B;
                    user_wr_satisfy = user_wr_satisfy_B;
                    user_wr_base_addr = user_wr_base_addr_B;
                    user_wr_data = user_wr_data_B;
                    user_wr_len = user_wr_len_B;
                    user_wr_burst_len = user_wr_burst_len_B;
                end
        4'b0100:begin
                    user_rd_data_en_C = user_rd_data_en;
                    user_wr_en = user_wr_en_C;
                    user_wr_satisfy = user_wr_satisfy_C;
                    user_wr_base_addr = user_wr_base_addr_C;
                    user_wr_data = user_wr_data_C;
                    user_wr_len = user_wr_len_C;
                    user_wr_burst_len = user_wr_burst_len_C;
                end
        4'b1000:begin
                    user_rd_data_en_D = user_rd_data_en;
                    user_wr_en = user_wr_en_D;
                    user_wr_satisfy = user_wr_satisfy_D;
                    user_wr_base_addr = user_wr_base_addr_D;
                    user_wr_data = user_wr_data_D;
                    user_wr_len = user_wr_len_D;
                    user_wr_burst_len = user_wr_burst_len_D;
                end
    endcase
end                                   
wr_ddr3_ctrl wr_ddr3_ctrl_A(
                             .clk(clk),
                             .rst_n(rst_n),
                             
                             .wr_start_addr_par(wr_start_addr_par_A),//input [31:0] 
                             .wr_over_addr_par(wr_over_addr_par_A),//input [31:0] 
                             
                             .wr_ddr3_ch_sel(wr_ddr3_ch_sel[0]),//input        
                             .fifo_rd_data(fifo_rd_data_A),// input [31:0] 
                             .fifo_time_code(fifo_time_code_A),//input [31:0] 
                             .series_comp_point(series_comp_point_A),//压缩点数 input [15:0] 
                             
                             .series_data_type(series_data_type_A),//数据类型input [7:0]  
        
                             .user_rd_data_en(user_rd_data_en_A),//input              
                             .txn_done(txn_done),//写完成input              
      
                             .user_wr_en(user_wr_en_A), //写开始命令   output  reg        
        
                             .user_wr_satisfy(user_wr_satisfy_A), //写数据满足  output  reg               
                             .user_wr_base_addr(user_wr_base_addr_A),// output  reg [31:0] 
                             .user_wr_data(user_wr_data_A),// output  reg [31:0] 
                             .ddr3_wr_done(ddr3_wr_done[0]),// output  reg        
                             
                             .user_wr_len(user_wr_len_A),// output  reg [15:0] 
                             .user_wr_burst_len(user_wr_burst_len_A),// output  reg [ 7:0] 
                             .fifo_rd_ddr3_data_en(fifo_rd_ddr3_data_en[0]),// output  reg        
                             .fifo_rd_time_code_en(fifo_rd_time_code_en[0]),// output  reg        
                             
                             .wr_start_addr(wr_start_addr_A),//output wire [31:0] 
                             .wr_over_addr(wr_over_addr_A)// output  reg [31:0] 
                            );



endmodule
