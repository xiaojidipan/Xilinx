`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/21 15:18:38
// Design Name: 
// Module Name: series_data_gather
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


module series_data_gather(
                             input clk,
                             input rst_n,
                             
                             input [15:0]  series_com_point_par,//压缩点数
                             input [31:0]  series_comp_ratio_par,//压缩比参数
                             input [ 7:0]  series_data_type_par,//采集的数据类型
                             input [ 7:0]  series_sample_period,//采样周期数
                             
                             input [63:0]  time_code_in,//时间码
                             
                             input [15:0]  data_in,
                             input         data_in_val,
                             
                             input         start_gather,//启动采集
                             input         triger_gather, //触发采集
                             input         stop_gather,//停止采集
                             input         continuous_gather,//连续采集
                             input         signal_gather,//单词采集
                             input         period_gather,//周期性采集
                             
                             output reg [31:0] time_code_out,
                             output reg        time_code_out_val,
                             output reg [15:0] data_out,
                             output reg        data_out_val
                            );

parameter ST0_a = 6'b00_0001,
          ST1_a = 6'b00_0010,  
          ST2_a = 6'b00_0100,  
          ST3_a = 6'b00_1000,  
          ST4_a = 6'b01_0000,  
          ST5_a = 6'b10_0000; 
          
reg [ 5:0] state_a;                             
reg [31:0] com_ratio_cnt;//压缩采集计数
reg [15:0] com_point_cnt;//压缩点数计数

reg [15:0] max_abs_data;//绝对值最大
reg [15:0] max_p_data;//正向最大值
reg [15:0] min_n_data;//负向最小值  
reg [15:0] min_n_data_r;//负向最小值寄存，方便清零  
reg        p_n; //符号位 寄存

wire [15:0] data_in_wire;
assign data_in_wire =(data_in[15]) ? ((~data_in)  + 1) : data_in;//取绝对值

reg        aclr_stop_gather;//清停止状态
reg        stop_gather_r;//寄存停止采集命令 

reg        aclr_signal_gather;//清单次采集状态
reg        signal_gather_r;//寄存单次采集命令 

reg        aclr_continuous_gather;//清单次采集状态
reg        continuous_gather_r;//寄存单次采集命令 

reg        aclr_period_gather;//清周期采集状态
reg        period_gather_r;//寄存按周期采集命令 
reg [7:0]  period_gather_cnt;//按周期采集寄存器

reg        tc_cnt;
reg [63:0] time_code_r;
reg        time_code_r_val;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            time_code_out <= 32'd0;
            time_code_out_val <= 1'b0;
            stop_gather_r <= 1'b0;
            signal_gather_r <= 1'b0;
            continuous_gather_r <= 1'b0;
            period_gather_r <= 1'b0;
            tc_cnt <= 1'b0;
        end
    else
        begin
            //停止命令寄存与清除---
            if(stop_gather)
                begin
                    stop_gather_r <= 1'b1;
                end
            else if(aclr_stop_gather)//清除采集状态
                begin
                    stop_gather_r <= 1'b0;
                end
            else
                begin
                    stop_gather_r <= stop_gather_r;
                end
            //单次采集命令寄存与清除---   
            if(signal_gather)
                begin
                    signal_gather_r <= 1'b1;
                end
            else if(aclr_signal_gather)//清除采集状态
                begin
                    signal_gather_r <= 1'b0;
                end
            else
                begin
                    signal_gather_r <= signal_gather_r;
                end
            //连续采集命令寄存与清除---
            if(continuous_gather)
                begin
                    continuous_gather_r <= 1'b1;
                end
            else if(aclr_continuous_gather)//清除采集状态
                begin
                    continuous_gather_r <= 1'b0;
                end
            else
                begin
                    continuous_gather_r <= continuous_gather_r;
                end
            //按周期数采集----    
            if(period_gather)
                begin
                    period_gather_r <= 1'b1;
                end
            else if(aclr_period_gather)//清除采集状态
                begin
                    period_gather_r <= 1'b0;
                end
            else
                begin
                    period_gather_r <= period_gather_r;
                end
                
            if(time_code_r_val)
                begin
                    time_code_out <= time_code_r[31:0];
                    time_code_out_val <= 1'b1;
                    tc_cnt <= 1'b1;
                end
            else if(tc_cnt)
                begin
                    time_code_out_val <= 1'b1;
                    time_code_out <= time_code_r[63:32];//存时间码高32位
                    tc_cnt <= 1'b0;
                end
            else
                begin
                    tc_cnt <= 1'b0;
                    time_code_out_val <= 1'b0;
                    time_code_out <= 32'd0;
                end
        end
end

       
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            data_out <= 16'd0;
            data_out_val <= 1'b0;
            com_ratio_cnt <= 32'd0;
            com_point_cnt <= 16'd0;
            max_abs_data <= 16'd0;
            max_p_data <= 16'd0;
            min_n_data <= 16'd0;
            min_n_data_r <= 16'd0;
            p_n <= 1'b0;
            aclr_stop_gather <= 1'b0;
            aclr_signal_gather <= 1'b0;
            aclr_continuous_gather <= 1'b0;
            aclr_period_gather <= 1'b0;
            period_gather_cnt <= 8'd0;
            time_code_r <= 64'd0;;
            time_code_r_val <= 1'b0;
            state_a <= ST0_a;
        end
    else
        begin
            
            case(state_a)
                ST0_a : begin
                            data_out <= 16'd0;
                            data_out_val <= 1'b0;
                            com_ratio_cnt <= 32'd0;
                            com_point_cnt <= 16'd0;
                            aclr_stop_gather <= 1'b0;
                            aclr_signal_gather <= 1'b0;
                            aclr_continuous_gather <= 1'b0;
                            aclr_period_gather <= 1'b0;
                            period_gather_cnt <= 8'd0;
                            time_code_r_val <= 1'b0;
                            if(start_gather)
                                begin
                                    state_a <= ST1_a;
                                end
                            else
                                begin
                                    state_a <= ST0_a;
                                end
                        end
                ST1_a : begin
                            data_out_val <= 1'b0;
                            if(triger_gather)
                                begin
                                    state_a <= ST2_a;
                                    time_code_r <= time_code_in;
                                    time_code_r_val <= 1'b1;
                                    if(data_in_val && (series_data_type_par == 8'd0))
                                        begin
                                            max_abs_data <= (data_in[15]) ? data_in_wire : data_in;;//
                                            p_n <= data_in[15];
                                        end
                                    else if(data_in_val && (series_data_type_par == 8'd1))
                                        begin
                                            max_p_data <= (data_in[15]) ? 16'd0 : data_in;//为正值,转码
                                            min_n_data <= (data_in[15]) ? data_in_wire : 16'd0;//为负值
                                        end
                                    else
                                        begin
                                            max_abs_data <= 16'd0;
                                            max_p_data <= 16'd0;
                                            min_n_data <= 16'd0; 
                                            p_n <= 1'b0;
                                        end
                                end
                            else
                                begin
                                    state_a <= ST1_a;
                                end
                        end
                ST2_a : begin
                            time_code_r_val <= 1'b0;
                            if(data_in_val && (series_data_type_par == 8'd0))
                                begin
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1;  
                                    if(data_in[15])
                                        begin
                                            p_n <= (max_abs_data < data_in_wire) ? 1'b1 : p_n;
                                            max_abs_data <= (max_abs_data < data_in_wire) ? data_in_wire : max_abs_data;
                                        end
                                    else
                                        begin
                                            p_n <=  (max_abs_data < data_in) ? 1'b0 : p_n;
                                            max_abs_data <= (max_abs_data < data_in) ? data_in : max_abs_data;
                                        end
                                end
                            else if(data_in_val && (series_data_type_par == 8'd1))
                                begin
                                    max_p_data <= (!data_in[15] && (max_p_data < data_in)) ? data_in : max_p_data;
                                    min_n_data <= (data_in[15] && (min_n_data < data_in_wire)) ? data_in_wire : min_n_data;
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1;  
                                end
                            else
                                begin
                                    com_ratio_cnt <= com_ratio_cnt;
                                end
                                                                                        
                            if((com_ratio_cnt == series_comp_ratio_par) && (series_data_type_par == 8'd0))
                                begin
                                    data_out <= (p_n) ? (~(max_abs_data - 1)) : max_abs_data;
                                    data_out_val <= 1'b1;
                                    max_abs_data <= 16'd0;
                                    com_ratio_cnt <= 32'd0;
                                    state_a <= ST3_a;
                                end
                            else if((com_ratio_cnt == series_comp_ratio_par) && (series_data_type_par == 8'd1))
                                begin
                                    data_out <= max_p_data;//正向最大
                                    data_out_val <= 1'b1;
                                    max_p_data <= 16'd0;
                                    min_n_data <= 16'd0;
                                    min_n_data_r <= ~(min_n_data - 1);
                                    com_ratio_cnt <= 32'd0;
                                    state_a <= ST3_a;
                                end
                            else
                                begin
                                    data_out_val <= 1'b0;
                                    state_a <= ST2_a;
                                end  
                        end
                ST3_a : begin
                            if(series_data_type_par == 8'd1)
                                begin
                                    data_out <= min_n_data_r;//将负向最小值取出
                                    data_out_val <= 1'b1; 
                                end
                            else
                                begin
                                    data_out_val <= 1'b0;
                                end
                                
                            if(data_in_val && (series_data_type_par == 8'd0))//若数据有效则继续取数据
                                begin
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1; 
                                    if(data_in[15])
                                        begin
                                            p_n <= (max_abs_data < ((~data_in)  + 1)) ? 1'b1 : p_n;
                                            max_abs_data <= (max_abs_data < ((~data_in)  + 1)) ? ((~data_in)  + 1) : max_abs_data;
                                        end
                                    else
                                        begin
                                            p_n <=  (max_abs_data < data_in) ? 1'b0 : p_n;
                                            max_abs_data <= (max_abs_data < data_in) ? data_in : max_abs_data;
                                        end
                                end
                            else if(data_in_val && (series_data_type_par == 8'd1))
                                begin
                                    max_p_data <= (!data_in[15] && (max_p_data < data_in)) ? data_in : max_p_data;
                                    min_n_data <= (data_in[15] && (min_n_data < ((~data_in)  + 1))) ? ((~data_in)  + 1) : min_n_data;
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1;  
                                end
                            else
                                begin
                                    com_ratio_cnt <= com_ratio_cnt;
                                    max_abs_data <= 16'd0;
                                    max_p_data <= 16'd0;
                                    min_n_data <= 16'd0;
                                end
                            
                            if(series_com_point_par == 16'd1)//连续采集模式 无压缩模式
                                begin
                                    if(stop_gather_r && (com_point_cnt == 16'd639))//判断是否有停止采集指令到达
                                        begin
                                            state_a <= ST0_a;//等待下次触发
                                            aclr_stop_gather <= 1'b1;//通知模块停止命令已经收到
                                            com_point_cnt <= 16'd0;
                                        end
                                    else if(com_point_cnt == 16'd639)//连续采集每到一帧获取时间码
                                        begin
                                            time_code_r <= time_code_in;
                                            time_code_r_val <= 1'b1;//获取时间码
                                            com_point_cnt <= 16'd0;
                                             state_a <= ST2_a;//等待下次触发
                                        end
                                    else
                                        begin
                                            com_point_cnt <= com_point_cnt + 16'd1;
                                            state_a <= ST2_a;//等待下次触发
                                        end
                                end
                            else if(com_point_cnt == series_com_point_par - 16'd1)//满足压缩数要求
                                begin
                                    com_point_cnt <= 16'd0;
                                    if(signal_gather_r)
                                        begin
                                            aclr_signal_gather <= 1'b1;//清单次采集寄存状态
                                            state_a <= ST0_a;//单次采集完成，等待下次启动
                                        end
                                    else if(period_gather_r)//连续采集
                                        begin
                                            if(period_gather_cnt == series_sample_period - 8'd1)
                                                begin
                                                    period_gather_cnt <= 8'd0;
                                                    aclr_period_gather <= 1'b1;//清按周期采集数据寄存器命令
                                                    state_a <= ST0_a;//等待下次触发
                                                end
                                            else
                                                begin
                                                    aclr_period_gather <= 1'b0;
                                                    period_gather_cnt <= period_gather_cnt + 8'd1;
                                                    state_a <= ST1_a;//等待下次触发
                                                end
                                        end
                                    else if(continuous_gather_r)//连续采集
                                        begin
                                            if(stop_gather_r)
                                                begin
                                                    aclr_stop_gather <= 1'b1;
                                                    aclr_continuous_gather <= 1'b1;
                                                    state_a <= ST0_a;//等待下次触发
                                                end
                                            else
                                                begin
                                                    aclr_stop_gather <= 1'b0;
                                                    aclr_continuous_gather <= 1'b0;
                                                    state_a <= ST1_a;//等待下次触发
                                                end
                                        end
                                    else
                                        begin
                                            state_a <= ST1_a;
                                        end
                                end
                            else
                                begin
                                    com_point_cnt <= com_point_cnt + 16'd1;//压缩点数计数器自增
                                    state_a <= ST2_a;
                                end
                        end
                default: state_a <= ST0_a;
            endcase
        end
end

//----接口调试------------------------
//(*mark_debug = "true"*) wire [15:0]  series_com_point_par_w;//压缩点数
//(*mark_debug = "true"*) wire [15:0]  series_comp_ratio_par_w;//压缩比参数
//(*mark_debug = "true"*) wire [ 7:0]  series_data_type_par_w;//采集的数据类型
  
                                                       
//(*mark_debug = "true"*) wire [15:0] data_in_w;
//(*mark_debug = "true"*) wire        data_in_val_w;
                             
//(*mark_debug = "true"*) wire        start_gather_w;//启动采集
//(*mark_debug = "true"*) wire        triger_gather_w; //触发采集
                             
//(*mark_debug = "true"*) wire [15:0] data_out_w;
//(*mark_debug = "true"*) wire        data_out_val_w;

//assign series_com_point_par_w = series_com_point_par;
//assign series_comp_ratio_par_w = series_comp_ratio_par;

//assign series_data_type_par_w = series_data_type_par;


//assign data_in_w = data_in;
//assign data_in_val_w = data_in_val;

//assign start_gather_w = start_gather;
//assign triger_gather_w = triger_gather;

//assign data_out_w = data_out;
//assign data_out_val_w = data_out_val;


//(*mark_debug = "true"*) wire [5:0] state_a_w;                             
//(*mark_debug = "true"*) wire [15:0] com_ratio_cnt_w;//压缩采集计数
//(*mark_debug = "true"*) wire [15:0] com_point_cnt_w;//压缩点数计数
//(*mark_debug = "true"*) wire [63:0] time_code_out_w;//时间码寄存
//(*mark_debug = "true"*) wire        time_code_out_val_w;//时间码寄存
//(*mark_debug = "true"*) wire [15:0] max_abs_data_w;//绝对值最大
//(*mark_debug = "true"*) wire [15:0] max_p_data_w;//正向最大值
//(*mark_debug = "true"*) wire [15:0] min_n_data_w;//负向最小值  
//(*mark_debug = "true"*) wire [15:0] data_in_wire_w;
//assign state_a_w = state_a;
//assign com_ratio_cnt_w = com_ratio_cnt;
//assign com_point_cnt_w = com_point_cnt;
//assign time_code_out_w = time_code_out;
//assign time_code_out_val_w = time_code_out_val;
//assign max_abs_data_w = max_abs_data;
//assign max_p_data_w = max_p_data;
//assign min_n_data_w = min_n_data;

//assign data_in_wire_w = data_in_wire;

//(*mark_debug = "true"*) wire p_n_w;
//assign p_n_w = p_n;

//(*mark_debug = "true"*) wire        aclr_stop_gather_w;//清停止状态
//(*mark_debug = "true"*) wire        stop_gather_r_w;//寄存停止采集命令 

//(*mark_debug = "true"*) wire        aclr_signal_gather_w;//清单次采集状态
//(*mark_debug = "true"*) wire        signal_gather_r_w;//寄存单次采集命令 

//(*mark_debug = "true"*) wire        aclr_continuous_gather_w;//清单次采集状态
//(*mark_debug = "true"*) wire        continuous_gather_r_w;//寄存单次采集命令 

//(*mark_debug = "true"*) wire        aclr_period_gather_w;//清周期采集状态
//(*mark_debug = "true"*) wire        period_gather_r_w;//寄存按周期采集命令 
//(*mark_debug = "true"*) wire [7:0]  period_gather_cnt_w;//按周期采集寄存器
//(*mark_debug = "true"*) wire [7:0]  series_sample_period_w;//按周期采集寄存器

//assign aclr_stop_gather_w = aclr_stop_gather;
//assign stop_gather_r_w = stop_gather_r;
//assign aclr_signal_gather_w = aclr_signal_gather;
//assign aclr_continuous_gather_w = aclr_continuous_gather;
//assign continuous_gather_r_w = continuous_gather_r;
//assign aclr_period_gather_w = aclr_period_gather;
//assign period_gather_r_w = period_gather_r;
//assign period_gather_cnt_w = period_gather_cnt;
//assign series_sample_period_w = series_sample_period;




endmodule
