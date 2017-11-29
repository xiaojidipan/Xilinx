`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:36:12
// Design Name: 
// Module Name: effective_value_block
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 计算640点AD数据的有效值
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module effective_value_block(
                                input clk,
                                input rst_n,
                                
                                input [15:0] comp_point_par,//压缩点数，默认640点
                                input [15:0] comp_ratio_par,//压缩比
                                input [15:0] data_in,
                                input        data_in_val,              

                                output reg [15:0]  data_out,
                                output reg          data_out_val
                            );
parameter ST0_a = 6'b00_0001,
          ST1_a = 6'b00_0010,  
          ST2_a = 6'b00_0100,  
          ST3_a = 6'b00_1000,  
          ST4_a = 6'b01_0000,  
          ST5_a = 6'b10_0000; 
         
reg [ 5:0] state_a; 
reg [15:0] comp_ratio_cnt;
reg [15:0] comp_point_cnt;

reg [15:0] data_in_r;
reg        data_in_val_r;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin   
            data_in_val_r <= 1'b0;
            comp_ratio_cnt <= 16'd0;
            comp_point_cnt <= 16'd0;
            state_a <= ST0_a;
        end
    else
        begin
            case(state_a)
                ST0_a : begin
                            if(data_in_val)
                                begin
                                    data_in_val_r <= 1'b1;
                                    data_in_r <= data_in;
                                    comp_ratio_cnt <= 16'd1;
                                    comp_point_cnt <= comp_point_cnt + 16'd1;
                                    state_a <= ST1_a;
                                end
                            else
                                begin
                                    data_in_val_r <= 1'b0;
                                    comp_ratio_cnt <= comp_ratio_cnt;
                                end
                        end
                ST1_a : begin
                            data_in_val_r <= 1'b0;
                            if(comp_point_cnt == comp_point_par)
                                begin
                                    comp_point_cnt <= 16'd0;
                                    state_a <= ST0_a;//满足640点
                                end
                            else if((comp_ratio_cnt == comp_ratio_par) && data_in_val)
                                begin
                                    comp_ratio_cnt <= 16'd0;
                                    state_a <= ST0_a;
                                end
                            else if(data_in_val)
                                begin
                                    comp_ratio_cnt <= comp_ratio_cnt + 16'd1; 
                                end
                            else
                                begin
                                    comp_ratio_cnt <= comp_ratio_cnt;
                                end
                        end
                default : state_a <= ST0_a;
            endcase
        end
end

wire [31:0] square_data;
reg         square_val;
reg  [43:0] sum_data;
reg         sum_data_val;
reg         aclr;

wire [43:0] sum_data_result;
reg  [44:0] sum_data_all;
reg         sum_data_all_val;
reg [ 9:0] cnt;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            sum_data <= 44'd0;
            sum_data_all <= 44'd0;
            sum_data_all_val <= 1'b0;
            aclr <= 1'b1;
            square_val <= 1'b0;
            cnt <= 10'd0;
        end
    else
        begin
            aclr <= 1'b0;
            if(data_in_val_r)  
                begin
                    square_val <= 1'b1; 
                end
            else
                begin
                    square_val <= 1'b0; 
                end
            
            if(square_val)
                begin
                    sum_data_val <= 1'b1;
                end
            else
                begin
                    sum_data_val <= 1'b0;
                end
            
            if(cnt == comp_point_par)//计数器
                begin
                    sum_data <= 44'd0;
                    cnt <= 10'd0;
                    sum_data_all <= sum_data_result;
                    sum_data_all_val <= 1'b1;
                end
            else if(sum_data_val)
                begin
                    cnt <= cnt + 10'd1;
                    sum_data <= sum_data_result;
                    sum_data_all_val <= 1'b0;
                end
            else
                begin
                    cnt <= cnt;
                    sum_data <= sum_data;
                    sum_data_all_val <= 1'b0;
                end
        end
end

//-----模块IP例化-------------------
Effective_mult_ip mult_ip_inst (
                                  .CLK(clk),  // input wire CLK
                                  .A(data_in_r),      // input wire [15 : 0] A
                                  .B(data_in_r),      // input wire [15 : 0] B
                                  .P(square_data)      // output wire [31 : 0] P
                                );

Effective_add_ip add_ip_inst (
                              .CLK(clk),    // input wire CLK
                              .A({12'h0,square_data}),        // input wire [43 : 0] A
                              .B(sum_data),        // input wire [43 : 0] B
                              
                              .SCLR(aclr),  // input wire SCLR
                              .S(sum_data_result)        // output wire [43 : 0] S
                            );
                            
//------调试区----------------------------------------------
//(*mark_debug = "true"*) wire  [ 5:0] state_a_w;
//(*mark_debug = "true"*) wire  [15:0] comp_ratio_cnt_w;
//(*mark_debug = "true"*) wire  [15:0] comp_point_cnt_w;

//(*mark_debug = "true"*) wire  [15:0] data_in_r_w;
//(*mark_debug = "true"*) wire         data_in_val_r_w;

//assign state_a_w = state_a;
//assign comp_ratio_cnt_w = comp_ratio_cnt;
//assign comp_point_cnt_w = comp_point_cnt;
//assign data_in_r_w = data_in_r;
//assign data_in_val_r_w = data_in_val_r;

//(*mark_debug = "true"*) wire [31:0] square_data_w;
//(*mark_debug = "true"*) wire         square_val_w;
//(*mark_debug = "true"*) wire  [43:0] sum_data_w;
//(*mark_debug = "true"*) wire         sum_data_val_w;
//(*mark_debug = "true"*) wire         aclr_w;
//(*mark_debug = "true"*) wire [43:0]  sum_data_result_w;
//(*mark_debug = "true"*) wire [15:0]  data_in_w;
//(*mark_debug = "true"*) wire         data_in_val_w;

//assign square_data_w = square_data;
//assign square_val_w = square_val;
//assign sum_data_w = sum_data;
//assign sum_data_val_w = sum_data_val;
//assign aclr_w = aclr;
//assign sum_data_result_w = sum_data_result;
//assign data_in_w = data_in;
//assign data_in_val_w = data_in_val;

//(*mark_debug = "true"*) wire  [44:0] sum_data_all_w;
//(*mark_debug = "true"*) wire         sum_data_all_val_w;
//(*mark_debug = "true"*) wire [ 9:0]  cnt_w;

//assign sum_data_all_w = sum_data_all;
//assign sum_data_all_val_w = sum_data_all_val;
//assign cnt_w = cnt;

endmodule
