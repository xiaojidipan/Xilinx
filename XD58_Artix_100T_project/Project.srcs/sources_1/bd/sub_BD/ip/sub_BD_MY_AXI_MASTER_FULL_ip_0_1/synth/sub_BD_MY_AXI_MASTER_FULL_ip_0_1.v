// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:MY_AXI_MASTER_FULL_ip:1.0
// IP Revision: 24

(* X_CORE_INFO = "MY_AXI_MASTER_FULL_ip_v1_0,Vivado 2017.2" *)
(* CHECK_LICENSE_TYPE = "sub_BD_MY_AXI_MASTER_FULL_ip_0_1,MY_AXI_MASTER_FULL_ip_v1_0,{}" *)
(* CORE_GENERATION_INFO = "sub_BD_MY_AXI_MASTER_FULL_ip_0_1,MY_AXI_MASTER_FULL_ip_v1_0,{x_ipProduct=Vivado 2017.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=MY_AXI_MASTER_FULL_ip,x_ipVersion=1.0,x_ipCoreRevision=24,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_Master_Full_AXI_ID_WIDTH=1,C_Master_Full_AXI_ADDR_WIDTH=32,C_Master_Full_AXI_DATA_WIDTH=32,C_Master_Full_AXI_AWUSER_WIDTH=1,C_Master_Full_AXI_ARUSER_WIDTH=1,C_Master_Full_AXI_WUSER_WIDTH=1,C_Master_Full_AXI_RUSER_WIDTH=1,C_Master_Full_AXI_BUSER_WIDTH=1}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module sub_BD_MY_AXI_MASTER_FULL_ip_0_1 (
  user_wr_en,
  user_rd_en,
  user_wr_base_addr,
  user_rd_base_addr,
  user_wr_len,
  user_rd_len,
  user_wr_burst_len,
  user_rd_burst_len,
  user_wr_data_in,
  user_wr_satisfy,
  user_rd_data_en,
  read_data_val,
  read_data_out,
  master_wr_addr,
  master_rd_addr,
  master_axi_init_txn,
  master_axi_txn_done,
  master_axi_error,
  master_axi_aclk,
  master_axi_aresetn,
  master_full_axi_awid,
  master_full_axi_awaddr,
  master_full_axi_awlen,
  master_full_axi_awsize,
  master_full_axi_awburst,
  master_full_axi_awlock,
  master_full_axi_awcache,
  master_full_axi_awprot,
  master_full_axi_awqos,
  master_full_axi_awuser,
  master_full_axi_awvalid,
  master_full_axi_awready,
  master_full_axi_wdata,
  master_full_axi_wstrb,
  master_full_axi_wlast,
  master_full_axi_wuser,
  master_full_axi_wvalid,
  master_full_axi_wready,
  master_full_axi_bid,
  master_full_axi_bresp,
  master_full_axi_buser,
  master_full_axi_bvalid,
  master_full_axi_bready,
  master_full_axi_arid,
  master_full_axi_araddr,
  master_full_axi_arlen,
  master_full_axi_arsize,
  master_full_axi_arburst,
  master_full_axi_arlock,
  master_full_axi_arcache,
  master_full_axi_arprot,
  master_full_axi_arqos,
  master_full_axi_aruser,
  master_full_axi_arvalid,
  master_full_axi_arready,
  master_full_axi_rid,
  master_full_axi_rdata,
  master_full_axi_rresp,
  master_full_axi_rlast,
  master_full_axi_ruser,
  master_full_axi_rvalid,
  master_full_axi_rready
);

(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_en" *)
input wire user_wr_en;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 user_rd_en" *)
input wire user_rd_en;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_base_addr" *)
input wire [31 : 0] user_wr_base_addr;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 user_rd_base_addr" *)
input wire [31 : 0] user_rd_base_addr;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_len" *)
input wire [15 : 0] user_wr_len;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 user_rd_len" *)
input wire [15 : 0] user_rd_len;
input wire [7 : 0] user_wr_burst_len;
input wire [7 : 0] user_rd_burst_len;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_data_in" *)
input wire [31 : 0] user_wr_data_in;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_satisfy" *)
input wire user_wr_satisfy;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_rd_data_en" *)
output wire user_rd_data_en;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 read_data_val" *)
output wire read_data_val;
(* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 read_data_out" *)
output wire [31 : 0] read_data_out;
output wire [31 : 0] master_wr_addr;
output wire [31 : 0] master_rd_addr;
input wire master_axi_init_txn;
output wire [1 : 0] master_axi_txn_done;
output wire master_axi_error;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Master_Full_AXI_CLK CLK, xilinx.com:signal:clock:1.0 master_axi_aclk CLK, xilinx.com:signal:clock:1.0 master_full_axi_aclk CLK" *)
input wire master_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Master_Full_AXI_RST RST, xilinx.com:signal:reset:1.0 master_axi_aresetn RST, xilinx.com:signal:reset:1.0 master_full_axi_aresetn RST" *)
input wire master_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWID" *)
output wire [0 : 0] master_full_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWADDR" *)
output wire [31 : 0] master_full_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWLEN" *)
output wire [7 : 0] master_full_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWSIZE" *)
output wire [2 : 0] master_full_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWBURST" *)
output wire [1 : 0] master_full_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWLOCK" *)
output wire master_full_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWCACHE" *)
output wire [3 : 0] master_full_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWPROT" *)
output wire [2 : 0] master_full_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWQOS" *)
output wire [3 : 0] master_full_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWUSER" *)
output wire [0 : 0] master_full_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWVALID" *)
output wire master_full_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWREADY" *)
input wire master_full_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WDATA" *)
output wire [31 : 0] master_full_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WSTRB" *)
output wire [3 : 0] master_full_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WLAST" *)
output wire master_full_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WUSER" *)
output wire [0 : 0] master_full_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WVALID" *)
output wire master_full_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WREADY" *)
input wire master_full_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BID" *)
input wire [0 : 0] master_full_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BRESP" *)
input wire [1 : 0] master_full_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BUSER" *)
input wire [0 : 0] master_full_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BVALID" *)
input wire master_full_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BREADY" *)
output wire master_full_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARID" *)
output wire [0 : 0] master_full_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARADDR" *)
output wire [31 : 0] master_full_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARLEN" *)
output wire [7 : 0] master_full_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARSIZE" *)
output wire [2 : 0] master_full_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARBURST" *)
output wire [1 : 0] master_full_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARLOCK" *)
output wire master_full_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARCACHE" *)
output wire [3 : 0] master_full_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARPROT" *)
output wire [2 : 0] master_full_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARQOS" *)
output wire [3 : 0] master_full_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARUSER" *)
output wire [0 : 0] master_full_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARVALID" *)
output wire master_full_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARREADY" *)
input wire master_full_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RID" *)
input wire [0 : 0] master_full_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RDATA" *)
input wire [31 : 0] master_full_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RRESP" *)
input wire [1 : 0] master_full_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RLAST" *)
input wire master_full_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RUSER" *)
input wire [0 : 0] master_full_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RVALID" *)
input wire master_full_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RREADY" *)
output wire master_full_axi_rready;

  MY_AXI_MASTER_FULL_ip_v1_0 #(
    .C_Master_Full_AXI_ID_WIDTH(1),  // Thread ID Width
    .C_Master_Full_AXI_ADDR_WIDTH(32),  // Width of Address Bus
    .C_Master_Full_AXI_DATA_WIDTH(32),  // Width of Data Bus
    .C_Master_Full_AXI_AWUSER_WIDTH(1),  // Width of User Write Address Bus
    .C_Master_Full_AXI_ARUSER_WIDTH(1),  // Width of User Read Address Bus
    .C_Master_Full_AXI_WUSER_WIDTH(1),  // Width of User Write Data Bus
    .C_Master_Full_AXI_RUSER_WIDTH(1),  // Width of User Read Data Bus
    .C_Master_Full_AXI_BUSER_WIDTH(1)  // Width of User Response Bus
  ) inst (
    .user_wr_en(user_wr_en),
    .user_rd_en(user_rd_en),
    .user_wr_base_addr(user_wr_base_addr),
    .user_rd_base_addr(user_rd_base_addr),
    .user_wr_len(user_wr_len),
    .user_rd_len(user_rd_len),
    .user_wr_burst_len(user_wr_burst_len),
    .user_rd_burst_len(user_rd_burst_len),
    .user_wr_data_in(user_wr_data_in),
    .user_wr_satisfy(user_wr_satisfy),
    .user_rd_data_en(user_rd_data_en),
    .read_data_val(read_data_val),
    .read_data_out(read_data_out),
    .master_wr_addr(master_wr_addr),
    .master_rd_addr(master_rd_addr),
    .master_axi_init_txn(master_axi_init_txn),
    .master_axi_txn_done(master_axi_txn_done),
    .master_axi_error(master_axi_error),
    .master_axi_aclk(master_axi_aclk),
    .master_axi_aresetn(master_axi_aresetn),
    .master_full_axi_awid(master_full_axi_awid),
    .master_full_axi_awaddr(master_full_axi_awaddr),
    .master_full_axi_awlen(master_full_axi_awlen),
    .master_full_axi_awsize(master_full_axi_awsize),
    .master_full_axi_awburst(master_full_axi_awburst),
    .master_full_axi_awlock(master_full_axi_awlock),
    .master_full_axi_awcache(master_full_axi_awcache),
    .master_full_axi_awprot(master_full_axi_awprot),
    .master_full_axi_awqos(master_full_axi_awqos),
    .master_full_axi_awuser(master_full_axi_awuser),
    .master_full_axi_awvalid(master_full_axi_awvalid),
    .master_full_axi_awready(master_full_axi_awready),
    .master_full_axi_wdata(master_full_axi_wdata),
    .master_full_axi_wstrb(master_full_axi_wstrb),
    .master_full_axi_wlast(master_full_axi_wlast),
    .master_full_axi_wuser(master_full_axi_wuser),
    .master_full_axi_wvalid(master_full_axi_wvalid),
    .master_full_axi_wready(master_full_axi_wready),
    .master_full_axi_bid(master_full_axi_bid),
    .master_full_axi_bresp(master_full_axi_bresp),
    .master_full_axi_buser(master_full_axi_buser),
    .master_full_axi_bvalid(master_full_axi_bvalid),
    .master_full_axi_bready(master_full_axi_bready),
    .master_full_axi_arid(master_full_axi_arid),
    .master_full_axi_araddr(master_full_axi_araddr),
    .master_full_axi_arlen(master_full_axi_arlen),
    .master_full_axi_arsize(master_full_axi_arsize),
    .master_full_axi_arburst(master_full_axi_arburst),
    .master_full_axi_arlock(master_full_axi_arlock),
    .master_full_axi_arcache(master_full_axi_arcache),
    .master_full_axi_arprot(master_full_axi_arprot),
    .master_full_axi_arqos(master_full_axi_arqos),
    .master_full_axi_aruser(master_full_axi_aruser),
    .master_full_axi_arvalid(master_full_axi_arvalid),
    .master_full_axi_arready(master_full_axi_arready),
    .master_full_axi_rid(master_full_axi_rid),
    .master_full_axi_rdata(master_full_axi_rdata),
    .master_full_axi_rresp(master_full_axi_rresp),
    .master_full_axi_rlast(master_full_axi_rlast),
    .master_full_axi_ruser(master_full_axi_ruser),
    .master_full_axi_rvalid(master_full_axi_rvalid),
    .master_full_axi_rready(master_full_axi_rready)
  );
endmodule
