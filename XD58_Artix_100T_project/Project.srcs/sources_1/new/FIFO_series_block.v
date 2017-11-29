`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/21 16:16:05
// Design Name: 
// Module Name: FIFO_series_block
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


module FIFO_series_block(
                          input wr_clk,
                          input rd_clk,
                          input rst_n,
                          
                          input [15:0] series_data_A,
                          input [15:0] series_data_B,
                          input [15:0] series_data_C,
                          input [15:0] series_data_D,
                          input [ 3:0] series_data_val,
                          
                          
                          input [31:0] time_code_A,
                          input [31:0] time_code_B,
                          input [31:0] time_code_C,
                          input [31:0] time_code_D,
                          input [ 3:0] time_code_val,
                          
                          output [10:0] fifo_ddr3_sgl_A,
                          output [10:0] fifo_ddr3_sgl_B,
                          output [10:0] fifo_ddr3_sgl_C,
                          output [10:0] fifo_ddr3_sgl_D,
                          
                          output [31:0] fifo_rd_ddr3_data_A,
                          output [31:0] fifo_rd_ddr3_data_B,
                          output [31:0] fifo_rd_ddr3_data_C,
                          output [31:0] fifo_rd_ddr3_data_D,
                          input  [ 3:0] fifo_rd_ddr3_data_en,
                          
                          output [31:0] fifo_rd_time_code_A,
                          output [31:0] fifo_rd_time_code_B,
                          output [31:0] fifo_rd_time_code_C,
                          output [31:0] fifo_rd_time_code_D,
                          input  [ 3:0] fifo_rd_time_code_en,
                          output wire   error
                         );


wire [3:0] full;
assign  error = (full == 4'b0000) ? 1'b0 : 1'b1;
FIFO_wr_ddr3_ip FIFO_wr_ddr3_ip_A(
                                  .rst(!rst_n),                      // input wire rst
                                  .wr_clk(wr_clk),                // input wire wr_clk
                                  .rd_clk(rd_clk),                // input wire rd_clk                                        
                                  .din(series_data_A),                      // input wire [15 : 0] din
                                  .wr_en(series_data_val[0]),                  // input wire wr_en
                                  .rd_en(fifo_rd_ddr3_data_en[0]),                  // input wire rd_en
                                  .dout(fifo_rd_ddr3_data_A),                    // output wire [31 : 0] dout
                                  .full(full[0]),                    // output wire full
                                  .empty(),                  // output wire empty
                                  .rd_data_count(fifo_ddr3_sgl_A)  // output wire [10 : 0] rd_data_count
                                );
FIFO_wr_ddr3_ip FIFO_wr_ddr3_ip_B(
                                  .rst(!rst_n),                      // input wire rst
                                  .wr_clk(wr_clk),                // input wire wr_clk
                                  .rd_clk(rd_clk),                // input wire rd_clk                                        
                                  .din(series_data_B),                      // input wire [15 : 0] din
                                  .wr_en(series_data_val[1]),                  // input wire wr_en
                                  .rd_en(fifo_rd_ddr3_data_en[1]),                  // input wire rd_en
                                  .dout(fifo_rd_ddr3_data_B),                    // output wire [31 : 0] dout
                                  .full(full[1]),                    // output wire full
                                  .empty(),                  // output wire empty
                                  .rd_data_count(fifo_ddr3_sgl_B)  // output wire [10 : 0] rd_data_count
                                );
FIFO_wr_ddr3_ip FIFO_wr_ddr3_ip_C(
                                  .rst(!rst_n),                      // input wire rst
                                  .wr_clk(wr_clk),                // input wire wr_clk
                                  .rd_clk(rd_clk),                // input wire rd_clk                                        
                                  .din(series_data_C),                      // input wire [15 : 0] din
                                  .wr_en(series_data_val[2]),                  // input wire wr_en
                                  .rd_en(fifo_rd_ddr3_data_en[2]),                  // input wire rd_en
                                  .dout(fifo_rd_ddr3_data_C),                    // output wire [31 : 0] dout
                                  .full(full[2]),                    // output wire full
                                  .empty(),                  // output wire empty
                                  .rd_data_count(fifo_ddr3_sgl_C)  // output wire [10 : 0] rd_data_count
                                );
FIFO_wr_ddr3_ip FIFO_wr_ddr3_ip_D(
                                  .rst(!rst_n),                      // input wire rst
                                  .wr_clk(wr_clk),                // input wire wr_clk
                                  .rd_clk(rd_clk),                // input wire rd_clk                                        
                                  .din(series_data_D),                      // input wire [15 : 0] din
                                  .wr_en(series_data_val[3]),                  // input wire wr_en
                                  .rd_en(fifo_rd_ddr3_data_en[3]),                  // input wire rd_en
                                  .dout(fifo_rd_ddr3_data_D),                    // output wire [31 : 0] dout
                                  .full(full[3]),                    // output wire full
                                  .empty(),                  // output wire empty
                                  .rd_data_count(fifo_ddr3_sgl_D)  // output wire [10 : 0] rd_data_count
                                );
   
FIFO_time_code_ip FIFO_time_code_ip_A(
                                       .rst(!rst_n),        // input wire rst
                                       .wr_clk(wr_clk),  // input wire wr_clk
                                       .rd_clk(rd_clk),  // input wire rd_clk
                                       .din(time_code_A),        // input wire [31 : 0] din
                                       .wr_en(time_code_val[0]),    // input wire wr_en
                                       .rd_en(fifo_rd_time_code_en[0]),    // input wire rd_en
                                       .dout(fifo_rd_time_code_A),      // output wire [31 : 0] dout
                                       .full(),      // output wire full
                                       .empty()    // output wire empty
                                    );
FIFO_time_code_ip FIFO_time_code_ip_B(
                                       .rst(!rst_n),        // input wire rst
                                       .wr_clk(wr_clk),  // input wire wr_clk
                                       .rd_clk(rd_clk),  // input wire rd_clk
                                       .din(time_code_B),        // input wire [31 : 0] din
                                       .wr_en(time_code_val[1]),    // input wire wr_en
                                       .rd_en(fifo_rd_time_code_en[1]),    // input wire rd_en
                                       .dout(fifo_rd_time_code_B),      // output wire [31 : 0] dout
                                       .full(),      // output wire full
                                       .empty()    // output wire empty
                                    );
FIFO_time_code_ip FIFO_time_code_ip_C(
                                       .rst(!rst_n),        // input wire rst
                                       .wr_clk(wr_clk),  // input wire wr_clk
                                       .rd_clk(rd_clk),  // input wire rd_clk
                                       .din(time_code_C),        // input wire [31 : 0] din
                                       .wr_en(time_code_val[2]),    // input wire wr_en
                                       .rd_en(fifo_rd_time_code_en[2]),    // input wire rd_en
                                       .dout(fifo_rd_time_code_C),      // output wire [31 : 0] dout
                                       .full(),      // output wire full
                                       .empty()    // output wire empty
                                    );
FIFO_time_code_ip FIFO_time_code_ip_D(
                                       .rst(!rst_n),        // input wire rst
                                       .wr_clk(wr_clk),  // input wire wr_clk
                                       .rd_clk(rd_clk),  // input wire rd_clk
                                       .din(time_code_D),        // input wire [31 : 0] din
                                       .wr_en(time_code_val[3]),    // input wire wr_en
                                       .rd_en(fifo_rd_time_code_en[3]),    // input wire rd_en
                                       .dout(fifo_rd_time_code_D),      // output wire [31 : 0] dout
                                       .full(),      // output wire full
                                       .empty()    // output wire empty
                                    );
   
    
//(*MARK_DEBUG = "TRUE"*)wire [15:0] series_data_A_w;
//(*MARK_DEBUG = "TRUE"*)wire [15:0] series_data_B_w;
//(*MARK_DEBUG = "TRUE"*)wire [15:0] series_data_C_w;
//(*MARK_DEBUG = "TRUE"*)wire [15:0] series_data_D_w;
//(*MARK_DEBUG = "TRUE"*)wire  series_data_val_w;

//assign series_data_A_w = series_data_A;
//assign series_data_val_w = series_data_val[0];

//(*MARK_DEBUG = "TRUE"*)wire [31:0] time_code_A_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] time_code_B_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] time_code_C_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] time_code_D_w;
//(*MARK_DEBUG = "TRUE"*)wire  time_code_val_w;

//assign time_code_A_w = time_code_A;
//assign time_code_val_w = time_code_val[0];

//(*MARK_DEBUG = "TRUE"*)wire [10:0] fifo_ddr3_sgl_A_w;
//(*MARK_DEBUG = "TRUE"*)wire [10:0] fifo_ddr3_sgl_B_w;
//(*MARK_DEBUG = "TRUE"*)wire [10:0] fifo_ddr3_sgl_C_w;
//(*MARK_DEBUG = "TRUE"*)wire [10:0] fifo_ddr3_sgl_D_w;
//assign fifo_ddr3_sgl_A_w = fifo_ddr3_sgl_A;

//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_ddr3_data_A_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_ddr3_data_B_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_ddr3_data_C_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_ddr3_data_D_w;
//(*MARK_DEBUG = "TRUE"*)wire   fifo_rd_ddr3_data_en_w;

//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_time_code_A_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_time_code_B_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_time_code_C_w;
//(*MARK_DEBUG = "TRUE"*)wire [31:0] fifo_rd_time_code_D_w;
//(*MARK_DEBUG = "TRUE"*)wire   fifo_rd_time_code_en_w;
//(*MARK_DEBUG = "TRUE"*)wire   error_w;   
 
// assign fifo_rd_ddr3_data_A_w = fifo_rd_ddr3_data_A;
// assign fifo_rd_ddr3_data_en_w = fifo_rd_ddr3_data_en[0];
// assign fifo_rd_time_code_A_w = fifo_rd_time_code_A;
// assign fifo_rd_time_code_en_w = fifo_rd_time_code_en[0];
// assign error_w = error;
 
 
endmodule
