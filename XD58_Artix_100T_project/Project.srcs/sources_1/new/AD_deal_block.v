`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/21 14:14:53
// Design Name: 
// Module Name: AD_deal_block
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


module AD_deal_block(
                        input clk,
                        input rst_n,
                        
                        input DCO_p,
                        input DCO_n,
                        input FCO_p,
                        input FCO_n,
                        input D0_A_p,
                        input D0_A_n,
                        input D1_A_p,
                        input D1_A_n,
                        input D0_B_p,
                        input D0_B_n,
                        input D1_B_p,
                        input D1_B_n,   
                        input D0_C_p,
                        input D0_C_n,
                        input D1_C_p,
                        input D1_C_n,
                        input D0_D_p,
                        input D0_D_n,
                        input D1_D_p,
                        input D1_D_n,
                        
                        input [15:0] cal_zero_par_A,//Aͨ��У�����
                        input [15:0] cal_zero_par_B,//Bͨ��У�����
                        input [15:0] cal_zero_par_C,//Cͨ��У�����
                        input [15:0] cal_zero_par_D,//Dͨ��У�����
                        
                        input [15:0] ch_sample_par_A,//Aͨ����������
                        input [15:0] ch_sample_par_B,//Bͨ����������
                        input [15:0] ch_sample_par_C,//Cͨ����������
                        input [15:0] ch_sample_par_D,//Dͨ����������
                        
                        output wire [15:0] data_out_A,
                        output wire [15:0] data_out_B,
                        output wire [15:0] data_out_C,
                        output wire [15:0] data_out_D,
                        output wire [ 3:0] data_out_val
                     );
wire   freq_H_L;
assign freq_H_L = 1'b0;//0�����Ƶ��1�����Ƶ��,10~50MHzΪ0,60~--Ϊ1

wire        AD_data_val;
wire        DCO;

wire [47:0] AD_data;//д��FIFO�е�����
wire [ 4:0] AD_rd_fifo_sgl;//FIFO�пɶ�AD���ݸ���
wire        AD_rd_fifo_val;//AD��������Ч
wire [47:0] AD_rd_data;//��FIFO�ж����ĸ�·AD����

ADC_module AD_inst(
                    .rst_n(rst_n),//input 
                    .freq_H_L(freq_H_L),
                    .DCO_p(DCO_p),//input 
                    .DCO_n(DCO_n),//input 
                    .FCO_p(FCO_p),//input 
                    .FCO_n(FCO_n),//input 
                    .D0_A_p(D0_A_p),//input 
                    .D0_A_n(D0_A_n),//input
                    .D1_A_p(D1_A_p),//input
                    .D1_A_n(D1_A_n),//input
                    .D0_B_p(D0_B_p),//input
                    .D0_B_n(D0_B_n),//input
                    .D1_B_p(D1_B_p),//input
                    .D1_B_n(D1_B_n),//input
                    .D0_C_p(D0_C_p),//input 
                    .D0_C_n(D0_C_n),//input
                    .D1_C_p(D1_C_p),//input
                    .D1_C_n(D1_C_n),//input
                    .D0_D_p(D0_D_p),//input
                    .D0_D_n(D0_D_n),//input
                    .D1_D_p(D1_D_p),//input
                    .D1_D_n(D1_D_n),//input
                    .AD_D_A(AD_data[11:0]),//output reg [11:0] 
                    .AD_D_B(AD_data[23:12]),//output reg [11:0] 
                    .AD_D_C(AD_data[35:24]),//output reg [11:0] 
                    .AD_D_D(AD_data[47:36]),//output reg [11:0] 
                    .AD_data_val(AD_data_val), //output
                    .DCO(DCO)
                );    
FIFO_AD_ip FIFO_AD_ip_inst(
                           .rst(!rst_n),                      // input wire rst
                           .wr_clk(DCO),                // input wire wr_clk
                           .rd_clk(clk),                // input wire rd_clk
                           .din(AD_data),                      // input wire [47 : 0] din
                           .wr_en(AD_data_val),                  // input wire wr_en
                           .rd_en(AD_rd_fifo_val),                  // input wire rd_en
                           .dout(AD_rd_data),                    // output wire [47 : 0] dout
                           .full(),                    // output wire full
                           .empty(),                  // output wire empty
                           .rd_data_count(AD_rd_fifo_sgl)  // output wire [5 : 0] rd_data_count
                          ); 
AD_fifo_rd_ctrl AD_fifo_rd_ctrl_inst(
                                      .clk(clk),
                                      .rst_n(rst_n),
                                      
                                      .AD_rd_fifo_sgl(AD_rd_fifo_sgl),//input [4:0]    
                                      .AD_rd_fifo_val(AD_rd_fifo_val)//output reg     
                                      );

Ch_data_deal_block Ch_data_deal_block_A(
                                        .clk(clk),
                                        .rst_n(rst_n),
                                        
                                        .cal_zero_par(cal_zero_par_A),//input [15:0] 
                                        .ch_sample_par(ch_sample_par_A),//input [15:0] 
                                        
                                        .data_in(AD_rd_data[11:0]),//input [11:0] 
                                        .data_in_val(AD_rd_fifo_val),//input        
                                        
                                        .data_out(data_out_A),//output [15:0]
                                        .data_out_val(data_out_val[0])//output       
                                      );
Ch_data_deal_block Ch_data_deal_block_B(
                                        .clk(clk),
                                        .rst_n(rst_n),
                                        
                                        .cal_zero_par(cal_zero_par_B),//input [15:0] 
                                        .ch_sample_par(ch_sample_par_B),//input [15:0] 
                                        
                                        .data_in(AD_rd_data[23:12]),//input [11:0] 
                                        .data_in_val(AD_rd_fifo_val),//input        
                                        
                                        .data_out(data_out_B),//output [15:0]
                                        .data_out_val(data_out_val[1])//output       
                                      );
Ch_data_deal_block Ch_data_deal_block_C(
                                        .clk(clk),
                                        .rst_n(rst_n),
                                        
                                        .cal_zero_par(cal_zero_par_C),//input [15:0] 
                                        .ch_sample_par(ch_sample_par_C),//input [15:0] 
                                        
                                        .data_in(AD_rd_data[35:24]),//input [11:0] 
                                        .data_in_val(AD_rd_fifo_val),//input        
                                        
                                        .data_out(data_out_C),//output [15:0]
                                        .data_out_val(data_out_val[2])//output       
                                      );
Ch_data_deal_block Ch_data_deal_block_D(
                                        .clk(clk),
                                        .rst_n(rst_n),
                                        
                                        .cal_zero_par(cal_zero_par_D),//input [15:0] 
                                        .ch_sample_par(ch_sample_par_D),//input [15:0] 
                                        
                                        .data_in(AD_rd_data[47:36]),//input [11:0] 
                                        .data_in_val(AD_rd_fifo_val),//input        
                                        
                                        .data_out(data_out_D),//output [15:0]
                                        .data_out_val(data_out_val[3])//output       
                                      );

endmodule
