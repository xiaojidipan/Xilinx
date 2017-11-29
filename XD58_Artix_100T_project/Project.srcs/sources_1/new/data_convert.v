`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 13:42:30
// Design Name: 
// Module Name: data_convert
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


module data_convert(
                     input clk,
                     input rst_n,
                     
                     input [11:0] ad_data_in,
                     input        ad_data_in_val,
                     output reg [15:0] ad_data_out,
                     output reg        ad_data_out_val
                    );
                     

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            ad_data_out <= 16'd0;
            ad_data_out_val <= 1'b0;
        end
    else
        begin
            if(ad_data_in_val)
                begin
                    ad_data_out <= {ad_data_in[11],ad_data_in[11],ad_data_in[11],ad_data_in[11],ad_data_in};//符号位扩展一下     
//                    ad_data_out = {ad_data_in,4'h0};//   
                    ad_data_out_val <= 1'b1;
                end
            else
                begin
                    ad_data_out_val <= 1'b0;
                end
        end

end
//----调试接口-----------------------
//(*mark_debug = "true"*) wire [15:0] ad_data_out_w;
//(*mark_debug = "true"*) wire        ad_data_out_val_w;
//(*mark_debug = "true"*) wire [11:0] ad_data_in_w;
//(*mark_debug = "true"*) wire        ad_data_in_val_w;

//assign ad_data_out_w = ad_data_out;
//assign ad_data_out_val_w = ad_data_out_val;
//assign ad_data_in_w = ad_data_in;
//assign ad_data_in_val_w = ad_data_in_val;

              
endmodule
