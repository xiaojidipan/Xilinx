`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/21 15:17:49
// Design Name: 
// Module Name: series_data_gather_block
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


module series_data_gather_block(
                                 input clk,
                                 input rst_n,
                                 
                                 input [ 7:0] start_mode,
                                 input        start_mode_val,
                                 input [ 7:0] series_ctrl,
                                 input        series_ctrl_val,
                                 
                                 input [15:0] data_in_A,
                                 input [15:0] data_in_B,
                                 input [15:0] data_in_C,
                                 input [15:0] data_in_D,
                                 input [ 3:0] data_in_val,
                                 
                                 input [63:0] time_code,
                                 input [15:0] series_comp_point_A,//A通道压缩点数参数
                                 input [15:0] series_comp_point_B,//B通道压缩点数参数
                                 input [15:0] series_comp_point_C,//C通道压缩点数参数
                                 input [15:0] series_comp_point_D,//D通道压缩点数参数
                                 
                                 input [15:0] series_comp_ratio_A,//A通道压缩比数参数
                                 input [15:0] series_comp_ratio_B,//B通道压缩比数参数
                                 input [15:0] series_comp_ratio_C,//C通道压缩比数参数
                                 input [15:0] series_comp_ratio_D,//D通道压缩比数参数
                                 
                                 input [ 7:0] series_data_type_A,//A通道数据类型参数
                                 input [ 7:0] series_data_type_B,//B通道数据类型参数
                                 input [ 7:0] series_data_type_C,//C通道数据类型参数
                                 input [ 7:0] series_data_type_D,//D通道数据类型参数
                                 
                                 input [ 7:0] series_sample_period_A,//A通道采集周期数
                                 input [ 7:0] series_sample_period_B,
                                 input [ 7:0] series_sample_period_C,
                                 input [ 7:0] series_sample_period_D,

                                 input [ 3:0] triger_gather,//触发采集
                                 input [ 3:0] start_gather,
                                 input [ 3:0] stop_gather,//停止采集
                                 input [ 3:0] continuous_gather,//连续采集
                                 input [ 3:0] signal_gather,//单词采集
                                 input [ 3:0] period_gather,//周期性采集
                                 
                                 output wire [31:0] series_time_code_A,
                                 output wire [31:0] series_time_code_B,
                                 output wire [31:0] series_time_code_C,
                                 output wire [31:0] series_time_code_D,
                                 output wire [ 3:0] series_time_code_val,
                                 
                                 output wire [31:0] series_data_A,
                                 output wire [31:0] series_data_B,
                                 output wire [31:0] series_data_C,
                                 output wire [31:0] series_data_D,
                                 output wire [ 3:0] series_data_val
                                );
series_data_gather series_data_gather_A(
                                            .clk(clk),
                                            .rst_n(rst_n),
                                            
                                            .series_com_point_par(series_comp_point_A),//压缩点数 input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_A),//压缩比参数 input [15:0]       
                                            .series_data_type_par(series_data_type_A),//采集的数据类型 input [ 7:0]       
                                            .series_sample_period(series_sample_period_A),// input [ 7:0]  
                                            .time_code_in(time_code),//时间码 input [63:0]  
                                            
                                            .data_in(data_in_A), //input [15:0] 
                                            .data_in_val(data_in_val[0]),//input        
                                            
                                            .start_gather(start_gather[0]),//启动采集 input        
                                            .triger_gather(triger_gather[0]), //触发采集 input        
                                            .stop_gather(stop_gather[0]),//停止采集input        
                                            .continuous_gather(continuous_gather[0]),//连续采集 input         
                                            .signal_gather(signal_gather[0]),//单词采集  input         
                                            .period_gather(period_gather[0]),//周期性采集  input         
                                                                              
                                            .time_code_out(series_time_code_A),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[0]),//output reg        
                                            .data_out(series_data_A),//output reg [15:0] 
                                            .data_out_val(series_data_val[0])//output reg        
                                           );
series_data_gather series_data_gather_B(
                                            .clk(clk),
                                            .rst_n(rst_n),
                                            
                                            .series_com_point_par(series_comp_point_B),//压缩点数 input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_B),//压缩比参数 input [15:0]       
                                            .series_data_type_par(series_data_type_B),//采集的数据类型 input [ 7:0]       
                                            .series_sample_period(series_sample_period_B),// input [ 7:0]  
                                            .time_code_in(time_code),//时间码 input [63:0]  
                                            
                                            .data_in(data_in_B), //input [15:0] 
                                            .data_in_val(data_in_val[1]),//input        
                                            
                                            .start_gather(start_gather[1]),//启动采集 input        
                                            .triger_gather(triger_gather[1]), //触发采集 input        
                                            .stop_gather(stop_gather[1]),//停止采集input        
                                            .continuous_gather(continuous_gather[1]),//连续采集 input         
                                            .signal_gather(signal_gather[1]),//单词采集  input         
                                            .period_gather(period_gather[1]),//周期性采集  input   
                                                                                
                                            .time_code_out(series_time_code_B),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[1]),//output reg        
                                            .data_out(series_data_B),//output reg [15:0] 
                                            .data_out_val(series_data_val[1])//output reg        
                                           );
series_data_gather series_data_gather_C(
                                            .clk(clk),
                                            .rst_n(rst_n),
                                            
                                            .series_com_point_par(series_comp_point_C),//压缩点数 input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_C),//压缩比参数 input [15:0]       
                                            .series_data_type_par(series_data_type_C),//采集的数据类型 input [ 7:0]       
                                            .series_sample_period(series_sample_period_C),// input [ 7:0]  
                                            .time_code_in(time_code),//时间码 input [63:0]  
                                            
                                            .data_in(data_in_C), //input [15:0] 
                                            .data_in_val(data_in_val[2]),//input        
                                            
                                            .start_gather(start_gather[2]),//启动采集 input        
                                            .triger_gather(triger_gather[2]), //触发采集 input        
                                            .stop_gather(stop_gather[2]),//停止采集input        
                                            .continuous_gather(continuous_gather[2]),//连续采集 input         
                                            .signal_gather(signal_gather[2]),//单词采集  input         
                                            .period_gather(period_gather[2]),//周期性采集  input                                      
                                            .time_code_out(series_time_code_C),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[2]),//output reg        
                                            .data_out(series_data_C),//output reg [15:0] 
                                            .data_out_val(series_data_val[2])//output reg        
                                           );
series_data_gather series_data_gather_D(
                                            .clk(clk),
                                            .rst_n(rst_n),
                                            
                                            .series_com_point_par(series_comp_point_D),//压缩点数 input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_D),//压缩比参数 input [15:0]       
                                            .series_data_type_par(series_data_type_D),//采集的数据类型 input [ 7:0]       
                                            .series_sample_period(series_sample_period_D),// input [ 7:0]  
                                            .time_code_in(time_code),//时间码 input [63:0]  
                                            
                                            .data_in(data_in_D), //input [15:0] 
                                            .data_in_val(data_in_val[3]),//input        
                                            
                                            .start_gather(start_gather[3]),//启动采集 input        
                                            .triger_gather(triger_gather[3]), //触发采集 input        
                                            .stop_gather(stop_gather[3]),//停止采集input        
                                            .continuous_gather(continuous_gather[3]),//连续采集 input         
                                            .signal_gather(signal_gather[3]),//单词采集  input         
                                            .period_gather(period_gather[3]),//周期性采集  input   
                                                                          
                                            .time_code_out(series_time_code_D),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[3]),//output reg        
                                            .data_out(series_data_D),//output reg [15:0] 
                                            .data_out_val(series_data_val[3])//output reg        
                                           );



endmodule
