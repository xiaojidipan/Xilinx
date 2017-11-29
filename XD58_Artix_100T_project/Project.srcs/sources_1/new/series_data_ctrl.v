`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/22 14:01:08
// Design Name: 
// Module Name: series_data_ctrl
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


module series_data_ctrl(
                        input clk,
                        input rst_n,
                        
                        input [7:0] ch_num_par,
                        input [7:0] series_ctrl_order,
                        input       series_ctrl_order_val,
                        
                        input       start_gather_in,
                        input       stop_gather_in,
                        
                        output wire      start_gather_out,//
                        output wire      stop_gather_out,//�͵�����ģ��

                        output reg [3:0] start_gather,//����
                        output reg [3:0] stop_gather,
                        output reg [3:0] continuous_gather,//�����ɼ�
                        output reg [3:0] signal_gather,//���ʲɼ�
                        output reg [3:0] period_gather//�����Բɼ�
                       );

assign start_gather_out = start_gather[0] || start_gather[1] ||start_gather[2] ||start_gather[3];
assign stop_gather_out = stop_gather[0] || stop_gather[1] || stop_gather[2] || stop_gather[3];

//����ֹͣ------------------
wire temp_start;
wire temp_start_A;
assign temp_start_A = (series_ctrl_order == 8'd1) || (series_ctrl_order == 8'd2);
assign temp_start = temp_start_A || (series_ctrl_order == 8'd3);

wire temp_stop;
assign temp_stop = series_ctrl_order == 8'h80; 
              
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            start_gather <= 4'b0;
            stop_gather <= 4'b0;
        end
    else
        begin
//            if(start_gather_in)//�ⲿ���������ɼ�
//                begin
//                    if(ch_num_par[0])
//                        begin
//                            start_gather[0] <= 1'b1;
//                        end
//                    else
//                        begin
//                            start_gather[0] <= 1'b0;
//                        end
//                    if(ch_num_par[1])
//                        begin
//                            start_gather[1] <= 1'b1;
//                        end
//                    else
//                        begin
//                            start_gather[1] <= 1'b0;
//                        end
                        
//                    if(ch_num_par[2])
//                        begin
//                            start_gather[2] <= 1'b1;
//                        end
//                    else
//                        begin
//                            start_gather[2] <= 1'b0;
//                        end
                        
//                    if(ch_num_par[3])
//                        begin
//                            start_gather[3] <= 1'b1;
//                        end
//                    else
//                        begin
//                            start_gather[3] <= 1'b0;
//                        end
//                end
//            else
//                begin
//                    start_gather <= 4'h0;
//                end
//            if(stop_gather_in)//�ⲿ����ֹͣ�ɼ�
//                begin
//                    if(ch_num_par[0])
//                        begin
//                            stop_gather[0] <= 1'b1;
//                        end
//                    else
//                        begin
//                            stop_gather[0] <= 1'b0;
//                        end
//                    if(ch_num_par[1])
//                        begin
//                            stop_gather[1] <= 1'b1;
//                        end
//                    else
//                        begin
//                            stop_gather[1] <= 1'b0;
//                        end
                        
//                    if(ch_num_par[2])
//                        begin
//                            stop_gather[2] <= 1'b1;
//                        end
//                    else
//                        begin
//                            stop_gather[2] <= 1'b0;
//                        end
                        
//                    if(ch_num_par[3])
//                        begin
//                            stop_gather[3] <= 1'b1;
//                        end
//                    else
//                        begin
//                            stop_gather[3] <= 1'b0;
//                        end
//                end
//            else
//                begin
//                    stop_gather <= 4'h0;
//                end
            
            if(series_ctrl_order_val && temp_start)//���Կ�ʼ�����Ҫע�͵�
                begin
                    if(ch_num_par[0])
                        begin
                            start_gather[0] <= 1'b1;
                        end
                    else
                        begin
                            start_gather[0] <= 1'b0;
                        end
                    if(ch_num_par[1])
                        begin
                            start_gather[1] <= 1'b1;
                        end
                    else
                        begin
                            start_gather[1] <= 1'b0;
                        end
                        
                    if(ch_num_par[2])
                        begin
                            start_gather[2] <= 1'b1;
                        end
                    else
                        begin
                            start_gather[2] <= 1'b0;
                        end
                        
                    if(ch_num_par[3])
                        begin
                            start_gather[3] <= 1'b1;
                        end
                    else
                        begin
                            start_gather[3] <= 1'b0;
                        end
                end
            else
                begin
                    start_gather <= 4'b0;
                end
                
            if(series_ctrl_order_val && temp_stop)//����ֹͣ�����Ҫע�͵�
                begin
                    if(ch_num_par[0])
                        begin
                            stop_gather[0] <= 1'b1;
                        end
                    else
                        begin
                            stop_gather[0] <= 1'b0;
                        end
                    if(ch_num_par[1])
                        begin
                            stop_gather[1] <= 1'b1;
                        end
                    else
                        begin
                            stop_gather[1] <= 1'b0;
                        end
                        
                    if(ch_num_par[2])
                        begin
                            stop_gather[2] <= 1'b1;
                        end
                    else
                        begin
                            stop_gather[2] <= 1'b0;
                        end
                        
                    if(ch_num_par[3])
                        begin
                            stop_gather[3] <= 1'b1;
                        end
                    else
                        begin
                            stop_gather[3] <= 1'b0;
                        end
                end
            else
                begin
                    stop_gather <= 4'b0;
                end
        end
end

//----�����ɼ�����-------------------------
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            continuous_gather <= 4'b0;
        end
    else
        begin
            if(series_ctrl_order_val && (series_ctrl_order == 8'h01))
                begin
                    if(ch_num_par[0])
                        begin
                            continuous_gather[0] <= 1'b1;
                        end
                    else
                        begin
                            continuous_gather[0] <= 1'b0;
                        end
                    if(ch_num_par[1])
                        begin
                            continuous_gather[1] <= 1'b1;
                        end
                    else
                        begin
                            continuous_gather[1] <= 1'b0;
                        end
                        
                    if(ch_num_par[2])
                        begin
                            continuous_gather[2] <= 1'b1;
                        end
                    else
                        begin
                            continuous_gather[2] <= 1'b0;
                        end
                        
                    if(ch_num_par[3])
                        begin
                            continuous_gather[3] <= 1'b1;
                        end
                    else
                        begin
                            continuous_gather[3] <= 1'b0;
                        end
                end
            else
                begin
                    continuous_gather <= 4'h0;
                end
        end
end
//----���βɼ�-----------------------------------
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            signal_gather <= 4'b0;
        end
    else
        begin
            if(series_ctrl_order_val && (series_ctrl_order == 8'h02))
                begin
                    if(ch_num_par[0])
                        begin
                            signal_gather[0] <= 1'b1;
                        end
                    else
                        begin
                            signal_gather[0] <= 1'b0;
                        end
                    if(ch_num_par[1])
                        begin
                            signal_gather[1] <= 1'b1;
                        end
                    else
                        begin
                            signal_gather[1] <= 1'b0;
                        end
                        
                    if(ch_num_par[2])
                        begin
                            signal_gather[2] <= 1'b1;
                        end
                    else
                        begin
                            signal_gather[2] <= 1'b0;
                        end
                        
                    if(ch_num_par[3])
                        begin
                            signal_gather[3] <= 1'b1;
                        end
                    else
                        begin
                            signal_gather[3] <= 1'b0;
                        end
                end
            else
                begin
                    signal_gather <= 4'h0;
                end
        end
end
//----�����ڲɼ�-----------------------------------
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            period_gather <= 4'b0;
        end
    else
        begin
            if(series_ctrl_order_val && (series_ctrl_order == 8'h03))
                begin
                    if(ch_num_par[0])
                        begin
                            period_gather[0] <= 1'b1;
                        end
                    else
                        begin
                            period_gather[0] <= 1'b0;
                        end
                    if(ch_num_par[1])
                        begin
                            period_gather[1] <= 1'b1;
                        end
                    else
                        begin
                            period_gather[1] <= 1'b0;
                        end
                        
                    if(ch_num_par[2])
                        begin
                            period_gather[2] <= 1'b1;
                        end
                    else
                        begin
                            period_gather[2] <= 1'b0;
                        end
                        
                    if(ch_num_par[3])
                        begin
                            period_gather[3] <= 1'b1;
                        end
                    else
                        begin
                            period_gather[3] <= 1'b0;
                        end
                end
            else
                begin
                    period_gather <= 4'h0;
                end
        end
end
//---debug----------------------------------
//(*mark_debug = "true"*) wire [ 7:0] series_ctrl_order_w;
//(*mark_debug = "true"*) wire        series_ctrl_order_val_w;

//(*mark_debug = "true"*) wire [3:0]       stop_gather_w;
//(*mark_debug = "true"*) wire [3:0]       continuous_gather_w;
//(*mark_debug = "true"*) wire [3:0]       signal_gather_w;
//(*mark_debug = "true"*) wire [3:0]       period_gather_w;
//(*mark_debug = "true"*) wire     start_gather_out_w;//
//(*mark_debug = "true"*) wire     stop_gather_out_w;//

//assign series_ctrl_order_w = series_ctrl_order;
//assign series_ctrl_order_val_w = series_ctrl_order_val;
//assign stop_gather_w = stop_gather;
//assign continuous_gather_w = continuous_gather;
//assign signal_gather_w = signal_gather;
//assign period_gather_w = period_gather;
//assign start_gather_out_w = start_gather_out;
//assign stop_gather_out_w = stop_gather_out;

endmodule
