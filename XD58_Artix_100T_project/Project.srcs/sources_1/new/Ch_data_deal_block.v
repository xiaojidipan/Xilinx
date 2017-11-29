`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/21 14:28:30
// Design Name: 
// Module Name: Ch_data_deal_block
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


module Ch_data_deal_block(
                            input clk,
                            input rst_n,
                            
                            input [15:0] cal_zero_par,
                            input [15:0] ch_sample_par,
                            
                            input [11:0] data_in,
                            input        data_in_val,
                            
                            output wire[15:0] data_out,
                            output wire       data_out_val
                          );

wire [15:0] cov_data;//符号转换后的数据
wire        cov_data_val;

wire [15:0] cal_data;//校零后的数据
wire        cal_data_val;

data_convert data_convert_inst(
                                .clk(clk),
                                .rst_n(rst_n),
                                .ad_data_in(data_in),//input [11:0]
                                .ad_data_in_val(data_in_val),
                                .ad_data_out(cov_data),//output wire [15:0] 
                                .ad_data_out_val(cov_data_val)
                               );
zero_calibrate zero_calibrate_inst(
                                   .clk(clk),
                                   .rst_n(rst_n),
 
                                   .cal_zero_par(cal_zero_par),//校零参数      
                                   .ad_data_in(cov_data), //input [15:0]  \
                                   .ad_data_in_val(cov_data_val),
                                   .ad_data_out(cal_data), //校准数据输出 output reg[15:0] 
                                   .ad_data_out_val(cal_data_val)
                                   );
ad_data_sample ad_data_sample_inst(
                                   .clk(clk),
                                   .rst_n(rst_n), 
                                   
                                   .ch_sample_par(ch_sample_par),//input [15:0]         
                                   
                                   .data_in(cal_data),//input [15:0] 
                                   .data_in_val(cal_data_val),     
                                   
                                   .data_out(data_out),//output reg [15:0] 
                                   .data_out_val(data_out_val)//output reg        
                                  );


endmodule
