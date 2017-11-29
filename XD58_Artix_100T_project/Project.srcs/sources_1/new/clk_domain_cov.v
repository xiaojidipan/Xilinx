`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/13 19:29:10
// Design Name: 
// Module Name: clk_domain_cov
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


module clk_domain_cov(
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
                        
                        input [31:0] ddr3_wr_start_addr_A,
                        input [31:0] ddr3_wr_start_addr_B,
                        input [31:0] ddr3_wr_start_addr_C,
                        input [31:0] ddr3_wr_start_addr_D,
                        
                        input [31:0] ddr3_wr_over_addr_A,
                        input [31:0] ddr3_wr_over_addr_B,
                        input [31:0] ddr3_wr_over_addr_C,
                        input [31:0] ddr3_wr_over_addr_D,
                        
                        input        read_ddr_en,
                        input        read_ddr_done,
                        
                        output wire [15:0] series_comp_point_A_out,
                        output wire [15:0] series_comp_point_B_out,
                        output wire [15:0] series_comp_point_C_out,
                        output wire [15:0] series_comp_point_D_out,
                        output wire [ 7:0] series_data_type_A_out,
                        output wire [ 7:0] series_data_type_B_out,
                        output wire [ 7:0] series_data_type_C_out,
                        output wire [ 7:0] series_data_type_D_out,
                        
                        output wire [31:0] ddr3_wr_start_addr_A_out,
                        output wire [31:0] ddr3_wr_start_addr_B_out,
                        output wire [31:0] ddr3_wr_start_addr_C_out,
                        output wire [31:0] ddr3_wr_start_addr_D_out,
                        
                        output wire [31:0] ddr3_wr_over_addr_A_out,
                        output wire [31:0] ddr3_wr_over_addr_B_out,
                        output wire [31:0] ddr3_wr_over_addr_C_out,
                        output wire [31:0] ddr3_wr_over_addr_D_out,
                        output wire        read_ddr_start,
                        output wire        read_ddr_done_state
                        
                        );
    
reg [15:0] series_comp_point_A_r1,series_comp_point_A_r2;
reg [15:0] series_comp_point_B_r1,series_comp_point_B_r2;
reg [15:0] series_comp_point_C_r1,series_comp_point_C_r2;
reg [15:0] series_comp_point_D_r1,series_comp_point_D_r2;

reg [ 7:0] series_data_type_A_r1,series_data_type_A_r2;
reg [ 7:0] series_data_type_B_r1,series_data_type_B_r2;
reg [ 7:0] series_data_type_C_r1,series_data_type_C_r2;
reg [ 7:0] series_data_type_D_r1,series_data_type_D_r2;

reg [31:0] ddr3_wr_start_addr_A_r1,ddr3_wr_start_addr_A_r2;
reg [31:0] ddr3_wr_start_addr_B_r1,ddr3_wr_start_addr_B_r2;
reg [31:0] ddr3_wr_start_addr_C_r1,ddr3_wr_start_addr_C_r2;
reg [31:0] ddr3_wr_start_addr_D_r1,ddr3_wr_start_addr_D_r2;

reg [31:0] ddr3_wr_over_addr_A_r1,ddr3_wr_over_addr_A_r2;
reg [31:0] ddr3_wr_over_addr_B_r1,ddr3_wr_over_addr_B_r2;
reg [31:0] ddr3_wr_over_addr_C_r1,ddr3_wr_over_addr_C_r2;
reg [31:0] ddr3_wr_over_addr_D_r1,ddr3_wr_over_addr_D_r2;

reg        read_ddr_en_r1,read_ddr_en_r2;
reg        read_ddr_done_r1,read_ddr_done_r2;
always @(posedge clk)
begin
    series_comp_point_A_r1 <= series_comp_point_A;
    series_comp_point_A_r2 <= series_comp_point_A_r1;
    series_comp_point_B_r1 <= series_comp_point_B;
    series_comp_point_B_r2 <= series_comp_point_B_r1;
    series_comp_point_C_r1 <= series_comp_point_C;
    series_comp_point_C_r2 <= series_comp_point_C_r1;
    series_comp_point_D_r1 <= series_comp_point_D;
    series_comp_point_D_r2 <= series_comp_point_D_r1;
    
    series_data_type_A_r1 <= series_data_type_A;
    series_data_type_A_r2 <= series_data_type_A_r1;
    series_data_type_B_r1 <= series_data_type_B;
    series_data_type_B_r2 <= series_data_type_B_r1;
    series_data_type_C_r1 <= series_data_type_C;
    series_data_type_C_r2 <= series_data_type_C_r1;
    series_data_type_D_r1 <= series_data_type_D;
    series_data_type_D_r2 <= series_data_type_D_r1;
    
    ddr3_wr_start_addr_A_r1 <= ddr3_wr_start_addr_A;
    ddr3_wr_start_addr_A_r2 <= ddr3_wr_start_addr_A_r1;
    ddr3_wr_start_addr_B_r1 <= ddr3_wr_start_addr_B;
    ddr3_wr_start_addr_B_r2 <= ddr3_wr_start_addr_B_r1;
    ddr3_wr_start_addr_C_r1 <= ddr3_wr_start_addr_C;
    ddr3_wr_start_addr_C_r2 <= ddr3_wr_start_addr_C_r1;
    ddr3_wr_start_addr_D_r1 <= ddr3_wr_start_addr_D;
    ddr3_wr_start_addr_D_r2 <= ddr3_wr_start_addr_D_r1; 
       
    ddr3_wr_over_addr_A_r1 <= ddr3_wr_over_addr_A;
    ddr3_wr_over_addr_A_r2 <= ddr3_wr_over_addr_A_r1;
    ddr3_wr_over_addr_B_r1 <= ddr3_wr_over_addr_B;
    ddr3_wr_over_addr_B_r2 <= ddr3_wr_over_addr_B_r1;
    ddr3_wr_over_addr_C_r1 <= ddr3_wr_over_addr_C;
    ddr3_wr_over_addr_C_r2 <= ddr3_wr_over_addr_C_r1;
    ddr3_wr_over_addr_D_r1 <= ddr3_wr_over_addr_D;
    ddr3_wr_over_addr_D_r2 <= ddr3_wr_over_addr_D_r1;
    
    read_ddr_en_r1 <= read_ddr_en;
    read_ddr_en_r2 <= read_ddr_en_r1;
    read_ddr_done_r1 <= read_ddr_done;
    read_ddr_done_r2 <= read_ddr_done_r1;
end
                        
assign series_comp_point_A_out = series_comp_point_A_r2;
assign series_comp_point_B_out = series_comp_point_B_r2;
assign series_comp_point_C_out = series_comp_point_C_r2;
assign series_comp_point_D_out = series_comp_point_D_r2;  
                      
assign series_data_type_A_out = series_data_type_A_r2;                        
assign series_data_type_B_out = series_data_type_B_r2;                        
assign series_data_type_C_out = series_data_type_C_r2;                        
assign series_data_type_D_out = series_data_type_D_r2;

assign ddr3_wr_start_addr_A_out = ddr3_wr_start_addr_A_r2;
assign ddr3_wr_start_addr_B_out = ddr3_wr_start_addr_B_r2;
assign ddr3_wr_start_addr_C_out = ddr3_wr_start_addr_C_r2;
assign ddr3_wr_start_addr_D_out = ddr3_wr_start_addr_D_r2;

assign ddr3_wr_over_addr_A_out = ddr3_wr_over_addr_A_r2;
assign ddr3_wr_over_addr_B_out = ddr3_wr_over_addr_B_r2;
assign ddr3_wr_over_addr_C_out = ddr3_wr_over_addr_C_r2;
assign ddr3_wr_over_addr_D_out = ddr3_wr_over_addr_D_r2;
                        
assign read_ddr_start = read_ddr_en_r2;                        
assign read_ddr_done_state = read_ddr_done_r2;                        
                                    
endmodule
