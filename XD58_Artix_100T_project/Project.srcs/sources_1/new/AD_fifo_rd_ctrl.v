`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/06 14:03:05
// Design Name: 
// Module Name: AD_fifo_rd_ctrl
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


module AD_fifo_rd_ctrl(
                        input clk,
                        input rst_n,
                        
                        input [4:0]    AD_rd_fifo_sgl,
                        output reg     AD_rd_fifo_val
                        );

parameter   STATE0 = 3'b001,
            STATE1 = 3'b010,    
            STATE2 = 3'b100;
reg [2:0] state;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            AD_rd_fifo_val <= 1'b0;
            state <= STATE0;
        end
    else
        begin
            case(state)
                STATE0: begin
                            if(AD_rd_fifo_sgl >= 5'd1)
                                begin
                                    AD_rd_fifo_val <= 1'b1;
                                    state <= STATE1;
                                end
                            else
                                begin
                                    AD_rd_fifo_val <= 1'b0;
                                    state <= STATE0;
                                end
                        end
                STATE1: begin
                            AD_rd_fifo_val <= 1'b0;
                            state <= STATE2;
                        end
                STATE2: begin
                            AD_rd_fifo_val <= 1'b0;
                            state <= STATE0;
                        end
                default: state <= STATE0;
            endcase
        end
end


endmodule
