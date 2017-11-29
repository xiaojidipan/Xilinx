`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/08 10:37:58
// Design Name: 
// Module Name: Project_top
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


module Project_top(
                    input       clk_in,
                    
                    input       pin_isa_cs,
                    input       pin_isa_wr,
                    input       pin_isa_rd,
                    input       pin_isa_adv,
                    inout[ 7:0] pin_isa_data, 
                    
                    //DDR3接口--------------------------
                    inout wire [15:0] ddr3_dq,
                    inout wire [1:0]  ddr3_dqs_n,
                    inout wire [ 1:0] ddr3_dqs_p,
                    output wire[14:0] ddr3_addr,
                    output wire[ 2:0] ddr3_ba,
                    output wire       ddr3_cas_n,
                    output wire       ddr3_ck_n,
                    output wire       ddr3_ck_p,
                    output wire       ddr3_cke,
                    output wire[ 1:0] ddr3_dm,
                    output wire       ddr3_odt,
                    output wire       ddr3_ras_n,
                    output wire       ddr3_reset_n,
                    output wire       ddr3_we_n,
                    output wire       ddr3_addr_h,
                    output wire       ddr3_cs_n,
                    
                    //AD接口-----------
                    input DCO_p,
                    input DCO_n,
                    input FCO_p,
                    input FCO_n,
                    input D0_A_p,
                    input D0_A_n,
                    input D1_A_p,
                    input D1_A_n,
                    input D0_B_p,
                    input D0_B_n,
                    input D1_B_p,
                    input D1_B_n,   
                    input D0_C_p,
                    input D0_C_n,
                    input D1_C_p,
                    input D1_C_n,
                    input D0_D_p,
                    input D0_D_n,
                    input D1_D_p,
                    input D1_D_n,
                    
                    output wire ad_clk_out_p,
                    output wire ad_clk_out_n,
                    //网口
                    input             mii_rtl_col,
                    input             mii_rtl_crs,
                    inout             mdio_rtl_mdio_io,
                    output wire       mdio_rtl_mdc,
                  
                    input             mii_rtl_rx_clk,
                    input             mii_rtl_rx_dv,
                    input             mii_rtl_rx_er,
                    input [3:0]       mii_rtl_rxd,
                  
                    input             mii_rtl_tx_clk,
                    output wire       mii_rtl_tx_en,
                    output wire [3:0] mii_rtl_txd,
                  
                    output wire       eth_ref_clk,
                    output wire       mii_rtl_rst_n,
                    //串口
                    input             uart_rtl_rxd,
                    output wire       uart_rtl_txd
                    );
                                     
wire            ddr3_clk;
wire  [11:0]    device_temp_i;
                    
assign  device_temp_i = 12'd0;
assign  ddr3_addr_h = 1'b1;    
assign  ddr3_cs_n = 1'b0;

wire rst_n;
wire clk_100M;
wire clk_ddr3_ref;
wire clk_ddr3_sys;
wire clk_ad_out;
wire sys_rstn1;//100M时钟域复位
wire sys_rstn2;//ddr3时钟域复位

//处理后输出的AD数据---------------
wire [15:0] AD_data_A;
wire [15:0] AD_data_B;
wire [15:0] AD_data_C;
wire [15:0] AD_data_D;
wire [ 3:0] AD_data_val;

//下发参数定义--------------------------------------------
wire [7:0]  wreg_system_ctrl;//系统控制参数
wire        wreg_system_ctrl_valid;

wire [7:0]  wreg_out_startmode;//启动模式
wire        wreg_out_startmode_valid;
//---通道参数-------    
wire [7:0]  wreg_system_ch_sel;//系统通道选择 0x09
wire        wreg_system_ch_sel_valid; //通道选择有效信号

wire [15:0] wreg_ch_zero_cal;//通道零偏  0x37
wire        wreg_ch_zero_cal_valid;//通道零偏有效  

wire [15:0] wreg_ch_sample_rate;//通道采样参数
wire        wreg_ch_sample_rate_valid;//通道采样有效

wire [ 7:0] wreg_series_ctrl;//连续采集数据控制命令
wire        wreg_series_ctrl_valid;  
wire [ 7:0] wreg_series_sample_cycle;//连续数据采集周期
wire        wreg_series_sample_cycle_valid;  
wire [31:0] wreg_series_comp_ratio;//连续数据压缩比
wire        wreg_series_comp_ratio_valid; //连续数据压缩比有效    
wire [15:0] wreg_series_comp_num;//连续数据压缩点数
wire        wreg_series_comp_num_valid;//有效信号
wire [ 7:0] wreg_series_data_type;//连续数据类型 0x65
wire        wreg_series_data_type_valid; //有效

wire [31:0] wreg_series_start_ddraddr;//存DDR起始地址
wire        wreg_series_start_ddraddr_valid;      
wire [31:0] wreg_series_stop_ddraddr;//存DDR结束地址
wire        wreg_series_stop_ddraddr_valid; 

//DDR3控制
wire [ 7:0] wreg_ddr_ctrl;//DDR控制
wire        wreg_ddr_ctrl_valid; 
wire [ 7:0] rreg_ddr_status;//DDR读数据状态
wire        rreg_ddr_status_valid;


//参数更新-------------------------------------------
wire [15:0] cal_zero_par_A;//A通道校零参数
wire [15:0] cal_zero_par_B;//B通道校零参数
wire [15:0] cal_zero_par_C;//C通道校零参数
wire [15:0] cal_zero_par_D;//D通道校零参数

wire [15:0] ch_sample_par_A;//A通道抽样参数
wire [15:0] ch_sample_par_B;//B通道抽样参数
wire [15:0] ch_sample_par_C;//C通道抽样参数
wire [15:0] ch_sample_par_D;//D通道抽样参数

wire [15:0] series_comp_point_A;//A通道压缩点数参数
wire [15:0] series_comp_point_B;//B通道压缩点数参数
wire [15:0] series_comp_point_C;//C通道压缩点数参数
wire [15:0] series_comp_point_D;//D通道压缩点数参数

wire [15:0] series_comp_ratio_A;//A通道压缩比数参数
wire [15:0] series_comp_ratio_B;//B通道压缩比数参数
wire [15:0] series_comp_ratio_C;//C通道压缩比数参数
wire [15:0] series_comp_ratio_D;//D通道压缩比数参数

wire [ 7:0] series_data_type_A;//A通道数据类型参数
wire [ 7:0] series_data_type_B;//B通道数据类型参数
wire [ 7:0] series_data_type_C;//C通道数据类型参数
wire [ 7:0] series_data_type_D;//D通道数据类型参数

wire [ 7:0] series_sample_period_A;//A通道采集周期数
wire [ 7:0] series_sample_period_B;
wire [ 7:0] series_sample_period_C;
wire [ 7:0] series_sample_period_D;

wire [31:0] ddr3_wr_start_addr_A;
wire [31:0] ddr3_wr_start_addr_B;
wire [31:0] ddr3_wr_start_addr_C;
wire [31:0] ddr3_wr_start_addr_D;

wire [31:0] ddr3_wr_over_addr_A;
wire [31:0] ddr3_wr_over_addr_B;
wire [31:0] ddr3_wr_over_addr_C;
wire [31:0] ddr3_wr_over_addr_D;

//转换时钟域后--------------------------------------------
wire [15:0] series_comp_point_A_r;//A通道压缩点数参数
wire [15:0] series_comp_point_B_r;//B通道压缩点数参数
wire [15:0] series_comp_point_C_r;//C通道压缩点数参数
wire [15:0] series_comp_point_D_r;//D通道压缩点数参数

wire [ 7:0] series_data_type_A_r;//A通道数据类型参数
wire [ 7:0] series_data_type_B_r;//B通道数据类型参数
wire [ 7:0] series_data_type_C_r;//C通道数据类型参数
wire [ 7:0] series_data_type_D_r;//D通道数据类型参数

wire [31:0] ddr3_wr_start_addr_A_r;//A通道起始地址
wire [31:0] ddr3_wr_start_addr_B_r;
wire [31:0] ddr3_wr_start_addr_C_r;
wire [31:0] ddr3_wr_start_addr_D_r;

wire [31:0] ddr3_wr_over_addr_A_r;//A通道结束地址
wire [31:0] ddr3_wr_over_addr_B_r;
wire [31:0] ddr3_wr_over_addr_C_r;
wire [31:0] ddr3_wr_over_addr_D_r;
//---采集的连续数据-------------------
wire [ 7:0] wreg_series_startmode;//连续数据启动模式
wire        wreg_series_startmode_valid; 

wire [ 3:0] series_triger_gather;
wire [ 3:0] series_start_gather;
wire [ 3:0] series_stop_gather;
wire [ 3:0] series_continuous_gather;//连续采集
wire [ 3:0] series_signal_gather;//单词采集 
wire [ 3:0] series_period_gather;//周期性采集

wire [15:0] series_data_A;
wire [15:0] series_data_B;
wire [15:0] series_data_C;
wire [15:0] series_data_D;
wire [ 3:0] series_data_val;

wire [31:0] series_time_code_A;
wire [31:0] series_time_code_B;
wire [31:0] series_time_code_C;
wire [31:0] series_time_code_D;
wire [ 3:0] series_time_code_val;

//时间码存储到FIFO后读出段接口-----------------------------
wire        fifo_full_error;
wire [31:0] fifo_rd_time_code_A;//读FIFO时间码数据
wire [31:0] fifo_rd_time_code_B;
wire [31:0] fifo_rd_time_code_C;
wire [31:0] fifo_rd_time_code_D;
wire [ 3:0] fifo_rd_time_code_en;//读FIFO时间码是能

//连续数据存放到DDR3前级FIFO读出端接口------------------ 
wire [10:0] fifo_ddr3_sgl_A;//存在FIFO中可读DDR3数据个数                            
wire [10:0] fifo_ddr3_sgl_B;                            
wire [10:0] fifo_ddr3_sgl_C;                            
wire [10:0] fifo_ddr3_sgl_D;  
                          
wire [31:0] fifo_rd_ddr3_data_A;//c存在fifo中读出的DDR3数据
wire [31:0] fifo_rd_ddr3_data_B;
wire [31:0] fifo_rd_ddr3_data_C;
wire [31:0] fifo_rd_ddr3_data_D;
wire [ 3:0] fifo_rd_ddr3_data_en;//读使能信号


wire [31:0] master_wr_addr;
wire [31:0] master_rd_addr;

wire [ 1:0] txn_done; 
wire [31:0] user_read_data_out;
wire        user_read_data_val;
wire [31:0] user_rd_base_addr;
wire        user_rd_en;    
wire [15:0] user_rd_len;    
wire        user_rd_data_en;    
wire [10:0] user_rd_data_sgl;
wire [31:0] user_wr_base_addr;
wire [31:0] user_wr_data;
wire        user_wr_en;
wire [15:0] user_wr_len;

wire [7:0]  user_rd_burst_len;
wire [7:0]  user_wr_burst_len;

wire [3:0]  wr_ch_sel;
wire [3:0]  ddr3_wr_done;
wire [3:0]  rd_fifo_ddr3_data_en;
wire        user_wr_satisfy;
wire [31:0] wr_start_addr_A;//写起始地址
wire [31:0] wr_start_addr_B;
wire [31:0] wr_start_addr_C;
wire [31:0] wr_start_addr_D;

wire [31:0] wr_over_addr_A;//写结束地址
wire [31:0] wr_over_addr_B;
wire [31:0] wr_over_addr_C;
wire [31:0] wr_over_addr_D;

wire        read_ddr_en;//读DDR3数据开始信号（转换时钟域前）
wire        read_ddr_start;//读DDR3数据开始信号（转换时钟域后）

wire        read_ddr_done;//读DDR3数据完成信号（转换时钟域前）
//---连续数据--------------------
wire [31:0] series_data_wr_data;
wire        series_data_wr_en;
wire [ 9:0] series_data_wr_addr; 
//-----默认参数------------------------------------------------
parameter COMPRESS_POINT = 16'd32;//默认压缩点数

parameter DDR_DEFAULT_START_ADDR_A = 32'h8040_0000;
parameter DDR_DEFAULT_START_ADDR_B = 32'h8830_0000;
parameter DDR_DEFAULT_START_ADDR_C = 32'h9020_0000;
parameter DDR_DEFAULT_START_ADDR_D = 32'h9810_0000;

wire [31:0]  DDR_DEFAULT_OVER_ADDR_A;
wire [31:0]  DDR_DEFAULT_OVER_ADDR_B;
wire [31:0]  DDR_DEFAULT_OVER_ADDR_C;
wire [31:0]  DDR_DEFAULT_OVER_ADDR_D;

assign DDR_DEFAULT_OVER_ADDR_A = 32'h8830_0000 - {15'h0,series_comp_point_A,1'b0} + 32'h8;
assign DDR_DEFAULT_OVER_ADDR_B = 32'h9020_0000 - {15'h0,series_comp_point_B,1'b0} + 32'h8;
assign DDR_DEFAULT_OVER_ADDR_C = 32'h9810_0000 - {15'h0,series_comp_point_C,1'b0} + 32'h8;
assign DDR_DEFAULT_OVER_ADDR_D = 32'hA000_0000 - {15'h0,series_comp_point_D,1'b0} + 32'h8;
//--------调试设置--------------------------
wire [15:0] din;
wire        wr_en;
wire        ram_rd_en_up;
wire        ddr3_wr_en_up;
wire        ddr3_rd_en_up;


wire [63:0] time_code;
//-----模块例化------------------------------------------------------------------------
PLL_ip PLL_ip_inst(
                    // Clock out ports
                    .clk_out1(clk_ad_out),     // output clk_out1
                    .clk_out2(clk_100M),     // output clk_out2
                    .clk_out3(clk_ddr3_ref),     // output clk_out3
                    .clk_out4(clk_ddr3_sys),     // output clk_out4
                    .clk_out5(eth_ref_clk),     // output clk_out4
                    // Status and control signals
                    .locked(rst_n),       // output locked
                    // Clock in ports
                    .clk_in1(clk_in)     // input clk_in1
                  ); 
OBUFDS #(.IOSTANDARD("LVDS_25"), // Specify the output I/O standard
         .SLEW("SLOW")           // Specify the output slew rate
          ) 
      OBUFDS_ad_clk_inst(
                         .O(ad_clk_out_p),     // Diff_p output (connect directly to top-level port)
                         .OB(ad_clk_out_n),   // Diff_n output (connect directly to top-level port)
                         .I(clk_ad_out)      // Buffer input 
                       );

system_rstn system_rstn_inst(
                                .clk1(clk_100M),
                                .clk2(ddr3_clk),
                                .rst_n(rst_n),
                                
                                .system_ctrl_par(wreg_system_ctrl),//input [7:0] 
                                .system_ctrl_par_val(wreg_system_ctrl_valid),//
//                                .system_ctrl_par(wreg_series_ctrl),//input [7:0] 
//                                .system_ctrl_par_val(wreg_series_ctrl_valid),//
                                
                                .sys_rstn1(sys_rstn1),
                                .sys_rstn2(sys_rstn2)
                                );
par_updata par_updata_inst(
                            .clk(clk_100M),
                            .rst_n(sys_rstn1),
                            
                            .default_comp_point(COMPRESS_POINT),//input [15:0] 

                            .DDR_DEFAULT_START_ADDR_A(DDR_DEFAULT_START_ADDR_A),//input [31:0]  
                            .DDR_DEFAULT_START_ADDR_B(DDR_DEFAULT_START_ADDR_B),
                            .DDR_DEFAULT_START_ADDR_C(DDR_DEFAULT_START_ADDR_C),
                            .DDR_DEFAULT_START_ADDR_D(DDR_DEFAULT_START_ADDR_D),
                            .DDR_DEFAULT_OVER_ADDR_A(DDR_DEFAULT_OVER_ADDR_A),
                            .DDR_DEFAULT_OVER_ADDR_B(DDR_DEFAULT_OVER_ADDR_B),
                            .DDR_DEFAULT_OVER_ADDR_C(DDR_DEFAULT_OVER_ADDR_C),
                            .DDR_DEFAULT_OVER_ADDR_D(DDR_DEFAULT_OVER_ADDR_D), 
                            
                            .ch_num_par(wreg_system_ch_sel),//当前通道号input [15:0]  
                            .ch_num_par_val(wreg_system_ch_sel_valid),//input         
                            
                            .cal_zero_par(wreg_ch_zero_cal),//校零参数 input [15:0]  
                            .cal_zero_par_val(wreg_ch_zero_cal_valid), //下发校零有效 input         
                            
                            .ch_sample_par(wreg_ch_sample_rate),//通道抽样参数 input [15:0]  
                            .ch_sample_par_val(wreg_ch_sample_rate_valid), //input         
                            
                            .series_comp_point_par(wreg_series_comp_num),//压缩点数 input [15:0]  
                            .series_comp_point_par_val(wreg_series_comp_num_valid),//input         
                            
                            .series_comp_ratio_par(wreg_series_comp_ratio),//压缩比参数 input [15:0]  
                            .series_comp_ratio_par_val(wreg_series_comp_ratio_valid),//input         
                            
                            .series_data_type_par(wreg_series_data_type),//采集的数据类型 input [ 7:0]  
                            .series_data_type_par_val(wreg_series_data_type_valid),//input         
                            
                            .series_sample_period(wreg_series_sample_cycle),//input [7:0]   
                            .series_sample_period_val(wreg_series_sample_cycle_valid),
                            
                            .series_ctrl_order(wreg_series_ctrl),//连续数据控制input [7:0]   
                            .series_ctrl_order_val(wreg_series_ctrl_valid),

                            
                            .ddr_ctrl_par(wreg_ddr_ctrl),// input [7:0]   
                            .ddr_ctrl_par_val(wreg_ddr_ctrl_valid),  //input   
//                            .ddr_ctrl_par(wreg_series_ctrl),// input [7:0]   
//                            .ddr_ctrl_par_val(wreg_series_ctrl_valid),  //input   
                            .ddr_wr_start_addr(wreg_series_start_ddraddr),//DDR写起始地址input [31:0]  
                            .ddr_wr_start_addr_val(wreg_series_start_ddraddr_valid),
                            .ddr_wr_over_addr(wreg_series_stop_ddraddr),//DDR写结束地址
                            .ddr_wr_over_addr_val(wreg_series_stop_ddraddr_valid),           
                            
                            .start_gather_in(),//模块输入
                            .stop_gather_in(),            
                            .cal_zero_A(cal_zero_par_A),//output reg [15:0] 
                            .cal_zero_B(cal_zero_par_B),//output reg [15:0] 
                            .cal_zero_C(cal_zero_par_C),//output reg [15:0] 
                            .cal_zero_D(cal_zero_par_D),//output reg [15:0] 
                            
                            .ch_sample_A(ch_sample_par_A),//output reg [15:0] 
                            .ch_sample_B(ch_sample_par_B),//output reg [15:0] 
                            .ch_sample_C(ch_sample_par_C),//output reg [15:0] 
                            .ch_sample_D(ch_sample_par_D),//output reg [15:0] 
                            
                            .series_comp_point_A(series_comp_point_A),//output reg [15:0] 
                            .series_comp_point_B(series_comp_point_B),//output reg [15:0] 
                            .series_comp_point_C(series_comp_point_C),//output reg [15:0] 
                            .series_comp_point_D(series_comp_point_D),//output reg [15:0] 
                            
                            .series_comp_ratio_A(series_comp_ratio_A),//output reg [15:0] 
                            .series_comp_ratio_B(series_comp_ratio_B),//output reg [15:0] 
                            .series_comp_ratio_C(series_comp_ratio_C),//output reg [15:0] 
                            .series_comp_ratio_D(series_comp_ratio_D),//output reg [15:0] 
                            
                            .series_data_type_A(series_data_type_A),//output reg [ 7:0] 
                            .series_data_type_B(series_data_type_B),//output reg [ 7:0] 
                            .series_data_type_C(series_data_type_C),//output reg [ 7:0] 
                            .series_data_type_D(series_data_type_D), //output reg [ 7:0]
                             
                            .series_sample_period_A(series_sample_period_A),//output reg [ 7:0] 
                            .series_sample_period_B(series_sample_period_B),
                            .series_sample_period_C(series_sample_period_C),
                            .series_sample_period_D(series_sample_period_D),
                            
                            .start_gather_out(),//output wire       
                            .stop_gather_out(),//送到触发模块 output wire       
                            .start_gather(series_start_gather),//output reg [ 3:0] 
                            .stop_gather(series_stop_gather),//停止采集 output reg [ 3:0] 
                            .continuous_gather(series_continuous_gather),//连续采集 output reg [ 3:0] 
                            .signal_gather(series_signal_gather),//单词采集 output reg [ 3:0] 
                            .period_gather(series_period_gather),//周期性采集 output reg [ 3:0] 
                                                
                            
                            .ddr3_wr_start_addr_A(ddr3_wr_start_addr_A),//output reg [31:0] 
                            .ddr3_wr_start_addr_B(ddr3_wr_start_addr_B),
                            .ddr3_wr_start_addr_C(ddr3_wr_start_addr_C),
                            .ddr3_wr_start_addr_D(ddr3_wr_start_addr_D),
                            
                            .ddr3_wr_over_addr_A(ddr3_wr_over_addr_A),
                            .ddr3_wr_over_addr_B(ddr3_wr_over_addr_B),
                            .ddr3_wr_over_addr_C(ddr3_wr_over_addr_C),
                            .ddr3_wr_over_addr_D(ddr3_wr_over_addr_D),
                            .read_ddr_en(read_ddr_en)
                            
                           );
AD_deal_block AD_deal_block_inst(
                                   .clk(clk_100M),
                                   .rst_n(sys_rstn1),
                                   
                                   .DCO_p(DCO_p),//input 
                                   .DCO_n(DCO_n),//input 
                                   .FCO_p(FCO_p),//input 
                                   .FCO_n(FCO_n),//input 
                                   .D0_A_p(D0_A_p),//input 
                                   .D0_A_n(D0_A_n),//input
                                   .D1_A_p(D1_A_p),//input
                                   .D1_A_n(D1_A_n),//input
                                   .D0_B_p(D0_B_p),//input
                                   .D0_B_n(D0_B_n),//input
                                   .D1_B_p(D1_B_p),//input
                                   .D1_B_n(D1_B_n),//input
                                   .D0_C_p(D0_C_p),//input 
                                   .D0_C_n(D0_C_n),//input
                                   .D1_C_p(D1_C_p),//input
                                   .D1_C_n(D1_C_n),//input
                                   .D0_D_p(D0_D_p),//input
                                   .D0_D_n(D0_D_n),//input
                                   .D1_D_p(D1_D_p),//input
                                   .D1_D_n(D1_D_n),//input
                                   
                                   .cal_zero_par_A(cal_zero_par_A),//A通道校零参数input [15:0] 
                                   .cal_zero_par_B(cal_zero_par_B),//B通道校零参数input [15:0] 
                                   .cal_zero_par_C(cal_zero_par_C),//C通道校零参数input [15:0] 
                                   .cal_zero_par_D(cal_zero_par_D),//D通道校零参数input [15:0] 
                                   
                                   .ch_sample_par_A(ch_sample_par_A),//A通道抽样参数input [15:0] 
                                   .ch_sample_par_B(ch_sample_par_B),//B通道抽样参数input [15:0] 
                                   .ch_sample_par_C(ch_sample_par_C),//C通道抽样参数input [15:0] 
                                   .ch_sample_par_D(ch_sample_par_D),//D通道抽样参数input [15:0] 
                                   
                                   .data_out_A(AD_data_A),//output wire [15:0] 
                                   .data_out_B(AD_data_B),//output wire [15:0] 
                                   .data_out_C(AD_data_C),//output wire [15:0] 
                                   .data_out_D(AD_data_D),//output wire [15:0] 
                                   .data_out_val(AD_data_val)//output wire [ 3:0] 
                                );
                                                                          
series_data_gather_block series_data_gather_block(
                                                    .clk(clk_100M),
                                                    .rst_n(sys_rstn1),
                                                    
                                                    .start_mode(wreg_series_startmode),
                                                    .start_mode_val(wreg_series_startmode_valid),

                                                    
                                                    .data_in_A(AD_data_A),//input [15:0] 
                                                    .data_in_B(AD_data_B),//input [15:0] 
                                                    .data_in_C(AD_data_C),//input [15:0] 
                                                    .data_in_D(AD_data_D),//input [15:0] 
                                                    .data_in_val(AD_data_val),//input [ 3:0] 
                                                    
                                                    .time_code(time_code),//input [63:0] 
                                                    .series_comp_point_A(series_comp_point_A),//A通道压缩点数参数input [15:0] 
                                                    .series_comp_point_B(series_comp_point_B),//B通道压缩点数参数input [15:0] 
                                                    .series_comp_point_C(series_comp_point_C),//C通道压缩点数参数input [15:0] 
                                                    .series_comp_point_D(series_comp_point_D),//D通道压缩点数参数input [15:0] 
                                                    
                                                    .series_comp_ratio_A(series_comp_ratio_A),//A通道压缩比数参数input [15:0] 
                                                    .series_comp_ratio_B(series_comp_ratio_B),//B通道压缩比数参数input [15:0] 
                                                    .series_comp_ratio_C(series_comp_ratio_C),//C通道压缩比数参数input [15:0] 
                                                    .series_comp_ratio_D(series_comp_ratio_D),//D通道压缩比数参数input [15:0] 
                                                    
                                                    .series_data_type_A(series_data_type_A),//A通道数据类型参数input [ 7:0] 
                                                    .series_data_type_B(series_data_type_B),//B通道数据类型参数input [ 7:0] 
                                                    .series_data_type_C(series_data_type_C),//C通道数据类型参数input [ 7:0] 
                                                    .series_data_type_D(series_data_type_D),//D通道数据类型参数input [ 7:0] 
                                                    
                                                    .series_sample_period_A(series_sample_period_A),//output reg [ 7:0] 
                                                    .series_sample_period_B(series_sample_period_B),
                                                    .series_sample_period_C(series_sample_period_C),
                                                    .series_sample_period_D(series_sample_period_D),
                                                    
//                                                    .start_gather(series_start_gather),//启动采集input          
                                                    .triger_gather(series_triger_gather),//触发采集input            
                                                    
                                                    .start_gather(series_start_gather),//output reg [ 3:0] 
                                                    .stop_gather(series_stop_gather),//停止采集 output reg [ 3:0] 
                                                    .continuous_gather(series_continuous_gather),//连续采集 output reg [ 3:0] 
                                                    .signal_gather(series_signal_gather),//单词采集 output reg [ 3:0] 
                                                    .period_gather(series_period_gather),//周期性采集 output reg [ 3:0] 
                                                    
                                                    .series_time_code_A(series_time_code_A),//output wire [31:0] 
                                                    .series_time_code_B(series_time_code_B),//output wire [31:0] 
                                                    .series_time_code_C(series_time_code_C),//output wire [31:0] 
                                                    .series_time_code_D(series_time_code_D),//output wire [31:0] 
                                                    .series_time_code_val(series_time_code_val),//output wire [ 3:0] 
                                                    .series_data_A(series_data_A),//output wire [31:0] 
                                                    .series_data_B(series_data_B),//output wire [31:0] 
                                                    .series_data_C(series_data_C),//output wire [31:0] 
                                                    .series_data_D(series_data_D),//output wire [31:0] 
                                                    .series_data_val(series_data_val)//output wire [ 3:0] 
                                                   );
FIFO_series_block FIFO_series_block(
                                     .wr_clk(clk_100M),
                                     .rd_clk(ddr3_clk),
                                     .rst_n(sys_rstn1),
                                     
                                     .series_data_A(series_data_A),//input [15:0] 
                                     .series_data_B(series_data_B),//input [15:0] 
                                     .series_data_C(series_data_C),//input [15:0] 
                                     .series_data_D(series_data_D),//input [15:0] 
                                     .series_data_val(series_data_val),//input [ 3:0] 
//                                     .series_data_A(din),//input [15:0]                                     .series_data_A(series_data_A),//input [15:0] 
//                                     .series_data_B(),//input [15:0] 
//                                     .series_data_C(),//input [15:0] 
//                                     .series_data_D(),//input [15:0] 
//                                     .series_data_val({3'b0,wr_en}),//input [ 3:0] 
                                     
                                     .time_code_A(series_time_code_A),//input [31:0] 
                                     .time_code_B(series_time_code_B),//input [31:0] 
                                     .time_code_C(series_time_code_C),//input [31:0] 
                                     .time_code_D(series_time_code_D),//input [31:0] 
                                     .time_code_val(series_time_code_val),//input [ 3:0] 
                                     
                                     .fifo_ddr3_sgl_A(fifo_ddr3_sgl_A),//output [10:0] 
                                     .fifo_ddr3_sgl_B(fifo_ddr3_sgl_B),//output [10:0] 
                                     .fifo_ddr3_sgl_C(fifo_ddr3_sgl_C),//output [10:0] 
                                     .fifo_ddr3_sgl_D(fifo_ddr3_sgl_D),//output [10:0] 
                                     
                                     .fifo_rd_ddr3_data_A(fifo_rd_ddr3_data_A),//output [31:0] 
                                     .fifo_rd_ddr3_data_B(fifo_rd_ddr3_data_B),//output [31:0] 
                                     .fifo_rd_ddr3_data_C(fifo_rd_ddr3_data_C),//output [31:0] 
                                     .fifo_rd_ddr3_data_D(fifo_rd_ddr3_data_D),//output [31:0] 
                                     .fifo_rd_ddr3_data_en(fifo_rd_ddr3_data_en),//input [3:0] 
                                     
                                     .fifo_rd_time_code_A(fifo_rd_time_code_A),//output [31:0] 
                                     .fifo_rd_time_code_B(fifo_rd_time_code_B),//output [31:0] 
                                     .fifo_rd_time_code_C(fifo_rd_time_code_C),//output [31:0] 
                                     .fifo_rd_time_code_D(fifo_rd_time_code_D),//output [31:0] 
                                     .fifo_rd_time_code_en(fifo_rd_time_code_en),//input [31:0] 
                                     .error(fifo_full_error)//output [31:0] 
                                    );                                                   
clk_domain_cov clk_domain_cov_inst(
                                    .clk(ddr3_clk),
                                    .rst_n(sys_rstn2),
                                    
                                    .series_comp_point_A(series_comp_point_A),//压缩点数
                                    .series_comp_point_B(series_comp_point_B),//压缩点数
                                    .series_comp_point_C(series_comp_point_C),//压缩点数
                                    .series_comp_point_D(series_comp_point_D),//压缩点数
                                    .series_data_type_A(series_data_type_A),//数据
                                    .series_data_type_B(series_data_type_B),
                                    .series_data_type_C(series_data_type_C),
                                    .series_data_type_D(series_data_type_D),
                                    .ddr3_wr_start_addr_A(ddr3_wr_start_addr_A),//output reg [31:0] 
                                    .ddr3_wr_start_addr_B(ddr3_wr_start_addr_B),
                                    .ddr3_wr_start_addr_C(ddr3_wr_start_addr_C),
                                    .ddr3_wr_start_addr_D(ddr3_wr_start_addr_D),
                                    
                                    .ddr3_wr_over_addr_A(ddr3_wr_over_addr_A),
                                    .ddr3_wr_over_addr_B(ddr3_wr_over_addr_B),
                                    .ddr3_wr_over_addr_C(ddr3_wr_over_addr_C),
                                    .ddr3_wr_over_addr_D(ddr3_wr_over_addr_D),
                                    
                                    .read_ddr_en(read_ddr_en),
                                    .read_ddr_done(read_ddr_done),
                                    .series_comp_point_A_out(series_comp_point_A_r),//output wire [15:0] 
                                    .series_comp_point_B_out(series_comp_point_B_r),
                                    .series_comp_point_C_out(series_comp_point_C_r),
                                    .series_comp_point_D_out(series_comp_point_D_r),
                                    .series_data_type_A_out(series_data_type_A_r),//output wire [ 7:0] 
                                    .series_data_type_B_out(series_data_type_B_r),
                                    .series_data_type_C_out(series_data_type_C_r),
                                    .series_data_type_D_out(series_data_type_D_r),
                                    .ddr3_wr_start_addr_A_out(ddr3_wr_start_addr_A_r),
                                    .ddr3_wr_start_addr_B_out(ddr3_wr_start_addr_B_r),
                                    .ddr3_wr_start_addr_C_out(ddr3_wr_start_addr_C_r),
                                    .ddr3_wr_start_addr_D_out(ddr3_wr_start_addr_D_r),
                                    
                                    .ddr3_wr_over_addr_A_out(ddr3_wr_over_addr_A_r),
                                    .ddr3_wr_over_addr_B_out(ddr3_wr_over_addr_B_r),
                                    .ddr3_wr_over_addr_C_out(ddr3_wr_over_addr_C_r),
                                    .ddr3_wr_over_addr_D_out(ddr3_wr_over_addr_D_r),
                                    .read_ddr_start(read_ddr_start),
                                    .read_ddr_done_state(rreg_ddr_status[0])
                                    );

ddr3_block ddr3_block_inst(
                            .clk(ddr3_clk),
                            .rst_n(sys_rstn2),
                            
                            .series_comp_point_A(series_comp_point_A_r),//压缩点数input [15:0] 
                            .series_comp_point_B(series_comp_point_B_r),//压缩点数input [15:0] 
                            .series_comp_point_C(series_comp_point_C_r),//压缩点数input [15:0] 
                            .series_comp_point_D(series_comp_point_D_r),//压缩点数input [15:0] 
                           
                            .series_data_type_A(series_data_type_A_r),//数据类型input [7:0]  
                            .series_data_type_B(series_data_type_B_r),//input [7:0]  
                            .series_data_type_C(series_data_type_C_r),//input [7:0]  
                            .series_data_type_D(series_data_type_D_r), //input [7:0] 
                             
                            .wr_start_addr_par_A(ddr3_wr_start_addr_A_r),//ddr写起始地址input [31:0] 
                            .wr_start_addr_par_B(ddr3_wr_start_addr_B_r),
                            .wr_start_addr_par_C(ddr3_wr_start_addr_C_r),
                            .wr_start_addr_par_D(ddr3_wr_start_addr_D_r),
                            
                            .wr_over_addr_par_A(ddr3_wr_over_addr_A_r),//ddr写结束地址
                            .wr_over_addr_par_B(ddr3_wr_over_addr_B_r),
                            .wr_over_addr_par_C(ddr3_wr_over_addr_C_r),
                            .wr_over_addr_par_D(ddr3_wr_over_addr_D_r),
                            
                            .fifo_ddr3_sgl_A(fifo_ddr3_sgl_A),//output [10:0] 
                            .fifo_ddr3_sgl_B(fifo_ddr3_sgl_B),//output [10:0] 
                            .fifo_ddr3_sgl_C(fifo_ddr3_sgl_C),//output [10:0] 
                            .fifo_ddr3_sgl_D(fifo_ddr3_sgl_D),//output [10:0] 
                            
                            .fifo_rd_data_A(fifo_rd_ddr3_data_A),//input [31:0] 
                            .fifo_rd_data_B(fifo_rd_ddr3_data_B),//input [31:0] 
                            .fifo_rd_data_C(fifo_rd_ddr3_data_C),//input [31:0] 
                            .fifo_rd_data_D(fifo_rd_ddr3_data_D),//input [31:0] 
                            
                            .fifo_time_code_A(fifo_rd_time_code_A),//input [31:0] 
                            .fifo_time_code_B(fifo_rd_time_code_B),//input [31:0] 
                            .fifo_time_code_C(fifo_rd_time_code_C),//input [31:0] 
                            .fifo_time_code_D(fifo_rd_time_code_D),//input [31:0]                         
                            
                            .user_rd_data_en(user_rd_data_en),//input              
                            .txn_done(txn_done[0]),//写完成input              
                            .user_wr_en(user_wr_en), //写开始命令output  reg           
                            .user_wr_satisfy(user_wr_satisfy), //写数据满足 output  reg               
                            .user_wr_base_addr(user_wr_base_addr),//output  reg [31:0] 
                            .user_wr_data(user_wr_data),//output  reg [31:0]   
                           
                            .user_wr_len(user_wr_len),//output  reg [15:0] 
                            .user_wr_burst_len(user_wr_burst_len),//output  wire [7:0] 
                            .fifo_rd_ddr3_data_en(fifo_rd_ddr3_data_en),//output  reg [ 3:0] 
                            .fifo_rd_time_code_en(fifo_rd_time_code_en),//output  reg [ 3:0] 
                            .wr_start_addr_A(wr_start_addr_A),//output  reg [31:0] 
                            .wr_start_addr_B(wr_start_addr_B),
                            .wr_start_addr_C(wr_start_addr_C),
                            .wr_start_addr_D(wr_start_addr_D),
                            
                            .wr_over_addr_A(wr_over_addr_A),//output  reg [31:0] 
                            .wr_over_addr_B(wr_over_addr_B),
                            .wr_over_addr_C(wr_over_addr_C),
                            .wr_over_addr_D(wr_over_addr_D)  
                           );

sub_BD_wrapper sub_BD_inst(
                           .DDR3_addr(ddr3_addr),
                           .DDR3_ba(ddr3_ba),
                           .DDR3_cas_n(ddr3_cas_n),
                           .DDR3_ck_n(ddr3_ck_n),
                           .DDR3_ck_p(ddr3_ck_p),
                           .DDR3_cke(ddr3_cke),
                           .DDR3_dm(ddr3_dm),
                           .DDR3_dq(ddr3_dq),
                           .DDR3_dqs_n(ddr3_dqs_n),
                           .DDR3_dqs_p(ddr3_dqs_p),
                           .DDR3_odt(ddr3_odt),
                           .DDR3_ras_n(ddr3_ras_n),
                           .DDR3_reset_n(ddr3_reset_n),
                           .DDR3_we_n(ddr3_we_n),
                           .clk_ref_in(clk_ddr3_ref),
                           .ddr3_clk(ddr3_clk),
                           .device_temp_i(device_temp_i),
                           .master_axi_error(),
                           .master_axi_init_txn(),
                           .master_axi_txn_done(txn_done),
                           .master_rd_addr(master_rd_addr),
                           .master_wr_addr(master_wr_addr),
                           .mdio_rtl_mdc(mdio_rtl_mdc),
                           .mdio_rtl_mdio_io(mdio_rtl_mdio_io),
                           .mii_rtl_col(mii_rtl_col),
                           .mii_rtl_crs(mii_rtl_crs),
                           .mii_rtl_rst_n(mii_rtl_rst_n),
                           .mii_rtl_rx_clk(mii_rtl_rx_clk),
                           .mii_rtl_rx_dv(mii_rtl_rx_dv),
                           .mii_rtl_rx_er(mii_rtl_rx_er),
                           .mii_rtl_rxd(mii_rtl_rxd),
                           .mii_rtl_tx_clk(mii_rtl_tx_clk),
                           .mii_rtl_tx_en(mii_rtl_tx_en),
                           .mii_rtl_txd(mii_rtl_txd),
                           .sys_clk_in(clk_ddr3_sys),
                           .sys_rstn(1'b0),
                           .uart_rtl_rxd(uart_rtl_rxd),
                           .uart_rtl_txd(uart_rtl_txd),
                           .user_rd_burst_len(user_rd_burst_len),
                           .user_rd_interface_read_data_out(user_read_data_out),
                           .user_rd_interface_read_data_val(user_read_data_val),
                           .user_rd_interface_user_rd_base_addr(user_rd_base_addr),
                           .user_rd_interface_user_rd_en(user_rd_en),
                           .user_rd_interface_user_rd_len(user_rd_len),
                           .user_wr_burst_len(user_wr_burst_len),
                           .user_wr_interface_user_rd_data_en(user_rd_data_en),
                           .user_wr_interface_user_wr_base_addr(user_wr_base_addr),
                           .user_wr_interface_user_wr_data_in(user_wr_data),
                           .user_wr_interface_user_wr_en(user_wr_en),
                           .user_wr_interface_user_wr_len(user_wr_len),
                           .user_wr_interface_user_wr_satisfy(user_wr_satisfy)

                           );
 
rd_ddr3_ctrl rd_ddr3_ctrl_inst(
                                .clk(ddr3_clk),
                                .rst_n(sys_rstn2),
                                
                                .read_start(read_ddr_start),
                                .txd_done(txn_done[1]),
                                .rd_start_addr(),//input [31:0]     
                                .series_comp_point_par(series_comp_point_A_r),//压缩点数 input [15:0]     
                                
                                .user_read_data(user_read_data_out),//input [31:0]     
                                .user_read_data_val(user_read_data_val),//input            
                                //output
                                .user_rd_en(user_rd_en),//output reg        
                                .user_rd_len(user_rd_len),//output reg [15:0] 
                                .user_rd_burst_len(user_rd_burst_len),//output wire[ 7:0] 
                                .user_rd_base_addr(user_rd_base_addr),//output reg [31:0] 
                                .read_done_state(read_ddr_done),//output reg 
                                .ram_we_en(series_data_wr_en),
                                .ram_wr_data(series_data_wr_data),
                                .ram_wr_addr(series_data_wr_addr)
                               ); 

//---调试模块-----------------------------------------------
test_vio test_vio_inst(
                         .clk_100M(clk_100M),
                         .ddr3_clk(ddr3_clk),
                         .rst_n(rst_n),
                         
                         .series_comp_point_A(series_comp_point_A),
                         .din(din),
                         .wr_en(wr_en),
                         .ram_rd_en_up(ram_rd_en_up),
                         .ddr3_wr_en_up(ddr3_wr_en_up),
                         .ddr3_rd_en_up(ddr3_rd_en_up),
                         .triger_gather(series_triger_gather),
                         .start_gather(),
                         .time_code(time_code)
                       );
wire [7 : 0] isa_getdata;
//input

wire [7 : 0]    rreg_system_debug1;
wire            rreg_system_debug1_valid;
wire [7 : 0]    rreg_system_debug2;
wire            rreg_system_debug2_valid;
wire [7 : 0]    rreg_system_debug3;
wire            rreg_system_debug3_valid;
wire [7 : 0]    rreg_system_debug4;
wire            rreg_system_debug4_valid;
wire [7 : 0]    rreg_system_status;
wire            rreg_system_status_valid;
wire [47 : 0]   rreg_system_version;
wire            rreg_system_version_valid;
wire [63 : 0]   rreg_system_rtctime;
wire            rreg_system_rtctime_valid;
wire [15 : 0]   rreg_system_batteryvalue;
wire            rreg_system_batteryvalue_valid;
wire [7 : 0]    rreg_system_syncstatus;
wire            rreg_system_syncstatus_valid;
wire [31 : 0]   rreg_system_syncfrq;
wire            rreg_system_syncfrq_valid;

wire [7 : 0]    rreg_mem_status;
wire            rreg_mem_status_valid;
wire            rreg_mem_data_wr_en;
wire [15 : 0]   rreg_mem_data_wr_addr;
wire [7 : 0]    rreg_mem_data_wr_data;
wire            wreg_mem_rd_en;


//wire [7 : 0]    rreg_ddr_status;
//wire            rreg_ddr_status_valid;
wire            rreg_ddr_data_wr_en;
wire [15 : 0]   rreg_ddr_data_wr_addr;
wire [31 : 0]   rreg_ddr_data_wr_data;

wire            wreg_out_time_rd_en;//input

wire            wreg_ch_filter_rd_en;

wire [7 : 0]    rreg_series_status;
wire            rreg_series_status_valid;
wire [63 : 0]   rreg_series_starttime;
wire            rreg_series_starttime_valid;
wire [63 : 0]   rreg_series_stoptime;
wire            rreg_series_stoptime_valid;
wire [79 : 0]   rreg_series_maxdata;
wire            rreg_series_maxdata_valid;
wire            rreg_series_data_wr_en;
wire [15 : 0]   rreg_series_data_wr_addr;
wire [31 : 0]   rreg_series_data_wr_data;
wire [63 : 0]   rreg_series_trigger_starttime;
wire            rreg_series_trigger_starttime_valid;
wire [63 : 0]   rreg_series_trigger_stoptime;
wire            rreg_series_trigger_stoptime_valid;



//output-------------------------------------------------------
//wire [7 : 0]      wreg_system_ctrl;
//wire              wreg_system_ctrl_valid;
wire [7 : 0]        wreg_system_sel_rtc;
wire                wreg_system_sel_rtc_valid;
wire [63: 0]        wreg_system_set_rtctime;
wire                wreg_system_set_rtctime_valid;
wire [15 : 0]        wreg_system_sync_minfrq;
wire                wreg_system_sync_minfrq_valid;
wire [15 : 0]       wreg_system_sync_max;
wire                wreg_system_sync_max_valid;
wire [7 : 0]        wreg_system_sync_sel;
wire                wreg_system_sync_sel_valid;
//wire [7 : 0]    wreg_system_ch_sel;
//wire            wreg_system_ch_sel_valid;

wire [7 : 0]        wreg_mem_ctrl;
wire                wreg_mem_ctrl_valid;
wire [15 : 0]       wreg_mem_addr;
wire                wreg_mem_addr_valid;
wire [7 : 0]        wreg_mem_len;
wire                wreg_mem_len_valid;
wire [7 : 0]        wreg_mem_rd_data;
wire [4 : 0]        wreg_mem_rd_len;

//wire [7 : 0]      wreg_ddr_ctrl;
//wire              wreg_ddr_ctrl_valid;
wire [31 : 0]       wreg_ddr_addr;
wire                wreg_ddr_addr_valid;
wire [31 : 0]       wreg_ddr_len;
wire                wreg_ddr_len_valid;
wire [7 : 0]        wreg_out_ctrl;
wire                wreg_out_ctrl_valid;
wire [7 : 0]        wreg_out_sel;
wire                wreg_out_sel_valid;
wire [7 : 0]        wreg_out_level;
wire                wreg_out_level_valid;
//wire [7 : 0]        wreg_out_startmode;
//wire                wreg_out_startmode_valid;
wire [63 : 0]       wreg_out_start_targettime;
wire                wreg_out_start_targettime_valid;
wire [31 : 0]       wreg_out_start_subtime;
wire                wreg_out_start_subtime_valid;
wire [31 : 0]       wreg_out_start_subnum;
wire                wreg_out_start_subnum_valid;
wire [7 : 0]        wreg_out_start_subcycle;
wire                wreg_out_start_subcycle_valid;
wire [31 : 0]       wreg_out_start_trigmode1;
wire                wreg_out_start_trigmode1_valid;
wire [31 : 0]       wreg_out_start_trigmode2;
wire                wreg_out_start_trigmode2_valid;
wire [31 : 0]       wreg_out_start_trigmode3;
wire                wreg_out_start_trigmode3_valid;
wire [31 : 0]       wreg_out_start_trigmode4;
wire                wreg_out_start_trigmode4_valid;
wire [15 : 0]       wreg_out_trig_threshold_p;
wire                wreg_out_trig_threshold_p_valid;
wire [15 : 0]       wreg_out_trig_threshold_n;
wire                wreg_out_trig_threshold_n_valid;
wire [15 : 0]       wreg_out_trig_risetime;
wire                wreg_out_trig_risetime_valid;
wire [15 : 0]       wreg_out_trig_droptime;
wire                wreg_out_trig_droptime_valid;
wire [15 : 0]       wreg_out_trig_pulsewidth;
wire                wreg_out_trig_pulsewidth_valid;
wire [7 : 0]        wreg_out_trig_riseratio;
wire                wreg_out_trig_riseratio_valid;
wire [7 : 0]        wreg_out_trig_dropratio;
wire                wreg_out_trig_dropratio_valid;
wire [15 : 0]       wreg_out_trig_rmsvalue;
wire                wreg_out_trig_rmsvalue_valid;

wire [7 : 0]        wreg_out_time_rd_data;
wire [4 : 0]        wreg_out_time_rd_len;
//wire [15 : 0]       wreg_ch_zero_cal;
//wire                wreg_ch_zero_cal_valid;
//wire [15 : 0]       wreg_ch_sample_rate;
//wire                wreg_ch_sample_rate_valid;
wire [7 : 0]        wreg_ch_sign_handle;
wire                wreg_ch_sign_handle_valid;
wire [7 : 0]        wreg_ch_main_amp;
wire                wreg_ch_main_amp_valid;
wire [7 : 0]        wreg_ch_pre_amp;
wire                wreg_ch_pre_amp_valid;
wire [7 : 0]        wreg_ch_v_amp;
wire                wreg_ch_v_amp_valid;
wire [7 : 0]        wreg_ch_i_amp;
wire                wreg_ch_i_amp_valid;
wire [7 : 0]        wreg_ch_noise_comp;
wire                wreg_ch_noise_comp_valid;
wire [15 : 0]       wreg_ch_noise_amp_cof;
wire                wreg_ch_noise_amp_cof_valid;
wire [7 : 0]        wreg_ch_noise_delay;
wire                wreg_ch_noise_delay_valid;
wire [63 : 0]       wreg_ch_start_targettime;
wire                wreg_ch_start_targettime_valid;
wire [31 : 0]       wreg_ch_start_sustime;
wire                wreg_ch_start_sustime_valid;
wire [31 : 0]       wreg_ch_start_susnum;
wire                wreg_ch_start_susnum_valid;
wire [7 : 0]        wreg_ch_start_suscycle;
wire                wreg_ch_start_suscycle_valid;
wire [31 : 0]       wreg_ch_stop_sustime;
wire                wreg_ch_stop_sustime_valid;
wire [31 : 0]       wreg_ch_stop_susnum;
wire                wreg_ch_stop_susnum_valid;
wire [7 : 0]        wreg_ch_stop_suscycle;
wire                wreg_ch_stop_suscycle_valid;
wire [15 : 0]       wreg_ch_trig_threshold_p;
wire                wreg_ch_trig_threshold_p_valid;
wire [15 : 0]       wreg_ch_trig_threshold_n;
wire                wreg_ch_trig_threshold_n_valid;
wire [15 : 0]       wreg_ch_trig_risetime;
wire                wreg_ch_trig_risetime_valid;
wire [15 : 0]       wreg_ch_trig_droptime;
wire                wreg_ch_trig_droptime_valid;
wire [15 : 0]       wreg_ch_trig_pulsewidth;
wire                wreg_ch_trig_pulsewidth_valid;
wire [7 : 0]        wreg_ch_trig_riseratio;
wire                wreg_ch_trig_riseratio_valid;
wire [7 : 0]        wreg_ch_trig_dropratio;
wire                wreg_ch_trig_dropratio_valid;
wire [15 : 0]       wreg_ch_trig_rmsvalue;
wire                wreg_ch_trig_rmsvalue_valid;

wire [7 : 0]        wreg_ch_filter_rd_data;
wire [3 : 0]        wreg_ch_filter_rd_len;

//wire [7 : 0]        wreg_series_ctrl;
//wire                wreg_series_ctrl_valid;
//wire [7 : 0]        wreg_series_data_type;
//wire                wreg_series_data_type_valid;
//wire [7 : 0]        wreg_series_sample_cycle;
//wire                wreg_series_sample_cycle_valid;
//wire [31 : 0]       wreg_series_comp_ratio;
//wire                wreg_series_comp_ratio_valid;
//wire [15 : 0]       wreg_series_comp_num;
//wire                wreg_series_comp_num_valid;
wire [31 : 0]       wreg_series_validmode_data;
wire                wreg_series_validmode_data_valid;
//wire [31 : 0]       wreg_series_start_ddraddr;
//wire                wreg_series_start_ddraddr_valid;
//wire [31 : 0]       wreg_series_stop_ddraddr;
//wire                wreg_series_stop_ddraddr_valid;
//wire [7 : 0]        wreg_series_startmode;
//wire                wreg_series_startmode_valid;
wire [31 : 0]       wreg_series_star_trigmode1;
wire                wreg_series_star_trigmode1_valid;
wire [31 : 0]       wreg_series_star_trigmode2;
wire                wreg_series_star_trigmode2_valid;
wire [31 : 0]       wreg_series_star_trigmode3;
wire                wreg_series_star_trigmode3_valid;
wire [31 : 0]       wreg_series_star_trigmode4;
wire                wreg_series_star_trigmode4_valid;
wire [7 : 0]        wreg_series_stopmode;
wire                wreg_series_stopmode_valid;
wire [31 : 0]       wreg_series_stop_trigmode1;
wire                wreg_series_stop_trigmode1_valid;
wire [31 : 0]       wreg_series_stop_trigmode2;
wire                wreg_series_stop_trigmode2_valid;
wire [31 : 0]       wreg_series_stop_trigmode3;
wire                wreg_series_stop_trigmode3_valid;
wire [31 : 0]       wreg_series_stop_trigmode4;
wire                wreg_series_stop_trigmode4_valid;
wire [63 : 0]       wreg_series_seek_startime;
wire                wreg_series_seek_startime_valid;
wire [31 : 0]       wreg_series_seek_zoom;
wire                wreg_series_seek_zoom_valid;
wire [31 : 0]       wreg_series_seek_datalen;
wire                wreg_series_seek_datalen_valid;


isa_handle_0 handle_isa(
                    .reset(rst_n),             // wire reset
                    .clk(clk_100M),            // wire clk
                    .pin_isa_cs(pin_isa_cs),                // wire pin_isa_cs
                    .pin_isa_wr(pin_isa_wr),             // wire pin_isa_wr
                    .pin_isa_rd(pin_isa_rd),            // wire pin_isa_rd
                    .pin_isa_adv(pin_isa_adv),        // wire pin_isa_adv
                    .pin_isa_data(pin_isa_data),       // inout wire [7 : 0] pin_isa_data
                    .isa_getdata(isa_getdata),                     // wire [7 : 0] isa_getdata
                    
                    .rreg_system_debug1(0),             // wire [7 : 0] rreg_system_debug1
                    .rreg_system_debug1_valid(0),       // wire rreg_system_debug1_valid
                    .rreg_system_debug2(0),              // wire [7 : 0] rreg_system_debug2
                    .rreg_system_debug2_valid(0),          // wire rreg_system_debug2_valid
                    .rreg_system_debug3(0),                // wire [7 : 0] rreg_system_debug3
                    .rreg_system_debug3_valid(0),        // wire rreg_system_debug3_valid
                    .rreg_system_debug4(0),                // wire [7 : 0] rreg_system_debug4
                    .rreg_system_debug4_valid(0),         // wire rreg_system_debug4_valid
                    .rreg_system_status(0),               // wire [7 : 0] rreg_system_status
                    .rreg_system_status_valid(0),          //  wire rreg_system_status_valid
                    .rreg_system_version(0),               // wire [47 : 0] rreg_system_version
                    .rreg_system_version_valid(0),         // wire rreg_system_version_valid
                    .rreg_system_rtctime(0),               // wire [63 : 0] rreg_system_rtctime
                    .rreg_system_rtctime_valid(0),         // wire rreg_system_rtctime_valid
                    .rreg_system_batteryvalue(0),          // wire [15 : 0] rreg_system_batteryvalue
                    .rreg_system_batteryvalue_valid(0),    // wire rreg_system_batteryvalue_valid
                    .rreg_system_syncstatus(0),               // wire [7 : 0] rreg_system_syncstatus
                    .rreg_system_syncstatus_valid(0),         // wire rreg_system_syncstatus_valid
                    .rreg_system_syncfrq(0),                  // wire [31 : 0] rreg_system_syncfrq
                    .rreg_system_syncfrq_valid(0),            // wire rreg_system_syncfrq_valid
                    
                    .wreg_system_ctrl(wreg_system_ctrl),      // wire [7 : 0] wreg_system_ctrl
                    .wreg_system_ctrl_valid(wreg_system_ctrl_valid),                  // wire wreg_system_ctrl_valid
                    .wreg_system_sel_rtc(wreg_system_sel_rtc),                        // wire [7 : 0] wreg_system_sel_rtc
                    .wreg_system_sel_rtc_valid(wreg_system_sel_rtc_valid),            // wire wreg_system_sel_rtc_valid
                    .wreg_system_set_rtctime(wreg_system_set_rtctime),                // wire [63 : 0] wreg_system_set_rtctime
                    .wreg_system_set_rtctime_valid(wreg_system_set_rtctime_valid),    // wire wreg_system_set_rtctime_valid
                    .wreg_system_sync_minfrq(wreg_system_sync_minfrq),                // wire [15 : 0] wreg_system_sync_minfrq
                    .wreg_system_sync_minfrq_valid(wreg_system_sync_minfrq_valid),    // wire wreg_system_sync_minfrq_valid
                    .wreg_system_sync_max(wreg_system_sync_max),                      // wire [15 : 0] wreg_system_sync_max
                    .wreg_system_sync_max_valid(wreg_system_sync_max_valid),          // wire wreg_system_sync_max_valid
                    .wreg_system_sync_sel(wreg_system_sync_sel),                      // wire [7 : 0] wreg_system_sync_sel
                    .wreg_system_sync_sel_valid(wreg_system_sync_sel_valid),          // wire wreg_system_sync_sel_valid
                    .wreg_system_ch_sel(wreg_system_ch_sel),                          // wire [7 : 0] wreg_system_ch_sel
                    .wreg_system_ch_sel_valid(wreg_system_ch_sel_valid),     // wire wreg_system_ch_sel_valid
                  
                    .rreg_mem_status(0),                                    // wire [7 : 0] rreg_mem_status
                    .rreg_mem_status_valid(0),                              // wire rreg_mem_status_valid
                    .rreg_mem_data_wr_en(0),                                // wire rreg_mem_data_wr_en
                    .rreg_mem_data_wr_addr(0),                              // wire [15 : 0] rreg_mem_data_wr_addr
                    .rreg_mem_data_wr_data(0),                              // wire [7 : 0] rreg_mem_data_wr_data
                   
                    .wreg_mem_rd_en(0),                              // wire wreg_mem_rd_en
                    .wreg_mem_ctrl(wreg_mem_ctrl),                              // wire [7 : 0] wreg_mem_ctrl
                    .wreg_mem_ctrl_valid(wreg_mem_ctrl_valid),                        // wire wreg_mem_ctrl_valid
                    .wreg_mem_addr(wreg_mem_addr),                              // wire [15 : 0] wreg_mem_addr
                    .wreg_mem_addr_valid(wreg_mem_addr_valid),                        // wire wreg_mem_addr_valid
                    .wreg_mem_len(wreg_mem_len),                               // wire [7 : 0] wreg_mem_len
                    .wreg_mem_len_valid(wreg_mem_len_valid),                         // wire wreg_mem_len_valid
                    .wreg_mem_rd_data(wreg_mem_rd_data),            // wire [7 : 0] wreg_mem_rd_data
                    .wreg_mem_rd_len(wreg_mem_rd_len),              // wire [4 : 0] wreg_mem_rd_len
                    .rreg_ddr_status(rreg_ddr_status),              // wire [7 : 0] rreg_ddr_status
                    .rreg_ddr_status_valid(1'b1),                   // wire rreg_ddr_status_valid
                    .rreg_ddr_data_wr_clk(ddr3_clk),                // input wire rreg_ddr_data_wr_clk
                    .rreg_ddr_data_wr_en(series_data_wr_en),        // wire rreg_ddr_data_wr_en
                    .rreg_ddr_data_wr_addr(series_data_wr_data),    // wire [15 : 0] rreg_ddr_data_wr_addr
                    .rreg_ddr_data_wr_data(series_data_wr_addr),     // wire [31 : 0] rreg_ddr_data_wr_data
                    
                    .wreg_ddr_ctrl(wreg_ddr_ctrl),                      // wire [7 : 0] wreg_ddr_ctrl
                    .wreg_ddr_ctrl_valid(wreg_ddr_ctrl_valid),            // wire wreg_ddr_ctrl_valid
                    .wreg_ddr_addr(wreg_ddr_addr),                        // wire [31 : 0] wreg_ddr_addr
                    .wreg_ddr_addr_valid(wreg_ddr_addr_valid),           // wire wreg_ddr_addr_valid
                    .wreg_ddr_len(wreg_ddr_len),                        // wire [31 : 0] wreg_ddr_len
                    .wreg_ddr_len_valid(wreg_ddr_len_valid),                  // wire wreg_ddr_len_valid
                    .wreg_out_ctrl(wreg_out_ctrl),                               // wire [7 : 0] wreg_out_ctrl
                    .wreg_out_ctrl_valid(wreg_out_ctrl_valid),             // wire wreg_out_ctrl_valid
                    .wreg_out_sel(wreg_out_sel),                            // wire [7 : 0] wreg_out_sel
                    .wreg_out_sel_valid(wreg_out_sel_valid),              // wire wreg_out_sel_valid
                    .wreg_out_level(wreg_out_level),                     // wire [7 : 0] wreg_out_level
                    .wreg_out_level_valid(wreg_out_level_valid),            // wire wreg_out_level_valid
                    .wreg_out_startmode(wreg_out_startmode),                // wire [7 : 0] wreg_out_startmode
                    .wreg_out_startmode_valid(wreg_out_startmode_valid),           // wire wreg_out_startmode_valid
                    .wreg_out_start_targettime(wreg_out_start_targettime),   // wire [63 : 0] wreg_out_start_targettime
                    .wreg_out_start_targettime_valid(wreg_out_start_targettime_valid), // wire wreg_out_start_targettime_valid
                    .wreg_out_start_subtime(wreg_out_start_subtime),         // wire [31 : 0] wreg_out_start_subtime
                    .wreg_out_start_subtime_valid(wreg_out_start_subtime_valid),  // wire wreg_out_start_subtime_valid
                    .wreg_out_start_subnum(wreg_out_start_subnum),            // wire [31 : 0] wreg_out_start_subnum
                    .wreg_out_start_subnum_valid(wreg_out_start_subnum_valid),// wire wreg_out_start_subnum_valid
                    .wreg_out_start_subcycle(wreg_out_start_subcycle), // wire [7 : 0] wreg_out_start_subcycle
                    .wreg_out_start_subcycle_valid(wreg_out_start_subcycle_valid),              // wire wreg_out_start_subcycle_valid
                    .wreg_out_start_trigmode1(wreg_out_start_trigmode1),                        // wire [31 : 0] wreg_out_start_trigmode1
                    .wreg_out_start_trigmode1_valid(wreg_out_start_trigmode1_valid),            // wire wreg_out_start_trigmode1_valid
                    .wreg_out_start_trigmode2(wreg_out_start_trigmode2),                        // wire [31 : 0] wreg_out_start_trigmode2
                    .wreg_out_start_trigmode2_valid(wreg_out_start_trigmode2_valid),            // wire wreg_out_start_trigmode2_valid
                    .wreg_out_start_trigmode3(wreg_out_start_trigmode3),                        // wire [31 : 0] wreg_out_start_trigmode3
                    .wreg_out_start_trigmode3_valid(wreg_out_start_trigmode3_valid),            // wire wreg_out_start_trigmode3_valid
                    .wreg_out_start_trigmode4(wreg_out_start_trigmode4),                        // wire [31 : 0] wreg_out_start_trigmode4
                    .wreg_out_start_trigmode4_valid(wreg_out_start_trigmode4_valid),            // wire wreg_out_start_trigmode4_valid
                    .wreg_out_trig_threshold_p(wreg_out_trig_threshold_p),                      // wire [15 : 0] wreg_out_trig_threshold_p
                    .wreg_out_trig_threshold_p_valid(wreg_out_trig_threshold_p_valid),          // wire wreg_out_trig_threshold_p_valid
                    .wreg_out_trig_threshold_n(wreg_out_trig_threshold_n),                      // wire [15 : 0] wreg_out_trig_threshold_n
                    .wreg_out_trig_threshold_n_valid(wreg_out_trig_threshold_n_valid),          // wire wreg_out_trig_threshold_n_valid
                    .wreg_out_trig_risetime(wreg_out_trig_risetime),                            // wire [15 : 0] wreg_out_trig_risetime
                    .wreg_out_trig_risetime_valid(wreg_out_trig_risetime_valid),                // wire wreg_out_trig_risetime_valid
                    .wreg_out_trig_droptime(wreg_out_trig_droptime),                            // wire [15 : 0] wreg_out_trig_droptime
                    .wreg_out_trig_droptime_valid(wreg_out_trig_droptime_valid),                // wire wreg_out_trig_droptime_valid
                    .wreg_out_trig_pulsewidth(wreg_out_trig_pulsewidth),                        // wire [15 : 0] wreg_out_trig_pulsewidth
                    .wreg_out_trig_pulsewidth_valid(wreg_out_trig_pulsewidth_valid),            // wire wreg_out_trig_pulsewidth_valid
                    .wreg_out_trig_riseratio(wreg_out_trig_riseratio),                          // wire [7 : 0] wreg_out_trig_riseratio
                    .wreg_out_trig_riseratio_valid(wreg_out_trig_riseratio_valid),              // wire wreg_out_trig_riseratio_valid
                    .wreg_out_trig_dropratio(wreg_out_trig_dropratio),                          // wire [7 : 0] wreg_out_trig_dropratio
                    .wreg_out_trig_dropratio_valid(wreg_out_trig_dropratio_valid),              // wire wreg_out_trig_dropratio_valid
                    .wreg_out_trig_rmsvalue(wreg_out_trig_rmsvalue),                            // wire [15 : 0] wreg_out_trig_rmsvalue
                    .wreg_out_trig_rmsvalue_valid(wreg_out_trig_rmsvalue_valid),                // wire wreg_out_trig_rmsvalue_valid
                    .wreg_out_time_rd_en(1'b0),                                                 // wire wreg_out_time_rd_en
                    .wreg_out_time_rd_data(wreg_out_time_rd_data),                              // wire [7 : 0] wreg_out_time_rd_data
                    .wreg_out_time_rd_len(wreg_out_time_rd_len),                                // wire [4 : 0] wreg_out_time_rd_len
                    .wreg_ch_zero_cal(wreg_ch_zero_cal),                                        // wire [15 : 0] wreg_ch_zero_cal
                    .wreg_ch_zero_cal_valid(wreg_ch_zero_cal_valid),                            // wire wreg_ch_zero_cal_valid
                    .wreg_ch_sample_rate(wreg_ch_sample_rate),                                  // wire [15 : 0] wreg_ch_sample_rate
                    .wreg_ch_sample_rate_valid(wreg_ch_sample_rate_valid),                      // wire wreg_ch_sample_rate_valid
                    .wreg_ch_sign_handle(wreg_ch_sign_handle),                                  // wire [7 : 0] wreg_ch_sign_handle
                    .wreg_ch_sign_handle_valid(wreg_ch_sign_handle_valid),                      // wire wreg_ch_sign_handle_valid
                    .wreg_ch_main_amp(wreg_ch_main_amp),                                        // wire [7 : 0] wreg_ch_main_amp
                    .wreg_ch_main_amp_valid(wreg_ch_main_amp_valid),                            // wire wreg_ch_main_amp_valid
                    .wreg_ch_pre_amp(wreg_ch_pre_amp),                                          // wire [7 : 0] wreg_ch_pre_amp
                    .wreg_ch_pre_amp_valid(wreg_ch_pre_amp_valid),                              // wire wreg_ch_pre_amp_valid
                    .wreg_ch_v_amp(wreg_ch_v_amp),                                              // wire [7 : 0] wreg_ch_v_amp
                    .wreg_ch_v_amp_valid(wreg_ch_v_amp_valid),                                  // wire wreg_ch_v_amp_valid
                    .wreg_ch_i_amp(wreg_ch_i_amp),                                              // wire [7 : 0] wreg_ch_i_amp
                    .wreg_ch_i_amp_valid(wreg_ch_i_amp_valid),                                  // wire wreg_ch_i_amp_valid
                    .wreg_ch_noise_comp(wreg_ch_noise_comp),                                    // wire [7 : 0] wreg_ch_noise_comp
                    .wreg_ch_noise_comp_valid(wreg_ch_noise_comp_valid),                        // wire wreg_ch_noise_comp_valid
                    .wreg_ch_noise_amp_cof(wreg_ch_noise_amp_cof),                              // wire [15 : 0] wreg_ch_noise_amp_cof
                    .wreg_ch_noise_amp_cof_valid(wreg_ch_noise_amp_cof_valid),                  // wire wreg_ch_noise_amp_cof_valid
                    .wreg_ch_noise_delay(wreg_ch_noise_delay),                                  // wire [7 : 0] wreg_ch_noise_delay
                    .wreg_ch_noise_delay_valid(wreg_ch_noise_delay_valid),                      // wire wreg_ch_noise_delay_valid
                    .wreg_ch_start_targettime(wreg_ch_start_targettime),                        // wire [63 : 0] wreg_ch_start_targettime
                    .wreg_ch_start_targettime_valid(wreg_ch_start_targettime_valid),            // wire wreg_ch_start_targettime_valid
                    .wreg_ch_start_sustime(wreg_ch_start_sustime),                              // wire [31 : 0] wreg_ch_start_sustime
                    .wreg_ch_start_sustime_valid(wreg_ch_start_sustime_valid),                  // wire wreg_ch_start_sustime_valid
                    .wreg_ch_start_susnum(wreg_ch_start_susnum),                                // wire [31 : 0] wreg_ch_start_susnum
                    .wreg_ch_start_susnum_valid(wreg_ch_start_susnum_valid),                    // wire wreg_ch_start_susnum_valid
                    .wreg_ch_start_suscycle(wreg_ch_start_suscycle),                            // wire [7 : 0] wreg_ch_start_suscycle
                    .wreg_ch_start_suscycle_valid(wreg_ch_start_suscycle_valid),                // wire wreg_ch_start_suscycle_valid
                    .wreg_ch_stop_sustime(wreg_ch_stop_sustime),                                // wire [31 : 0] wreg_ch_stop_sustime
                    .wreg_ch_stop_sustime_valid(wreg_ch_stop_sustime_valid),                    // wire wreg_ch_stop_sustime_valid
                    .wreg_ch_stop_susnum(wreg_ch_stop_susnum),                                  // wire [31 : 0] wreg_ch_stop_susnum
                    .wreg_ch_stop_susnum_valid(wreg_ch_stop_susnum_valid),                      // wire wreg_ch_stop_susnum_valid
                    .wreg_ch_stop_suscycle(wreg_ch_stop_suscycle),                              // wire [7 : 0] wreg_ch_stop_suscycle
                    .wreg_ch_stop_suscycle_valid(wreg_ch_stop_suscycle_valid),                  // wire wreg_ch_stop_suscycle_valid
                    .wreg_ch_trig_threshold_p(wreg_ch_trig_threshold_p),                        // wire [15 : 0] wreg_ch_trig_threshold_p
                    .wreg_ch_trig_threshold_p_valid(wreg_ch_trig_threshold_p_valid),            // wire wreg_ch_trig_threshold_p_valid
                    .wreg_ch_trig_threshold_n(wreg_ch_trig_threshold_n),                        // wire [15 : 0] wreg_ch_trig_threshold_n
                    .wreg_ch_trig_threshold_n_valid(wreg_ch_trig_threshold_n_valid),            // wire wreg_ch_trig_threshold_n_valid
                    .wreg_ch_trig_risetime(wreg_ch_trig_risetime),                              // wire [15 : 0] wreg_ch_trig_risetime
                    .wreg_ch_trig_risetime_valid(wreg_ch_trig_risetime_valid),                  // wire wreg_ch_trig_risetime_valid
                    .wreg_ch_trig_droptime(wreg_ch_trig_droptime),                              // wire [15 : 0] wreg_ch_trig_droptime
                    .wreg_ch_trig_droptime_valid(wreg_ch_trig_droptime_valid),                  // wire wreg_ch_trig_droptime_valid
                    .wreg_ch_trig_pulsewidth(wreg_ch_trig_pulsewidth),                          // wire [15 : 0] wreg_ch_trig_pulsewidth
                    .wreg_ch_trig_pulsewidth_valid(wreg_ch_trig_pulsewidth_valid),              // wire wreg_ch_trig_pulsewidth_valid
                    .wreg_ch_trig_riseratio(wreg_ch_trig_riseratio),                            // wire [7 : 0] wreg_ch_trig_riseratio
                    .wreg_ch_trig_riseratio_valid(wreg_ch_trig_riseratio_valid),                // wire wreg_ch_trig_riseratio_valid
                    .wreg_ch_trig_dropratio(wreg_ch_trig_dropratio),                            // wire [7 : 0] wreg_ch_trig_dropratio
                    .wreg_ch_trig_dropratio_valid(wreg_ch_trig_dropratio_valid),                // wire wreg_ch_trig_dropratio_valid
                    .wreg_ch_trig_rmsvalue(wreg_ch_trig_rmsvalue),                              // wire [15 : 0] wreg_ch_trig_rmsvalue
                    .wreg_ch_trig_rmsvalue_valid(wreg_ch_trig_rmsvalue_valid),                  // wire wreg_ch_trig_rmsvalue_valid
                    .wreg_ch_filter_rd_en(0),                                // wire wreg_ch_filter_rd_en
                    .wreg_ch_filter_rd_data(wreg_ch_filter_rd_data),                            // wire [7 : 0] wreg_ch_filter_rd_data                 
                    .wreg_ch_filter_rd_len(wreg_ch_filter_rd_len),                              // wire [3 : 0] wreg_ch_filter_rd_len
                   
                    .rreg_series_status(0),                                    // wire [7 : 0] rreg_series_status
                    .rreg_series_status_valid(0),                        // wire rreg_series_status_valid
                    .rreg_series_starttime(0),                              // wire [63 : 0] rreg_series_starttime
                    .rreg_series_starttime_valid(0),                  // wire rreg_series_starttime_valid
                    .rreg_series_stoptime(0),                                // wire [63 : 0] rreg_series_stoptime
                    .rreg_series_stoptime_valid(0),                    // wire rreg_series_stoptime_valid
                    .rreg_series_maxdata(0),                                  // wire [79 : 0] rreg_series_maxdata
                    .rreg_series_maxdata_valid(0),                      // wire rreg_series_maxdata_valid
                    .rreg_series_data_wr_en(0),                            // wire rreg_series_data_wr_en
                    .rreg_series_data_wr_addr(0),                        // wire [15 : 0] rreg_series_data_wr_addr
                    .rreg_series_data_wr_data(0),                        // wire [31 : 0] rreg_series_data_wr_data
                    .rreg_series_trigger_starttime(0),              // wire [63 : 0] rreg_series_trigger_starttime
                    .rreg_series_trigger_starttime_valid(0),  // wire rreg_series_trigger_starttime_valid
                    .rreg_series_trigger_stoptime(0),                // wire [63 : 0] rreg_series_trigger_stoptime
                    .rreg_series_trigger_stoptime_valid(0),    // wire rreg_series_trigger_stoptime_valid
                    
                    .wreg_series_ctrl(wreg_series_ctrl),                                        // wire [7 : 0] wreg_series_ctrl
                    .wreg_series_ctrl_valid(wreg_series_ctrl_valid),                            // wire wreg_series_ctrl_valid
                    .wreg_series_data_type(wreg_series_data_type),                              // wire [7 : 0] wreg_series_data_type
                    .wreg_series_data_type_valid(wreg_series_data_type_valid),                  // wire wreg_series_data_type_valid
                    .wreg_series_sample_cycle(wreg_series_sample_cycle),                        // wire [7 : 0] wreg_series_sample_cycle
                    .wreg_series_sample_cycle_valid(wreg_series_sample_cycle_valid),            // wire wreg_series_sample_cycle_valid
                    .wreg_series_comp_ratio(wreg_series_comp_ratio),                            // wire [31 : 0] wreg_series_comp_ratio
                    .wreg_series_comp_ratio_valid(wreg_series_comp_ratio_valid),                // wire wreg_series_comp_ratio_valid
                    .wreg_series_comp_num(wreg_series_comp_num),                                // wire [15 : 0] wreg_series_comp_num
                    .wreg_series_comp_num_valid(wreg_series_comp_num_valid),                    // wire wreg_series_comp_num_valid
                    .wreg_series_validmode_data(wreg_series_validmode_data),                    // wire [31 : 0] wreg_series_validmode_data
                    .wreg_series_validmode_data_valid(wreg_series_validmode_data_valid),        // wire wreg_series_validmode_data_valid
                    .wreg_series_start_ddraddr(wreg_series_start_ddraddr),                      // wire [31 : 0] wreg_series_start_ddraddr
                    .wreg_series_start_ddraddr_valid(wreg_series_start_ddraddr_valid),          // wire wreg_series_start_ddraddr_valid
                    .wreg_series_stop_ddraddr(wreg_series_stop_ddraddr),                        // wire [31 : 0] wreg_series_stop_ddraddr
                    .wreg_series_stop_ddraddr_valid(wreg_series_stop_ddraddr_valid),            // wire wreg_series_stop_ddraddr_valid
                    .wreg_series_startmode(wreg_series_startmode),                              // wire [7 : 0] wreg_series_startmode
                    .wreg_series_startmode_valid(wreg_series_startmode_valid),                  // wire wreg_series_startmode_valid
                    .wreg_series_star_trigmode1(wreg_series_star_trigmode1),                    // wire [31 : 0] wreg_series_star_trigmode1
                    .wreg_series_star_trigmode1_valid(wreg_series_star_trigmode1_valid),        // wire wreg_series_star_trigmode1_valid
                    .wreg_series_star_trigmode2(wreg_series_star_trigmode2),                    // wire [31 : 0] wreg_series_star_trigmode2
                    .wreg_series_star_trigmode2_valid(wreg_series_star_trigmode2_valid),        // wire wreg_series_star_trigmode2_valid
                    .wreg_series_star_trigmode3(wreg_series_star_trigmode3),                    // wire [31 : 0] wreg_series_star_trigmode3
                    .wreg_series_star_trigmode3_valid(wreg_series_star_trigmode3_valid),        // wire wreg_series_star_trigmode3_valid
                    .wreg_series_star_trigmode4(wreg_series_star_trigmode4),                    // wire [31 : 0] wreg_series_star_trigmode4
                    .wreg_series_star_trigmode4_valid(wreg_series_star_trigmode4_valid),        // wire wreg_series_star_trigmode4_valid
                    .wreg_series_stopmode(wreg_series_stopmode),                                // wire [7 : 0] wreg_series_stopmode
                    .wreg_series_stopmode_valid(wreg_series_stopmode_valid),                    // wire wreg_series_stopmode_valid
                    .wreg_series_stop_trigmode1(wreg_series_stop_trigmode1),                    // wire [31 : 0] wreg_series_stop_trigmode1
                    .wreg_series_stop_trigmode1_valid(wreg_series_stop_trigmode1_valid),        // wire wreg_series_stop_trigmode1_valid
                    .wreg_series_stop_trigmode2(wreg_series_stop_trigmode2),                    // wire [31 : 0] wreg_series_stop_trigmode2
                    .wreg_series_stop_trigmode2_valid(wreg_series_stop_trigmode2_valid),        // wire wreg_series_stop_trigmode2_valid
                    .wreg_series_stop_trigmode3(wreg_series_stop_trigmode3),                    // wire [31 : 0] wreg_series_stop_trigmode3
                    .wreg_series_stop_trigmode3_valid(wreg_series_stop_trigmode3_valid),        // wire wreg_series_stop_trigmode3_valid
                    .wreg_series_stop_trigmode4(wreg_series_stop_trigmode4),                    // wire [31 : 0] wreg_series_stop_trigmode4
                    .wreg_series_stop_trigmode4_valid(wreg_series_stop_trigmode4_valid),        // wire wreg_series_stop_trigmode4_valid
                    .wreg_series_seek_startime(wreg_series_seek_startime),                  // wire [63 : 0] wreg_series_seek_startime
                    .wreg_series_seek_startime_valid(wreg_series_seek_startime_valid),    // wire wreg_series_seek_startime_valid
                    .wreg_series_seek_zoom(wreg_series_seek_zoom),                       // wire [31 : 0] wreg_series_seek_zoom
                    .wreg_series_seek_zoom_valid(wreg_series_seek_zoom_valid),          // wire wreg_series_seek_zoom_valid
                    .wreg_series_seek_datalen(wreg_series_seek_datalen),                 // wire [31 : 0] wreg_series_seek_datalen
                    .wreg_series_seek_datalen_valid(wreg_series_seek_datalen_valid)    // wire wreg_series_seek_datalen_valid
                  );
                                
                                


endmodule
