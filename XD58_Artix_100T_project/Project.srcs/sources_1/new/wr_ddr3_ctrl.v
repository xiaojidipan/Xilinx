`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/09 14:21:55
// Design Name: 
// Module Name: wr_ddr3_ctrl
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


module wr_ddr3_ctrl(
                     input clk,
                     input rst_n,
                     
                     input [31:0] wr_start_addr_par,
                     input [31:0] wr_over_addr_par,
                     
                     input        wr_ddr3_ch_sel,
                     input [31:0] fifo_rd_data,
                     input [31:0] fifo_time_code,
                     input [15:0] series_comp_point,//ѹ������
                     
                     input [7:0]  series_data_type,//��������

                     input              user_rd_data_en,
                     input              txn_done,//д���
                     

                     output  reg        user_wr_en, //д��ʼ����   

                     output  reg        user_wr_satisfy, //д��������        
                     output  reg [31:0] user_wr_base_addr,
                     output  reg [31:0] user_wr_data,
                     output  reg        ddr3_wr_done,
                     
                     output  reg [15:0] user_wr_len,
                     output  reg [ 7:0] user_wr_burst_len,
                     output  reg        fifo_rd_ddr3_data_en,
                     output  reg        fifo_rd_time_code_en,
                     
                     output  reg [31:0] wr_start_addr,
                     output  reg [31:0] wr_over_addr
                    );
reg        rden_sel;
always @(*)
begin
    case(rden_sel)
         1'b0 : begin
                    fifo_rd_time_code_en = user_rd_data_en;
                    user_wr_data = fifo_time_code;
               end
        1'b1 : begin
                   fifo_rd_ddr3_data_en = user_rd_data_en;
                   user_wr_data = fifo_rd_data;
               end
    endcase
end

parameter ST0_a = 7'b000_0001,
          ST1_a = 7'b000_0010,  
          ST2_a = 7'b000_0100,  
          ST3_a = 7'b000_1000,  
          ST4_a = 7'b001_0000,  
          ST5_a = 7'b010_0000, 
          ST6_a = 7'b100_0000; 
         
reg [ 6:0] state_a;

wire [31:0] wr_temp_addr;//��̬��ַ�������ж�ʹ��
wire [31:0] wr_addr_step;//��ַ����
assign wr_addr_step =  {15'h0,series_comp_point,1'b0} + 32'h8;
assign wr_temp_addr = wr_over_addr + wr_addr_step;

reg     flag;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            user_wr_en <= 1'b0;
            user_wr_base_addr <= 32'h8040_0000;//��ʼ��ַȥ��4M�����Ժ���
            user_wr_len <= 16'd0;
            ddr3_wr_done <= 1'b0;
            rden_sel <= 1'b0;//ѡ��
            flag <= 1'b0;
            wr_start_addr <= 32'd0;
            wr_over_addr <= 32'd0;
            state_a <= ST0_a;
        end
    else
        begin
            //---Aͨ��---------------------------------
            case(state_a)
                ST0_a : begin
                            user_wr_satisfy <= 1'b0;
                            if(wr_ddr3_ch_sel)
                                begin
                                    ddr3_wr_done <= 1'b0;
                                    user_wr_en <= 1'b1;//����д
                                    user_wr_burst_len <= 8'd2;
                                    user_wr_len <= 16'd1;//дʱ����,һ��ͻ��
                                    rden_sel <= 1'b0;//ѡ��
                                    state_a <= ST1_a;
                                    flag <= 1'b1;
                                    if(wr_temp_addr > wr_over_addr_par)//����д���������ռ�õ�ַ����ָ���洢�ռ�
                                        begin
                                            wr_start_addr <= wr_start_addr_par + wr_addr_step;
                                            wr_over_addr <= wr_start_addr_par;//���µ���ʼ��ַ
                                            user_wr_base_addr <= wr_start_addr_par;//��ʼ��ַ����ΪA������ʼ��ַ 32'h8040_0000;
                                        end
                                    else
                                        begin
                                            wr_start_addr <= wr_start_addr_par;
                                            user_wr_base_addr <= (!flag) ? wr_start_addr_par : wr_over_addr;//��ʼ��ַ�������ϴ����д��ĵ�ַ
                                        end
                                end
                            else
                                begin
                                    state_a <= ST0_a;
                                end
                        end
                ST1_a : begin
                            user_wr_satisfy <= 1'b1;
                            user_wr_en <= 1'b0;
                            rden_sel <= 1'b0;//ѡ��ʱ����
                            state_a <= ST2_a;
                        end
                ST2_a : begin
                            user_wr_satisfy <= 1'b0;
                            if(txn_done)
                                begin
                                    state_a <= ST3_a; 
                                end
                            else
                                begin
                                    state_a <= ST2_a; 
                                end
                        end
                ST3_a : begin
                            user_wr_en <= 1'b1;//����д
                            rden_sel <= 1'b1;//ѡ������
                            user_wr_burst_len <= 8'd16;
                            user_wr_len <= {5'b0000,series_comp_point[15:5]};
                            user_wr_base_addr <= user_wr_base_addr + 32'h8;//д��ʼ��ַ����
                            wr_over_addr <= user_wr_base_addr + 32'h8;//������һ����ʼ��ַ
                            state_a <= ST4_a;  
                        end
                ST4_a : begin
                            user_wr_satisfy <= 1'b1;
                            user_wr_en <= 1'b0;
                            state_a <= ST5_a;
                        end
                ST5_a : begin
                            if(txn_done)
                                begin
                                    ddr3_wr_done <= 1'b1;
                                    rden_sel <= 1'b0;//ѡ��
                                    user_wr_satisfy <= 1'b0;
                                    wr_over_addr <= wr_over_addr + {15'h0,series_comp_point,1'b0};//������һ������ʼ��ַ
                                    state_a <= ST6_a; 
                                end
                            else
                                begin
                                    ddr3_wr_done <= 1'b0;
                                    state_a <= ST5_a; 
                                end
                        end
                ST6_a : begin
                            state_a <= ST0_a; 
                        end
                    default:state_a <= ST0_a; 
            endcase
        end
end

//--������-----------------------------------
(*mark_debug = "true"*) wire         wr_ddr3_ch_sel_w; 
(*mark_debug = "true"*) wire [31:0]  fifo_rd_data_w;
assign wr_ddr3_ch_sel_w = wr_ddr3_ch_sel;
assign fifo_rd_data_w = fifo_rd_data;

(*mark_debug = "true"*) wire [31:0] fifo_time_code_w;                   

(*mark_debug = "true"*) wire         user_rd_data_en_w;
(*mark_debug = "true"*) wire         txn_done_w;//д���
(*mark_debug = "true"*) wire         user_wr_en_w; //д��ʼ����   
(*mark_debug = "true"*) wire         user_wr_satisfy_w; //д��������        
(*mark_debug = "true"*) wire [31:0]  user_wr_base_addr_w;
(*mark_debug = "true"*) wire [31:0]  user_wr_data_w;
(*mark_debug = "true"*) wire         ddr3_wr_done_w;
                     
(*mark_debug = "true"*) wire [15:0]  user_wr_len_w;
(*mark_debug = "true"*) wire [ 7:0]  user_wr_burst_len_w;
(*mark_debug = "true"*) wire         fifo_rd_ddr3_data_en_w;
(*mark_debug = "true"*) wire         fifo_rd_time_code_en_w;

(*mark_debug = "true"*) wire [ 5:0]  state_a_w;
(*mark_debug = "true"*) wire         rden_sel_w;

assign fifo_time_code_w = fifo_time_code;
assign user_rd_data_en_w = user_rd_data_en;
assign txn_done_w = txn_done;
assign user_wr_en_w = user_wr_en;
assign user_wr_satisfy_w = user_wr_satisfy;
assign user_wr_base_addr_w = user_wr_base_addr;
assign user_wr_data_w = user_wr_data;
assign ddr3_wr_done_w = ddr3_wr_done;
assign user_wr_len_w = user_wr_len;
assign user_wr_burst_len_w = user_wr_burst_len;
assign fifo_rd_ddr3_data_en_w = fifo_rd_ddr3_data_en;
assign fifo_rd_time_code_en_w = fifo_rd_time_code_en;

assign state_a_w = state_a;
assign rden_sel_w = rden_sel;
(*mark_debug = "true"*)wire [31:0] wr_temp_addr_w;//��̬��ַ�������ж�ʹ��
(*mark_debug = "true"*)wire [31:0] wr_addr_step_w;//��ַ����

assign wr_temp_addr_w = wr_temp_addr;
assign wr_addr_step_w = wr_addr_step;

(*mark_debug = "true"*)wire [31:0] wr_start_addr_par_w;
(*mark_debug = "true"*)wire [31:0] wr_over_addr_par_w;
(*mark_debug = "true"*)wire  [31:0] wr_start_addr_w;
(*mark_debug = "true"*)wire  [31:0] wr_over_addr_w;

assign wr_start_addr_par_w = wr_start_addr_par;
assign wr_over_addr_par_w = wr_over_addr_par;
assign wr_start_addr_w = wr_start_addr;
assign wr_over_addr_w = wr_over_addr;

endmodule
