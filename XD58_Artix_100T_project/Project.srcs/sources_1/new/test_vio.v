`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 15:56:05
// Design Name: 
// Module Name: test_vio
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


module test_vio(
                 input clk_100M,
                 input ddr3_clk,
                 input rst_n,
                 
                 input [15:0]      series_comp_point_A,
                 output reg [15:0] din,
                 output reg        wr_en,
                 output wire       ram_rd_en_up,
                 output wire       ddr3_wr_en_up,
                 output wire       ddr3_rd_en_up,
                 output reg  [3:0] triger_gather,
                 output wire       start_gather,
                 output reg [63:0] time_code
               );
parameter   STATE0 = 6'b000001,
            STATE1 = 6'b000010,
            STATE2 = 6'b000100,
            STATE3 = 6'b001000,
            STATE4 = 6'b010000;
            
reg [5:0] state;
reg [23:0] cnt; 

wire   ddr3_wr_en;
reg    ddr3_wr_en_r;
assign ddr3_wr_en_up = !ddr3_wr_en_r && ddr3_wr_en;

wire   ddr3_rd_en;
reg    ddr3_rd_en_r;
assign ddr3_rd_en_up = !ddr3_rd_en_r && ddr3_rd_en;

always @(posedge ddr3_clk)
begin
    ddr3_rd_en_r <= ddr3_rd_en;
end

wire    ram_rd_en;
reg     ram_rd_en_r;
assign  ram_rd_en_up = !ram_rd_en_r && ram_rd_en;

wire    start_gather_wire;
reg     start_gather_wire_r;
assign  start_gather = !start_gather_wire_r && start_gather_wire;

always @(posedge clk_100M)
begin
    ram_rd_en_r <= ram_rd_en;
    ddr3_wr_en_r <= ddr3_wr_en;
    start_gather_wire_r <= start_gather_wire;
end

always @(posedge clk_100M or negedge rst_n) 
begin
    if(!rst_n)
        begin
            din <= 16'd0;
            wr_en <= 1'b0;
            cnt <= 3'd0;
            state <= STATE1;
        end
    else
        begin
            case(state)
                STATE1: begin
                            if(ddr3_wr_en_up)  
                                begin
                                    din <= 16'd1;
                                    wr_en <= 1'b1;
                                    state <= STATE2;
                                end
                            else
                                begin
                                    state <= STATE1;
                                end
                        end
                STATE2: begin
                            if(din == series_comp_point_A)
                                begin
                                    din <= 16'd0;
                                    wr_en <= 1'b0;
                                    state <= STATE1;
                                end
                            else
                                begin
                                    din <= din + 16'd1;
                                    wr_en <= 1'b1;
                                end
                        end
                default: state <= STATE1;
            endcase
        end  
end


reg [31:0]  time_cnt;
always @(posedge clk_100M or negedge rst_n)
begin
    if(!rst_n)
        begin
            time_cnt <= 32'd0;
            triger_gather <= 4'b0;
            time_code <= 64'd0;
        end
    else
        begin
            if(time_cnt == 32'd99_999_999)
                begin
                    time_cnt <= 32'd0;
                    triger_gather <= 4'hf;
                    time_code <= time_code + 64'd1;
                end
            else
                begin
                    time_cnt <= time_cnt + 32'd1;
                    triger_gather <= 4'b0;
                end
        end
end


vio_0 vio_test_inst(
                      .clk(clk_100M),                // input wire clk
                      .probe_out0(),  // output wire [15 : 0] probe_out0
                      .probe_out1(),  // output wire [15 : 0] probe_out1
                      .probe_out2(start_gather_wire),  // output wire [0 : 0] probe_out2
                      .probe_out3(),  // output wire [15 : 0] probe_out3
                      .probe_out4(),  // output wire [0 : 0] probe_out4
                      .probe_out5(),  // output wire [0 : 0] probe_out5
                      .probe_out6(),  // output wire [7 : 0] probe_out6
                      .probe_out7(),  // output wire [0 : 0] probe_out7
                      .probe_out8(),  // output wire [0 : 0] probe_out7
                      .probe_out9(),  // output wire [0 : 0] probe_out7
                      .probe_out10(ddr3_wr_en),  // output wire [0 : 0] probe_out7
                      .probe_out11(ddr3_rd_en),  // output wire [0 : 0] probe_out7
                      .probe_out12(ram_rd_en)
                    );     
    
      
endmodule
