`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/09 09:06:45
// Design Name: 
// Module Name: par_updata
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


module par_updata(
                    input clk,
                    input rst_n,
                    
                    input [15:0] default_comp_point,
                    
                    input [31:0]  DDR_DEFAULT_START_ADDR_A,
                    input [31:0]  DDR_DEFAULT_START_ADDR_B,
                    input [31:0]  DDR_DEFAULT_START_ADDR_C,
                    input [31:0]  DDR_DEFAULT_START_ADDR_D,
                    input [31:0]  DDR_DEFAULT_OVER_ADDR_A,
                    input [31:0]  DDR_DEFAULT_OVER_ADDR_B,
                    input [31:0]  DDR_DEFAULT_OVER_ADDR_C,
                    input [31:0]  DDR_DEFAULT_OVER_ADDR_D,
                    
                    input [ 7:0]  ch_num_par,//当前通道号
                    input         ch_num_par_val,
                    
                    input [15:0]  cal_zero_par,//校零参数
                    input         cal_zero_par_val, //下发校零有效
                    
                    input [15:0]  ch_sample_par,//通道抽样参数
                    input         ch_sample_par_val,
                    
                    input [15:0]  series_comp_point_par,//连续数据压缩点数
                    input         series_comp_point_par_val,
                    
                    input [31:0]  series_comp_ratio_par,//压缩比参数
                    input         series_comp_ratio_par_val,
                    
                    input [ 7:0]  series_data_type_par,//采集的数据类型
                    input         series_data_type_par_val,
                    
                    input [7:0]   series_sample_period,
                    input         series_sample_period_val,
                    
                    input [7:0]   series_ctrl_order,//连续数据控制
                    input         series_ctrl_order_val,
                    
                    input [7:0]   ddr_ctrl_par,//ddr控制，读
                    input         ddr_ctrl_par_val,

                    input [31:0]  ddr_wr_start_addr,//DDR写起始地址
                    input         ddr_wr_start_addr_val,
                    input [31:0]  ddr_wr_over_addr,//DDR写结束地址
                    input         ddr_wr_over_addr_val,
                    
                    input         start_gather_in,//模块输入
                    input         stop_gather_in,

                    output reg [15:0] cal_zero_A,
                    output reg [15:0] cal_zero_B,
                    output reg [15:0] cal_zero_C,
                    output reg [15:0] cal_zero_D,
                    
                    output reg [15:0] ch_sample_A,
                    output reg [15:0] ch_sample_B,
                    output reg [15:0] ch_sample_C,
                    output reg [15:0] ch_sample_D,
                    
                    output reg [15:0] series_comp_point_A,
                    output reg [15:0] series_comp_point_B,
                    output reg [15:0] series_comp_point_C,
                    output reg [15:0] series_comp_point_D,
                    
                    output reg [31:0] series_comp_ratio_A,
                    output reg [31:0] series_comp_ratio_B,
                    output reg [31:0] series_comp_ratio_C,
                    output reg [31:0] series_comp_ratio_D,
                    
                    output reg [ 7:0] series_data_type_A,
                    output reg [ 7:0] series_data_type_B,
                    output reg [ 7:0] series_data_type_C,
                    output reg [ 7:0] series_data_type_D,
                    
                    output reg [ 7:0] series_sample_period_A,
                    output reg [ 7:0] series_sample_period_B,
                    output reg [ 7:0] series_sample_period_C,
                    output reg [ 7:0] series_sample_period_D,
                    
                    
                    output wire        start_gather_out,//
                    output wire        stop_gather_out,//送到触发模块
                    output wire [ 3:0] start_gather,
                    output wire [ 3:0] stop_gather,//停止采集
                    output wire [ 3:0] continuous_gather,//连续采集
                    output wire [ 3:0] signal_gather,//单词采集
                    output wire [ 3:0] period_gather,//周期性采集
                    
                    
                    output reg [31:0] ddr3_wr_start_addr_A,
                    output reg [31:0] ddr3_wr_start_addr_B,
                    output reg [31:0] ddr3_wr_start_addr_C,
                    output reg [31:0] ddr3_wr_start_addr_D,
                    
                    output reg [31:0] ddr3_wr_over_addr_A,
                    output reg [31:0] ddr3_wr_over_addr_B,
                    output reg [31:0] ddr3_wr_over_addr_C,
                    output reg [31:0] ddr3_wr_over_addr_D,
                    output reg        read_ddr_en
                    
                   );

reg [2:0] cnt;
reg       flag;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            cal_zero_A <= 16'd0;
            cal_zero_B <= 16'd0;
            cal_zero_C <= 16'd0;
            cal_zero_D <= 16'd0;
            ch_sample_A <= 16'h1;
            ch_sample_B <= 16'h1;
            ch_sample_C <= 16'h1;
            ch_sample_D <= 16'h1;
            series_comp_point_A <= default_comp_point;//默认压缩比
            series_comp_point_B <= default_comp_point;//默认压缩比
            series_comp_point_C <= default_comp_point;//默认压缩比
            series_comp_point_D <= default_comp_point;//默认压缩比
            series_comp_ratio_A <= 16'd1;
            series_comp_ratio_B <= 16'd1;
            series_comp_ratio_C <= 16'd1;
            series_comp_ratio_D <= 16'd1;
            series_data_type_A <= 8'd0;
            series_data_type_B <= 8'd0;
            series_data_type_C <= 8'd0;
            series_data_type_D <= 8'd0;
            series_sample_period_A <= 8'd0;
            series_sample_period_B <= 8'd0;
            series_sample_period_C <= 8'd0;
            series_sample_period_D <= 8'd0;
            ddr3_wr_start_addr_A <= DDR_DEFAULT_START_ADDR_A;
            ddr3_wr_start_addr_B <= DDR_DEFAULT_START_ADDR_B;
            ddr3_wr_start_addr_C <= DDR_DEFAULT_START_ADDR_C;
            ddr3_wr_start_addr_D <= DDR_DEFAULT_START_ADDR_D;
            ddr3_wr_over_addr_A <= DDR_DEFAULT_OVER_ADDR_A;
            ddr3_wr_over_addr_B <= DDR_DEFAULT_OVER_ADDR_B;
            ddr3_wr_over_addr_C <= DDR_DEFAULT_OVER_ADDR_C;
            ddr3_wr_over_addr_D <= DDR_DEFAULT_OVER_ADDR_D;
            read_ddr_en <= 1'b0;
            cnt <= 3'd0;
            flag <= 1'b0;
        end
    else
        begin
            //各通道校零参数更新------------------------------------
            if(cal_zero_par_val && ch_num_par[0])
                begin
                    cal_zero_A <= cal_zero_par;//更新
                end
            else
                begin
                    cal_zero_A <= cal_zero_A;//保持
                end
            if(cal_zero_par_val && ch_num_par[1])
                begin
                    cal_zero_B <= cal_zero_par;//更新
                end
            else
                begin
                    cal_zero_B <= cal_zero_B;//保持
                end
            
            if(cal_zero_par_val && ch_num_par[2])
                begin
                    cal_zero_C <= cal_zero_par;//更新
                end
            else 
                begin
                    cal_zero_C <= cal_zero_C;
                end
                
            if(cal_zero_par_val && ch_num_par[3])
                begin
                    cal_zero_D <= cal_zero_par;//更新
                end
            else
                begin
                    cal_zero_D <= cal_zero_D;
                end
            //各通道抽样参数更新------------------------------------
            if(ch_sample_par_val && ch_num_par[0])
                begin
                    ch_sample_A <= ch_sample_par;//更新
                end
                
            if(ch_sample_par_val && ch_num_par[1])
                begin
                    ch_sample_B <= ch_sample_par;//更新
                end
                
            if(ch_sample_par_val && ch_num_par[2])
                begin
                    ch_sample_C <= ch_sample_par;//更新
                end
                
            if(ch_sample_par_val && ch_num_par[3])
                begin
                    ch_sample_D <= ch_sample_par;//更新
                end

                //各通道数据类型更新------------------------------------
            if(series_data_type_par_val && ch_num_par[0])
                begin
                    series_data_type_A <= series_data_type_par;//更新
                end
            if(series_data_type_par_val && ch_num_par[1])
                begin
                    series_data_type_B <= series_data_type_par;//更新
                end
            if(series_data_type_par_val && ch_num_par[2])
                begin
                    series_data_type_C <= series_data_type_par;//更新
                end
            if(series_data_type_par_val && ch_num_par[3])
                begin
                    series_data_type_D <= series_data_type_par;//更新
                end

            //各通道压缩点数获取------------------------------------------
            if(series_comp_point_par_val && ch_num_par[0])
                begin
                    series_comp_point_A <= series_comp_point_par;//更新
                end
            if(series_comp_point_par_val && ch_num_par[1])
                begin
                    series_comp_point_B <= series_comp_point_par;//更新
                end
            if(series_comp_point_par_val && ch_num_par[2])
                begin
                    series_comp_point_C <= series_comp_point_par;//更新
                end
            if(series_comp_point_par_val && ch_num_par[3])
                begin
                    series_comp_point_D <= series_comp_point_par;//更新
                end

            
            //各通道压缩比------------------------------------------
            if(series_comp_ratio_par_val && ch_num_par[0])
                begin
                    series_comp_ratio_A <= series_comp_ratio_par;//更新
                end
            if(series_comp_ratio_par_val && ch_num_par[1])
                begin
                    series_comp_ratio_B <= series_comp_ratio_par;//更新
                end
            if(series_comp_ratio_par_val && ch_num_par[2])
                begin
                    series_comp_ratio_C <= series_comp_ratio_par;//更新
                end
            if(series_comp_ratio_par_val && ch_num_par[3])
                begin
                    series_comp_ratio_D <= series_comp_ratio_par;//更新
                end

            //各通道连续数据采样周期------------------------------------------
            if(series_sample_period_val && ch_num_par[0])
                begin
                    series_sample_period_A <= series_sample_period;//更新
                end
            if(series_sample_period_val && ch_num_par[1])
                begin
                    series_sample_period_B <= series_sample_period;//更新
                end
            if(series_sample_period_val && ch_num_par[2])
                begin
                    series_sample_period_C <= series_sample_period;//更新
                end
            if(series_sample_period_val && ch_num_par[3])
                begin
                    series_sample_period_D <= series_sample_period;//更新
                end

            //各通道写DDR3起始地址------------------------------------------
            if(ddr_wr_start_addr_val && ch_num_par[0])
                begin
                    ddr3_wr_start_addr_A <= ddr_wr_start_addr;//更新
                end
            if(ddr_wr_start_addr_val && ch_num_par[1])
                begin
                    ddr3_wr_start_addr_B <= ddr_wr_start_addr;//更新
                end
            if(ddr_wr_start_addr_val && ch_num_par[2])
                begin
                    ddr3_wr_start_addr_C <= ddr_wr_start_addr;//更新
                end
            if(ddr_wr_start_addr_val && ch_num_par[3])
                begin
                    ddr3_wr_start_addr_D <= ddr_wr_start_addr;//更新
                end

            //各通道写DDR3起始地址------------------------------------------
            if(ddr_wr_over_addr_val && ch_num_par[0])
                begin
                    ddr3_wr_over_addr_A <= ddr_wr_over_addr;//更新
                end
            if(ddr_wr_over_addr_val && ch_num_par[1])
                begin
                    ddr3_wr_over_addr_B <= ddr_wr_over_addr;//更新
                end
            if(ddr_wr_over_addr_val && ch_num_par[2])
                begin
                    ddr3_wr_over_addr_C <= ddr_wr_over_addr;//更新
                end
            if(ddr_wr_over_addr_val && ch_num_par[3])
                begin
                    ddr3_wr_over_addr_D <= ddr_wr_over_addr;//更新
                end

            if(ddr_ctrl_par_val && (ddr_ctrl_par == 8'd1))
                begin
                    read_ddr_en <= 1'b1;
                    cnt <= cnt + 3'd1;
                    flag <= 1'b1;//标记
                end
            else if((cnt == 3'd5) && flag)
                begin
                    read_ddr_en <= 1'b0;
                    cnt <= 3'd0;
                    flag <= 1'b0;
                end
            else if(flag)
                begin
                    read_ddr_en <= read_ddr_en;
                    cnt <= cnt + 3'd1;
                    flag <= 1'b1;
                end
            else
                begin
                    read_ddr_en <= 1'b0;
                    cnt <= 3'd0;
                end
        end
end

series_data_ctrl series_data_ctrl_inst(
                                        .clk(clk),
                                        .rst_n(rst_n),
                                        
                                        .ch_num_par(ch_num_par),
                                        .series_ctrl_order(series_ctrl_order),//input [7:0] 
                                        .series_ctrl_order_val(series_ctrl_order_val),
                                        
                                        .start_gather_in(start_gather_in),
                                        .stop_gather_in(stop_gather_in),
                                        
                                        .start_gather_out(start_gather_out),//
                                        .stop_gather_out(stop_gather_out),//送到触发模块
                
                                        .start_gather(start_gather),//自用output reg [3:0] 
                                        .stop_gather(stop_gather),//output reg [3:0] 
                                        .continuous_gather(continuous_gather),//连续采集output reg [3:0] 
                                        .signal_gather(signal_gather),//单词采集output reg [3:0] 
                                        .period_gather(period_gather)//周期性采集output reg [3:0] 
                                       );
//-----调试区-----------------------
//(*MARK_DEBUG = "TRUE"*)  wire [7:0]   ddr_ctrl_par_w;
//(*MARK_DEBUG = "TRUE"*)  wire         ddr_ctrl_par_val_w;
//(*MARK_DEBUG = "TRUE"*)  wire         read_ddr_en_w;                    
//(*MARK_DEBUG = "TRUE"*)  wire [2:0]   cnt_w;
//(*MARK_DEBUG = "TRUE"*)  wire         flag_w;

//assign ddr_ctrl_par_w = ddr_ctrl_par;
//assign ddr_ctrl_par_val_w = ddr_ctrl_par_val;
//assign read_ddr_en_w = read_ddr_en;
//assign cnt_w = cnt;
//assign flag_w = flag;


//(*MARK_DEBUG = "TRUE"*)  wire [15:0]  ch_num_par_w;//当前通道号
//(*MARK_DEBUG = "TRUE"*)  wire         ch_num_par_val_w;

//(*MARK_DEBUG = "TRUE"*)  wire [15:0]  cal_zero_par_w;//校零参数
//(*MARK_DEBUG = "TRUE"*)  wire         cal_zero_par_val_w;//下发校零有效

//(*MARK_DEBUG = "TRUE"*)  wire [15:0]  ch_sample_par_w;//通道抽样参数
//(*MARK_DEBUG = "TRUE"*)  wire         ch_sample_par_val_w;

//assign ch_num_par_w = ch_num_par;
//assign ch_num_par_val_w = ch_num_par_val;
//assign cal_zero_par_w = cal_zero_par;
//assign cal_zero_par_val_w = cal_zero_par_val;
//assign ch_sample_par_w = ch_sample_par;
//assign ch_sample_par_val_w = ch_sample_par_val;


//(*MARK_DEBUG = "TRUE"*)  wire [15:0]  series_comp_point_par_w;//连续数据压缩点数
//(*MARK_DEBUG = "TRUE"*)  wire         series_comp_point_par_val_w;

//(*MARK_DEBUG = "TRUE"*)  wire [31:0]  series_comp_ratio_par_w;//压缩比参数
//(*MARK_DEBUG = "TRUE"*)  wire         series_comp_ratio_par_val_w;

//(*MARK_DEBUG = "TRUE"*)  wire [ 7:0]  series_data_type_par_w;//采集的数据类型
//(*MARK_DEBUG = "TRUE"*)  wire         series_data_type_par_val_w;

//assign series_comp_point_par_w = series_comp_point_par;
//assign series_comp_point_par_val_w = series_comp_point_par_val;
//assign series_comp_ratio_par_w = series_comp_ratio_par;
//assign series_comp_ratio_par_val_w = series_comp_ratio_par_val;
//assign series_data_type_par_w = series_data_type_par;
//assign series_data_type_par_val_w = series_data_type_par_val;


//(*MARK_DEBUG = "TRUE"*)  wire [15:0] cal_zero_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] cal_zero_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] cal_zero_C_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] cal_zero_D_w;

//(*MARK_DEBUG = "TRUE"*)  wire [15:0] ch_sample_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] ch_sample_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] ch_sample_C_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] ch_sample_D_w;

//assign cal_zero_A_w = cal_zero_A;
//assign cal_zero_B_w = cal_zero_B;
//assign cal_zero_C_w = cal_zero_C;
//assign cal_zero_D_w = cal_zero_D;

//assign ch_sample_A_w = ch_sample_A;
//assign ch_sample_B_w = ch_sample_B;
//assign ch_sample_C_w = ch_sample_C;
//assign ch_sample_D_w = ch_sample_D;

//(*MARK_DEBUG = "TRUE"*)  wire [15:0] series_comp_point_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] series_comp_point_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] series_comp_point_C_w;
//(*MARK_DEBUG = "TRUE"*)  wire [15:0] series_comp_point_D_w;

//(*MARK_DEBUG = "TRUE"*)  wire [31:0] series_comp_ratio_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] series_comp_ratio_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] series_comp_ratio_C_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] series_comp_ratio_D_w;

//assign series_comp_point_A_w = series_comp_point_A;
//assign series_comp_point_B_w = series_comp_point_B;
//assign series_comp_point_C_w = series_comp_point_C;
//assign series_comp_point_D_w = series_comp_point_D;

//assign series_comp_ratio_A_w = series_comp_ratio_A;
//assign series_comp_ratio_B_w = series_comp_ratio_B;
//assign series_comp_ratio_C_w = series_comp_ratio_C;
//assign series_comp_ratio_D_w = series_comp_ratio_D;

//(*MARK_DEBUG = "TRUE"*)  wire [ 7:0] series_data_type_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [ 7:0] series_data_type_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [ 7:0] series_data_type_C_w;
//(*MARK_DEBUG = "TRUE"*)  wire [ 7:0] series_data_type_D_w;

//assign series_data_type_A_w = series_data_type_A;
//assign series_data_type_B_w = series_data_type_B;
//assign series_data_type_C_w = series_data_type_C;
//assign series_data_type_D_w = series_data_type_D;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_start_addr_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_start_addr_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_start_addr_C_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_start_addr_D_w;

//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_over_addr_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_over_addr_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_over_addr_C_w;
//(*MARK_DEBUG = "TRUE"*)  wire [31:0] ddr3_wr_over_addr_D_w;

//assign ddr3_wr_start_addr_A_w = ddr3_wr_start_addr_A;
//assign ddr3_wr_start_addr_B_w = ddr3_wr_start_addr_B;
//assign ddr3_wr_start_addr_C_w = ddr3_wr_start_addr_C;
//assign ddr3_wr_start_addr_D_w = ddr3_wr_start_addr_D;

//assign ddr3_wr_over_addr_A_w = ddr3_wr_over_addr_A;
//assign ddr3_wr_over_addr_B_w = ddr3_wr_over_addr_B;
//assign ddr3_wr_over_addr_C_w = ddr3_wr_over_addr_C;
//assign ddr3_wr_over_addr_D_w = ddr3_wr_over_addr_D;

endmodule
