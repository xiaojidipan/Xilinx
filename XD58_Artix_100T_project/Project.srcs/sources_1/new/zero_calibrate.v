`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 10:38:36
// Design Name: 
// Module Name: zero_calibrate
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


module zero_calibrate(
                        input clk,
                        input rst_n,
                        
                        input [15:0]  ch_num_par,//当前通道号
                        input [15:0]  NOW_CH_NUM,
                        input [15:0]  cal_zero_par,//校零参数
                        input [15:0]  ad_data_in,
                        input         ad_data_in_val,
                        
                        output reg[15:0]  ad_data_out, //校准数据输出
                        output reg        ad_data_out_val
                        
                        );

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            ad_data_out_val <= 1'b0;
            ad_data_out <= 16'd0;
        end
    else
        begin 
            if(ad_data_in_val)
                begin
                    ad_data_out_val <= ad_data_in_val;
                    ad_data_out <= ad_data_in + cal_zero_par;
                end
            else
                begin
                    ad_data_out_val <= 1'b0;
                end
        end
end

//-----调试接口--------------------
//(*mark_debug = "true"*) wire [15:0]  cal_zero_par_w;
//(*mark_debug = "true"*) wire [15:0]  ad_data_out_w;
//(*mark_debug = "true"*) wire         ad_data_out_val_w;

//(*mark_debug = "true"*) wire [15:0]  ad_data_in_w;
//(*mark_debug = "true"*) wire         ad_data_in_val_w;


//assign cal_zero_par_w = cal_zero_par;
//assign ad_data_out_w = ad_data_out;
//assign ad_data_out_val_w = ad_data_out_val;

//assign ad_data_in_w = ad_data_in;
//assign ad_data_in_val_w = ad_data_in_val;

endmodule
