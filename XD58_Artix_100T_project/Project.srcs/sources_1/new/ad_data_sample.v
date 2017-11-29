`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 14:24:08
// Design Name: 
// Module Name: ad_data_sample
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


module ad_data_sample(
                        input clk,
                        input rst_n,
                        
                        input [15:0]  ch_sample_par,
                        
                        input [15:0]      data_in,
                        input             data_in_val,
                        
                        output reg [15:0] data_out,
                        output reg        data_out_val
                        
                        );

reg [15:0] sample_cnt;                     
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            data_out <= 16'd0; 
            data_out_val <= 1'b0;
            sample_cnt <= 16'd0;
        end
    else
        begin
            if((ch_sample_par == 16'd1) && data_in_val)//压缩比为1即为不压缩
                begin
                    data_out <= data_in;
                    data_out_val <= 1'b1;
                    sample_cnt <= 16'd0;
                end
            else if((sample_cnt == 16'd0) && data_in_val)//取有效数据
                begin
                    sample_cnt <= sample_cnt + 16'd1;
                    data_out <= data_in;
                    data_out_val <= 1'b1;
                end
            else if((sample_cnt == ch_sample_par - 16'd1) && data_in_val)//计数清零
                begin
                    sample_cnt <= 16'd0;
                    data_out_val <= 1'b0;
                end
            else if(data_in_val)
                begin
                    sample_cnt <= sample_cnt + 16'd1;
                    data_out_val <= 1'b0;
                end
            else
                begin
                    sample_cnt <= sample_cnt;//保持
                    data_out_val <= 1'b0;
                end
        end
end                        

//----接口调试------------------------
//(*mark_debug = "true"*) wire [15:0]  ch_sample_par_w;
//(*mark_debug = "true"*) wire [15:0]  data_out_w;
//(*mark_debug = "true"*) wire         data_out_val_w;
       
//(*mark_debug = "true"*) wire [15:0]  sample_cnt_w;     

//assign ch_sample_par_w = ch_sample_par;
//assign data_out_w = data_out;
//assign data_out_val_w = data_out_val;
//assign sample_cnt_w = sample_cnt;
                                             
endmodule
