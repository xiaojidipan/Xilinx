// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Nov 14 14:48:08 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sub_BD_MY_AXI_MASTER_FULL_ip_0_1_stub.v
// Design      : sub_BD_MY_AXI_MASTER_FULL_ip_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MY_AXI_MASTER_FULL_ip_v1_0,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(user_wr_en, user_rd_en, user_wr_base_addr, 
  user_rd_base_addr, user_wr_len, user_rd_len, user_wr_burst_len, user_rd_burst_len, 
  user_wr_data_in, user_wr_satisfy, user_rd_data_en, read_data_val, read_data_out, 
  master_wr_addr, master_rd_addr, master_axi_init_txn, master_axi_txn_done, 
  master_axi_error, master_axi_aclk, master_axi_aresetn, master_full_axi_awid, 
  master_full_axi_awaddr, master_full_axi_awlen, master_full_axi_awsize, 
  master_full_axi_awburst, master_full_axi_awlock, master_full_axi_awcache, 
  master_full_axi_awprot, master_full_axi_awqos, master_full_axi_awuser, 
  master_full_axi_awvalid, master_full_axi_awready, master_full_axi_wdata, 
  master_full_axi_wstrb, master_full_axi_wlast, master_full_axi_wuser, 
  master_full_axi_wvalid, master_full_axi_wready, master_full_axi_bid, 
  master_full_axi_bresp, master_full_axi_buser, master_full_axi_bvalid, 
  master_full_axi_bready, master_full_axi_arid, master_full_axi_araddr, 
  master_full_axi_arlen, master_full_axi_arsize, master_full_axi_arburst, 
  master_full_axi_arlock, master_full_axi_arcache, master_full_axi_arprot, 
  master_full_axi_arqos, master_full_axi_aruser, master_full_axi_arvalid, 
  master_full_axi_arready, master_full_axi_rid, master_full_axi_rdata, 
  master_full_axi_rresp, master_full_axi_rlast, master_full_axi_ruser, 
  master_full_axi_rvalid, master_full_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="user_wr_en,user_rd_en,user_wr_base_addr[31:0],user_rd_base_addr[31:0],user_wr_len[15:0],user_rd_len[15:0],user_wr_burst_len[7:0],user_rd_burst_len[7:0],user_wr_data_in[31:0],user_wr_satisfy,user_rd_data_en,read_data_val,read_data_out[31:0],master_wr_addr[31:0],master_rd_addr[31:0],master_axi_init_txn,master_axi_txn_done[1:0],master_axi_error,master_axi_aclk,master_axi_aresetn,master_full_axi_awid[0:0],master_full_axi_awaddr[31:0],master_full_axi_awlen[7:0],master_full_axi_awsize[2:0],master_full_axi_awburst[1:0],master_full_axi_awlock,master_full_axi_awcache[3:0],master_full_axi_awprot[2:0],master_full_axi_awqos[3:0],master_full_axi_awuser[0:0],master_full_axi_awvalid,master_full_axi_awready,master_full_axi_wdata[31:0],master_full_axi_wstrb[3:0],master_full_axi_wlast,master_full_axi_wuser[0:0],master_full_axi_wvalid,master_full_axi_wready,master_full_axi_bid[0:0],master_full_axi_bresp[1:0],master_full_axi_buser[0:0],master_full_axi_bvalid,master_full_axi_bready,master_full_axi_arid[0:0],master_full_axi_araddr[31:0],master_full_axi_arlen[7:0],master_full_axi_arsize[2:0],master_full_axi_arburst[1:0],master_full_axi_arlock,master_full_axi_arcache[3:0],master_full_axi_arprot[2:0],master_full_axi_arqos[3:0],master_full_axi_aruser[0:0],master_full_axi_arvalid,master_full_axi_arready,master_full_axi_rid[0:0],master_full_axi_rdata[31:0],master_full_axi_rresp[1:0],master_full_axi_rlast,master_full_axi_ruser[0:0],master_full_axi_rvalid,master_full_axi_rready" */;
  input user_wr_en;
  input user_rd_en;
  input [31:0]user_wr_base_addr;
  input [31:0]user_rd_base_addr;
  input [15:0]user_wr_len;
  input [15:0]user_rd_len;
  input [7:0]user_wr_burst_len;
  input [7:0]user_rd_burst_len;
  input [31:0]user_wr_data_in;
  input user_wr_satisfy;
  output user_rd_data_en;
  output read_data_val;
  output [31:0]read_data_out;
  output [31:0]master_wr_addr;
  output [31:0]master_rd_addr;
  input master_axi_init_txn;
  output [1:0]master_axi_txn_done;
  output master_axi_error;
  input master_axi_aclk;
  input master_axi_aresetn;
  output [0:0]master_full_axi_awid;
  output [31:0]master_full_axi_awaddr;
  output [7:0]master_full_axi_awlen;
  output [2:0]master_full_axi_awsize;
  output [1:0]master_full_axi_awburst;
  output master_full_axi_awlock;
  output [3:0]master_full_axi_awcache;
  output [2:0]master_full_axi_awprot;
  output [3:0]master_full_axi_awqos;
  output [0:0]master_full_axi_awuser;
  output master_full_axi_awvalid;
  input master_full_axi_awready;
  output [31:0]master_full_axi_wdata;
  output [3:0]master_full_axi_wstrb;
  output master_full_axi_wlast;
  output [0:0]master_full_axi_wuser;
  output master_full_axi_wvalid;
  input master_full_axi_wready;
  input [0:0]master_full_axi_bid;
  input [1:0]master_full_axi_bresp;
  input [0:0]master_full_axi_buser;
  input master_full_axi_bvalid;
  output master_full_axi_bready;
  output [0:0]master_full_axi_arid;
  output [31:0]master_full_axi_araddr;
  output [7:0]master_full_axi_arlen;
  output [2:0]master_full_axi_arsize;
  output [1:0]master_full_axi_arburst;
  output master_full_axi_arlock;
  output [3:0]master_full_axi_arcache;
  output [2:0]master_full_axi_arprot;
  output [3:0]master_full_axi_arqos;
  output [0:0]master_full_axi_aruser;
  output master_full_axi_arvalid;
  input master_full_axi_arready;
  input [0:0]master_full_axi_rid;
  input [31:0]master_full_axi_rdata;
  input [1:0]master_full_axi_rresp;
  input master_full_axi_rlast;
  input [0:0]master_full_axi_ruser;
  input master_full_axi_rvalid;
  output master_full_axi_rready;
endmodule
