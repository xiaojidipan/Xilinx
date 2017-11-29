`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/08 20:27:09
// Design Name: 
// Module Name: wr_ddr3_data_sel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  确定选择阿哥通道FIFO的数据进行写DDR3操作。
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module wr_ddr3_data_sel(
                        input clk,
                        input rst_n,
                        
                        input [15:0] series_comp_point_A,//压缩点数
                        input [15:0] series_comp_point_B,//压缩点数
                        input [15:0] series_comp_point_C,//压缩点数
                        input [15:0] series_comp_point_D,//压缩点数
                        input [7:0]  series_data_type_A,//数据
                        input [7:0]  series_data_type_B,
                        input [7:0]  series_data_type_C,
                        input [7:0]  series_data_type_D,
                        
                        input [10:0] fifo_ddr3_sgl_A,
                        input [10:0] fifo_ddr3_sgl_B,
                        input [10:0] fifo_ddr3_sgl_C,
                        input [10:0] fifo_ddr3_sgl_D,
                        
                        input [3:0]  ddr3_wr_done,//每bit代表一路
                        
                        output reg [3:0] wr_ddr3_ch_sel
                       );                      
wire ch_A_ok;
wire type_A0_ok;
wire type_A1_ok;

assign type_A0_ok = (series_data_type_A == 8'd0) && (fifo_ddr3_sgl_A >= {1'b0,series_comp_point_A[15:1]}) && (fifo_ddr3_sgl_A > 0);
assign type_A1_ok = (series_data_type_A == 8'd1) && (fifo_ddr3_sgl_A >= series_comp_point_A) && (fifo_ddr3_sgl_A > 0);
assign ch_A_ok = type_A0_ok || type_A1_ok;

wire ch_B_ok;
wire type_B0_ok;
wire type_B1_ok;

assign type_B0_ok = (series_data_type_B == 8'd0) && (fifo_ddr3_sgl_B >= {1'b0,series_comp_point_B[15:1]}) && (fifo_ddr3_sgl_B > 0);
assign type_B1_ok = (series_data_type_B == 8'd1) && (fifo_ddr3_sgl_B >= series_comp_point_B) && (fifo_ddr3_sgl_B > 0);
assign ch_B_ok = type_B0_ok || type_B1_ok;

wire ch_C_ok;
wire type_C0_ok;
wire type_C1_ok;

assign type_C0_ok = (series_data_type_C == 8'd0) && (fifo_ddr3_sgl_C >= {1'b0,series_comp_point_C[15:1]}) && (fifo_ddr3_sgl_C > 0);
assign type_C1_ok = (series_data_type_C == 8'd1) && (fifo_ddr3_sgl_C >= series_comp_point_C) && (fifo_ddr3_sgl_C > 0);
assign ch_C_ok = type_C0_ok || type_C1_ok;

wire ch_D_ok;
wire type_D0_ok;
wire type_D1_ok;

assign type_D0_ok = (series_data_type_D == 8'd0) && (fifo_ddr3_sgl_D >= {1'b0,series_comp_point_D[15:1]}) && (fifo_ddr3_sgl_D > 0);//取一半，FIFO写端和读端口位宽改变了，
assign type_D1_ok = (series_data_type_D == 8'd1) && (fifo_ddr3_sgl_D >= series_comp_point_D) && (fifo_ddr3_sgl_D > 0);//1280个16bitFIFO端读出实际取640个32bit
assign ch_D_ok = type_D0_ok || type_D1_ok;

parameter ST0_a = 6'b00_0001,
          ST1_a = 6'b00_0010,  
          ST2_a = 6'b00_0100,  
          ST3_a = 6'b00_1000,  
          ST4_a = 6'b01_0000,  
          ST5_a = 6'b10_0000; 
         
reg [ 5:0] state_a;                 
always @(posedge clk or negedge rst_n)        
begin
    if(!rst_n)
        begin
            wr_ddr3_ch_sel <= 4'b0000;
            state_a <= ST0_a;
        end
    else
        begin
            case(state_a)
                ST0_a : begin
                            if(ch_A_ok)
                                begin
                                    wr_ddr3_ch_sel <= 4'b0001;
                                    state_a <= ST1_a;       
                                end
                            else if(ch_B_ok)
                                begin
                                    wr_ddr3_ch_sel <= 4'b0010;
                                    state_a <= ST2_a;
                                end
                            else if(ch_C_ok)
                                begin
                                    wr_ddr3_ch_sel <= 4'b0100;
                                    state_a <= ST3_a;
                                end
                            else if(ch_D_ok)
                                begin
                                    wr_ddr3_ch_sel <= 4'b1000;
                                    state_a <= ST4_a;
                                end
                            else
                                 begin
                                     wr_ddr3_ch_sel <= 4'b0000;
                                     state_a <= ST0_a;
                                 end
                        end
                ST1_a : begin
                            if(ddr3_wr_done[0])
                                begin
                                    wr_ddr3_ch_sel <= 4'b0000;
                                    state_a <= ST0_a;
                                end
                            else
                                begin
                                    state_a <= ST1_a;
                                end
                        end
                ST2_a : begin
                            if(ddr3_wr_done[1])
                                begin
                                    wr_ddr3_ch_sel <= 4'b0000;
                                    state_a <= ST0_a;
                                end
                            else
                                begin
                                    state_a <= ST2_a;
                                end
                        end
                ST3_a : begin
                            if(ddr3_wr_done[2])
                                begin
                                    wr_ddr3_ch_sel <= 4'b0000;
                                    state_a <= ST0_a;
                                end
                            else
                                begin
                                    state_a <= ST3_a;
                                end
                        end
                ST4_a : begin
                            if(ddr3_wr_done[3])
                                begin
                                    wr_ddr3_ch_sel <= 4'b0000;
                                    state_a <= ST0_a;
                                end
                            else
                                begin
                                    state_a <= ST4_a;
                                end
                        end
                default:state_a <= ST0_a;
            endcase
        end
end              
//--调试区---------------------------------------- 
(*mark_debug = "true"*) wire [ 10:0] fifo_ddr3_sgl_A_w;                       
(*mark_debug = "true"*) wire        ch_A_ok_w;      
(*mark_debug = "true"*) wire        type_A0_ok_w;      
(*mark_debug = "true"*) wire        type_A1_ok_w;                            
(*mark_debug = "true"*) wire [ 5:0] state_a_w;  
    
 assign fifo_ddr3_sgl_A_w = fifo_ddr3_sgl_A;           
 assign ch_A_ok_w = ch_A_ok;          
 assign type_A0_ok_w = type_A0_ok;          
 assign type_A1_ok_w = type_A1_ok;         
 assign state_a_w = state_a;         
   
endmodule
