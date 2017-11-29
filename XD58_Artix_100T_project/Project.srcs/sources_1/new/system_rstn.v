`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/24 10:53:27
// Design Name: 
// Module Name: system_rstn
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//              系统复位
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module system_rstn(
                    input clk1,
                    input clk2,
                    input rst_n,
                    
                    input [7:0] system_ctrl_par,
                    input       system_ctrl_par_val,
                    
                    output reg  sys_rstn1,
                    output wire sys_rstn2
                    );

reg [5:0] cnt;
reg       flag;
reg       sys_rstn1;
always @(posedge clk1 or negedge rst_n)
begin
    if(!rst_n)
        begin
            cnt <= 6'd0;
            flag <= 1'b0;
            sys_rstn1 <= 1'b0;
        end
    else
        begin
            if((system_ctrl_par == 8'd1) && system_ctrl_par_val)
                begin
                    sys_rstn1 <= 1'b0;
                    cnt <= 6'd0;
                    flag <= 1'b1;
                end
            else if((cnt == 6'd32) && flag)
                begin
                    sys_rstn1 <= 1'b1;
                    cnt <= 6'd0;
                    flag <= 1'b0;
                end
            else if(flag)
                begin
                    sys_rstn1 <= 1'b0;//保持复位
                    cnt <= cnt + 3'd1;
                    flag <= 1'b1;
                end
            else
                begin
                    sys_rstn1 <= 1'b1;
                    cnt <= 3'd0;
                end
        end
end

wire FDCE_Q;

FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
            ) FDCE_inst1 (
                          .Q(FDCE_Q),      // 1-bit Data output
                          .C(clk2),      // 1-bit Clock input
                          .CE(rst_n),    // 1-bit Clock enable input
                          .CLR(!sys_rstn1),  // 1-bit Asynchronous clear input
                          .D(1'b1)       // 1-bit Data input
                       );
FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
            ) FDCE_inst2 (
                          .Q(sys_rstn2),      // 1-bit Data output
                          .C(clk2),      // 1-bit Clock input
                          .CE(rst_n),    // 1-bit Clock enable input
                          .CLR(!sys_rstn1),  // 1-bit Asynchronous clear input
                          .D(FDCE_Q)       // 1-bit Data input
                       );

//---debug----------------------------------------------------
//(*MARK_DEBUG = "TRUE"*)  wire         FDCE_Q_w;
//(*MARK_DEBUG = "TRUE"*)  wire         sys_rstn1_w;
//(*MARK_DEBUG = "TRUE"*)  wire         sys_rstn2_w;
//(*MARK_DEBUG = "TRUE"*)  wire         flag_w;
//(*MARK_DEBUG = "TRUE"*)  wire   [5:0] cnt_w;

//assign FDCE_Q_w = FDCE_Q;
//assign sys_rstn1_w = sys_rstn1;
//assign sys_rstn2_w = sys_rstn2;
//assign flag_w = flag;
//assign cnt_w = cnt;



endmodule
