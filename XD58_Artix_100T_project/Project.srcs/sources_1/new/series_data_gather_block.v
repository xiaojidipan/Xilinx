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
                                 input [15:0] series_comp_point_A,//Aͨ��ѹ����������
                                 input [15:0] series_comp_point_B,//Bͨ��ѹ����������
                                 input [15:0] series_comp_point_C,//Cͨ��ѹ����������
                                 input [15:0] series_comp_point_D,//Dͨ��ѹ����������
                                 
                                 input [15:0] series_comp_ratio_A,//Aͨ��ѹ����������
                                 input [15:0] series_comp_ratio_B,//Bͨ��ѹ����������
                                 input [15:0] series_comp_ratio_C,//Cͨ��ѹ����������
                                 input [15:0] series_comp_ratio_D,//Dͨ��ѹ����������
                                 
                                 input [ 7:0] series_data_type_A,//Aͨ���������Ͳ���
                                 input [ 7:0] series_data_type_B,//Bͨ���������Ͳ���
                                 input [ 7:0] series_data_type_C,//Cͨ���������Ͳ���
                                 input [ 7:0] series_data_type_D,//Dͨ���������Ͳ���
                                 
                                 input [ 7:0] series_sample_period_A,//Aͨ���ɼ�������
                                 input [ 7:0] series_sample_period_B,
                                 input [ 7:0] series_sample_period_C,
                                 input [ 7:0] series_sample_period_D,

                                 input [ 3:0] triger_gather,//�����ɼ�
                                 input [ 3:0] start_gather,
                                 input [ 3:0] stop_gather,//ֹͣ�ɼ�
                                 input [ 3:0] continuous_gather,//�����ɼ�
                                 input [ 3:0] signal_gather,//���ʲɼ�
                                 input [ 3:0] period_gather,//�����Բɼ�
                                 
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
                                            
                                            .series_com_point_par(series_comp_point_A),//ѹ������ input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_A),//ѹ���Ȳ��� input [15:0]       
                                            .series_data_type_par(series_data_type_A),//�ɼ����������� input [ 7:0]       
                                            .series_sample_period(series_sample_period_A),// input [ 7:0]  
                                            .time_code_in(time_code),//ʱ���� input [63:0]  
                                            
                                            .data_in(data_in_A), //input [15:0] 
                                            .data_in_val(data_in_val[0]),//input        
                                            
                                            .start_gather(start_gather[0]),//�����ɼ� input        
                                            .triger_gather(triger_gather[0]), //�����ɼ� input        
                                            .stop_gather(stop_gather[0]),//ֹͣ�ɼ�input        
                                            .continuous_gather(continuous_gather[0]),//�����ɼ� input         
                                            .signal_gather(signal_gather[0]),//���ʲɼ�  input         
                                            .period_gather(period_gather[0]),//�����Բɼ�  input         
                                                                              
                                            .time_code_out(series_time_code_A),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[0]),//output reg        
                                            .data_out(series_data_A),//output reg [15:0] 
                                            .data_out_val(series_data_val[0])//output reg        
                                           );
series_data_gather series_data_gather_B(
                                            .clk(clk),
                                            .rst_n(rst_n),
                                            
                                            .series_com_point_par(series_comp_point_B),//ѹ������ input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_B),//ѹ���Ȳ��� input [15:0]       
                                            .series_data_type_par(series_data_type_B),//�ɼ����������� input [ 7:0]       
                                            .series_sample_period(series_sample_period_B),// input [ 7:0]  
                                            .time_code_in(time_code),//ʱ���� input [63:0]  
                                            
                                            .data_in(data_in_B), //input [15:0] 
                                            .data_in_val(data_in_val[1]),//input        
                                            
                                            .start_gather(start_gather[1]),//�����ɼ� input        
                                            .triger_gather(triger_gather[1]), //�����ɼ� input        
                                            .stop_gather(stop_gather[1]),//ֹͣ�ɼ�input        
                                            .continuous_gather(continuous_gather[1]),//�����ɼ� input         
                                            .signal_gather(signal_gather[1]),//���ʲɼ�  input         
                                            .period_gather(period_gather[1]),//�����Բɼ�  input   
                                                                                
                                            .time_code_out(series_time_code_B),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[1]),//output reg        
                                            .data_out(series_data_B),//output reg [15:0] 
                                            .data_out_val(series_data_val[1])//output reg        
                                           );
series_data_gather series_data_gather_C(
                                            .clk(clk),
                                            .rst_n(rst_n),
                                            
                                            .series_com_point_par(series_comp_point_C),//ѹ������ input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_C),//ѹ���Ȳ��� input [15:0]       
                                            .series_data_type_par(series_data_type_C),//�ɼ����������� input [ 7:0]       
                                            .series_sample_period(series_sample_period_C),// input [ 7:0]  
                                            .time_code_in(time_code),//ʱ���� input [63:0]  
                                            
                                            .data_in(data_in_C), //input [15:0] 
                                            .data_in_val(data_in_val[2]),//input        
                                            
                                            .start_gather(start_gather[2]),//�����ɼ� input        
                                            .triger_gather(triger_gather[2]), //�����ɼ� input        
                                            .stop_gather(stop_gather[2]),//ֹͣ�ɼ�input        
                                            .continuous_gather(continuous_gather[2]),//�����ɼ� input         
                                            .signal_gather(signal_gather[2]),//���ʲɼ�  input         
                                            .period_gather(period_gather[2]),//�����Բɼ�  input                                      
                                            .time_code_out(series_time_code_C),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[2]),//output reg        
                                            .data_out(series_data_C),//output reg [15:0] 
                                            .data_out_val(series_data_val[2])//output reg        
                                           );
series_data_gather series_data_gather_D(
                                            .clk(clk),
                                            .rst_n(rst_n),
                                            
                                            .series_com_point_par(series_comp_point_D),//ѹ������ input [15:0]  
                                            .series_comp_ratio_par(series_comp_ratio_D),//ѹ���Ȳ��� input [15:0]       
                                            .series_data_type_par(series_data_type_D),//�ɼ����������� input [ 7:0]       
                                            .series_sample_period(series_sample_period_D),// input [ 7:0]  
                                            .time_code_in(time_code),//ʱ���� input [63:0]  
                                            
                                            .data_in(data_in_D), //input [15:0] 
                                            .data_in_val(data_in_val[3]),//input        
                                            
                                            .start_gather(start_gather[3]),//�����ɼ� input        
                                            .triger_gather(triger_gather[3]), //�����ɼ� input        
                                            .stop_gather(stop_gather[3]),//ֹͣ�ɼ�input        
                                            .continuous_gather(continuous_gather[3]),//�����ɼ� input         
                                            .signal_gather(signal_gather[3]),//���ʲɼ�  input         
                                            .period_gather(period_gather[3]),//�����Բɼ�  input   
                                                                          
                                            .time_code_out(series_time_code_D),//output reg [63:0] 
                                            .time_code_out_val(series_time_code_val[3]),//output reg        
                                            .data_out(series_data_D),//output reg [15:0] 
                                            .data_out_val(series_data_val[3])//output reg        
                                           );



endmodule
