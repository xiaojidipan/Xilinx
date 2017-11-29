//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Sat Nov 18 13:47:49 2017
//Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target sub_BD_wrapper.bd
//Design      : sub_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sub_BD_wrapper
   (DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    clk_ref_in,
    ddr3_clk,
    device_temp_i,
    master_axi_error,
    master_axi_init_txn,
    master_axi_txn_done,
    master_rd_addr,
    master_wr_addr,
    mdio_rtl_mdc,
    mdio_rtl_mdio_io,
    mii_rtl_col,
    mii_rtl_crs,
    mii_rtl_rst_n,
    mii_rtl_rx_clk,
    mii_rtl_rx_dv,
    mii_rtl_rx_er,
    mii_rtl_rxd,
    mii_rtl_tx_clk,
    mii_rtl_tx_en,
    mii_rtl_txd,
    sys_clk_in,
    sys_rstn,
    uart_rtl_rxd,
    uart_rtl_txd,
    user_rd_burst_len,
    user_rd_interface_read_data_out,
    user_rd_interface_read_data_val,
    user_rd_interface_user_rd_base_addr,
    user_rd_interface_user_rd_en,
    user_rd_interface_user_rd_len,
    user_wr_burst_len,
    user_wr_interface_user_rd_data_en,
    user_wr_interface_user_wr_base_addr,
    user_wr_interface_user_wr_data_in,
    user_wr_interface_user_wr_en,
    user_wr_interface_user_wr_len,
    user_wr_interface_user_wr_satisfy);
  output [14:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [1:0]DDR3_dm;
  inout [15:0]DDR3_dq;
  inout [1:0]DDR3_dqs_n;
  inout [1:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  input clk_ref_in;
  output ddr3_clk;
  input [11:0]device_temp_i;
  output master_axi_error;
  input master_axi_init_txn;
  output [1:0]master_axi_txn_done;
  output [31:0]master_rd_addr;
  output [31:0]master_wr_addr;
  output mdio_rtl_mdc;
  inout mdio_rtl_mdio_io;
  input mii_rtl_col;
  input mii_rtl_crs;
  output mii_rtl_rst_n;
  input mii_rtl_rx_clk;
  input mii_rtl_rx_dv;
  input mii_rtl_rx_er;
  input [3:0]mii_rtl_rxd;
  input mii_rtl_tx_clk;
  output mii_rtl_tx_en;
  output [3:0]mii_rtl_txd;
  input sys_clk_in;
  input sys_rstn;
  input uart_rtl_rxd;
  output uart_rtl_txd;
  input [7:0]user_rd_burst_len;
  output [31:0]user_rd_interface_read_data_out;
  output user_rd_interface_read_data_val;
  input [31:0]user_rd_interface_user_rd_base_addr;
  input user_rd_interface_user_rd_en;
  input [15:0]user_rd_interface_user_rd_len;
  input [7:0]user_wr_burst_len;
  output user_wr_interface_user_rd_data_en;
  input [31:0]user_wr_interface_user_wr_base_addr;
  input [31:0]user_wr_interface_user_wr_data_in;
  input user_wr_interface_user_wr_en;
  input [15:0]user_wr_interface_user_wr_len;
  input user_wr_interface_user_wr_satisfy;

  wire [14:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [1:0]DDR3_dm;
  wire [15:0]DDR3_dq;
  wire [1:0]DDR3_dqs_n;
  wire [1:0]DDR3_dqs_p;
  wire [0:0]DDR3_odt;
  wire DDR3_ras_n;
  wire DDR3_reset_n;
  wire DDR3_we_n;
  wire clk_ref_in;
  wire ddr3_clk;
  wire [11:0]device_temp_i;
  wire master_axi_error;
  wire master_axi_init_txn;
  wire [1:0]master_axi_txn_done;
  wire [31:0]master_rd_addr;
  wire [31:0]master_wr_addr;
  wire mdio_rtl_mdc;
  wire mdio_rtl_mdio_i;
  wire mdio_rtl_mdio_io;
  wire mdio_rtl_mdio_o;
  wire mdio_rtl_mdio_t;
  wire mii_rtl_col;
  wire mii_rtl_crs;
  wire mii_rtl_rst_n;
  wire mii_rtl_rx_clk;
  wire mii_rtl_rx_dv;
  wire mii_rtl_rx_er;
  wire [3:0]mii_rtl_rxd;
  wire mii_rtl_tx_clk;
  wire mii_rtl_tx_en;
  wire [3:0]mii_rtl_txd;
  wire sys_clk_in;
  wire sys_rstn;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;
  wire [7:0]user_rd_burst_len;
  wire [31:0]user_rd_interface_read_data_out;
  wire user_rd_interface_read_data_val;
  wire [31:0]user_rd_interface_user_rd_base_addr;
  wire user_rd_interface_user_rd_en;
  wire [15:0]user_rd_interface_user_rd_len;
  wire [7:0]user_wr_burst_len;
  wire user_wr_interface_user_rd_data_en;
  wire [31:0]user_wr_interface_user_wr_base_addr;
  wire [31:0]user_wr_interface_user_wr_data_in;
  wire user_wr_interface_user_wr_en;
  wire [15:0]user_wr_interface_user_wr_len;
  wire user_wr_interface_user_wr_satisfy;

  IOBUF mdio_rtl_mdio_iobuf
       (.I(mdio_rtl_mdio_o),
        .IO(mdio_rtl_mdio_io),
        .O(mdio_rtl_mdio_i),
        .T(mdio_rtl_mdio_t));
  sub_BD sub_BD_i
       (.DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .clk_ref_in(clk_ref_in),
        .ddr3_clk(ddr3_clk),
        .device_temp_i(device_temp_i),
        .master_axi_error(master_axi_error),
        .master_axi_init_txn(master_axi_init_txn),
        .master_axi_txn_done(master_axi_txn_done),
        .master_rd_addr(master_rd_addr),
        .master_wr_addr(master_wr_addr),
        .mdio_rtl_mdc(mdio_rtl_mdc),
        .mdio_rtl_mdio_i(mdio_rtl_mdio_i),
        .mdio_rtl_mdio_o(mdio_rtl_mdio_o),
        .mdio_rtl_mdio_t(mdio_rtl_mdio_t),
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
        .sys_clk_in(sys_clk_in),
        .sys_rstn(sys_rstn),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd),
        .user_rd_burst_len(user_rd_burst_len),
        .user_rd_interface_read_data_out(user_rd_interface_read_data_out),
        .user_rd_interface_read_data_val(user_rd_interface_read_data_val),
        .user_rd_interface_user_rd_base_addr(user_rd_interface_user_rd_base_addr),
        .user_rd_interface_user_rd_en(user_rd_interface_user_rd_en),
        .user_rd_interface_user_rd_len(user_rd_interface_user_rd_len),
        .user_wr_burst_len(user_wr_burst_len),
        .user_wr_interface_user_rd_data_en(user_wr_interface_user_rd_data_en),
        .user_wr_interface_user_wr_base_addr(user_wr_interface_user_wr_base_addr),
        .user_wr_interface_user_wr_data_in(user_wr_interface_user_wr_data_in),
        .user_wr_interface_user_wr_en(user_wr_interface_user_wr_en),
        .user_wr_interface_user_wr_len(user_wr_interface_user_wr_len),
        .user_wr_interface_user_wr_satisfy(user_wr_interface_user_wr_satisfy));
endmodule
