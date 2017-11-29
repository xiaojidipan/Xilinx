// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Nov 14 14:12:18 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sub_BD_MY_AXI_MASTER_FULL_ip_0_1_sim_netlist.v
// Design      : sub_BD_MY_AXI_MASTER_FULL_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0
   (user_rd_data_en,
    read_data_val,
    read_data_out,
    master_wr_addr,
    master_rd_addr,
    master_axi_txn_done,
    master_axi_error,
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
    master_full_axi_wdata,
    master_full_axi_wstrb,
    master_full_axi_wlast,
    master_full_axi_wuser,
    master_full_axi_wvalid,
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
    master_full_axi_rready,
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
    master_axi_init_txn,
    master_axi_aclk,
    master_axi_aresetn,
    master_full_axi_awready,
    master_full_axi_wready,
    master_full_axi_bid,
    master_full_axi_bresp,
    master_full_axi_buser,
    master_full_axi_bvalid,
    master_full_axi_arready,
    master_full_axi_rid,
    master_full_axi_rdata,
    master_full_axi_rresp,
    master_full_axi_rlast,
    master_full_axi_ruser,
    master_full_axi_rvalid);
  output user_rd_data_en;
  output read_data_val;
  output [31:0]read_data_out;
  output [31:0]master_wr_addr;
  output [31:0]master_rd_addr;
  output [1:0]master_axi_txn_done;
  output master_axi_error;
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
  output [31:0]master_full_axi_wdata;
  output [3:0]master_full_axi_wstrb;
  output master_full_axi_wlast;
  output [0:0]master_full_axi_wuser;
  output master_full_axi_wvalid;
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
  output master_full_axi_rready;
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
  input master_axi_init_txn;
  input master_axi_aclk;
  input master_axi_aresetn;
  input master_full_axi_awready;
  input master_full_axi_wready;
  input [0:0]master_full_axi_bid;
  input [1:0]master_full_axi_bresp;
  input [0:0]master_full_axi_buser;
  input master_full_axi_bvalid;
  input master_full_axi_arready;
  input [0:0]master_full_axi_rid;
  input [31:0]master_full_axi_rdata;
  input [1:0]master_full_axi_rresp;
  input master_full_axi_rlast;
  input [0:0]master_full_axi_ruser;
  input master_full_axi_rvalid;

  wire master_axi_aclk;
  wire master_axi_aresetn;
  wire master_axi_error;
  wire master_axi_init_txn;
  wire [1:0]master_axi_txn_done;
  wire [31:0]master_full_axi_araddr;
  wire [1:0]master_full_axi_arburst;
  wire [3:0]master_full_axi_arcache;
  wire [0:0]master_full_axi_arid;
  wire [7:0]master_full_axi_arlen;
  wire master_full_axi_arlock;
  wire [2:0]master_full_axi_arprot;
  wire [3:0]master_full_axi_arqos;
  wire master_full_axi_arready;
  wire [2:0]master_full_axi_arsize;
  wire [0:0]master_full_axi_aruser;
  wire master_full_axi_arvalid;
  wire [31:0]master_full_axi_awaddr;
  wire [1:0]master_full_axi_awburst;
  wire [3:0]master_full_axi_awcache;
  wire [0:0]master_full_axi_awid;
  wire [7:0]master_full_axi_awlen;
  wire master_full_axi_awlock;
  wire [2:0]master_full_axi_awprot;
  wire [3:0]master_full_axi_awqos;
  wire master_full_axi_awready;
  wire [2:0]master_full_axi_awsize;
  wire [0:0]master_full_axi_awuser;
  wire master_full_axi_awvalid;
  wire [0:0]master_full_axi_bid;
  wire master_full_axi_bready;
  wire [1:0]master_full_axi_bresp;
  wire [0:0]master_full_axi_buser;
  wire master_full_axi_bvalid;
  wire [31:0]master_full_axi_rdata;
  wire [0:0]master_full_axi_rid;
  wire master_full_axi_rlast;
  wire master_full_axi_rready;
  wire [1:0]master_full_axi_rresp;
  wire [0:0]master_full_axi_ruser;
  wire master_full_axi_rvalid;
  wire [31:0]master_full_axi_wdata;
  wire master_full_axi_wlast;
  wire master_full_axi_wready;
  wire [3:0]master_full_axi_wstrb;
  wire [0:0]master_full_axi_wuser;
  wire master_full_axi_wvalid;
  wire [31:0]master_rd_addr;
  wire [31:0]master_wr_addr;
  wire [31:0]read_data_out;
  wire read_data_val;
  wire [31:0]user_rd_base_addr;
  wire [7:0]user_rd_burst_len;
  wire user_rd_data_en;
  wire user_rd_en;
  wire [15:0]user_rd_len;
  wire [31:0]user_wr_base_addr;
  wire [7:0]user_wr_burst_len;
  wire [31:0]user_wr_data_in;
  wire user_wr_en;
  wire [15:0]user_wr_len;
  wire user_wr_satisfy;

  (* C_MASTER_LENGTH = "12" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_ARUSER_WIDTH = "1" *) 
  (* C_M_AXI_AWUSER_WIDTH = "1" *) 
  (* C_M_AXI_BUSER_WIDTH = "1" *) 
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_M_AXI_ID_WIDTH = "1" *) 
  (* C_M_AXI_RUSER_WIDTH = "1" *) 
  (* C_M_AXI_WUSER_WIDTH = "1" *) 
  (* C_NO_BURSTS_REQ = "8" *) 
  (* C_TRANSACTIONS_NUM = "8" *) 
  (* STATE0 = "6'b000001" *) 
  (* STATE1 = "6'b000010" *) 
  (* STATE2 = "6'b000100" *) 
  (* STATE3 = "6'b001000" *) 
  (* STATE4 = "6'b010000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst
       (.ERROR(master_axi_error),
        .INIT_AXI_TXN(master_axi_init_txn),
        .M_AXI_ACLK(master_axi_aclk),
        .M_AXI_ARADDR(master_full_axi_araddr),
        .M_AXI_ARBURST(master_full_axi_arburst),
        .M_AXI_ARCACHE(master_full_axi_arcache),
        .M_AXI_ARESETN(master_axi_aresetn),
        .M_AXI_ARID(master_full_axi_arid),
        .M_AXI_ARLEN(master_full_axi_arlen),
        .M_AXI_ARLOCK(master_full_axi_arlock),
        .M_AXI_ARPROT(master_full_axi_arprot),
        .M_AXI_ARQOS(master_full_axi_arqos),
        .M_AXI_ARREADY(master_full_axi_arready),
        .M_AXI_ARSIZE(master_full_axi_arsize),
        .M_AXI_ARUSER(master_full_axi_aruser),
        .M_AXI_ARVALID(master_full_axi_arvalid),
        .M_AXI_AWADDR(master_full_axi_awaddr),
        .M_AXI_AWBURST(master_full_axi_awburst),
        .M_AXI_AWCACHE(master_full_axi_awcache),
        .M_AXI_AWID(master_full_axi_awid),
        .M_AXI_AWLEN(master_full_axi_awlen),
        .M_AXI_AWLOCK(master_full_axi_awlock),
        .M_AXI_AWPROT(master_full_axi_awprot),
        .M_AXI_AWQOS(master_full_axi_awqos),
        .M_AXI_AWREADY(master_full_axi_awready),
        .M_AXI_AWSIZE(master_full_axi_awsize),
        .M_AXI_AWUSER(master_full_axi_awuser),
        .M_AXI_AWVALID(master_full_axi_awvalid),
        .M_AXI_BID(master_full_axi_bid),
        .M_AXI_BREADY(master_full_axi_bready),
        .M_AXI_BRESP(master_full_axi_bresp),
        .M_AXI_BUSER(master_full_axi_buser),
        .M_AXI_BVALID(master_full_axi_bvalid),
        .M_AXI_RDATA(master_full_axi_rdata),
        .M_AXI_RID(master_full_axi_rid),
        .M_AXI_RLAST(master_full_axi_rlast),
        .M_AXI_RREADY(master_full_axi_rready),
        .M_AXI_RRESP(master_full_axi_rresp),
        .M_AXI_RUSER(master_full_axi_ruser),
        .M_AXI_RVALID(master_full_axi_rvalid),
        .M_AXI_WDATA(master_full_axi_wdata),
        .M_AXI_WLAST(master_full_axi_wlast),
        .M_AXI_WREADY(master_full_axi_wready),
        .M_AXI_WSTRB(master_full_axi_wstrb),
        .M_AXI_WUSER(master_full_axi_wuser),
        .M_AXI_WVALID(master_full_axi_wvalid),
        .TXN_DONE(master_axi_txn_done),
        .master_rd_addr(master_rd_addr),
        .master_wr_addr(master_wr_addr),
        .read_data_out(read_data_out),
        .read_data_val(read_data_val),
        .user_rd_base_addr(user_rd_base_addr),
        .user_rd_burst_len(user_rd_burst_len),
        .user_rd_data_en(user_rd_data_en),
        .user_rd_en(user_rd_en),
        .user_rd_len(user_rd_len),
        .user_wr_base_addr(user_wr_base_addr),
        .user_wr_burst_len(user_wr_burst_len),
        .user_wr_data_in(user_wr_data_in),
        .user_wr_en(user_wr_en),
        .user_wr_len(user_wr_len),
        .user_wr_satisfy(user_wr_satisfy));
endmodule

(* C_MASTER_LENGTH = "12" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_ARUSER_WIDTH = "1" *) 
(* C_M_AXI_AWUSER_WIDTH = "1" *) (* C_M_AXI_BUSER_WIDTH = "1" *) (* C_M_AXI_DATA_WIDTH = "32" *) 
(* C_M_AXI_ID_WIDTH = "1" *) (* C_M_AXI_RUSER_WIDTH = "1" *) (* C_M_AXI_WUSER_WIDTH = "1" *) 
(* C_NO_BURSTS_REQ = "8" *) (* C_TRANSACTIONS_NUM = "8" *) (* STATE0 = "6'b000001" *) 
(* STATE1 = "6'b000010" *) (* STATE2 = "6'b000100" *) (* STATE3 = "6'b001000" *) 
(* STATE4 = "6'b010000" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI
   (user_wr_en,
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
    INIT_AXI_TXN,
    TXN_DONE,
    ERROR,
    M_AXI_ACLK,
    M_AXI_ARESETN,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WUSER,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BUSER,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RUSER,
    M_AXI_RVALID,
    M_AXI_RREADY);
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
  input INIT_AXI_TXN;
  output [1:0]TXN_DONE;
  output ERROR;
  input M_AXI_ACLK;
  input M_AXI_ARESETN;
  output [0:0]M_AXI_AWID;
  output [31:0]M_AXI_AWADDR;
  output [7:0]M_AXI_AWLEN;
  output [2:0]M_AXI_AWSIZE;
  output [1:0]M_AXI_AWBURST;
  output M_AXI_AWLOCK;
  output [3:0]M_AXI_AWCACHE;
  output [2:0]M_AXI_AWPROT;
  output [3:0]M_AXI_AWQOS;
  output [0:0]M_AXI_AWUSER;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output M_AXI_WLAST;
  output [0:0]M_AXI_WUSER;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input [0:0]M_AXI_BID;
  input [1:0]M_AXI_BRESP;
  input [0:0]M_AXI_BUSER;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [0:0]M_AXI_ARID;
  output [31:0]M_AXI_ARADDR;
  output [7:0]M_AXI_ARLEN;
  output [2:0]M_AXI_ARSIZE;
  output [1:0]M_AXI_ARBURST;
  output M_AXI_ARLOCK;
  output [3:0]M_AXI_ARCACHE;
  output [2:0]M_AXI_ARPROT;
  output [3:0]M_AXI_ARQOS;
  output [0:0]M_AXI_ARUSER;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [0:0]M_AXI_RID;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RLAST;
  input [0:0]M_AXI_RUSER;
  input M_AXI_RVALID;
  output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_ACLK;
  wire [31:1]\^M_AXI_ARADDR ;
  wire \M_AXI_ARADDR[13]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[13]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[13]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[13]_INST_0_i_4_n_0 ;
  wire \M_AXI_ARADDR[13]_INST_0_n_0 ;
  wire \M_AXI_ARADDR[13]_INST_0_n_1 ;
  wire \M_AXI_ARADDR[13]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[13]_INST_0_n_3 ;
  wire \M_AXI_ARADDR[17]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[17]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[17]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[17]_INST_0_i_4_n_0 ;
  wire \M_AXI_ARADDR[17]_INST_0_n_0 ;
  wire \M_AXI_ARADDR[17]_INST_0_n_1 ;
  wire \M_AXI_ARADDR[17]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[17]_INST_0_n_3 ;
  wire \M_AXI_ARADDR[21]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[21]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[21]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[21]_INST_0_i_4_n_0 ;
  wire \M_AXI_ARADDR[21]_INST_0_n_0 ;
  wire \M_AXI_ARADDR[21]_INST_0_n_1 ;
  wire \M_AXI_ARADDR[21]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[21]_INST_0_n_3 ;
  wire \M_AXI_ARADDR[25]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[25]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[25]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[25]_INST_0_i_4_n_0 ;
  wire \M_AXI_ARADDR[25]_INST_0_n_0 ;
  wire \M_AXI_ARADDR[25]_INST_0_n_1 ;
  wire \M_AXI_ARADDR[25]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[25]_INST_0_n_3 ;
  wire \M_AXI_ARADDR[29]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[29]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[29]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[29]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[29]_INST_0_n_3 ;
  wire \M_AXI_ARADDR[2]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[2]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[2]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[2]_INST_0_i_4_n_0 ;
  wire \M_AXI_ARADDR[2]_INST_0_n_0 ;
  wire \M_AXI_ARADDR[2]_INST_0_n_1 ;
  wire \M_AXI_ARADDR[2]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[2]_INST_0_n_3 ;
  wire \M_AXI_ARADDR[5]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[5]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[5]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[5]_INST_0_i_4_n_0 ;
  wire \M_AXI_ARADDR[5]_INST_0_n_0 ;
  wire \M_AXI_ARADDR[5]_INST_0_n_1 ;
  wire \M_AXI_ARADDR[5]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[5]_INST_0_n_3 ;
  wire \M_AXI_ARADDR[9]_INST_0_i_1_n_0 ;
  wire \M_AXI_ARADDR[9]_INST_0_i_2_n_0 ;
  wire \M_AXI_ARADDR[9]_INST_0_i_3_n_0 ;
  wire \M_AXI_ARADDR[9]_INST_0_i_4_n_0 ;
  wire \M_AXI_ARADDR[9]_INST_0_n_0 ;
  wire \M_AXI_ARADDR[9]_INST_0_n_1 ;
  wire \M_AXI_ARADDR[9]_INST_0_n_2 ;
  wire \M_AXI_ARADDR[9]_INST_0_n_3 ;
  wire M_AXI_ARESETN;
  wire [7:0]M_AXI_ARLEN;
  wire \M_AXI_ARLEN[7]_INST_0_i_1_n_0 ;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire \M_AXI_AWADDR[13]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[13]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[13]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[13]_INST_0_i_4_n_0 ;
  wire \M_AXI_AWADDR[13]_INST_0_n_0 ;
  wire \M_AXI_AWADDR[13]_INST_0_n_1 ;
  wire \M_AXI_AWADDR[13]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[13]_INST_0_n_3 ;
  wire \M_AXI_AWADDR[17]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[17]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[17]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[17]_INST_0_i_4_n_0 ;
  wire \M_AXI_AWADDR[17]_INST_0_n_0 ;
  wire \M_AXI_AWADDR[17]_INST_0_n_1 ;
  wire \M_AXI_AWADDR[17]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[17]_INST_0_n_3 ;
  wire \M_AXI_AWADDR[21]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[21]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[21]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[21]_INST_0_i_4_n_0 ;
  wire \M_AXI_AWADDR[21]_INST_0_n_0 ;
  wire \M_AXI_AWADDR[21]_INST_0_n_1 ;
  wire \M_AXI_AWADDR[21]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[21]_INST_0_n_3 ;
  wire \M_AXI_AWADDR[25]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[25]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[25]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[25]_INST_0_i_4_n_0 ;
  wire \M_AXI_AWADDR[25]_INST_0_n_0 ;
  wire \M_AXI_AWADDR[25]_INST_0_n_1 ;
  wire \M_AXI_AWADDR[25]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[25]_INST_0_n_3 ;
  wire \M_AXI_AWADDR[29]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[29]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[29]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[29]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[29]_INST_0_n_3 ;
  wire \M_AXI_AWADDR[2]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[2]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[2]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[2]_INST_0_i_4_n_0 ;
  wire \M_AXI_AWADDR[2]_INST_0_n_0 ;
  wire \M_AXI_AWADDR[2]_INST_0_n_1 ;
  wire \M_AXI_AWADDR[2]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[2]_INST_0_n_3 ;
  wire \M_AXI_AWADDR[5]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[5]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[5]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[5]_INST_0_i_4_n_0 ;
  wire \M_AXI_AWADDR[5]_INST_0_n_0 ;
  wire \M_AXI_AWADDR[5]_INST_0_n_1 ;
  wire \M_AXI_AWADDR[5]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[5]_INST_0_n_3 ;
  wire \M_AXI_AWADDR[9]_INST_0_i_1_n_0 ;
  wire \M_AXI_AWADDR[9]_INST_0_i_2_n_0 ;
  wire \M_AXI_AWADDR[9]_INST_0_i_3_n_0 ;
  wire \M_AXI_AWADDR[9]_INST_0_i_4_n_0 ;
  wire \M_AXI_AWADDR[9]_INST_0_n_0 ;
  wire \M_AXI_AWADDR[9]_INST_0_n_1 ;
  wire \M_AXI_AWADDR[9]_INST_0_n_2 ;
  wire \M_AXI_AWADDR[9]_INST_0_n_3 ;
  (* MARK_DEBUG *) wire [31:0]M_AXI_AWADDR_w;
  wire [7:0]M_AXI_AWLEN;
  wire \M_AXI_AWLEN[7]_INST_0_i_1_n_0 ;
  (* MARK_DEBUG *) wire M_AXI_AWREADY_w;
  (* MARK_DEBUG *) wire M_AXI_AWVALID_w;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_RDATA;
  wire M_AXI_RLAST;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  (* MARK_DEBUG *) wire [31:0]M_AXI_WDATA_w;
  (* MARK_DEBUG *) wire M_AXI_WLAST_w;
  (* MARK_DEBUG *) wire M_AXI_WREADY_w;
  (* MARK_DEBUG *) wire M_AXI_WVALID_w;
  wire [1:0]TXN_DONE;
  wire \axi_araddr[13]_i_2_n_0 ;
  wire \axi_araddr[13]_i_3_n_0 ;
  wire \axi_araddr[13]_i_4_n_0 ;
  wire \axi_araddr[13]_i_5_n_0 ;
  wire \axi_araddr[17]_i_2_n_0 ;
  wire \axi_araddr[17]_i_3_n_0 ;
  wire \axi_araddr[17]_i_4_n_0 ;
  wire \axi_araddr[17]_i_5_n_0 ;
  wire \axi_araddr[1]_i_3_n_0 ;
  wire \axi_araddr[1]_i_4_n_0 ;
  wire \axi_araddr[1]_i_5_n_0 ;
  wire \axi_araddr[1]_i_6_n_0 ;
  wire \axi_araddr[21]_i_2_n_0 ;
  wire \axi_araddr[21]_i_3_n_0 ;
  wire \axi_araddr[21]_i_4_n_0 ;
  wire \axi_araddr[21]_i_5_n_0 ;
  wire \axi_araddr[25]_i_2_n_0 ;
  wire \axi_araddr[25]_i_3_n_0 ;
  wire \axi_araddr[25]_i_4_n_0 ;
  wire \axi_araddr[25]_i_5_n_0 ;
  wire \axi_araddr[29]_i_2_n_0 ;
  wire \axi_araddr[29]_i_3_n_0 ;
  wire \axi_araddr[29]_i_4_n_0 ;
  wire \axi_araddr[5]_i_2_n_0 ;
  wire \axi_araddr[5]_i_3_n_0 ;
  wire \axi_araddr[5]_i_4_n_0 ;
  wire \axi_araddr[5]_i_5_n_0 ;
  wire \axi_araddr[9]_i_2_n_0 ;
  wire \axi_araddr[9]_i_3_n_0 ;
  wire \axi_araddr[9]_i_4_n_0 ;
  wire \axi_araddr[9]_i_5_n_0 ;
  wire [31:1]axi_araddr_reg;
  wire \axi_araddr_reg[13]_i_1_n_0 ;
  wire \axi_araddr_reg[13]_i_1_n_1 ;
  wire \axi_araddr_reg[13]_i_1_n_2 ;
  wire \axi_araddr_reg[13]_i_1_n_3 ;
  wire \axi_araddr_reg[13]_i_1_n_4 ;
  wire \axi_araddr_reg[13]_i_1_n_5 ;
  wire \axi_araddr_reg[13]_i_1_n_6 ;
  wire \axi_araddr_reg[13]_i_1_n_7 ;
  wire \axi_araddr_reg[17]_i_1_n_0 ;
  wire \axi_araddr_reg[17]_i_1_n_1 ;
  wire \axi_araddr_reg[17]_i_1_n_2 ;
  wire \axi_araddr_reg[17]_i_1_n_3 ;
  wire \axi_araddr_reg[17]_i_1_n_4 ;
  wire \axi_araddr_reg[17]_i_1_n_5 ;
  wire \axi_araddr_reg[17]_i_1_n_6 ;
  wire \axi_araddr_reg[17]_i_1_n_7 ;
  wire \axi_araddr_reg[1]_i_2_n_0 ;
  wire \axi_araddr_reg[1]_i_2_n_1 ;
  wire \axi_araddr_reg[1]_i_2_n_2 ;
  wire \axi_araddr_reg[1]_i_2_n_3 ;
  wire \axi_araddr_reg[1]_i_2_n_4 ;
  wire \axi_araddr_reg[1]_i_2_n_5 ;
  wire \axi_araddr_reg[1]_i_2_n_6 ;
  wire \axi_araddr_reg[1]_i_2_n_7 ;
  wire \axi_araddr_reg[21]_i_1_n_0 ;
  wire \axi_araddr_reg[21]_i_1_n_1 ;
  wire \axi_araddr_reg[21]_i_1_n_2 ;
  wire \axi_araddr_reg[21]_i_1_n_3 ;
  wire \axi_araddr_reg[21]_i_1_n_4 ;
  wire \axi_araddr_reg[21]_i_1_n_5 ;
  wire \axi_araddr_reg[21]_i_1_n_6 ;
  wire \axi_araddr_reg[21]_i_1_n_7 ;
  wire \axi_araddr_reg[25]_i_1_n_0 ;
  wire \axi_araddr_reg[25]_i_1_n_1 ;
  wire \axi_araddr_reg[25]_i_1_n_2 ;
  wire \axi_araddr_reg[25]_i_1_n_3 ;
  wire \axi_araddr_reg[25]_i_1_n_4 ;
  wire \axi_araddr_reg[25]_i_1_n_5 ;
  wire \axi_araddr_reg[25]_i_1_n_6 ;
  wire \axi_araddr_reg[25]_i_1_n_7 ;
  wire \axi_araddr_reg[29]_i_1_n_2 ;
  wire \axi_araddr_reg[29]_i_1_n_3 ;
  wire \axi_araddr_reg[29]_i_1_n_5 ;
  wire \axi_araddr_reg[29]_i_1_n_6 ;
  wire \axi_araddr_reg[29]_i_1_n_7 ;
  wire \axi_araddr_reg[5]_i_1_n_0 ;
  wire \axi_araddr_reg[5]_i_1_n_1 ;
  wire \axi_araddr_reg[5]_i_1_n_2 ;
  wire \axi_araddr_reg[5]_i_1_n_3 ;
  wire \axi_araddr_reg[5]_i_1_n_4 ;
  wire \axi_araddr_reg[5]_i_1_n_5 ;
  wire \axi_araddr_reg[5]_i_1_n_6 ;
  wire \axi_araddr_reg[5]_i_1_n_7 ;
  wire \axi_araddr_reg[9]_i_1_n_0 ;
  wire \axi_araddr_reg[9]_i_1_n_1 ;
  wire \axi_araddr_reg[9]_i_1_n_2 ;
  wire \axi_araddr_reg[9]_i_1_n_3 ;
  wire \axi_araddr_reg[9]_i_1_n_4 ;
  wire \axi_araddr_reg[9]_i_1_n_5 ;
  wire \axi_araddr_reg[9]_i_1_n_6 ;
  wire \axi_araddr_reg[9]_i_1_n_7 ;
  wire axi_arvalid0;
  wire axi_arvalid_i_1_n_0;
  wire \axi_awaddr[13]_i_2_n_0 ;
  wire \axi_awaddr[13]_i_3_n_0 ;
  wire \axi_awaddr[13]_i_4_n_0 ;
  wire \axi_awaddr[13]_i_5_n_0 ;
  wire \axi_awaddr[17]_i_2_n_0 ;
  wire \axi_awaddr[17]_i_3_n_0 ;
  wire \axi_awaddr[17]_i_4_n_0 ;
  wire \axi_awaddr[17]_i_5_n_0 ;
  wire \axi_awaddr[1]_i_3_n_0 ;
  wire \axi_awaddr[1]_i_4_n_0 ;
  wire \axi_awaddr[1]_i_5_n_0 ;
  wire \axi_awaddr[1]_i_6_n_0 ;
  wire \axi_awaddr[21]_i_2_n_0 ;
  wire \axi_awaddr[21]_i_3_n_0 ;
  wire \axi_awaddr[21]_i_4_n_0 ;
  wire \axi_awaddr[21]_i_5_n_0 ;
  wire \axi_awaddr[25]_i_2_n_0 ;
  wire \axi_awaddr[25]_i_3_n_0 ;
  wire \axi_awaddr[25]_i_4_n_0 ;
  wire \axi_awaddr[25]_i_5_n_0 ;
  wire \axi_awaddr[29]_i_2_n_0 ;
  wire \axi_awaddr[29]_i_3_n_0 ;
  wire \axi_awaddr[29]_i_4_n_0 ;
  wire \axi_awaddr[5]_i_2_n_0 ;
  wire \axi_awaddr[5]_i_3_n_0 ;
  wire \axi_awaddr[5]_i_4_n_0 ;
  wire \axi_awaddr[5]_i_5_n_0 ;
  wire \axi_awaddr[9]_i_2_n_0 ;
  wire \axi_awaddr[9]_i_3_n_0 ;
  wire \axi_awaddr[9]_i_4_n_0 ;
  wire \axi_awaddr[9]_i_5_n_0 ;
  wire [31:1]axi_awaddr_reg;
  wire \axi_awaddr_reg[13]_i_1_n_0 ;
  wire \axi_awaddr_reg[13]_i_1_n_1 ;
  wire \axi_awaddr_reg[13]_i_1_n_2 ;
  wire \axi_awaddr_reg[13]_i_1_n_3 ;
  wire \axi_awaddr_reg[13]_i_1_n_4 ;
  wire \axi_awaddr_reg[13]_i_1_n_5 ;
  wire \axi_awaddr_reg[13]_i_1_n_6 ;
  wire \axi_awaddr_reg[13]_i_1_n_7 ;
  wire \axi_awaddr_reg[17]_i_1_n_0 ;
  wire \axi_awaddr_reg[17]_i_1_n_1 ;
  wire \axi_awaddr_reg[17]_i_1_n_2 ;
  wire \axi_awaddr_reg[17]_i_1_n_3 ;
  wire \axi_awaddr_reg[17]_i_1_n_4 ;
  wire \axi_awaddr_reg[17]_i_1_n_5 ;
  wire \axi_awaddr_reg[17]_i_1_n_6 ;
  wire \axi_awaddr_reg[17]_i_1_n_7 ;
  wire \axi_awaddr_reg[1]_i_2_n_0 ;
  wire \axi_awaddr_reg[1]_i_2_n_1 ;
  wire \axi_awaddr_reg[1]_i_2_n_2 ;
  wire \axi_awaddr_reg[1]_i_2_n_3 ;
  wire \axi_awaddr_reg[1]_i_2_n_4 ;
  wire \axi_awaddr_reg[1]_i_2_n_5 ;
  wire \axi_awaddr_reg[1]_i_2_n_6 ;
  wire \axi_awaddr_reg[1]_i_2_n_7 ;
  wire \axi_awaddr_reg[21]_i_1_n_0 ;
  wire \axi_awaddr_reg[21]_i_1_n_1 ;
  wire \axi_awaddr_reg[21]_i_1_n_2 ;
  wire \axi_awaddr_reg[21]_i_1_n_3 ;
  wire \axi_awaddr_reg[21]_i_1_n_4 ;
  wire \axi_awaddr_reg[21]_i_1_n_5 ;
  wire \axi_awaddr_reg[21]_i_1_n_6 ;
  wire \axi_awaddr_reg[21]_i_1_n_7 ;
  wire \axi_awaddr_reg[25]_i_1_n_0 ;
  wire \axi_awaddr_reg[25]_i_1_n_1 ;
  wire \axi_awaddr_reg[25]_i_1_n_2 ;
  wire \axi_awaddr_reg[25]_i_1_n_3 ;
  wire \axi_awaddr_reg[25]_i_1_n_4 ;
  wire \axi_awaddr_reg[25]_i_1_n_5 ;
  wire \axi_awaddr_reg[25]_i_1_n_6 ;
  wire \axi_awaddr_reg[25]_i_1_n_7 ;
  wire \axi_awaddr_reg[29]_i_1_n_2 ;
  wire \axi_awaddr_reg[29]_i_1_n_3 ;
  wire \axi_awaddr_reg[29]_i_1_n_5 ;
  wire \axi_awaddr_reg[29]_i_1_n_6 ;
  wire \axi_awaddr_reg[29]_i_1_n_7 ;
  wire \axi_awaddr_reg[5]_i_1_n_0 ;
  wire \axi_awaddr_reg[5]_i_1_n_1 ;
  wire \axi_awaddr_reg[5]_i_1_n_2 ;
  wire \axi_awaddr_reg[5]_i_1_n_3 ;
  wire \axi_awaddr_reg[5]_i_1_n_4 ;
  wire \axi_awaddr_reg[5]_i_1_n_5 ;
  wire \axi_awaddr_reg[5]_i_1_n_6 ;
  wire \axi_awaddr_reg[5]_i_1_n_7 ;
  wire \axi_awaddr_reg[9]_i_1_n_0 ;
  wire \axi_awaddr_reg[9]_i_1_n_1 ;
  wire \axi_awaddr_reg[9]_i_1_n_2 ;
  wire \axi_awaddr_reg[9]_i_1_n_3 ;
  wire \axi_awaddr_reg[9]_i_1_n_4 ;
  wire \axi_awaddr_reg[9]_i_1_n_5 ;
  wire \axi_awaddr_reg[9]_i_1_n_6 ;
  wire \axi_awaddr_reg[9]_i_1_n_7 ;
  wire axi_awvalid0;
  wire axi_awvalid_i_2_n_0;
  wire axi_awvalid_reg0;
  wire axi_bready0;
  wire axi_rready_i_1_n_0;
  wire axi_wlast_i_10_n_0;
  wire axi_wlast_i_11_n_0;
  wire axi_wlast_i_12_n_0;
  wire axi_wlast_i_13_n_0;
  wire axi_wlast_i_14_n_0;
  wire axi_wlast_i_15_n_0;
  wire axi_wlast_i_16_n_0;
  wire axi_wlast_i_17_n_0;
  wire axi_wlast_i_18_n_0;
  wire axi_wlast_i_1_n_0;
  wire axi_wlast_i_3_n_0;
  wire axi_wlast_i_5_n_0;
  wire axi_wlast_i_6_n_0;
  wire axi_wlast_i_7_n_0;
  wire axi_wlast_i_9_n_0;
  wire axi_wlast_reg3;
  wire axi_wlast_reg_i_2_n_2;
  wire axi_wlast_reg_i_2_n_3;
  wire axi_wlast_reg_i_4_n_0;
  wire axi_wlast_reg_i_4_n_1;
  wire axi_wlast_reg_i_4_n_2;
  wire axi_wlast_reg_i_4_n_3;
  wire axi_wlast_reg_i_8_n_0;
  wire axi_wlast_reg_i_8_n_1;
  wire axi_wlast_reg_i_8_n_2;
  wire axi_wlast_reg_i_8_n_3;
  wire axi_wvalid_i_1_n_0;
  wire burst_read_active;
  wire burst_read_active_i_1_n_0;
  wire burst_write_active;
  wire burst_write_active_i_1_n_0;
  wire [8:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire read_burst_counter;
  wire read_burst_counter0;
  wire \read_burst_counter[0]_i_10_n_0 ;
  wire \read_burst_counter[0]_i_11_n_0 ;
  wire \read_burst_counter[0]_i_12_n_0 ;
  wire \read_burst_counter[0]_i_13_n_0 ;
  wire \read_burst_counter[0]_i_14_n_0 ;
  wire \read_burst_counter[0]_i_15_n_0 ;
  wire \read_burst_counter[0]_i_1_n_0 ;
  wire \read_burst_counter[0]_i_5_n_0 ;
  wire \read_burst_counter[0]_i_6_n_0 ;
  wire \read_burst_counter[0]_i_7_n_0 ;
  wire \read_burst_counter[0]_i_8_n_0 ;
  wire \read_burst_counter[12]_i_2_n_0 ;
  wire \read_burst_counter[12]_i_3_n_0 ;
  wire \read_burst_counter[12]_i_4_n_0 ;
  wire \read_burst_counter[12]_i_5_n_0 ;
  wire \read_burst_counter[4]_i_2_n_0 ;
  wire \read_burst_counter[4]_i_3_n_0 ;
  wire \read_burst_counter[4]_i_4_n_0 ;
  wire \read_burst_counter[4]_i_5_n_0 ;
  wire \read_burst_counter[8]_i_2_n_0 ;
  wire \read_burst_counter[8]_i_3_n_0 ;
  wire \read_burst_counter[8]_i_4_n_0 ;
  wire \read_burst_counter[8]_i_5_n_0 ;
  wire [15:0]read_burst_counter_reg;
  wire \read_burst_counter_reg[0]_i_3_n_0 ;
  wire \read_burst_counter_reg[0]_i_3_n_1 ;
  wire \read_burst_counter_reg[0]_i_3_n_2 ;
  wire \read_burst_counter_reg[0]_i_3_n_3 ;
  wire \read_burst_counter_reg[0]_i_3_n_4 ;
  wire \read_burst_counter_reg[0]_i_3_n_5 ;
  wire \read_burst_counter_reg[0]_i_3_n_6 ;
  wire \read_burst_counter_reg[0]_i_3_n_7 ;
  wire \read_burst_counter_reg[0]_i_4_n_3 ;
  wire \read_burst_counter_reg[0]_i_9_n_0 ;
  wire \read_burst_counter_reg[0]_i_9_n_1 ;
  wire \read_burst_counter_reg[0]_i_9_n_2 ;
  wire \read_burst_counter_reg[0]_i_9_n_3 ;
  wire \read_burst_counter_reg[12]_i_1_n_1 ;
  wire \read_burst_counter_reg[12]_i_1_n_2 ;
  wire \read_burst_counter_reg[12]_i_1_n_3 ;
  wire \read_burst_counter_reg[12]_i_1_n_4 ;
  wire \read_burst_counter_reg[12]_i_1_n_5 ;
  wire \read_burst_counter_reg[12]_i_1_n_6 ;
  wire \read_burst_counter_reg[12]_i_1_n_7 ;
  wire \read_burst_counter_reg[4]_i_1_n_0 ;
  wire \read_burst_counter_reg[4]_i_1_n_1 ;
  wire \read_burst_counter_reg[4]_i_1_n_2 ;
  wire \read_burst_counter_reg[4]_i_1_n_3 ;
  wire \read_burst_counter_reg[4]_i_1_n_4 ;
  wire \read_burst_counter_reg[4]_i_1_n_5 ;
  wire \read_burst_counter_reg[4]_i_1_n_6 ;
  wire \read_burst_counter_reg[4]_i_1_n_7 ;
  wire \read_burst_counter_reg[8]_i_1_n_0 ;
  wire \read_burst_counter_reg[8]_i_1_n_1 ;
  wire \read_burst_counter_reg[8]_i_1_n_2 ;
  wire \read_burst_counter_reg[8]_i_1_n_3 ;
  wire \read_burst_counter_reg[8]_i_1_n_4 ;
  wire \read_burst_counter_reg[8]_i_1_n_5 ;
  wire \read_burst_counter_reg[8]_i_1_n_6 ;
  wire \read_burst_counter_reg[8]_i_1_n_7 ;
  wire read_data_val;
  wire read_index0;
  wire read_index1;
  wire \read_index[8]_i_11_n_0 ;
  wire \read_index[8]_i_12_n_0 ;
  wire \read_index[8]_i_13_n_0 ;
  wire \read_index[8]_i_14_n_0 ;
  wire \read_index[8]_i_15_n_0 ;
  wire \read_index[8]_i_16_n_0 ;
  wire \read_index[8]_i_17_n_0 ;
  wire \read_index[8]_i_18_n_0 ;
  wire \read_index[8]_i_19_n_0 ;
  wire \read_index[8]_i_1_n_0 ;
  wire \read_index[8]_i_20_n_0 ;
  wire \read_index[8]_i_21_n_0 ;
  wire \read_index[8]_i_5_n_0 ;
  wire \read_index[8]_i_7_n_0 ;
  wire \read_index[8]_i_8_n_0 ;
  wire \read_index[8]_i_9_n_0 ;
  wire \read_index_reg[8]_i_10_n_0 ;
  wire \read_index_reg[8]_i_10_n_1 ;
  wire \read_index_reg[8]_i_10_n_2 ;
  wire \read_index_reg[8]_i_10_n_3 ;
  wire \read_index_reg[8]_i_4_n_2 ;
  wire \read_index_reg[8]_i_4_n_3 ;
  wire \read_index_reg[8]_i_6_n_0 ;
  wire \read_index_reg[8]_i_6_n_1 ;
  wire \read_index_reg[8]_i_6_n_2 ;
  wire \read_index_reg[8]_i_6_n_3 ;
  wire [8:0]read_index_reg__0;
  wire reads_done;
  wire reads_done1;
  wire reads_done2;
  wire reads_done_d1;
  wire reads_done_d2;
  wire reads_done_i_10_n_0;
  wire reads_done_i_11_n_0;
  wire reads_done_i_12_n_0;
  wire reads_done_i_13_n_0;
  wire reads_done_i_14_n_0;
  wire reads_done_i_16_n_0;
  wire reads_done_i_17_n_0;
  wire reads_done_i_18_n_0;
  wire reads_done_i_19_n_0;
  wire reads_done_i_1_n_0;
  wire reads_done_i_20_n_0;
  wire reads_done_i_21_n_0;
  wire reads_done_i_22_n_0;
  wire reads_done_i_23_n_0;
  wire reads_done_i_5_n_0;
  wire reads_done_i_6_n_0;
  wire reads_done_i_8_n_0;
  wire reads_done_i_9_n_0;
  wire reads_done_reg_i_15_n_0;
  wire reads_done_reg_i_15_n_1;
  wire reads_done_reg_i_15_n_2;
  wire reads_done_reg_i_15_n_3;
  wire reads_done_reg_i_2_n_3;
  wire reads_done_reg_i_3_n_2;
  wire reads_done_reg_i_3_n_3;
  wire reads_done_reg_i_4_n_0;
  wire reads_done_reg_i_4_n_1;
  wire reads_done_reg_i_4_n_2;
  wire reads_done_reg_i_4_n_3;
  wire reads_done_reg_i_7_n_0;
  wire reads_done_reg_i_7_n_1;
  wire reads_done_reg_i_7_n_2;
  wire reads_done_reg_i_7_n_3;
  wire start_single_burst_read;
  wire start_single_burst_read_i_1_n_0;
  wire start_single_burst_read_i_2_n_0;
  wire start_single_burst_write;
  wire start_single_burst_write0;
  wire start_single_burst_write2;
  wire start_single_burst_write_i_1_n_0;
  wire start_single_burst_write_i_3_n_0;
  wire start_single_burst_write_i_4_n_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_10_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_13_n_0 ;
  wire \state[2]_i_14_n_0 ;
  wire \state[2]_i_15_n_0 ;
  wire \state[2]_i_16_n_0 ;
  wire \state[2]_i_17_n_0 ;
  wire \state[2]_i_18_n_0 ;
  wire \state[2]_i_19_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_20_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[2]_i_9_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state_reg[2]_i_2_n_1 ;
  wire \state_reg[2]_i_2_n_2 ;
  wire \state_reg[2]_i_2_n_3 ;
  wire \state_reg[2]_i_4_n_0 ;
  wire \state_reg[2]_i_4_n_1 ;
  wire \state_reg[2]_i_4_n_2 ;
  wire \state_reg[2]_i_4_n_3 ;
  (* MARK_DEBUG *) wire [5:0]state_w;
  wire [31:0]user_rd_base_addr;
  wire [7:0]user_rd_burst_len;
  wire user_rd_en;
  wire [15:0]user_rd_len;
  wire [31:1]\^user_wr_base_addr ;
  wire [7:0]user_wr_burst_len;
  wire user_wr_en;
  wire [15:0]user_wr_len;
  wire user_wr_satisfy;
  (* MARK_DEBUG *) wire wnext_w;
  wire write_burst_counter0;
  wire \write_burst_counter[0]_i_10_n_0 ;
  wire \write_burst_counter[0]_i_11_n_0 ;
  wire \write_burst_counter[0]_i_12_n_0 ;
  wire \write_burst_counter[0]_i_13_n_0 ;
  wire \write_burst_counter[0]_i_14_n_0 ;
  wire \write_burst_counter[0]_i_1_n_0 ;
  wire \write_burst_counter[0]_i_4_n_0 ;
  wire \write_burst_counter[0]_i_5_n_0 ;
  wire \write_burst_counter[0]_i_6_n_0 ;
  wire \write_burst_counter[0]_i_7_n_0 ;
  wire \write_burst_counter[0]_i_9_n_0 ;
  wire \write_burst_counter[12]_i_2_n_0 ;
  wire \write_burst_counter[12]_i_3_n_0 ;
  wire \write_burst_counter[12]_i_4_n_0 ;
  wire \write_burst_counter[12]_i_5_n_0 ;
  wire \write_burst_counter[4]_i_2_n_0 ;
  wire \write_burst_counter[4]_i_3_n_0 ;
  wire \write_burst_counter[4]_i_4_n_0 ;
  wire \write_burst_counter[4]_i_5_n_0 ;
  wire \write_burst_counter[8]_i_2_n_0 ;
  wire \write_burst_counter[8]_i_3_n_0 ;
  wire \write_burst_counter[8]_i_4_n_0 ;
  wire \write_burst_counter[8]_i_5_n_0 ;
  wire \write_burst_counter_reg[0]_i_2_n_0 ;
  wire \write_burst_counter_reg[0]_i_2_n_1 ;
  wire \write_burst_counter_reg[0]_i_2_n_2 ;
  wire \write_burst_counter_reg[0]_i_2_n_3 ;
  wire \write_burst_counter_reg[0]_i_2_n_4 ;
  wire \write_burst_counter_reg[0]_i_2_n_5 ;
  wire \write_burst_counter_reg[0]_i_2_n_6 ;
  wire \write_burst_counter_reg[0]_i_2_n_7 ;
  wire \write_burst_counter_reg[0]_i_3_n_3 ;
  wire \write_burst_counter_reg[0]_i_8_n_0 ;
  wire \write_burst_counter_reg[0]_i_8_n_1 ;
  wire \write_burst_counter_reg[0]_i_8_n_2 ;
  wire \write_burst_counter_reg[0]_i_8_n_3 ;
  wire \write_burst_counter_reg[12]_i_1_n_1 ;
  wire \write_burst_counter_reg[12]_i_1_n_2 ;
  wire \write_burst_counter_reg[12]_i_1_n_3 ;
  wire \write_burst_counter_reg[12]_i_1_n_4 ;
  wire \write_burst_counter_reg[12]_i_1_n_5 ;
  wire \write_burst_counter_reg[12]_i_1_n_6 ;
  wire \write_burst_counter_reg[12]_i_1_n_7 ;
  wire \write_burst_counter_reg[4]_i_1_n_0 ;
  wire \write_burst_counter_reg[4]_i_1_n_1 ;
  wire \write_burst_counter_reg[4]_i_1_n_2 ;
  wire \write_burst_counter_reg[4]_i_1_n_3 ;
  wire \write_burst_counter_reg[4]_i_1_n_4 ;
  wire \write_burst_counter_reg[4]_i_1_n_5 ;
  wire \write_burst_counter_reg[4]_i_1_n_6 ;
  wire \write_burst_counter_reg[4]_i_1_n_7 ;
  wire \write_burst_counter_reg[8]_i_1_n_0 ;
  wire \write_burst_counter_reg[8]_i_1_n_1 ;
  wire \write_burst_counter_reg[8]_i_1_n_2 ;
  wire \write_burst_counter_reg[8]_i_1_n_3 ;
  wire \write_burst_counter_reg[8]_i_1_n_4 ;
  wire \write_burst_counter_reg[8]_i_1_n_5 ;
  wire \write_burst_counter_reg[8]_i_1_n_6 ;
  wire \write_burst_counter_reg[8]_i_1_n_7 ;
  (* MARK_DEBUG *) wire [15:0]write_burst_counter_w;
  wire write_index0;
  wire write_index1;
  wire \write_index[8]_i_11_n_0 ;
  wire \write_index[8]_i_12_n_0 ;
  wire \write_index[8]_i_13_n_0 ;
  wire \write_index[8]_i_14_n_0 ;
  wire \write_index[8]_i_15_n_0 ;
  wire \write_index[8]_i_16_n_0 ;
  wire \write_index[8]_i_17_n_0 ;
  wire \write_index[8]_i_18_n_0 ;
  wire \write_index[8]_i_19_n_0 ;
  wire \write_index[8]_i_1_n_0 ;
  wire \write_index[8]_i_20_n_0 ;
  wire \write_index[8]_i_21_n_0 ;
  wire \write_index[8]_i_22_n_0 ;
  wire \write_index[8]_i_5_n_0 ;
  wire \write_index[8]_i_7_n_0 ;
  wire \write_index[8]_i_8_n_0 ;
  wire \write_index[8]_i_9_n_0 ;
  wire \write_index_reg[8]_i_10_n_0 ;
  wire \write_index_reg[8]_i_10_n_1 ;
  wire \write_index_reg[8]_i_10_n_2 ;
  wire \write_index_reg[8]_i_10_n_3 ;
  wire \write_index_reg[8]_i_4_n_2 ;
  wire \write_index_reg[8]_i_4_n_3 ;
  wire \write_index_reg[8]_i_6_n_0 ;
  wire \write_index_reg[8]_i_6_n_1 ;
  wire \write_index_reg[8]_i_6_n_2 ;
  wire \write_index_reg[8]_i_6_n_3 ;
  wire [8:8]write_index_reg__0;
  (* MARK_DEBUG *) wire [7:0]write_index_w;
  wire writes_done_d1;
  wire writes_done_d2;
  wire writes_done_i_1_n_0;
  wire writes_done_i_4_n_0;
  wire writes_done_i_5_n_0;
  wire writes_done_i_6_n_0;
  wire writes_done_i_7_n_0;
  wire writes_done_i_8_n_0;
  wire writes_done_i_9_n_0;
  wire writes_done_reg2;
  wire writes_done_reg_i_2_n_3;
  wire writes_done_reg_i_3_n_0;
  wire writes_done_reg_i_3_n_1;
  wire writes_done_reg_i_3_n_2;
  wire writes_done_reg_i_3_n_3;
  (* MARK_DEBUG *) wire writes_done_w;
  wire [3:2]\NLW_M_AXI_ARADDR[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_M_AXI_ARADDR[29]_INST_0_O_UNCONNECTED ;
  wire [0:0]\NLW_M_AXI_ARADDR[2]_INST_0_O_UNCONNECTED ;
  wire [3:2]\NLW_M_AXI_AWADDR[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_M_AXI_AWADDR[29]_INST_0_O_UNCONNECTED ;
  wire [0:0]\NLW_M_AXI_AWADDR[2]_INST_0_O_UNCONNECTED ;
  wire [3:2]\NLW_axi_araddr_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_axi_araddr_reg[29]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_axi_awaddr_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_axi_awaddr_reg[29]_i_1_O_UNCONNECTED ;
  wire [3:3]NLW_axi_wlast_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_axi_wlast_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_axi_wlast_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_axi_wlast_reg_i_8_O_UNCONNECTED;
  wire [3:2]\NLW_read_burst_counter_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_read_burst_counter_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_read_burst_counter_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_read_burst_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_read_index_reg[8]_i_10_O_UNCONNECTED ;
  wire [3:3]\NLW_read_index_reg[8]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_read_index_reg[8]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_read_index_reg[8]_i_6_O_UNCONNECTED ;
  wire [3:0]NLW_reads_done_reg_i_15_O_UNCONNECTED;
  wire [3:2]NLW_reads_done_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_reads_done_reg_i_2_O_UNCONNECTED;
  wire [3:3]NLW_reads_done_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_reads_done_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_reads_done_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_reads_done_reg_i_7_O_UNCONNECTED;
  wire [3:0]\NLW_state_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_write_burst_counter_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_burst_counter_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_write_burst_counter_reg[0]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_write_burst_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_index_reg[8]_i_10_O_UNCONNECTED ;
  wire [3:3]\NLW_write_index_reg[8]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_index_reg[8]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_write_index_reg[8]_i_6_O_UNCONNECTED ;
  wire [3:2]NLW_writes_done_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_writes_done_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_writes_done_reg_i_3_O_UNCONNECTED;

  assign ERROR = \<const0> ;
  assign M_AXI_ARADDR[31:1] = \^M_AXI_ARADDR [31:1];
  assign M_AXI_ARADDR[0] = user_rd_base_addr[0];
  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const1> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const1> ;
  assign M_AXI_ARCACHE[0] = \<const0> ;
  assign M_AXI_ARID[0] = \<const0> ;
  assign M_AXI_ARLOCK = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARQOS[3] = \<const0> ;
  assign M_AXI_ARQOS[2] = \<const0> ;
  assign M_AXI_ARQOS[1] = \<const0> ;
  assign M_AXI_ARQOS[0] = \<const0> ;
  assign M_AXI_ARSIZE[2] = \<const0> ;
  assign M_AXI_ARSIZE[1] = \<const1> ;
  assign M_AXI_ARSIZE[0] = \<const0> ;
  assign M_AXI_ARUSER[0] = \<const1> ;
  assign M_AXI_AWADDR[31:0] = M_AXI_AWADDR_w;
  assign M_AXI_AWADDR_w[0] = user_wr_base_addr[0];
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const1> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
  assign M_AXI_AWLOCK = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWQOS[3] = \<const0> ;
  assign M_AXI_AWQOS[2] = \<const0> ;
  assign M_AXI_AWQOS[1] = \<const0> ;
  assign M_AXI_AWQOS[0] = \<const0> ;
  assign M_AXI_AWREADY_w = M_AXI_AWREADY;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const1> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWUSER[0] = \<const1> ;
  assign M_AXI_AWVALID = M_AXI_AWVALID_w;
  assign M_AXI_WDATA[31:0] = M_AXI_WDATA_w;
  assign M_AXI_WDATA_w = user_wr_data_in[31:0];
  assign M_AXI_WLAST = M_AXI_WLAST_w;
  assign M_AXI_WREADY_w = M_AXI_WREADY;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  assign M_AXI_WUSER[0] = \<const0> ;
  assign M_AXI_WVALID = M_AXI_WVALID_w;
  assign \^user_wr_base_addr [31:1] = user_wr_base_addr[31:1];
  assign master_rd_addr[31:1] = \^M_AXI_ARADDR [31:1];
  assign master_rd_addr[0] = user_rd_base_addr[0];
  assign master_wr_addr[31:0] = M_AXI_AWADDR_w;
  assign read_data_out[31:0] = M_AXI_RDATA;
  assign user_rd_data_en = wnext_w;
  GND GND
       (.G(\<const0> ));
  CARRY4 \M_AXI_ARADDR[13]_INST_0 
       (.CI(\M_AXI_ARADDR[9]_INST_0_n_0 ),
        .CO({\M_AXI_ARADDR[13]_INST_0_n_0 ,\M_AXI_ARADDR[13]_INST_0_n_1 ,\M_AXI_ARADDR[13]_INST_0_n_2 ,\M_AXI_ARADDR[13]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_base_addr[16:13]),
        .O(\^M_AXI_ARADDR [16:13]),
        .S({\M_AXI_ARADDR[13]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[13]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[13]_INST_0_i_3_n_0 ,\M_AXI_ARADDR[13]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[13]_INST_0_i_1 
       (.I0(user_rd_base_addr[16]),
        .I1(axi_araddr_reg[16]),
        .O(\M_AXI_ARADDR[13]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[13]_INST_0_i_2 
       (.I0(user_rd_base_addr[15]),
        .I1(axi_araddr_reg[15]),
        .O(\M_AXI_ARADDR[13]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[13]_INST_0_i_3 
       (.I0(user_rd_base_addr[14]),
        .I1(axi_araddr_reg[14]),
        .O(\M_AXI_ARADDR[13]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[13]_INST_0_i_4 
       (.I0(user_rd_base_addr[13]),
        .I1(axi_araddr_reg[13]),
        .O(\M_AXI_ARADDR[13]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_ARADDR[17]_INST_0 
       (.CI(\M_AXI_ARADDR[13]_INST_0_n_0 ),
        .CO({\M_AXI_ARADDR[17]_INST_0_n_0 ,\M_AXI_ARADDR[17]_INST_0_n_1 ,\M_AXI_ARADDR[17]_INST_0_n_2 ,\M_AXI_ARADDR[17]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_base_addr[20:17]),
        .O(\^M_AXI_ARADDR [20:17]),
        .S({\M_AXI_ARADDR[17]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[17]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[17]_INST_0_i_3_n_0 ,\M_AXI_ARADDR[17]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[17]_INST_0_i_1 
       (.I0(user_rd_base_addr[20]),
        .I1(axi_araddr_reg[20]),
        .O(\M_AXI_ARADDR[17]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[17]_INST_0_i_2 
       (.I0(user_rd_base_addr[19]),
        .I1(axi_araddr_reg[19]),
        .O(\M_AXI_ARADDR[17]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[17]_INST_0_i_3 
       (.I0(user_rd_base_addr[18]),
        .I1(axi_araddr_reg[18]),
        .O(\M_AXI_ARADDR[17]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[17]_INST_0_i_4 
       (.I0(user_rd_base_addr[17]),
        .I1(axi_araddr_reg[17]),
        .O(\M_AXI_ARADDR[17]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[1]_INST_0 
       (.I0(user_rd_base_addr[1]),
        .I1(axi_araddr_reg[1]),
        .O(\^M_AXI_ARADDR [1]));
  CARRY4 \M_AXI_ARADDR[21]_INST_0 
       (.CI(\M_AXI_ARADDR[17]_INST_0_n_0 ),
        .CO({\M_AXI_ARADDR[21]_INST_0_n_0 ,\M_AXI_ARADDR[21]_INST_0_n_1 ,\M_AXI_ARADDR[21]_INST_0_n_2 ,\M_AXI_ARADDR[21]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_base_addr[24:21]),
        .O(\^M_AXI_ARADDR [24:21]),
        .S({\M_AXI_ARADDR[21]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[21]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[21]_INST_0_i_3_n_0 ,\M_AXI_ARADDR[21]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[21]_INST_0_i_1 
       (.I0(user_rd_base_addr[24]),
        .I1(axi_araddr_reg[24]),
        .O(\M_AXI_ARADDR[21]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[21]_INST_0_i_2 
       (.I0(user_rd_base_addr[23]),
        .I1(axi_araddr_reg[23]),
        .O(\M_AXI_ARADDR[21]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[21]_INST_0_i_3 
       (.I0(user_rd_base_addr[22]),
        .I1(axi_araddr_reg[22]),
        .O(\M_AXI_ARADDR[21]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[21]_INST_0_i_4 
       (.I0(user_rd_base_addr[21]),
        .I1(axi_araddr_reg[21]),
        .O(\M_AXI_ARADDR[21]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_ARADDR[25]_INST_0 
       (.CI(\M_AXI_ARADDR[21]_INST_0_n_0 ),
        .CO({\M_AXI_ARADDR[25]_INST_0_n_0 ,\M_AXI_ARADDR[25]_INST_0_n_1 ,\M_AXI_ARADDR[25]_INST_0_n_2 ,\M_AXI_ARADDR[25]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_base_addr[28:25]),
        .O(\^M_AXI_ARADDR [28:25]),
        .S({\M_AXI_ARADDR[25]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[25]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[25]_INST_0_i_3_n_0 ,\M_AXI_ARADDR[25]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[25]_INST_0_i_1 
       (.I0(user_rd_base_addr[28]),
        .I1(axi_araddr_reg[28]),
        .O(\M_AXI_ARADDR[25]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[25]_INST_0_i_2 
       (.I0(user_rd_base_addr[27]),
        .I1(axi_araddr_reg[27]),
        .O(\M_AXI_ARADDR[25]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[25]_INST_0_i_3 
       (.I0(user_rd_base_addr[26]),
        .I1(axi_araddr_reg[26]),
        .O(\M_AXI_ARADDR[25]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[25]_INST_0_i_4 
       (.I0(user_rd_base_addr[25]),
        .I1(axi_araddr_reg[25]),
        .O(\M_AXI_ARADDR[25]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_ARADDR[29]_INST_0 
       (.CI(\M_AXI_ARADDR[25]_INST_0_n_0 ),
        .CO({\NLW_M_AXI_ARADDR[29]_INST_0_CO_UNCONNECTED [3:2],\M_AXI_ARADDR[29]_INST_0_n_2 ,\M_AXI_ARADDR[29]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,user_rd_base_addr[30:29]}),
        .O({\NLW_M_AXI_ARADDR[29]_INST_0_O_UNCONNECTED [3],\^M_AXI_ARADDR [31:29]}),
        .S({1'b0,\M_AXI_ARADDR[29]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[29]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[29]_INST_0_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[29]_INST_0_i_1 
       (.I0(user_rd_base_addr[31]),
        .I1(axi_araddr_reg[31]),
        .O(\M_AXI_ARADDR[29]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[29]_INST_0_i_2 
       (.I0(user_rd_base_addr[30]),
        .I1(axi_araddr_reg[30]),
        .O(\M_AXI_ARADDR[29]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[29]_INST_0_i_3 
       (.I0(user_rd_base_addr[29]),
        .I1(axi_araddr_reg[29]),
        .O(\M_AXI_ARADDR[29]_INST_0_i_3_n_0 ));
  CARRY4 \M_AXI_ARADDR[2]_INST_0 
       (.CI(1'b0),
        .CO({\M_AXI_ARADDR[2]_INST_0_n_0 ,\M_AXI_ARADDR[2]_INST_0_n_1 ,\M_AXI_ARADDR[2]_INST_0_n_2 ,\M_AXI_ARADDR[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_base_addr[4:1]),
        .O({\^M_AXI_ARADDR [4:2],\NLW_M_AXI_ARADDR[2]_INST_0_O_UNCONNECTED [0]}),
        .S({\M_AXI_ARADDR[2]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[2]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[2]_INST_0_i_3_n_0 ,\M_AXI_ARADDR[2]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[2]_INST_0_i_1 
       (.I0(user_rd_base_addr[4]),
        .I1(axi_araddr_reg[4]),
        .O(\M_AXI_ARADDR[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[2]_INST_0_i_2 
       (.I0(user_rd_base_addr[3]),
        .I1(axi_araddr_reg[3]),
        .O(\M_AXI_ARADDR[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[2]_INST_0_i_3 
       (.I0(user_rd_base_addr[2]),
        .I1(axi_araddr_reg[2]),
        .O(\M_AXI_ARADDR[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[2]_INST_0_i_4 
       (.I0(user_rd_base_addr[1]),
        .I1(axi_araddr_reg[1]),
        .O(\M_AXI_ARADDR[2]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_ARADDR[5]_INST_0 
       (.CI(\M_AXI_ARADDR[2]_INST_0_n_0 ),
        .CO({\M_AXI_ARADDR[5]_INST_0_n_0 ,\M_AXI_ARADDR[5]_INST_0_n_1 ,\M_AXI_ARADDR[5]_INST_0_n_2 ,\M_AXI_ARADDR[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_base_addr[8:5]),
        .O(\^M_AXI_ARADDR [8:5]),
        .S({\M_AXI_ARADDR[5]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[5]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[5]_INST_0_i_3_n_0 ,\M_AXI_ARADDR[5]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[5]_INST_0_i_1 
       (.I0(user_rd_base_addr[8]),
        .I1(axi_araddr_reg[8]),
        .O(\M_AXI_ARADDR[5]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[5]_INST_0_i_2 
       (.I0(user_rd_base_addr[7]),
        .I1(axi_araddr_reg[7]),
        .O(\M_AXI_ARADDR[5]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[5]_INST_0_i_3 
       (.I0(user_rd_base_addr[6]),
        .I1(axi_araddr_reg[6]),
        .O(\M_AXI_ARADDR[5]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[5]_INST_0_i_4 
       (.I0(user_rd_base_addr[5]),
        .I1(axi_araddr_reg[5]),
        .O(\M_AXI_ARADDR[5]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_ARADDR[9]_INST_0 
       (.CI(\M_AXI_ARADDR[5]_INST_0_n_0 ),
        .CO({\M_AXI_ARADDR[9]_INST_0_n_0 ,\M_AXI_ARADDR[9]_INST_0_n_1 ,\M_AXI_ARADDR[9]_INST_0_n_2 ,\M_AXI_ARADDR[9]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_base_addr[12:9]),
        .O(\^M_AXI_ARADDR [12:9]),
        .S({\M_AXI_ARADDR[9]_INST_0_i_1_n_0 ,\M_AXI_ARADDR[9]_INST_0_i_2_n_0 ,\M_AXI_ARADDR[9]_INST_0_i_3_n_0 ,\M_AXI_ARADDR[9]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[9]_INST_0_i_1 
       (.I0(user_rd_base_addr[12]),
        .I1(axi_araddr_reg[12]),
        .O(\M_AXI_ARADDR[9]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[9]_INST_0_i_2 
       (.I0(user_rd_base_addr[11]),
        .I1(axi_araddr_reg[11]),
        .O(\M_AXI_ARADDR[9]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[9]_INST_0_i_3 
       (.I0(user_rd_base_addr[10]),
        .I1(axi_araddr_reg[10]),
        .O(\M_AXI_ARADDR[9]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARADDR[9]_INST_0_i_4 
       (.I0(user_rd_base_addr[9]),
        .I1(axi_araddr_reg[9]),
        .O(\M_AXI_ARADDR[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \M_AXI_ARLEN[0]_INST_0 
       (.I0(user_rd_burst_len[0]),
        .O(M_AXI_ARLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \M_AXI_ARLEN[1]_INST_0 
       (.I0(user_rd_burst_len[1]),
        .I1(user_rd_burst_len[0]),
        .O(M_AXI_ARLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \M_AXI_ARLEN[2]_INST_0 
       (.I0(user_rd_burst_len[2]),
        .I1(user_rd_burst_len[0]),
        .I2(user_rd_burst_len[1]),
        .O(M_AXI_ARLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \M_AXI_ARLEN[3]_INST_0 
       (.I0(user_rd_burst_len[3]),
        .I1(user_rd_burst_len[1]),
        .I2(user_rd_burst_len[0]),
        .I3(user_rd_burst_len[2]),
        .O(M_AXI_ARLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \M_AXI_ARLEN[4]_INST_0 
       (.I0(user_rd_burst_len[4]),
        .I1(user_rd_burst_len[2]),
        .I2(user_rd_burst_len[0]),
        .I3(user_rd_burst_len[1]),
        .I4(user_rd_burst_len[3]),
        .O(M_AXI_ARLEN[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \M_AXI_ARLEN[5]_INST_0 
       (.I0(user_rd_burst_len[5]),
        .I1(user_rd_burst_len[3]),
        .I2(user_rd_burst_len[1]),
        .I3(user_rd_burst_len[0]),
        .I4(user_rd_burst_len[2]),
        .I5(user_rd_burst_len[4]),
        .O(M_AXI_ARLEN[5]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \M_AXI_ARLEN[6]_INST_0 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .O(M_AXI_ARLEN[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \M_AXI_ARLEN[7]_INST_0 
       (.I0(user_rd_burst_len[7]),
        .I1(user_rd_burst_len[5]),
        .I2(user_rd_burst_len[3]),
        .I3(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_rd_burst_len[4]),
        .I5(user_rd_burst_len[6]),
        .O(M_AXI_ARLEN[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \M_AXI_ARLEN[7]_INST_0_i_1 
       (.I0(user_rd_burst_len[1]),
        .I1(user_rd_burst_len[0]),
        .I2(user_rd_burst_len[2]),
        .O(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ));
  CARRY4 \M_AXI_AWADDR[13]_INST_0 
       (.CI(\M_AXI_AWADDR[9]_INST_0_n_0 ),
        .CO({\M_AXI_AWADDR[13]_INST_0_n_0 ,\M_AXI_AWADDR[13]_INST_0_n_1 ,\M_AXI_AWADDR[13]_INST_0_n_2 ,\M_AXI_AWADDR[13]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^user_wr_base_addr [16:13]),
        .O(M_AXI_AWADDR_w[16:13]),
        .S({\M_AXI_AWADDR[13]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[13]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[13]_INST_0_i_3_n_0 ,\M_AXI_AWADDR[13]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[13]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [16]),
        .I1(axi_awaddr_reg[16]),
        .O(\M_AXI_AWADDR[13]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[13]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [15]),
        .I1(axi_awaddr_reg[15]),
        .O(\M_AXI_AWADDR[13]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[13]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [14]),
        .I1(axi_awaddr_reg[14]),
        .O(\M_AXI_AWADDR[13]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[13]_INST_0_i_4 
       (.I0(\^user_wr_base_addr [13]),
        .I1(axi_awaddr_reg[13]),
        .O(\M_AXI_AWADDR[13]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_AWADDR[17]_INST_0 
       (.CI(\M_AXI_AWADDR[13]_INST_0_n_0 ),
        .CO({\M_AXI_AWADDR[17]_INST_0_n_0 ,\M_AXI_AWADDR[17]_INST_0_n_1 ,\M_AXI_AWADDR[17]_INST_0_n_2 ,\M_AXI_AWADDR[17]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^user_wr_base_addr [20:17]),
        .O(M_AXI_AWADDR_w[20:17]),
        .S({\M_AXI_AWADDR[17]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[17]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[17]_INST_0_i_3_n_0 ,\M_AXI_AWADDR[17]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[17]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [20]),
        .I1(axi_awaddr_reg[20]),
        .O(\M_AXI_AWADDR[17]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[17]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [19]),
        .I1(axi_awaddr_reg[19]),
        .O(\M_AXI_AWADDR[17]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[17]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [18]),
        .I1(axi_awaddr_reg[18]),
        .O(\M_AXI_AWADDR[17]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[17]_INST_0_i_4 
       (.I0(\^user_wr_base_addr [17]),
        .I1(axi_awaddr_reg[17]),
        .O(\M_AXI_AWADDR[17]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[1]_INST_0 
       (.I0(\^user_wr_base_addr [1]),
        .I1(axi_awaddr_reg[1]),
        .O(M_AXI_AWADDR_w[1]));
  CARRY4 \M_AXI_AWADDR[21]_INST_0 
       (.CI(\M_AXI_AWADDR[17]_INST_0_n_0 ),
        .CO({\M_AXI_AWADDR[21]_INST_0_n_0 ,\M_AXI_AWADDR[21]_INST_0_n_1 ,\M_AXI_AWADDR[21]_INST_0_n_2 ,\M_AXI_AWADDR[21]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^user_wr_base_addr [24:21]),
        .O(M_AXI_AWADDR_w[24:21]),
        .S({\M_AXI_AWADDR[21]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[21]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[21]_INST_0_i_3_n_0 ,\M_AXI_AWADDR[21]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[21]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [24]),
        .I1(axi_awaddr_reg[24]),
        .O(\M_AXI_AWADDR[21]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[21]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [23]),
        .I1(axi_awaddr_reg[23]),
        .O(\M_AXI_AWADDR[21]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[21]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [22]),
        .I1(axi_awaddr_reg[22]),
        .O(\M_AXI_AWADDR[21]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[21]_INST_0_i_4 
       (.I0(\^user_wr_base_addr [21]),
        .I1(axi_awaddr_reg[21]),
        .O(\M_AXI_AWADDR[21]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_AWADDR[25]_INST_0 
       (.CI(\M_AXI_AWADDR[21]_INST_0_n_0 ),
        .CO({\M_AXI_AWADDR[25]_INST_0_n_0 ,\M_AXI_AWADDR[25]_INST_0_n_1 ,\M_AXI_AWADDR[25]_INST_0_n_2 ,\M_AXI_AWADDR[25]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^user_wr_base_addr [28:25]),
        .O(M_AXI_AWADDR_w[28:25]),
        .S({\M_AXI_AWADDR[25]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[25]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[25]_INST_0_i_3_n_0 ,\M_AXI_AWADDR[25]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[25]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [28]),
        .I1(axi_awaddr_reg[28]),
        .O(\M_AXI_AWADDR[25]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[25]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [27]),
        .I1(axi_awaddr_reg[27]),
        .O(\M_AXI_AWADDR[25]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[25]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [26]),
        .I1(axi_awaddr_reg[26]),
        .O(\M_AXI_AWADDR[25]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[25]_INST_0_i_4 
       (.I0(\^user_wr_base_addr [25]),
        .I1(axi_awaddr_reg[25]),
        .O(\M_AXI_AWADDR[25]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_AWADDR[29]_INST_0 
       (.CI(\M_AXI_AWADDR[25]_INST_0_n_0 ),
        .CO({\NLW_M_AXI_AWADDR[29]_INST_0_CO_UNCONNECTED [3:2],\M_AXI_AWADDR[29]_INST_0_n_2 ,\M_AXI_AWADDR[29]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\^user_wr_base_addr [30:29]}),
        .O({\NLW_M_AXI_AWADDR[29]_INST_0_O_UNCONNECTED [3],M_AXI_AWADDR_w[31:29]}),
        .S({1'b0,\M_AXI_AWADDR[29]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[29]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[29]_INST_0_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[29]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [31]),
        .I1(axi_awaddr_reg[31]),
        .O(\M_AXI_AWADDR[29]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[29]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [30]),
        .I1(axi_awaddr_reg[30]),
        .O(\M_AXI_AWADDR[29]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[29]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [29]),
        .I1(axi_awaddr_reg[29]),
        .O(\M_AXI_AWADDR[29]_INST_0_i_3_n_0 ));
  CARRY4 \M_AXI_AWADDR[2]_INST_0 
       (.CI(1'b0),
        .CO({\M_AXI_AWADDR[2]_INST_0_n_0 ,\M_AXI_AWADDR[2]_INST_0_n_1 ,\M_AXI_AWADDR[2]_INST_0_n_2 ,\M_AXI_AWADDR[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^user_wr_base_addr [4:1]),
        .O({M_AXI_AWADDR_w[4:2],\NLW_M_AXI_AWADDR[2]_INST_0_O_UNCONNECTED [0]}),
        .S({\M_AXI_AWADDR[2]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[2]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[2]_INST_0_i_3_n_0 ,\M_AXI_AWADDR[2]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[2]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [4]),
        .I1(axi_awaddr_reg[4]),
        .O(\M_AXI_AWADDR[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[2]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [3]),
        .I1(axi_awaddr_reg[3]),
        .O(\M_AXI_AWADDR[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[2]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [2]),
        .I1(axi_awaddr_reg[2]),
        .O(\M_AXI_AWADDR[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[2]_INST_0_i_4 
       (.I0(\^user_wr_base_addr [1]),
        .I1(axi_awaddr_reg[1]),
        .O(\M_AXI_AWADDR[2]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_AWADDR[5]_INST_0 
       (.CI(\M_AXI_AWADDR[2]_INST_0_n_0 ),
        .CO({\M_AXI_AWADDR[5]_INST_0_n_0 ,\M_AXI_AWADDR[5]_INST_0_n_1 ,\M_AXI_AWADDR[5]_INST_0_n_2 ,\M_AXI_AWADDR[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^user_wr_base_addr [8:5]),
        .O(M_AXI_AWADDR_w[8:5]),
        .S({\M_AXI_AWADDR[5]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[5]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[5]_INST_0_i_3_n_0 ,\M_AXI_AWADDR[5]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[5]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [8]),
        .I1(axi_awaddr_reg[8]),
        .O(\M_AXI_AWADDR[5]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[5]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [7]),
        .I1(axi_awaddr_reg[7]),
        .O(\M_AXI_AWADDR[5]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[5]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [6]),
        .I1(axi_awaddr_reg[6]),
        .O(\M_AXI_AWADDR[5]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[5]_INST_0_i_4 
       (.I0(\^user_wr_base_addr [5]),
        .I1(axi_awaddr_reg[5]),
        .O(\M_AXI_AWADDR[5]_INST_0_i_4_n_0 ));
  CARRY4 \M_AXI_AWADDR[9]_INST_0 
       (.CI(\M_AXI_AWADDR[5]_INST_0_n_0 ),
        .CO({\M_AXI_AWADDR[9]_INST_0_n_0 ,\M_AXI_AWADDR[9]_INST_0_n_1 ,\M_AXI_AWADDR[9]_INST_0_n_2 ,\M_AXI_AWADDR[9]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^user_wr_base_addr [12:9]),
        .O(M_AXI_AWADDR_w[12:9]),
        .S({\M_AXI_AWADDR[9]_INST_0_i_1_n_0 ,\M_AXI_AWADDR[9]_INST_0_i_2_n_0 ,\M_AXI_AWADDR[9]_INST_0_i_3_n_0 ,\M_AXI_AWADDR[9]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[9]_INST_0_i_1 
       (.I0(\^user_wr_base_addr [12]),
        .I1(axi_awaddr_reg[12]),
        .O(\M_AXI_AWADDR[9]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[9]_INST_0_i_2 
       (.I0(\^user_wr_base_addr [11]),
        .I1(axi_awaddr_reg[11]),
        .O(\M_AXI_AWADDR[9]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[9]_INST_0_i_3 
       (.I0(\^user_wr_base_addr [10]),
        .I1(axi_awaddr_reg[10]),
        .O(\M_AXI_AWADDR[9]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[9]_INST_0_i_4 
       (.I0(\^user_wr_base_addr [9]),
        .I1(axi_awaddr_reg[9]),
        .O(\M_AXI_AWADDR[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \M_AXI_AWLEN[0]_INST_0 
       (.I0(user_wr_burst_len[0]),
        .O(M_AXI_AWLEN[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \M_AXI_AWLEN[1]_INST_0 
       (.I0(user_wr_burst_len[1]),
        .I1(user_wr_burst_len[0]),
        .O(M_AXI_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \M_AXI_AWLEN[2]_INST_0 
       (.I0(user_wr_burst_len[2]),
        .I1(user_wr_burst_len[0]),
        .I2(user_wr_burst_len[1]),
        .O(M_AXI_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \M_AXI_AWLEN[3]_INST_0 
       (.I0(user_wr_burst_len[3]),
        .I1(user_wr_burst_len[1]),
        .I2(user_wr_burst_len[2]),
        .I3(user_wr_burst_len[0]),
        .O(M_AXI_AWLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \M_AXI_AWLEN[4]_INST_0 
       (.I0(user_wr_burst_len[4]),
        .I1(user_wr_burst_len[3]),
        .I2(user_wr_burst_len[2]),
        .I3(user_wr_burst_len[1]),
        .I4(user_wr_burst_len[0]),
        .O(M_AXI_AWLEN[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \M_AXI_AWLEN[5]_INST_0 
       (.I0(user_wr_burst_len[5]),
        .I1(user_wr_burst_len[0]),
        .I2(user_wr_burst_len[1]),
        .I3(user_wr_burst_len[2]),
        .I4(user_wr_burst_len[3]),
        .I5(user_wr_burst_len[4]),
        .O(M_AXI_AWLEN[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \M_AXI_AWLEN[6]_INST_0 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[4]),
        .I2(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_wr_burst_len[0]),
        .I4(user_wr_burst_len[5]),
        .O(M_AXI_AWLEN[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \M_AXI_AWLEN[7]_INST_0 
       (.I0(user_wr_burst_len[7]),
        .I1(user_wr_burst_len[5]),
        .I2(user_wr_burst_len[0]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .I5(user_wr_burst_len[6]),
        .O(M_AXI_AWLEN[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \M_AXI_AWLEN[7]_INST_0_i_1 
       (.I0(user_wr_burst_len[1]),
        .I1(user_wr_burst_len[2]),
        .I2(user_wr_burst_len[3]),
        .O(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TXN_DONE[0]_INST_0 
       (.I0(writes_done_w),
        .I1(writes_done_d2),
        .O(TXN_DONE[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \TXN_DONE[1]_INST_0 
       (.I0(reads_done),
        .I1(reads_done_d2),
        .O(TXN_DONE[1]));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[13]_i_2 
       (.I0(axi_araddr_reg[16]),
        .O(\axi_araddr[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[13]_i_3 
       (.I0(axi_araddr_reg[15]),
        .O(\axi_araddr[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[13]_i_4 
       (.I0(axi_araddr_reg[14]),
        .O(\axi_araddr[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[13]_i_5 
       (.I0(axi_araddr_reg[13]),
        .O(\axi_araddr[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_2 
       (.I0(axi_araddr_reg[20]),
        .O(\axi_araddr[17]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_3 
       (.I0(axi_araddr_reg[19]),
        .O(\axi_araddr[17]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_4 
       (.I0(axi_araddr_reg[18]),
        .O(\axi_araddr[17]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_5 
       (.I0(axi_araddr_reg[17]),
        .O(\axi_araddr[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[1]_i_1 
       (.I0(M_AXI_ARVALID),
        .I1(M_AXI_ARREADY),
        .O(axi_arvalid0));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[1]_i_3 
       (.I0(user_rd_burst_len[2]),
        .I1(axi_araddr_reg[4]),
        .O(\axi_araddr[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[1]_i_4 
       (.I0(user_rd_burst_len[1]),
        .I1(axi_araddr_reg[3]),
        .O(\axi_araddr[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[1]_i_5 
       (.I0(user_rd_burst_len[0]),
        .I1(axi_araddr_reg[2]),
        .O(\axi_araddr[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[1]_i_6 
       (.I0(axi_araddr_reg[1]),
        .O(\axi_araddr[1]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_2 
       (.I0(axi_araddr_reg[24]),
        .O(\axi_araddr[21]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_3 
       (.I0(axi_araddr_reg[23]),
        .O(\axi_araddr[21]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_4 
       (.I0(axi_araddr_reg[22]),
        .O(\axi_araddr[21]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_5 
       (.I0(axi_araddr_reg[21]),
        .O(\axi_araddr[21]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_2 
       (.I0(axi_araddr_reg[28]),
        .O(\axi_araddr[25]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_3 
       (.I0(axi_araddr_reg[27]),
        .O(\axi_araddr[25]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_4 
       (.I0(axi_araddr_reg[26]),
        .O(\axi_araddr[25]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_5 
       (.I0(axi_araddr_reg[25]),
        .O(\axi_araddr[25]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[29]_i_2 
       (.I0(axi_araddr_reg[31]),
        .O(\axi_araddr[29]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[29]_i_3 
       (.I0(axi_araddr_reg[30]),
        .O(\axi_araddr[29]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[29]_i_4 
       (.I0(axi_araddr_reg[29]),
        .O(\axi_araddr[29]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[5]_i_2 
       (.I0(user_rd_burst_len[6]),
        .I1(axi_araddr_reg[8]),
        .O(\axi_araddr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[5]_i_3 
       (.I0(user_rd_burst_len[5]),
        .I1(axi_araddr_reg[7]),
        .O(\axi_araddr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[5]_i_4 
       (.I0(user_rd_burst_len[4]),
        .I1(axi_araddr_reg[6]),
        .O(\axi_araddr[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[5]_i_5 
       (.I0(user_rd_burst_len[3]),
        .I1(axi_araddr_reg[5]),
        .O(\axi_araddr[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[9]_i_2 
       (.I0(axi_araddr_reg[12]),
        .O(\axi_araddr[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[9]_i_3 
       (.I0(axi_araddr_reg[11]),
        .O(\axi_araddr[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[9]_i_4 
       (.I0(axi_araddr_reg[10]),
        .O(\axi_araddr[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[9]_i_5 
       (.I0(user_rd_burst_len[7]),
        .I1(axi_araddr_reg[9]),
        .O(\axi_araddr[9]_i_5_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_6 ),
        .Q(axi_araddr_reg[10]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_5 ),
        .Q(axi_araddr_reg[11]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_4 ),
        .Q(axi_araddr_reg[12]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_7 ),
        .Q(axi_araddr_reg[13]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[13]_i_1 
       (.CI(\axi_araddr_reg[9]_i_1_n_0 ),
        .CO({\axi_araddr_reg[13]_i_1_n_0 ,\axi_araddr_reg[13]_i_1_n_1 ,\axi_araddr_reg[13]_i_1_n_2 ,\axi_araddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[13]_i_1_n_4 ,\axi_araddr_reg[13]_i_1_n_5 ,\axi_araddr_reg[13]_i_1_n_6 ,\axi_araddr_reg[13]_i_1_n_7 }),
        .S({\axi_araddr[13]_i_2_n_0 ,\axi_araddr[13]_i_3_n_0 ,\axi_araddr[13]_i_4_n_0 ,\axi_araddr[13]_i_5_n_0 }));
  FDRE \axi_araddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_6 ),
        .Q(axi_araddr_reg[14]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_5 ),
        .Q(axi_araddr_reg[15]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_4 ),
        .Q(axi_araddr_reg[16]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_7 ),
        .Q(axi_araddr_reg[17]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[17]_i_1 
       (.CI(\axi_araddr_reg[13]_i_1_n_0 ),
        .CO({\axi_araddr_reg[17]_i_1_n_0 ,\axi_araddr_reg[17]_i_1_n_1 ,\axi_araddr_reg[17]_i_1_n_2 ,\axi_araddr_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[17]_i_1_n_4 ,\axi_araddr_reg[17]_i_1_n_5 ,\axi_araddr_reg[17]_i_1_n_6 ,\axi_araddr_reg[17]_i_1_n_7 }),
        .S({\axi_araddr[17]_i_2_n_0 ,\axi_araddr[17]_i_3_n_0 ,\axi_araddr[17]_i_4_n_0 ,\axi_araddr[17]_i_5_n_0 }));
  FDRE \axi_araddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_6 ),
        .Q(axi_araddr_reg[18]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_5 ),
        .Q(axi_araddr_reg[19]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[1]_i_2_n_7 ),
        .Q(axi_araddr_reg[1]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[1]_i_2_n_0 ,\axi_araddr_reg[1]_i_2_n_1 ,\axi_araddr_reg[1]_i_2_n_2 ,\axi_araddr_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({user_rd_burst_len[2:0],1'b0}),
        .O({\axi_araddr_reg[1]_i_2_n_4 ,\axi_araddr_reg[1]_i_2_n_5 ,\axi_araddr_reg[1]_i_2_n_6 ,\axi_araddr_reg[1]_i_2_n_7 }),
        .S({\axi_araddr[1]_i_3_n_0 ,\axi_araddr[1]_i_4_n_0 ,\axi_araddr[1]_i_5_n_0 ,\axi_araddr[1]_i_6_n_0 }));
  FDRE \axi_araddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_4 ),
        .Q(axi_araddr_reg[20]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_7 ),
        .Q(axi_araddr_reg[21]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[21]_i_1 
       (.CI(\axi_araddr_reg[17]_i_1_n_0 ),
        .CO({\axi_araddr_reg[21]_i_1_n_0 ,\axi_araddr_reg[21]_i_1_n_1 ,\axi_araddr_reg[21]_i_1_n_2 ,\axi_araddr_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[21]_i_1_n_4 ,\axi_araddr_reg[21]_i_1_n_5 ,\axi_araddr_reg[21]_i_1_n_6 ,\axi_araddr_reg[21]_i_1_n_7 }),
        .S({\axi_araddr[21]_i_2_n_0 ,\axi_araddr[21]_i_3_n_0 ,\axi_araddr[21]_i_4_n_0 ,\axi_araddr[21]_i_5_n_0 }));
  FDRE \axi_araddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_6 ),
        .Q(axi_araddr_reg[22]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_5 ),
        .Q(axi_araddr_reg[23]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_4 ),
        .Q(axi_araddr_reg[24]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_7 ),
        .Q(axi_araddr_reg[25]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[25]_i_1 
       (.CI(\axi_araddr_reg[21]_i_1_n_0 ),
        .CO({\axi_araddr_reg[25]_i_1_n_0 ,\axi_araddr_reg[25]_i_1_n_1 ,\axi_araddr_reg[25]_i_1_n_2 ,\axi_araddr_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[25]_i_1_n_4 ,\axi_araddr_reg[25]_i_1_n_5 ,\axi_araddr_reg[25]_i_1_n_6 ,\axi_araddr_reg[25]_i_1_n_7 }),
        .S({\axi_araddr[25]_i_2_n_0 ,\axi_araddr[25]_i_3_n_0 ,\axi_araddr[25]_i_4_n_0 ,\axi_araddr[25]_i_5_n_0 }));
  FDRE \axi_araddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_6 ),
        .Q(axi_araddr_reg[26]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_5 ),
        .Q(axi_araddr_reg[27]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_4 ),
        .Q(axi_araddr_reg[28]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[29]_i_1_n_7 ),
        .Q(axi_araddr_reg[29]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[29]_i_1 
       (.CI(\axi_araddr_reg[25]_i_1_n_0 ),
        .CO({\NLW_axi_araddr_reg[29]_i_1_CO_UNCONNECTED [3:2],\axi_araddr_reg[29]_i_1_n_2 ,\axi_araddr_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[29]_i_1_O_UNCONNECTED [3],\axi_araddr_reg[29]_i_1_n_5 ,\axi_araddr_reg[29]_i_1_n_6 ,\axi_araddr_reg[29]_i_1_n_7 }),
        .S({1'b0,\axi_araddr[29]_i_2_n_0 ,\axi_araddr[29]_i_3_n_0 ,\axi_araddr[29]_i_4_n_0 }));
  FDRE \axi_araddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[1]_i_2_n_6 ),
        .Q(axi_araddr_reg[2]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[29]_i_1_n_6 ),
        .Q(axi_araddr_reg[30]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[29]_i_1_n_5 ),
        .Q(axi_araddr_reg[31]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[1]_i_2_n_5 ),
        .Q(axi_araddr_reg[3]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[1]_i_2_n_4 ),
        .Q(axi_araddr_reg[4]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[5]_i_1_n_7 ),
        .Q(axi_araddr_reg[5]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[5]_i_1 
       (.CI(\axi_araddr_reg[1]_i_2_n_0 ),
        .CO({\axi_araddr_reg[5]_i_1_n_0 ,\axi_araddr_reg[5]_i_1_n_1 ,\axi_araddr_reg[5]_i_1_n_2 ,\axi_araddr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(user_rd_burst_len[6:3]),
        .O({\axi_araddr_reg[5]_i_1_n_4 ,\axi_araddr_reg[5]_i_1_n_5 ,\axi_araddr_reg[5]_i_1_n_6 ,\axi_araddr_reg[5]_i_1_n_7 }),
        .S({\axi_araddr[5]_i_2_n_0 ,\axi_araddr[5]_i_3_n_0 ,\axi_araddr[5]_i_4_n_0 ,\axi_araddr[5]_i_5_n_0 }));
  FDRE \axi_araddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[5]_i_1_n_6 ),
        .Q(axi_araddr_reg[6]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[5]_i_1_n_5 ),
        .Q(axi_araddr_reg[7]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[5]_i_1_n_4 ),
        .Q(axi_araddr_reg[8]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \axi_araddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_7 ),
        .Q(axi_araddr_reg[9]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[9]_i_1 
       (.CI(\axi_araddr_reg[5]_i_1_n_0 ),
        .CO({\axi_araddr_reg[9]_i_1_n_0 ,\axi_araddr_reg[9]_i_1_n_1 ,\axi_araddr_reg[9]_i_1_n_2 ,\axi_araddr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,user_rd_burst_len[7]}),
        .O({\axi_araddr_reg[9]_i_1_n_4 ,\axi_araddr_reg[9]_i_1_n_5 ,\axi_araddr_reg[9]_i_1_n_6 ,\axi_araddr_reg[9]_i_1_n_7 }),
        .S({\axi_araddr[9]_i_2_n_0 ,\axi_araddr[9]_i_3_n_0 ,\axi_araddr[9]_i_4_n_0 ,\axi_araddr[9]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h00002E00)) 
    axi_arvalid_i_1
       (.I0(start_single_burst_read),
        .I1(M_AXI_ARVALID),
        .I2(M_AXI_ARREADY),
        .I3(M_AXI_ARESETN),
        .I4(user_rd_en),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(M_AXI_ARVALID),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[13]_i_2 
       (.I0(axi_awaddr_reg[16]),
        .O(\axi_awaddr[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[13]_i_3 
       (.I0(axi_awaddr_reg[15]),
        .O(\axi_awaddr[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[13]_i_4 
       (.I0(axi_awaddr_reg[14]),
        .O(\axi_awaddr[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[13]_i_5 
       (.I0(axi_awaddr_reg[13]),
        .O(\axi_awaddr[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[17]_i_2 
       (.I0(axi_awaddr_reg[20]),
        .O(\axi_awaddr[17]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[17]_i_3 
       (.I0(axi_awaddr_reg[19]),
        .O(\axi_awaddr[17]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[17]_i_4 
       (.I0(axi_awaddr_reg[18]),
        .O(\axi_awaddr[17]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[17]_i_5 
       (.I0(axi_awaddr_reg[17]),
        .O(\axi_awaddr[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awaddr[1]_i_1 
       (.I0(M_AXI_AWVALID_w),
        .I1(M_AXI_AWREADY_w),
        .O(axi_awvalid0));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[1]_i_3 
       (.I0(user_wr_burst_len[2]),
        .I1(axi_awaddr_reg[4]),
        .O(\axi_awaddr[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[1]_i_4 
       (.I0(user_wr_burst_len[1]),
        .I1(axi_awaddr_reg[3]),
        .O(\axi_awaddr[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[1]_i_5 
       (.I0(user_wr_burst_len[0]),
        .I1(axi_awaddr_reg[2]),
        .O(\axi_awaddr[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[1]_i_6 
       (.I0(axi_awaddr_reg[1]),
        .O(\axi_awaddr[1]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[21]_i_2 
       (.I0(axi_awaddr_reg[24]),
        .O(\axi_awaddr[21]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[21]_i_3 
       (.I0(axi_awaddr_reg[23]),
        .O(\axi_awaddr[21]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[21]_i_4 
       (.I0(axi_awaddr_reg[22]),
        .O(\axi_awaddr[21]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[21]_i_5 
       (.I0(axi_awaddr_reg[21]),
        .O(\axi_awaddr[21]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[25]_i_2 
       (.I0(axi_awaddr_reg[28]),
        .O(\axi_awaddr[25]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[25]_i_3 
       (.I0(axi_awaddr_reg[27]),
        .O(\axi_awaddr[25]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[25]_i_4 
       (.I0(axi_awaddr_reg[26]),
        .O(\axi_awaddr[25]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[25]_i_5 
       (.I0(axi_awaddr_reg[25]),
        .O(\axi_awaddr[25]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[29]_i_2 
       (.I0(axi_awaddr_reg[31]),
        .O(\axi_awaddr[29]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[29]_i_3 
       (.I0(axi_awaddr_reg[30]),
        .O(\axi_awaddr[29]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[29]_i_4 
       (.I0(axi_awaddr_reg[29]),
        .O(\axi_awaddr[29]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[5]_i_2 
       (.I0(user_wr_burst_len[6]),
        .I1(axi_awaddr_reg[8]),
        .O(\axi_awaddr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[5]_i_3 
       (.I0(user_wr_burst_len[5]),
        .I1(axi_awaddr_reg[7]),
        .O(\axi_awaddr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[5]_i_4 
       (.I0(user_wr_burst_len[4]),
        .I1(axi_awaddr_reg[6]),
        .O(\axi_awaddr[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[5]_i_5 
       (.I0(user_wr_burst_len[3]),
        .I1(axi_awaddr_reg[5]),
        .O(\axi_awaddr[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[9]_i_2 
       (.I0(axi_awaddr_reg[12]),
        .O(\axi_awaddr[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[9]_i_3 
       (.I0(axi_awaddr_reg[11]),
        .O(\axi_awaddr[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_awaddr[9]_i_4 
       (.I0(axi_awaddr_reg[10]),
        .O(\axi_awaddr[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[9]_i_5 
       (.I0(user_wr_burst_len[7]),
        .I1(axi_awaddr_reg[9]),
        .O(\axi_awaddr[9]_i_5_n_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_6 ),
        .Q(axi_awaddr_reg[10]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_5 ),
        .Q(axi_awaddr_reg[11]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_4 ),
        .Q(axi_awaddr_reg[12]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_7 ),
        .Q(axi_awaddr_reg[13]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[13]_i_1 
       (.CI(\axi_awaddr_reg[9]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[13]_i_1_n_0 ,\axi_awaddr_reg[13]_i_1_n_1 ,\axi_awaddr_reg[13]_i_1_n_2 ,\axi_awaddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[13]_i_1_n_4 ,\axi_awaddr_reg[13]_i_1_n_5 ,\axi_awaddr_reg[13]_i_1_n_6 ,\axi_awaddr_reg[13]_i_1_n_7 }),
        .S({\axi_awaddr[13]_i_2_n_0 ,\axi_awaddr[13]_i_3_n_0 ,\axi_awaddr[13]_i_4_n_0 ,\axi_awaddr[13]_i_5_n_0 }));
  FDRE \axi_awaddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_6 ),
        .Q(axi_awaddr_reg[14]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_5 ),
        .Q(axi_awaddr_reg[15]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_4 ),
        .Q(axi_awaddr_reg[16]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_7 ),
        .Q(axi_awaddr_reg[17]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[17]_i_1 
       (.CI(\axi_awaddr_reg[13]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[17]_i_1_n_0 ,\axi_awaddr_reg[17]_i_1_n_1 ,\axi_awaddr_reg[17]_i_1_n_2 ,\axi_awaddr_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[17]_i_1_n_4 ,\axi_awaddr_reg[17]_i_1_n_5 ,\axi_awaddr_reg[17]_i_1_n_6 ,\axi_awaddr_reg[17]_i_1_n_7 }),
        .S({\axi_awaddr[17]_i_2_n_0 ,\axi_awaddr[17]_i_3_n_0 ,\axi_awaddr[17]_i_4_n_0 ,\axi_awaddr[17]_i_5_n_0 }));
  FDRE \axi_awaddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_6 ),
        .Q(axi_awaddr_reg[18]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_5 ),
        .Q(axi_awaddr_reg[19]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[1]_i_2_n_7 ),
        .Q(axi_awaddr_reg[1]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\axi_awaddr_reg[1]_i_2_n_0 ,\axi_awaddr_reg[1]_i_2_n_1 ,\axi_awaddr_reg[1]_i_2_n_2 ,\axi_awaddr_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({user_wr_burst_len[2:0],1'b0}),
        .O({\axi_awaddr_reg[1]_i_2_n_4 ,\axi_awaddr_reg[1]_i_2_n_5 ,\axi_awaddr_reg[1]_i_2_n_6 ,\axi_awaddr_reg[1]_i_2_n_7 }),
        .S({\axi_awaddr[1]_i_3_n_0 ,\axi_awaddr[1]_i_4_n_0 ,\axi_awaddr[1]_i_5_n_0 ,\axi_awaddr[1]_i_6_n_0 }));
  FDRE \axi_awaddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_4 ),
        .Q(axi_awaddr_reg[20]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_7 ),
        .Q(axi_awaddr_reg[21]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[21]_i_1 
       (.CI(\axi_awaddr_reg[17]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[21]_i_1_n_0 ,\axi_awaddr_reg[21]_i_1_n_1 ,\axi_awaddr_reg[21]_i_1_n_2 ,\axi_awaddr_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[21]_i_1_n_4 ,\axi_awaddr_reg[21]_i_1_n_5 ,\axi_awaddr_reg[21]_i_1_n_6 ,\axi_awaddr_reg[21]_i_1_n_7 }),
        .S({\axi_awaddr[21]_i_2_n_0 ,\axi_awaddr[21]_i_3_n_0 ,\axi_awaddr[21]_i_4_n_0 ,\axi_awaddr[21]_i_5_n_0 }));
  FDRE \axi_awaddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_6 ),
        .Q(axi_awaddr_reg[22]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_5 ),
        .Q(axi_awaddr_reg[23]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_4 ),
        .Q(axi_awaddr_reg[24]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_7 ),
        .Q(axi_awaddr_reg[25]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[25]_i_1 
       (.CI(\axi_awaddr_reg[21]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[25]_i_1_n_0 ,\axi_awaddr_reg[25]_i_1_n_1 ,\axi_awaddr_reg[25]_i_1_n_2 ,\axi_awaddr_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[25]_i_1_n_4 ,\axi_awaddr_reg[25]_i_1_n_5 ,\axi_awaddr_reg[25]_i_1_n_6 ,\axi_awaddr_reg[25]_i_1_n_7 }),
        .S({\axi_awaddr[25]_i_2_n_0 ,\axi_awaddr[25]_i_3_n_0 ,\axi_awaddr[25]_i_4_n_0 ,\axi_awaddr[25]_i_5_n_0 }));
  FDRE \axi_awaddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_6 ),
        .Q(axi_awaddr_reg[26]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_5 ),
        .Q(axi_awaddr_reg[27]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_4 ),
        .Q(axi_awaddr_reg[28]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[29]_i_1_n_7 ),
        .Q(axi_awaddr_reg[29]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[29]_i_1 
       (.CI(\axi_awaddr_reg[25]_i_1_n_0 ),
        .CO({\NLW_axi_awaddr_reg[29]_i_1_CO_UNCONNECTED [3:2],\axi_awaddr_reg[29]_i_1_n_2 ,\axi_awaddr_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[29]_i_1_O_UNCONNECTED [3],\axi_awaddr_reg[29]_i_1_n_5 ,\axi_awaddr_reg[29]_i_1_n_6 ,\axi_awaddr_reg[29]_i_1_n_7 }),
        .S({1'b0,\axi_awaddr[29]_i_2_n_0 ,\axi_awaddr[29]_i_3_n_0 ,\axi_awaddr[29]_i_4_n_0 }));
  FDRE \axi_awaddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[1]_i_2_n_6 ),
        .Q(axi_awaddr_reg[2]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[29]_i_1_n_6 ),
        .Q(axi_awaddr_reg[30]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[29]_i_1_n_5 ),
        .Q(axi_awaddr_reg[31]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[1]_i_2_n_5 ),
        .Q(axi_awaddr_reg[3]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[1]_i_2_n_4 ),
        .Q(axi_awaddr_reg[4]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[5]_i_1_n_7 ),
        .Q(axi_awaddr_reg[5]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[5]_i_1 
       (.CI(\axi_awaddr_reg[1]_i_2_n_0 ),
        .CO({\axi_awaddr_reg[5]_i_1_n_0 ,\axi_awaddr_reg[5]_i_1_n_1 ,\axi_awaddr_reg[5]_i_1_n_2 ,\axi_awaddr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(user_wr_burst_len[6:3]),
        .O({\axi_awaddr_reg[5]_i_1_n_4 ,\axi_awaddr_reg[5]_i_1_n_5 ,\axi_awaddr_reg[5]_i_1_n_6 ,\axi_awaddr_reg[5]_i_1_n_7 }),
        .S({\axi_awaddr[5]_i_2_n_0 ,\axi_awaddr[5]_i_3_n_0 ,\axi_awaddr[5]_i_4_n_0 ,\axi_awaddr[5]_i_5_n_0 }));
  FDRE \axi_awaddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[5]_i_1_n_6 ),
        .Q(axi_awaddr_reg[6]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[5]_i_1_n_5 ),
        .Q(axi_awaddr_reg[7]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[5]_i_1_n_4 ),
        .Q(axi_awaddr_reg[8]),
        .R(axi_awvalid_reg0));
  FDRE \axi_awaddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_7 ),
        .Q(axi_awaddr_reg[9]),
        .R(axi_awvalid_reg0));
  CARRY4 \axi_awaddr_reg[9]_i_1 
       (.CI(\axi_awaddr_reg[5]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[9]_i_1_n_0 ,\axi_awaddr_reg[9]_i_1_n_1 ,\axi_awaddr_reg[9]_i_1_n_2 ,\axi_awaddr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,user_wr_burst_len[7]}),
        .O({\axi_awaddr_reg[9]_i_1_n_4 ,\axi_awaddr_reg[9]_i_1_n_5 ,\axi_awaddr_reg[9]_i_1_n_6 ,\axi_awaddr_reg[9]_i_1_n_7 }),
        .S({\axi_awaddr[9]_i_2_n_0 ,\axi_awaddr[9]_i_3_n_0 ,\axi_awaddr[9]_i_4_n_0 ,\axi_awaddr[9]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'hB)) 
    axi_awvalid_i_1
       (.I0(user_wr_en),
        .I1(M_AXI_ARESETN),
        .O(axi_awvalid_reg0));
  LUT3 #(
    .INIT(8'h74)) 
    axi_awvalid_i_2
       (.I0(M_AXI_AWREADY_w),
        .I1(M_AXI_AWVALID_w),
        .I2(start_single_burst_write),
        .O(axi_awvalid_i_2_n_0));
  FDRE axi_awvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awvalid_i_2_n_0),
        .Q(M_AXI_AWVALID_w),
        .R(axi_awvalid_reg0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(M_AXI_BVALID),
        .I1(M_AXI_BREADY),
        .O(axi_bready0));
  FDRE axi_bready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bready0),
        .Q(M_AXI_BREADY),
        .R(axi_awvalid_reg0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04404440)) 
    axi_rready_i_1
       (.I0(user_rd_en),
        .I1(M_AXI_ARESETN),
        .I2(M_AXI_RVALID),
        .I3(M_AXI_RREADY),
        .I4(M_AXI_RLAST),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(M_AXI_RREADY),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8303030)) 
    axi_wlast_i_1
       (.I0(axi_wlast_reg3),
        .I1(axi_wlast_i_3_n_0),
        .I2(user_wr_burst_len[0]),
        .I3(M_AXI_WREADY_w),
        .I4(M_AXI_WVALID_w),
        .I5(M_AXI_WLAST_w),
        .O(axi_wlast_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_10
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_11
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_12
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_13
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_13_n_0));
  LUT6 #(
    .INIT(64'h2100004200212100)) 
    axi_wlast_i_14
       (.I0(user_wr_burst_len[7]),
        .I1(write_index_reg__0),
        .I2(write_index_w[7]),
        .I3(axi_wlast_i_17_n_0),
        .I4(user_wr_burst_len[6]),
        .I5(write_index_w[6]),
        .O(axi_wlast_i_14_n_0));
  LUT6 #(
    .INIT(64'h8200002800828200)) 
    axi_wlast_i_15
       (.I0(axi_wlast_i_18_n_0),
        .I1(user_wr_burst_len[5]),
        .I2(write_index_w[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .I5(write_index_w[4]),
        .O(axi_wlast_i_15_n_0));
  LUT6 #(
    .INIT(64'h1200001284000084)) 
    axi_wlast_i_16
       (.I0(user_wr_burst_len[2]),
        .I1(user_wr_burst_len[1]),
        .I2(write_index_w[2]),
        .I3(user_wr_burst_len[0]),
        .I4(write_index_w[0]),
        .I5(write_index_w[1]),
        .O(axi_wlast_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_17
       (.I0(user_wr_burst_len[4]),
        .I1(user_wr_burst_len[1]),
        .I2(user_wr_burst_len[2]),
        .I3(user_wr_burst_len[3]),
        .I4(user_wr_burst_len[5]),
        .O(axi_wlast_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA956)) 
    axi_wlast_i_18
       (.I0(user_wr_burst_len[3]),
        .I1(user_wr_burst_len[2]),
        .I2(user_wr_burst_len[1]),
        .I3(write_index_w[3]),
        .O(axi_wlast_i_18_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_3
       (.I0(user_wr_burst_len[7]),
        .I1(user_wr_burst_len[6]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[4]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .O(axi_wlast_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_5
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_6
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_7
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axi_wlast_i_9
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(user_wr_burst_len[4]),
        .O(axi_wlast_i_9_n_0));
  FDRE axi_wlast_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wlast_i_1_n_0),
        .Q(M_AXI_WLAST_w),
        .R(axi_awvalid_reg0));
  CARRY4 axi_wlast_reg_i_2
       (.CI(axi_wlast_reg_i_4_n_0),
        .CO({NLW_axi_wlast_reg_i_2_CO_UNCONNECTED[3],axi_wlast_reg3,axi_wlast_reg_i_2_n_2,axi_wlast_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_wlast_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,axi_wlast_i_5_n_0,axi_wlast_i_6_n_0,axi_wlast_i_7_n_0}));
  CARRY4 axi_wlast_reg_i_4
       (.CI(axi_wlast_reg_i_8_n_0),
        .CO({axi_wlast_reg_i_4_n_0,axi_wlast_reg_i_4_n_1,axi_wlast_reg_i_4_n_2,axi_wlast_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_wlast_reg_i_4_O_UNCONNECTED[3:0]),
        .S({axi_wlast_i_9_n_0,axi_wlast_i_10_n_0,axi_wlast_i_11_n_0,axi_wlast_i_12_n_0}));
  CARRY4 axi_wlast_reg_i_8
       (.CI(1'b0),
        .CO({axi_wlast_reg_i_8_n_0,axi_wlast_reg_i_8_n_1,axi_wlast_reg_i_8_n_2,axi_wlast_reg_i_8_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_wlast_reg_i_8_O_UNCONNECTED[3:0]),
        .S({axi_wlast_i_13_n_0,axi_wlast_i_14_n_0,axi_wlast_i_15_n_0,axi_wlast_i_16_n_0}));
  LUT4 #(
    .INIT(16'h7F70)) 
    axi_wvalid_i_1
       (.I0(M_AXI_WLAST_w),
        .I1(M_AXI_WREADY_w),
        .I2(M_AXI_WVALID_w),
        .I3(start_single_burst_write),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(M_AXI_WVALID_w),
        .R(axi_awvalid_reg0));
  LUT6 #(
    .INIT(64'h00000000CEEEEEEE)) 
    burst_read_active_i_1
       (.I0(burst_read_active),
        .I1(start_single_burst_read),
        .I2(M_AXI_RVALID),
        .I3(M_AXI_RREADY),
        .I4(M_AXI_RLAST),
        .I5(\read_burst_counter[0]_i_1_n_0 ),
        .O(burst_read_active_i_1_n_0));
  FDRE burst_read_active_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(burst_read_active_i_1_n_0),
        .Q(burst_read_active),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    burst_write_active_i_1
       (.I0(M_AXI_BVALID),
        .I1(M_AXI_BREADY),
        .I2(start_single_burst_write),
        .I3(burst_write_active),
        .O(burst_write_active_i_1_n_0));
  FDRE burst_write_active_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(burst_write_active_i_1_n_0),
        .Q(burst_write_active),
        .R(axi_awvalid_reg0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(state_w[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(state_w[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \read_burst_counter[0]_i_1 
       (.I0(user_rd_en),
        .I1(M_AXI_ARESETN),
        .O(\read_burst_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \read_burst_counter[0]_i_10 
       (.I0(user_rd_len[15]),
        .I1(read_burst_counter_reg[15]),
        .O(\read_burst_counter[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \read_burst_counter[0]_i_11 
       (.I0(read_burst_counter_reg[12]),
        .I1(user_rd_len[12]),
        .I2(read_burst_counter_reg[13]),
        .I3(user_rd_len[13]),
        .I4(user_rd_len[14]),
        .I5(read_burst_counter_reg[14]),
        .O(\read_burst_counter[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \read_burst_counter[0]_i_12 
       (.I0(read_burst_counter_reg[9]),
        .I1(user_rd_len[9]),
        .I2(read_burst_counter_reg[10]),
        .I3(user_rd_len[10]),
        .I4(user_rd_len[11]),
        .I5(read_burst_counter_reg[11]),
        .O(\read_burst_counter[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \read_burst_counter[0]_i_13 
       (.I0(read_burst_counter_reg[6]),
        .I1(user_rd_len[6]),
        .I2(read_burst_counter_reg[7]),
        .I3(user_rd_len[7]),
        .I4(user_rd_len[8]),
        .I5(read_burst_counter_reg[8]),
        .O(\read_burst_counter[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \read_burst_counter[0]_i_14 
       (.I0(read_burst_counter_reg[3]),
        .I1(user_rd_len[3]),
        .I2(read_burst_counter_reg[4]),
        .I3(user_rd_len[4]),
        .I4(user_rd_len[5]),
        .I5(read_burst_counter_reg[5]),
        .O(\read_burst_counter[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \read_burst_counter[0]_i_15 
       (.I0(read_burst_counter_reg[0]),
        .I1(user_rd_len[0]),
        .I2(read_burst_counter_reg[1]),
        .I3(user_rd_len[1]),
        .I4(user_rd_len[2]),
        .I5(read_burst_counter_reg[2]),
        .O(\read_burst_counter[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \read_burst_counter[0]_i_2 
       (.I0(M_AXI_ARREADY),
        .I1(M_AXI_ARVALID),
        .I2(read_burst_counter0),
        .O(read_burst_counter));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[0]_i_5 
       (.I0(read_burst_counter_reg[3]),
        .O(\read_burst_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[0]_i_6 
       (.I0(read_burst_counter_reg[2]),
        .O(\read_burst_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[0]_i_7 
       (.I0(read_burst_counter_reg[1]),
        .O(\read_burst_counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_burst_counter[0]_i_8 
       (.I0(read_burst_counter_reg[0]),
        .O(\read_burst_counter[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[12]_i_2 
       (.I0(read_burst_counter_reg[15]),
        .O(\read_burst_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[12]_i_3 
       (.I0(read_burst_counter_reg[14]),
        .O(\read_burst_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[12]_i_4 
       (.I0(read_burst_counter_reg[13]),
        .O(\read_burst_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[12]_i_5 
       (.I0(read_burst_counter_reg[12]),
        .O(\read_burst_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_2 
       (.I0(read_burst_counter_reg[7]),
        .O(\read_burst_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_3 
       (.I0(read_burst_counter_reg[6]),
        .O(\read_burst_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_4 
       (.I0(read_burst_counter_reg[5]),
        .O(\read_burst_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_5 
       (.I0(read_burst_counter_reg[4]),
        .O(\read_burst_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_2 
       (.I0(read_burst_counter_reg[11]),
        .O(\read_burst_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_3 
       (.I0(read_burst_counter_reg[10]),
        .O(\read_burst_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_4 
       (.I0(read_burst_counter_reg[9]),
        .O(\read_burst_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_5 
       (.I0(read_burst_counter_reg[8]),
        .O(\read_burst_counter[8]_i_5_n_0 ));
  FDRE \read_burst_counter_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_3_n_7 ),
        .Q(read_burst_counter_reg[0]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \read_burst_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\read_burst_counter_reg[0]_i_3_n_0 ,\read_burst_counter_reg[0]_i_3_n_1 ,\read_burst_counter_reg[0]_i_3_n_2 ,\read_burst_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\read_burst_counter_reg[0]_i_3_n_4 ,\read_burst_counter_reg[0]_i_3_n_5 ,\read_burst_counter_reg[0]_i_3_n_6 ,\read_burst_counter_reg[0]_i_3_n_7 }),
        .S({\read_burst_counter[0]_i_5_n_0 ,\read_burst_counter[0]_i_6_n_0 ,\read_burst_counter[0]_i_7_n_0 ,\read_burst_counter[0]_i_8_n_0 }));
  CARRY4 \read_burst_counter_reg[0]_i_4 
       (.CI(\read_burst_counter_reg[0]_i_9_n_0 ),
        .CO({\NLW_read_burst_counter_reg[0]_i_4_CO_UNCONNECTED [3:2],read_burst_counter0,\read_burst_counter_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_read_burst_counter_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\read_burst_counter[0]_i_10_n_0 ,\read_burst_counter[0]_i_11_n_0 }));
  CARRY4 \read_burst_counter_reg[0]_i_9 
       (.CI(1'b0),
        .CO({\read_burst_counter_reg[0]_i_9_n_0 ,\read_burst_counter_reg[0]_i_9_n_1 ,\read_burst_counter_reg[0]_i_9_n_2 ,\read_burst_counter_reg[0]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_read_burst_counter_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\read_burst_counter[0]_i_12_n_0 ,\read_burst_counter[0]_i_13_n_0 ,\read_burst_counter[0]_i_14_n_0 ,\read_burst_counter[0]_i_15_n_0 }));
  FDRE \read_burst_counter_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_5 ),
        .Q(read_burst_counter_reg[10]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_4 ),
        .Q(read_burst_counter_reg[11]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[12]_i_1_n_7 ),
        .Q(read_burst_counter_reg[12]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \read_burst_counter_reg[12]_i_1 
       (.CI(\read_burst_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_read_burst_counter_reg[12]_i_1_CO_UNCONNECTED [3],\read_burst_counter_reg[12]_i_1_n_1 ,\read_burst_counter_reg[12]_i_1_n_2 ,\read_burst_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_burst_counter_reg[12]_i_1_n_4 ,\read_burst_counter_reg[12]_i_1_n_5 ,\read_burst_counter_reg[12]_i_1_n_6 ,\read_burst_counter_reg[12]_i_1_n_7 }),
        .S({\read_burst_counter[12]_i_2_n_0 ,\read_burst_counter[12]_i_3_n_0 ,\read_burst_counter[12]_i_4_n_0 ,\read_burst_counter[12]_i_5_n_0 }));
  FDRE \read_burst_counter_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[12]_i_1_n_6 ),
        .Q(read_burst_counter_reg[13]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[12]_i_1_n_5 ),
        .Q(read_burst_counter_reg[14]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[12]_i_1_n_4 ),
        .Q(read_burst_counter_reg[15]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_3_n_6 ),
        .Q(read_burst_counter_reg[1]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_3_n_5 ),
        .Q(read_burst_counter_reg[2]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_3_n_4 ),
        .Q(read_burst_counter_reg[3]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_7 ),
        .Q(read_burst_counter_reg[4]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \read_burst_counter_reg[4]_i_1 
       (.CI(\read_burst_counter_reg[0]_i_3_n_0 ),
        .CO({\read_burst_counter_reg[4]_i_1_n_0 ,\read_burst_counter_reg[4]_i_1_n_1 ,\read_burst_counter_reg[4]_i_1_n_2 ,\read_burst_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_burst_counter_reg[4]_i_1_n_4 ,\read_burst_counter_reg[4]_i_1_n_5 ,\read_burst_counter_reg[4]_i_1_n_6 ,\read_burst_counter_reg[4]_i_1_n_7 }),
        .S({\read_burst_counter[4]_i_2_n_0 ,\read_burst_counter[4]_i_3_n_0 ,\read_burst_counter[4]_i_4_n_0 ,\read_burst_counter[4]_i_5_n_0 }));
  FDRE \read_burst_counter_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_6 ),
        .Q(read_burst_counter_reg[5]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_5 ),
        .Q(read_burst_counter_reg[6]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_4 ),
        .Q(read_burst_counter_reg[7]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_7 ),
        .Q(read_burst_counter_reg[8]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  CARRY4 \read_burst_counter_reg[8]_i_1 
       (.CI(\read_burst_counter_reg[4]_i_1_n_0 ),
        .CO({\read_burst_counter_reg[8]_i_1_n_0 ,\read_burst_counter_reg[8]_i_1_n_1 ,\read_burst_counter_reg[8]_i_1_n_2 ,\read_burst_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_burst_counter_reg[8]_i_1_n_4 ,\read_burst_counter_reg[8]_i_1_n_5 ,\read_burst_counter_reg[8]_i_1_n_6 ,\read_burst_counter_reg[8]_i_1_n_7 }),
        .S({\read_burst_counter[8]_i_2_n_0 ,\read_burst_counter[8]_i_3_n_0 ,\read_burst_counter[8]_i_4_n_0 ,\read_burst_counter[8]_i_5_n_0 }));
  FDRE \read_burst_counter_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_6 ),
        .Q(read_burst_counter_reg[9]),
        .R(\read_burst_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    read_data_val_INST_0
       (.I0(M_AXI_RREADY),
        .I1(M_AXI_RVALID),
        .O(read_data_val));
  LUT1 #(
    .INIT(2'h1)) 
    \read_index[0]_i_1 
       (.I0(read_index_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_index[1]_i_1 
       (.I0(read_index_reg__0[0]),
        .I1(read_index_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_index[2]_i_1 
       (.I0(read_index_reg__0[0]),
        .I1(read_index_reg__0[1]),
        .I2(read_index_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_index[3]_i_1 
       (.I0(read_index_reg__0[2]),
        .I1(read_index_reg__0[1]),
        .I2(read_index_reg__0[0]),
        .I3(read_index_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_index[4]_i_1 
       (.I0(read_index_reg__0[3]),
        .I1(read_index_reg__0[0]),
        .I2(read_index_reg__0[1]),
        .I3(read_index_reg__0[2]),
        .I4(read_index_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_index[5]_i_1 
       (.I0(read_index_reg__0[2]),
        .I1(read_index_reg__0[1]),
        .I2(read_index_reg__0[0]),
        .I3(read_index_reg__0[3]),
        .I4(read_index_reg__0[4]),
        .I5(read_index_reg__0[5]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \read_index[6]_i_1 
       (.I0(\read_index[8]_i_5_n_0 ),
        .I1(read_index_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \read_index[7]_i_1 
       (.I0(read_index_reg__0[6]),
        .I1(\read_index[8]_i_5_n_0 ),
        .I2(read_index_reg__0[7]),
        .O(p_0_in__1[7]));
  LUT3 #(
    .INIT(8'hFD)) 
    \read_index[8]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(user_rd_en),
        .I2(start_single_burst_read),
        .O(\read_index[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_11 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_12 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_13 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_14 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_15 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2110000800022110)) 
    \read_index[8]_i_16 
       (.I0(read_index_reg__0[6]),
        .I1(read_index_reg__0[8]),
        .I2(user_rd_burst_len[6]),
        .I3(\read_index[8]_i_19_n_0 ),
        .I4(user_rd_burst_len[7]),
        .I5(read_index_reg__0[7]),
        .O(\read_index[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8040400808040480)) 
    \read_index[8]_i_17 
       (.I0(read_index_reg__0[4]),
        .I1(\read_index[8]_i_20_n_0 ),
        .I2(read_index_reg__0[5]),
        .I3(user_rd_burst_len[4]),
        .I4(\read_index[8]_i_21_n_0 ),
        .I5(user_rd_burst_len[5]),
        .O(\read_index[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4100002800824100)) 
    \read_index[8]_i_18 
       (.I0(read_index_reg__0[0]),
        .I1(user_rd_burst_len[2]),
        .I2(read_index_reg__0[2]),
        .I3(user_rd_burst_len[0]),
        .I4(user_rd_burst_len[1]),
        .I5(read_index_reg__0[1]),
        .O(\read_index[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_19 
       (.I0(user_rd_burst_len[4]),
        .I1(user_rd_burst_len[2]),
        .I2(user_rd_burst_len[0]),
        .I3(user_rd_burst_len[1]),
        .I4(user_rd_burst_len[3]),
        .I5(user_rd_burst_len[5]),
        .O(\read_index[8]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \read_index[8]_i_2 
       (.I0(M_AXI_RVALID),
        .I1(M_AXI_RREADY),
        .I2(read_index1),
        .O(read_index0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h99999996)) 
    \read_index[8]_i_20 
       (.I0(read_index_reg__0[3]),
        .I1(user_rd_burst_len[3]),
        .I2(user_rd_burst_len[1]),
        .I3(user_rd_burst_len[0]),
        .I4(user_rd_burst_len[2]),
        .O(\read_index[8]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \read_index[8]_i_21 
       (.I0(user_rd_burst_len[2]),
        .I1(user_rd_burst_len[0]),
        .I2(user_rd_burst_len[1]),
        .I3(user_rd_burst_len[3]),
        .O(\read_index[8]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \read_index[8]_i_3 
       (.I0(read_index_reg__0[7]),
        .I1(\read_index[8]_i_5_n_0 ),
        .I2(read_index_reg__0[6]),
        .I3(read_index_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \read_index[8]_i_5 
       (.I0(read_index_reg__0[5]),
        .I1(read_index_reg__0[2]),
        .I2(read_index_reg__0[1]),
        .I3(read_index_reg__0[0]),
        .I4(read_index_reg__0[3]),
        .I5(read_index_reg__0[4]),
        .O(\read_index[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_7 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_8 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_index[8]_i_9 
       (.I0(user_rd_burst_len[6]),
        .I1(user_rd_burst_len[4]),
        .I2(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I3(user_rd_burst_len[3]),
        .I4(user_rd_burst_len[5]),
        .I5(user_rd_burst_len[7]),
        .O(\read_index[8]_i_9_n_0 ));
  FDRE \read_index_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[0]),
        .Q(read_index_reg__0[0]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[1]),
        .Q(read_index_reg__0[1]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[2]),
        .Q(read_index_reg__0[2]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[3]),
        .Q(read_index_reg__0[3]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[4]),
        .Q(read_index_reg__0[4]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[5]),
        .Q(read_index_reg__0[5]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[6]),
        .Q(read_index_reg__0[6]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[7]),
        .Q(read_index_reg__0[7]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__1[8]),
        .Q(read_index_reg__0[8]),
        .R(\read_index[8]_i_1_n_0 ));
  CARRY4 \read_index_reg[8]_i_10 
       (.CI(1'b0),
        .CO({\read_index_reg[8]_i_10_n_0 ,\read_index_reg[8]_i_10_n_1 ,\read_index_reg[8]_i_10_n_2 ,\read_index_reg[8]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_read_index_reg[8]_i_10_O_UNCONNECTED [3:0]),
        .S({\read_index[8]_i_15_n_0 ,\read_index[8]_i_16_n_0 ,\read_index[8]_i_17_n_0 ,\read_index[8]_i_18_n_0 }));
  CARRY4 \read_index_reg[8]_i_4 
       (.CI(\read_index_reg[8]_i_6_n_0 ),
        .CO({\NLW_read_index_reg[8]_i_4_CO_UNCONNECTED [3],read_index1,\read_index_reg[8]_i_4_n_2 ,\read_index_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_read_index_reg[8]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\read_index[8]_i_7_n_0 ,\read_index[8]_i_8_n_0 ,\read_index[8]_i_9_n_0 }));
  CARRY4 \read_index_reg[8]_i_6 
       (.CI(\read_index_reg[8]_i_10_n_0 ),
        .CO({\read_index_reg[8]_i_6_n_0 ,\read_index_reg[8]_i_6_n_1 ,\read_index_reg[8]_i_6_n_2 ,\read_index_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_read_index_reg[8]_i_6_O_UNCONNECTED [3:0]),
        .S({\read_index[8]_i_11_n_0 ,\read_index[8]_i_12_n_0 ,\read_index[8]_i_13_n_0 ,\read_index[8]_i_14_n_0 }));
  FDRE reads_done_d1_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(reads_done),
        .Q(reads_done_d1),
        .R(1'b0));
  FDRE reads_done_d2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(reads_done_d1),
        .Q(reads_done_d2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    reads_done_i_1
       (.I0(reads_done),
        .I1(reads_done1),
        .I2(reads_done2),
        .I3(M_AXI_RVALID),
        .I4(M_AXI_RREADY),
        .I5(\read_burst_counter[0]_i_1_n_0 ),
        .O(reads_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_10
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    reads_done_i_11
       (.I0(read_burst_counter_reg[9]),
        .I1(user_rd_len[9]),
        .I2(read_burst_counter_reg[10]),
        .I3(user_rd_len[10]),
        .I4(user_rd_len[11]),
        .I5(read_burst_counter_reg[11]),
        .O(reads_done_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    reads_done_i_12
       (.I0(read_burst_counter_reg[6]),
        .I1(user_rd_len[6]),
        .I2(read_burst_counter_reg[7]),
        .I3(user_rd_len[7]),
        .I4(user_rd_len[8]),
        .I5(read_burst_counter_reg[8]),
        .O(reads_done_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    reads_done_i_13
       (.I0(read_burst_counter_reg[3]),
        .I1(user_rd_len[3]),
        .I2(read_burst_counter_reg[4]),
        .I3(user_rd_len[4]),
        .I4(user_rd_len[5]),
        .I5(read_burst_counter_reg[5]),
        .O(reads_done_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    reads_done_i_14
       (.I0(read_burst_counter_reg[0]),
        .I1(user_rd_len[0]),
        .I2(read_burst_counter_reg[1]),
        .I3(user_rd_len[1]),
        .I4(user_rd_len[2]),
        .I5(read_burst_counter_reg[2]),
        .O(reads_done_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_16
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_17
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_18
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_19
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_20
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_20_n_0));
  LUT6 #(
    .INIT(64'h2110000800022110)) 
    reads_done_i_21
       (.I0(read_index_reg__0[6]),
        .I1(read_index_reg__0[8]),
        .I2(user_wr_burst_len[6]),
        .I3(\write_index[8]_i_19_n_0 ),
        .I4(user_wr_burst_len[7]),
        .I5(read_index_reg__0[7]),
        .O(reads_done_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    reads_done_i_22
       (.I0(\write_index[8]_i_20_n_0 ),
        .I1(read_index_reg__0[3]),
        .I2(read_index_reg__0[4]),
        .I3(\write_index[8]_i_21_n_0 ),
        .I4(\write_index[8]_i_22_n_0 ),
        .I5(read_index_reg__0[5]),
        .O(reads_done_i_22_n_0));
  LUT6 #(
    .INIT(64'h4120000800084120)) 
    reads_done_i_23
       (.I0(read_index_reg__0[0]),
        .I1(read_index_reg__0[1]),
        .I2(user_wr_burst_len[1]),
        .I3(user_wr_burst_len[0]),
        .I4(user_wr_burst_len[2]),
        .I5(read_index_reg__0[2]),
        .O(reads_done_i_23_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reads_done_i_5
       (.I0(user_rd_len[15]),
        .I1(read_burst_counter_reg[15]),
        .O(reads_done_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    reads_done_i_6
       (.I0(read_burst_counter_reg[12]),
        .I1(user_rd_len[12]),
        .I2(read_burst_counter_reg[13]),
        .I3(user_rd_len[13]),
        .I4(user_rd_len[14]),
        .I5(read_burst_counter_reg[14]),
        .O(reads_done_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_8
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reads_done_i_9
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(reads_done_i_9_n_0));
  FDRE reads_done_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(reads_done),
        .R(1'b0));
  CARRY4 reads_done_reg_i_15
       (.CI(1'b0),
        .CO({reads_done_reg_i_15_n_0,reads_done_reg_i_15_n_1,reads_done_reg_i_15_n_2,reads_done_reg_i_15_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_15_O_UNCONNECTED[3:0]),
        .S({reads_done_i_20_n_0,reads_done_i_21_n_0,reads_done_i_22_n_0,reads_done_i_23_n_0}));
  CARRY4 reads_done_reg_i_2
       (.CI(reads_done_reg_i_4_n_0),
        .CO({NLW_reads_done_reg_i_2_CO_UNCONNECTED[3:2],reads_done1,reads_done_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,reads_done_i_5_n_0,reads_done_i_6_n_0}));
  CARRY4 reads_done_reg_i_3
       (.CI(reads_done_reg_i_7_n_0),
        .CO({NLW_reads_done_reg_i_3_CO_UNCONNECTED[3],reads_done2,reads_done_reg_i_3_n_2,reads_done_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,reads_done_i_8_n_0,reads_done_i_9_n_0,reads_done_i_10_n_0}));
  CARRY4 reads_done_reg_i_4
       (.CI(1'b0),
        .CO({reads_done_reg_i_4_n_0,reads_done_reg_i_4_n_1,reads_done_reg_i_4_n_2,reads_done_reg_i_4_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_4_O_UNCONNECTED[3:0]),
        .S({reads_done_i_11_n_0,reads_done_i_12_n_0,reads_done_i_13_n_0,reads_done_i_14_n_0}));
  CARRY4 reads_done_reg_i_7
       (.CI(reads_done_reg_i_15_n_0),
        .CO({reads_done_reg_i_7_n_0,reads_done_reg_i_7_n_1,reads_done_reg_i_7_n_2,reads_done_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reads_done_reg_i_7_O_UNCONNECTED[3:0]),
        .S({reads_done_i_16_n_0,reads_done_i_17_n_0,reads_done_i_18_n_0,reads_done_i_19_n_0}));
  LUT4 #(
    .INIT(16'h0F10)) 
    start_single_burst_read_i_1
       (.I0(M_AXI_ARVALID),
        .I1(burst_read_active),
        .I2(start_single_burst_read_i_2_n_0),
        .I3(start_single_burst_read),
        .O(start_single_burst_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    start_single_burst_read_i_2
       (.I0(state_w[0]),
        .I1(state_w[1]),
        .I2(state_w[2]),
        .I3(reads_done),
        .I4(state_w[3]),
        .O(start_single_burst_read_i_2_n_0));
  FDRE start_single_burst_read_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(start_single_burst_read_i_1_n_0),
        .Q(start_single_burst_read),
        .R(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBFFFF08880000)) 
    start_single_burst_write_i_1
       (.I0(start_single_burst_write0),
        .I1(start_single_burst_write_i_3_n_0),
        .I2(start_single_burst_write2),
        .I3(M_AXI_WLAST_w),
        .I4(start_single_burst_write_i_4_n_0),
        .I5(start_single_burst_write),
        .O(start_single_burst_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    start_single_burst_write_i_2
       (.I0(start_single_burst_write),
        .I1(M_AXI_AWVALID_w),
        .I2(burst_write_active),
        .O(start_single_burst_write0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    start_single_burst_write_i_3
       (.I0(state_w[3]),
        .I1(writes_done_w),
        .O(start_single_burst_write_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    start_single_burst_write_i_4
       (.I0(state_w[1]),
        .I1(state_w[2]),
        .I2(state_w[0]),
        .O(start_single_burst_write_i_4_n_0));
  FDRE start_single_burst_write_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(start_single_burst_write_i_1_n_0),
        .Q(start_single_burst_write),
        .R(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[3]_i_3_n_0 ),
        .I2(state_w[2]),
        .I3(writes_done_w),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF020202)) 
    \state[0]_i_2 
       (.I0(state_w[0]),
        .I1(user_rd_en),
        .I2(user_wr_en),
        .I3(reads_done),
        .I4(state_w[3]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(start_single_burst_write2),
        .I2(M_AXI_WLAST_w),
        .I3(writes_done_w),
        .I4(state_w[2]),
        .I5(\state[3]_i_3_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0202020)) 
    \state[1]_i_2 
       (.I0(state_w[1]),
        .I1(user_wr_satisfy),
        .I2(\state[3]_i_3_n_0 ),
        .I3(state_w[0]),
        .I4(user_wr_en),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF70707070707070)) 
    \state[2]_i_1 
       (.I0(start_single_burst_write2),
        .I1(M_AXI_WLAST_w),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state[3]_i_3_n_0 ),
        .I4(state_w[1]),
        .I5(user_wr_satisfy),
        .O(\state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_10 
       (.I0(write_burst_counter_w[12]),
        .I1(user_wr_len[12]),
        .I2(user_wr_len[13]),
        .I3(write_burst_counter_w[13]),
        .O(\state[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_11 
       (.I0(write_burst_counter_w[10]),
        .I1(user_wr_len[10]),
        .I2(user_wr_len[11]),
        .I3(write_burst_counter_w[11]),
        .O(\state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_12 
       (.I0(user_wr_len[9]),
        .I1(write_burst_counter_w[9]),
        .I2(write_burst_counter_w[8]),
        .I3(user_wr_len[8]),
        .O(\state[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_13 
       (.I0(user_wr_len[7]),
        .I1(write_burst_counter_w[7]),
        .I2(user_wr_len[6]),
        .I3(write_burst_counter_w[6]),
        .O(\state[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_14 
       (.I0(user_wr_len[5]),
        .I1(write_burst_counter_w[5]),
        .I2(user_wr_len[4]),
        .I3(write_burst_counter_w[4]),
        .O(\state[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_15 
       (.I0(user_wr_len[3]),
        .I1(write_burst_counter_w[3]),
        .I2(user_wr_len[2]),
        .I3(write_burst_counter_w[2]),
        .O(\state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_16 
       (.I0(user_wr_len[1]),
        .I1(write_burst_counter_w[1]),
        .I2(user_wr_len[0]),
        .I3(write_burst_counter_w[0]),
        .O(\state[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_17 
       (.I0(write_burst_counter_w[6]),
        .I1(user_wr_len[6]),
        .I2(user_wr_len[7]),
        .I3(write_burst_counter_w[7]),
        .O(\state[2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_18 
       (.I0(write_burst_counter_w[4]),
        .I1(user_wr_len[4]),
        .I2(user_wr_len[5]),
        .I3(write_burst_counter_w[5]),
        .O(\state[2]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_19 
       (.I0(user_wr_len[3]),
        .I1(write_burst_counter_w[3]),
        .I2(write_burst_counter_w[2]),
        .I3(user_wr_len[2]),
        .O(\state[2]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_20 
       (.I0(write_burst_counter_w[0]),
        .I1(user_wr_len[0]),
        .I2(user_wr_len[1]),
        .I3(write_burst_counter_w[1]),
        .O(\state[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[2]_i_3 
       (.I0(writes_done_w),
        .I1(state_w[2]),
        .I2(\state[3]_i_3_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_5 
       (.I0(user_wr_len[15]),
        .I1(write_burst_counter_w[15]),
        .I2(user_wr_len[14]),
        .I3(write_burst_counter_w[14]),
        .O(\state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_6 
       (.I0(user_wr_len[13]),
        .I1(write_burst_counter_w[13]),
        .I2(user_wr_len[12]),
        .I3(write_burst_counter_w[12]),
        .O(\state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_7 
       (.I0(user_wr_len[11]),
        .I1(write_burst_counter_w[11]),
        .I2(user_wr_len[10]),
        .I3(write_burst_counter_w[10]),
        .O(\state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_8 
       (.I0(user_wr_len[9]),
        .I1(write_burst_counter_w[9]),
        .I2(user_wr_len[8]),
        .I3(write_burst_counter_w[8]),
        .O(\state[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_9 
       (.I0(user_wr_len[14]),
        .I1(write_burst_counter_w[14]),
        .I2(write_burst_counter_w[15]),
        .I3(user_wr_len[15]),
        .O(\state[2]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[3]_i_1 
       (.I0(M_AXI_ARESETN),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20002000FF002000)) 
    \state[3]_i_2 
       (.I0(user_rd_en),
        .I1(user_wr_en),
        .I2(state_w[0]),
        .I3(\state[3]_i_3_n_0 ),
        .I4(state_w[3]),
        .I5(reads_done),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \state[3]_i_3 
       (.I0(state_w[0]),
        .I1(state_w[1]),
        .I2(state_w[2]),
        .I3(state_w[3]),
        .O(\state[3]_i_3_n_0 ));
  FDSE \state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state_w[0]),
        .S(\state[3]_i_1_n_0 ));
  FDRE \state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state_w[1]),
        .R(\state[3]_i_1_n_0 ));
  FDRE \state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state_w[2]),
        .R(\state[3]_i_1_n_0 ));
  CARRY4 \state_reg[2]_i_2 
       (.CI(\state_reg[2]_i_4_n_0 ),
        .CO({start_single_burst_write2,\state_reg[2]_i_2_n_1 ,\state_reg[2]_i_2_n_2 ,\state_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\state[2]_i_5_n_0 ,\state[2]_i_6_n_0 ,\state[2]_i_7_n_0 ,\state[2]_i_8_n_0 }),
        .O(\NLW_state_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_9_n_0 ,\state[2]_i_10_n_0 ,\state[2]_i_11_n_0 ,\state[2]_i_12_n_0 }));
  CARRY4 \state_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\state_reg[2]_i_4_n_0 ,\state_reg[2]_i_4_n_1 ,\state_reg[2]_i_4_n_2 ,\state_reg[2]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\state[2]_i_13_n_0 ,\state[2]_i_14_n_0 ,\state[2]_i_15_n_0 ,\state[2]_i_16_n_0 }),
        .O(\NLW_state_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_17_n_0 ,\state[2]_i_18_n_0 ,\state[2]_i_19_n_0 ,\state[2]_i_20_n_0 }));
  FDRE \state_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\state[3]_i_2_n_0 ),
        .Q(state_w[3]),
        .R(\state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    user_rd_data_en_INST_0
       (.I0(M_AXI_WVALID_w),
        .I1(M_AXI_WREADY_w),
        .O(wnext_w));
  LUT3 #(
    .INIT(8'h80)) 
    \write_burst_counter[0]_i_1 
       (.I0(M_AXI_AWREADY_w),
        .I1(M_AXI_AWVALID_w),
        .I2(write_burst_counter0),
        .O(\write_burst_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \write_burst_counter[0]_i_10 
       (.I0(write_burst_counter_w[13]),
        .I1(user_wr_len[13]),
        .I2(user_wr_len[14]),
        .I3(write_burst_counter_w[14]),
        .I4(write_burst_counter_w[12]),
        .I5(user_wr_len[12]),
        .O(\write_burst_counter[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \write_burst_counter[0]_i_11 
       (.I0(write_burst_counter_w[11]),
        .I1(user_wr_len[11]),
        .I2(user_wr_len[10]),
        .I3(write_burst_counter_w[10]),
        .I4(user_wr_len[9]),
        .I5(write_burst_counter_w[9]),
        .O(\write_burst_counter[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \write_burst_counter[0]_i_12 
       (.I0(write_burst_counter_w[7]),
        .I1(user_wr_len[7]),
        .I2(user_wr_len[8]),
        .I3(write_burst_counter_w[8]),
        .I4(write_burst_counter_w[6]),
        .I5(user_wr_len[6]),
        .O(\write_burst_counter[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \write_burst_counter[0]_i_13 
       (.I0(write_burst_counter_w[5]),
        .I1(user_wr_len[5]),
        .I2(user_wr_len[4]),
        .I3(write_burst_counter_w[4]),
        .I4(user_wr_len[3]),
        .I5(write_burst_counter_w[3]),
        .O(\write_burst_counter[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \write_burst_counter[0]_i_14 
       (.I0(write_burst_counter_w[1]),
        .I1(user_wr_len[1]),
        .I2(user_wr_len[2]),
        .I3(write_burst_counter_w[2]),
        .I4(write_burst_counter_w[0]),
        .I5(user_wr_len[0]),
        .O(\write_burst_counter[0]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[0]_i_4 
       (.I0(write_burst_counter_w[3]),
        .O(\write_burst_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[0]_i_5 
       (.I0(write_burst_counter_w[2]),
        .O(\write_burst_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[0]_i_6 
       (.I0(write_burst_counter_w[1]),
        .O(\write_burst_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_burst_counter[0]_i_7 
       (.I0(write_burst_counter_w[0]),
        .O(\write_burst_counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \write_burst_counter[0]_i_9 
       (.I0(user_wr_len[15]),
        .I1(write_burst_counter_w[15]),
        .O(\write_burst_counter[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[12]_i_2 
       (.I0(write_burst_counter_w[15]),
        .O(\write_burst_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[12]_i_3 
       (.I0(write_burst_counter_w[14]),
        .O(\write_burst_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[12]_i_4 
       (.I0(write_burst_counter_w[13]),
        .O(\write_burst_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[12]_i_5 
       (.I0(write_burst_counter_w[12]),
        .O(\write_burst_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[4]_i_2 
       (.I0(write_burst_counter_w[7]),
        .O(\write_burst_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[4]_i_3 
       (.I0(write_burst_counter_w[6]),
        .O(\write_burst_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[4]_i_4 
       (.I0(write_burst_counter_w[5]),
        .O(\write_burst_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[4]_i_5 
       (.I0(write_burst_counter_w[4]),
        .O(\write_burst_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[8]_i_2 
       (.I0(write_burst_counter_w[11]),
        .O(\write_burst_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[8]_i_3 
       (.I0(write_burst_counter_w[10]),
        .O(\write_burst_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[8]_i_4 
       (.I0(write_burst_counter_w[9]),
        .O(\write_burst_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \write_burst_counter[8]_i_5 
       (.I0(write_burst_counter_w[8]),
        .O(\write_burst_counter[8]_i_5_n_0 ));
  FDRE \write_burst_counter_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[0]_i_2_n_7 ),
        .Q(write_burst_counter_w[0]),
        .R(axi_awvalid_reg0));
  CARRY4 \write_burst_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\write_burst_counter_reg[0]_i_2_n_0 ,\write_burst_counter_reg[0]_i_2_n_1 ,\write_burst_counter_reg[0]_i_2_n_2 ,\write_burst_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\write_burst_counter_reg[0]_i_2_n_4 ,\write_burst_counter_reg[0]_i_2_n_5 ,\write_burst_counter_reg[0]_i_2_n_6 ,\write_burst_counter_reg[0]_i_2_n_7 }),
        .S({\write_burst_counter[0]_i_4_n_0 ,\write_burst_counter[0]_i_5_n_0 ,\write_burst_counter[0]_i_6_n_0 ,\write_burst_counter[0]_i_7_n_0 }));
  CARRY4 \write_burst_counter_reg[0]_i_3 
       (.CI(\write_burst_counter_reg[0]_i_8_n_0 ),
        .CO({\NLW_write_burst_counter_reg[0]_i_3_CO_UNCONNECTED [3:2],write_burst_counter0,\write_burst_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_write_burst_counter_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\write_burst_counter[0]_i_9_n_0 ,\write_burst_counter[0]_i_10_n_0 }));
  CARRY4 \write_burst_counter_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\write_burst_counter_reg[0]_i_8_n_0 ,\write_burst_counter_reg[0]_i_8_n_1 ,\write_burst_counter_reg[0]_i_8_n_2 ,\write_burst_counter_reg[0]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_write_burst_counter_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\write_burst_counter[0]_i_11_n_0 ,\write_burst_counter[0]_i_12_n_0 ,\write_burst_counter[0]_i_13_n_0 ,\write_burst_counter[0]_i_14_n_0 }));
  FDRE \write_burst_counter_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[8]_i_1_n_5 ),
        .Q(write_burst_counter_w[10]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[8]_i_1_n_4 ),
        .Q(write_burst_counter_w[11]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[12]_i_1_n_7 ),
        .Q(write_burst_counter_w[12]),
        .R(axi_awvalid_reg0));
  CARRY4 \write_burst_counter_reg[12]_i_1 
       (.CI(\write_burst_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_write_burst_counter_reg[12]_i_1_CO_UNCONNECTED [3],\write_burst_counter_reg[12]_i_1_n_1 ,\write_burst_counter_reg[12]_i_1_n_2 ,\write_burst_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_burst_counter_reg[12]_i_1_n_4 ,\write_burst_counter_reg[12]_i_1_n_5 ,\write_burst_counter_reg[12]_i_1_n_6 ,\write_burst_counter_reg[12]_i_1_n_7 }),
        .S({\write_burst_counter[12]_i_2_n_0 ,\write_burst_counter[12]_i_3_n_0 ,\write_burst_counter[12]_i_4_n_0 ,\write_burst_counter[12]_i_5_n_0 }));
  FDRE \write_burst_counter_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[12]_i_1_n_6 ),
        .Q(write_burst_counter_w[13]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[12]_i_1_n_5 ),
        .Q(write_burst_counter_w[14]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[12]_i_1_n_4 ),
        .Q(write_burst_counter_w[15]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[0]_i_2_n_6 ),
        .Q(write_burst_counter_w[1]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[0]_i_2_n_5 ),
        .Q(write_burst_counter_w[2]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[0]_i_2_n_4 ),
        .Q(write_burst_counter_w[3]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[4]_i_1_n_7 ),
        .Q(write_burst_counter_w[4]),
        .R(axi_awvalid_reg0));
  CARRY4 \write_burst_counter_reg[4]_i_1 
       (.CI(\write_burst_counter_reg[0]_i_2_n_0 ),
        .CO({\write_burst_counter_reg[4]_i_1_n_0 ,\write_burst_counter_reg[4]_i_1_n_1 ,\write_burst_counter_reg[4]_i_1_n_2 ,\write_burst_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_burst_counter_reg[4]_i_1_n_4 ,\write_burst_counter_reg[4]_i_1_n_5 ,\write_burst_counter_reg[4]_i_1_n_6 ,\write_burst_counter_reg[4]_i_1_n_7 }),
        .S({\write_burst_counter[4]_i_2_n_0 ,\write_burst_counter[4]_i_3_n_0 ,\write_burst_counter[4]_i_4_n_0 ,\write_burst_counter[4]_i_5_n_0 }));
  FDRE \write_burst_counter_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[4]_i_1_n_6 ),
        .Q(write_burst_counter_w[5]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[4]_i_1_n_5 ),
        .Q(write_burst_counter_w[6]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[4]_i_1_n_4 ),
        .Q(write_burst_counter_w[7]),
        .R(axi_awvalid_reg0));
  FDRE \write_burst_counter_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[8]_i_1_n_7 ),
        .Q(write_burst_counter_w[8]),
        .R(axi_awvalid_reg0));
  CARRY4 \write_burst_counter_reg[8]_i_1 
       (.CI(\write_burst_counter_reg[4]_i_1_n_0 ),
        .CO({\write_burst_counter_reg[8]_i_1_n_0 ,\write_burst_counter_reg[8]_i_1_n_1 ,\write_burst_counter_reg[8]_i_1_n_2 ,\write_burst_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_burst_counter_reg[8]_i_1_n_4 ,\write_burst_counter_reg[8]_i_1_n_5 ,\write_burst_counter_reg[8]_i_1_n_6 ,\write_burst_counter_reg[8]_i_1_n_7 }),
        .S({\write_burst_counter[8]_i_2_n_0 ,\write_burst_counter[8]_i_3_n_0 ,\write_burst_counter[8]_i_4_n_0 ,\write_burst_counter[8]_i_5_n_0 }));
  FDRE \write_burst_counter_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\write_burst_counter[0]_i_1_n_0 ),
        .D(\write_burst_counter_reg[8]_i_1_n_6 ),
        .Q(write_burst_counter_w[9]),
        .R(axi_awvalid_reg0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_index[0]_i_1 
       (.I0(write_index_w[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_index[1]_i_1 
       (.I0(write_index_w[0]),
        .I1(write_index_w[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_index[2]_i_1 
       (.I0(write_index_w[0]),
        .I1(write_index_w[1]),
        .I2(write_index_w[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_index[3]_i_1 
       (.I0(write_index_w[2]),
        .I1(write_index_w[1]),
        .I2(write_index_w[0]),
        .I3(write_index_w[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_index[4]_i_1 
       (.I0(write_index_w[3]),
        .I1(write_index_w[0]),
        .I2(write_index_w[1]),
        .I3(write_index_w[2]),
        .I4(write_index_w[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_index[5]_i_1 
       (.I0(write_index_w[2]),
        .I1(write_index_w[1]),
        .I2(write_index_w[0]),
        .I3(write_index_w[3]),
        .I4(write_index_w[4]),
        .I5(write_index_w[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \write_index[6]_i_1 
       (.I0(\write_index[8]_i_5_n_0 ),
        .I1(write_index_w[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \write_index[7]_i_1 
       (.I0(write_index_w[6]),
        .I1(\write_index[8]_i_5_n_0 ),
        .I2(write_index_w[7]),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'hFD)) 
    \write_index[8]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(user_wr_en),
        .I2(start_single_burst_write),
        .O(\write_index[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_11 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_12 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_13 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_14 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_15 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2010100202010180)) 
    \write_index[8]_i_16 
       (.I0(write_index_w[6]),
        .I1(write_index_reg__0),
        .I2(write_index_w[7]),
        .I3(user_wr_burst_len[6]),
        .I4(\write_index[8]_i_19_n_0 ),
        .I5(user_wr_burst_len[7]),
        .O(\write_index[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \write_index[8]_i_17 
       (.I0(\write_index[8]_i_20_n_0 ),
        .I1(write_index_w[3]),
        .I2(\write_index[8]_i_21_n_0 ),
        .I3(write_index_w[4]),
        .I4(write_index_w[5]),
        .I5(\write_index[8]_i_22_n_0 ),
        .O(\write_index[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    \write_index[8]_i_18 
       (.I0(write_index_w[0]),
        .I1(write_index_w[1]),
        .I2(write_index_w[2]),
        .I3(user_wr_burst_len[1]),
        .I4(user_wr_burst_len[0]),
        .I5(user_wr_burst_len[2]),
        .O(\write_index[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_19 
       (.I0(user_wr_burst_len[4]),
        .I1(user_wr_burst_len[3]),
        .I2(user_wr_burst_len[2]),
        .I3(user_wr_burst_len[1]),
        .I4(user_wr_burst_len[0]),
        .I5(user_wr_burst_len[5]),
        .O(\write_index[8]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \write_index[8]_i_2 
       (.I0(M_AXI_WREADY_w),
        .I1(M_AXI_WVALID_w),
        .I2(write_index1),
        .O(write_index0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \write_index[8]_i_20 
       (.I0(user_wr_burst_len[0]),
        .I1(user_wr_burst_len[2]),
        .I2(user_wr_burst_len[1]),
        .I3(user_wr_burst_len[3]),
        .O(\write_index[8]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \write_index[8]_i_21 
       (.I0(user_wr_burst_len[0]),
        .I1(user_wr_burst_len[1]),
        .I2(user_wr_burst_len[2]),
        .I3(user_wr_burst_len[3]),
        .I4(user_wr_burst_len[4]),
        .O(\write_index[8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \write_index[8]_i_22 
       (.I0(user_wr_burst_len[4]),
        .I1(user_wr_burst_len[3]),
        .I2(user_wr_burst_len[2]),
        .I3(user_wr_burst_len[1]),
        .I4(user_wr_burst_len[0]),
        .I5(user_wr_burst_len[5]),
        .O(\write_index[8]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \write_index[8]_i_3 
       (.I0(write_index_w[7]),
        .I1(\write_index[8]_i_5_n_0 ),
        .I2(write_index_w[6]),
        .I3(write_index_reg__0),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_index[8]_i_5 
       (.I0(write_index_w[5]),
        .I1(write_index_w[2]),
        .I2(write_index_w[1]),
        .I3(write_index_w[0]),
        .I4(write_index_w[3]),
        .I5(write_index_w[4]),
        .O(\write_index[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_7 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_8 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_index[8]_i_9 
       (.I0(user_wr_burst_len[6]),
        .I1(user_wr_burst_len[7]),
        .I2(user_wr_burst_len[5]),
        .I3(user_wr_burst_len[0]),
        .I4(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I5(user_wr_burst_len[4]),
        .O(\write_index[8]_i_9_n_0 ));
  FDRE \write_index_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[0]),
        .Q(write_index_w[0]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[1]),
        .Q(write_index_w[1]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[2]),
        .Q(write_index_w[2]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[3]),
        .Q(write_index_w[3]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[4]),
        .Q(write_index_w[4]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[5]),
        .Q(write_index_w[5]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[6]),
        .Q(write_index_w[6]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[7]),
        .Q(write_index_w[7]),
        .R(\write_index[8]_i_1_n_0 ));
  FDRE \write_index_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__0[8]),
        .Q(write_index_reg__0),
        .R(\write_index[8]_i_1_n_0 ));
  CARRY4 \write_index_reg[8]_i_10 
       (.CI(1'b0),
        .CO({\write_index_reg[8]_i_10_n_0 ,\write_index_reg[8]_i_10_n_1 ,\write_index_reg[8]_i_10_n_2 ,\write_index_reg[8]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_write_index_reg[8]_i_10_O_UNCONNECTED [3:0]),
        .S({\write_index[8]_i_15_n_0 ,\write_index[8]_i_16_n_0 ,\write_index[8]_i_17_n_0 ,\write_index[8]_i_18_n_0 }));
  CARRY4 \write_index_reg[8]_i_4 
       (.CI(\write_index_reg[8]_i_6_n_0 ),
        .CO({\NLW_write_index_reg[8]_i_4_CO_UNCONNECTED [3],write_index1,\write_index_reg[8]_i_4_n_2 ,\write_index_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_write_index_reg[8]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\write_index[8]_i_7_n_0 ,\write_index[8]_i_8_n_0 ,\write_index[8]_i_9_n_0 }));
  CARRY4 \write_index_reg[8]_i_6 
       (.CI(\write_index_reg[8]_i_10_n_0 ),
        .CO({\write_index_reg[8]_i_6_n_0 ,\write_index_reg[8]_i_6_n_1 ,\write_index_reg[8]_i_6_n_2 ,\write_index_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_write_index_reg[8]_i_6_O_UNCONNECTED [3:0]),
        .S({\write_index[8]_i_11_n_0 ,\write_index[8]_i_12_n_0 ,\write_index[8]_i_13_n_0 ,\write_index[8]_i_14_n_0 }));
  FDRE writes_done_d1_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(writes_done_w),
        .Q(writes_done_d1),
        .R(1'b0));
  FDRE writes_done_d2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(writes_done_d1),
        .Q(writes_done_d2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done_i_1
       (.I0(writes_done_reg2),
        .I1(M_AXI_BREADY),
        .I2(M_AXI_BVALID),
        .I3(writes_done_w),
        .O(writes_done_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    writes_done_i_4
       (.I0(user_wr_len[15]),
        .I1(write_burst_counter_w[15]),
        .O(writes_done_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    writes_done_i_5
       (.I0(write_burst_counter_w[13]),
        .I1(user_wr_len[13]),
        .I2(user_wr_len[14]),
        .I3(write_burst_counter_w[14]),
        .I4(write_burst_counter_w[12]),
        .I5(user_wr_len[12]),
        .O(writes_done_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    writes_done_i_6
       (.I0(write_burst_counter_w[11]),
        .I1(user_wr_len[11]),
        .I2(user_wr_len[10]),
        .I3(write_burst_counter_w[10]),
        .I4(user_wr_len[9]),
        .I5(write_burst_counter_w[9]),
        .O(writes_done_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    writes_done_i_7
       (.I0(write_burst_counter_w[7]),
        .I1(user_wr_len[7]),
        .I2(user_wr_len[8]),
        .I3(write_burst_counter_w[8]),
        .I4(write_burst_counter_w[6]),
        .I5(user_wr_len[6]),
        .O(writes_done_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    writes_done_i_8
       (.I0(write_burst_counter_w[5]),
        .I1(user_wr_len[5]),
        .I2(user_wr_len[4]),
        .I3(write_burst_counter_w[4]),
        .I4(user_wr_len[3]),
        .I5(write_burst_counter_w[3]),
        .O(writes_done_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    writes_done_i_9
       (.I0(write_burst_counter_w[1]),
        .I1(user_wr_len[1]),
        .I2(user_wr_len[2]),
        .I3(write_burst_counter_w[2]),
        .I4(write_burst_counter_w[0]),
        .I5(user_wr_len[0]),
        .O(writes_done_i_9_n_0));
  FDRE writes_done_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done_w),
        .R(axi_awvalid_reg0));
  CARRY4 writes_done_reg_i_2
       (.CI(writes_done_reg_i_3_n_0),
        .CO({NLW_writes_done_reg_i_2_CO_UNCONNECTED[3:2],writes_done_reg2,writes_done_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,writes_done_i_4_n_0,writes_done_i_5_n_0}));
  CARRY4 writes_done_reg_i_3
       (.CI(1'b0),
        .CO({writes_done_reg_i_3_n_0,writes_done_reg_i_3_n_1,writes_done_reg_i_3_n_2,writes_done_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done_reg_i_3_O_UNCONNECTED[3:0]),
        .S({writes_done_i_6_n_0,writes_done_i_7_n_0,writes_done_i_8_n_0,writes_done_i_9_n_0}));
endmodule

(* CHECK_LICENSE_TYPE = "sub_BD_MY_AXI_MASTER_FULL_ip_0_1,MY_AXI_MASTER_FULL_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "MY_AXI_MASTER_FULL_ip_v1_0,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (user_wr_en,
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
    master_full_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_en" *) input user_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 user_rd_en" *) input user_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_base_addr" *) input [31:0]user_wr_base_addr;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 user_rd_base_addr" *) input [31:0]user_rd_base_addr;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_len" *) input [15:0]user_wr_len;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 user_rd_len" *) input [15:0]user_rd_len;
  input [7:0]user_wr_burst_len;
  input [7:0]user_rd_burst_len;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_data_in" *) input [31:0]user_wr_data_in;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_wr_satisfy" *) input user_wr_satisfy;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_wr_interface:1.0 user_wr_interface_1 user_rd_data_en" *) output user_rd_data_en;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 read_data_val" *) output read_data_val;
  (* X_INTERFACE_INFO = "xilinx.com:user_mastr_full_axi_ip:user_rd_interface:1.0 user_rd_interface_1 read_data_out" *) output [31:0]read_data_out;
  output [31:0]master_wr_addr;
  output [31:0]master_rd_addr;
  input master_axi_init_txn;
  output [1:0]master_axi_txn_done;
  output master_axi_error;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Master_Full_AXI_CLK CLK, xilinx.com:signal:clock:1.0 master_axi_aclk CLK, xilinx.com:signal:clock:1.0 master_full_axi_aclk CLK" *) input master_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Master_Full_AXI_RST RST, xilinx.com:signal:reset:1.0 master_axi_aresetn RST, xilinx.com:signal:reset:1.0 master_full_axi_aresetn RST" *) input master_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWID" *) output [0:0]master_full_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWADDR" *) output [31:0]master_full_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWLEN" *) output [7:0]master_full_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWSIZE" *) output [2:0]master_full_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWBURST" *) output [1:0]master_full_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWLOCK" *) output master_full_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWCACHE" *) output [3:0]master_full_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWPROT" *) output [2:0]master_full_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWQOS" *) output [3:0]master_full_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWUSER" *) output [0:0]master_full_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWVALID" *) output master_full_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI AWREADY" *) input master_full_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WDATA" *) output [31:0]master_full_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WSTRB" *) output [3:0]master_full_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WLAST" *) output master_full_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WUSER" *) output [0:0]master_full_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WVALID" *) output master_full_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI WREADY" *) input master_full_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BID" *) input [0:0]master_full_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BRESP" *) input [1:0]master_full_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BUSER" *) input [0:0]master_full_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BVALID" *) input master_full_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI BREADY" *) output master_full_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARID" *) output [0:0]master_full_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARADDR" *) output [31:0]master_full_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARLEN" *) output [7:0]master_full_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARSIZE" *) output [2:0]master_full_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARBURST" *) output [1:0]master_full_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARLOCK" *) output master_full_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARCACHE" *) output [3:0]master_full_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARPROT" *) output [2:0]master_full_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARQOS" *) output [3:0]master_full_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARUSER" *) output [0:0]master_full_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARVALID" *) output master_full_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI ARREADY" *) input master_full_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RID" *) input [0:0]master_full_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RDATA" *) input [31:0]master_full_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RRESP" *) input [1:0]master_full_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RLAST" *) input master_full_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RUSER" *) input [0:0]master_full_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RVALID" *) input master_full_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Master_Full_AXI RREADY" *) output master_full_axi_rready;

  wire master_axi_aclk;
  wire master_axi_aresetn;
  wire master_axi_error;
  wire master_axi_init_txn;
  wire [1:0]master_axi_txn_done;
  wire [31:0]master_full_axi_araddr;
  wire [1:0]master_full_axi_arburst;
  wire [3:0]master_full_axi_arcache;
  wire [0:0]master_full_axi_arid;
  wire [7:0]master_full_axi_arlen;
  wire master_full_axi_arlock;
  wire [2:0]master_full_axi_arprot;
  wire [3:0]master_full_axi_arqos;
  wire master_full_axi_arready;
  wire [2:0]master_full_axi_arsize;
  wire [0:0]master_full_axi_aruser;
  wire master_full_axi_arvalid;
  wire [31:0]master_full_axi_awaddr;
  wire [1:0]master_full_axi_awburst;
  wire [3:0]master_full_axi_awcache;
  wire [0:0]master_full_axi_awid;
  wire [7:0]master_full_axi_awlen;
  wire master_full_axi_awlock;
  wire [2:0]master_full_axi_awprot;
  wire [3:0]master_full_axi_awqos;
  wire master_full_axi_awready;
  wire [2:0]master_full_axi_awsize;
  wire [0:0]master_full_axi_awuser;
  wire master_full_axi_awvalid;
  wire [0:0]master_full_axi_bid;
  wire master_full_axi_bready;
  wire [1:0]master_full_axi_bresp;
  wire [0:0]master_full_axi_buser;
  wire master_full_axi_bvalid;
  wire [31:0]master_full_axi_rdata;
  wire [0:0]master_full_axi_rid;
  wire master_full_axi_rlast;
  wire master_full_axi_rready;
  wire [1:0]master_full_axi_rresp;
  wire [0:0]master_full_axi_ruser;
  wire master_full_axi_rvalid;
  wire [31:0]master_full_axi_wdata;
  wire master_full_axi_wlast;
  wire master_full_axi_wready;
  wire [3:0]master_full_axi_wstrb;
  wire [0:0]master_full_axi_wuser;
  wire master_full_axi_wvalid;
  wire [31:0]master_rd_addr;
  wire [31:0]master_wr_addr;
  wire [31:0]read_data_out;
  wire read_data_val;
  wire [31:0]user_rd_base_addr;
  wire [7:0]user_rd_burst_len;
  wire user_rd_data_en;
  wire user_rd_en;
  wire [15:0]user_rd_len;
  wire [31:0]user_wr_base_addr;
  wire [7:0]user_wr_burst_len;
  wire [31:0]user_wr_data_in;
  wire user_wr_en;
  wire [15:0]user_wr_len;
  wire user_wr_satisfy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0 inst
       (.master_axi_aclk(master_axi_aclk),
        .master_axi_aresetn(master_axi_aresetn),
        .master_axi_error(master_axi_error),
        .master_axi_init_txn(master_axi_init_txn),
        .master_axi_txn_done(master_axi_txn_done),
        .master_full_axi_araddr(master_full_axi_araddr),
        .master_full_axi_arburst(master_full_axi_arburst),
        .master_full_axi_arcache(master_full_axi_arcache),
        .master_full_axi_arid(master_full_axi_arid),
        .master_full_axi_arlen(master_full_axi_arlen),
        .master_full_axi_arlock(master_full_axi_arlock),
        .master_full_axi_arprot(master_full_axi_arprot),
        .master_full_axi_arqos(master_full_axi_arqos),
        .master_full_axi_arready(master_full_axi_arready),
        .master_full_axi_arsize(master_full_axi_arsize),
        .master_full_axi_aruser(master_full_axi_aruser),
        .master_full_axi_arvalid(master_full_axi_arvalid),
        .master_full_axi_awaddr(master_full_axi_awaddr),
        .master_full_axi_awburst(master_full_axi_awburst),
        .master_full_axi_awcache(master_full_axi_awcache),
        .master_full_axi_awid(master_full_axi_awid),
        .master_full_axi_awlen(master_full_axi_awlen),
        .master_full_axi_awlock(master_full_axi_awlock),
        .master_full_axi_awprot(master_full_axi_awprot),
        .master_full_axi_awqos(master_full_axi_awqos),
        .master_full_axi_awready(master_full_axi_awready),
        .master_full_axi_awsize(master_full_axi_awsize),
        .master_full_axi_awuser(master_full_axi_awuser),
        .master_full_axi_awvalid(master_full_axi_awvalid),
        .master_full_axi_bid(master_full_axi_bid),
        .master_full_axi_bready(master_full_axi_bready),
        .master_full_axi_bresp(master_full_axi_bresp),
        .master_full_axi_buser(master_full_axi_buser),
        .master_full_axi_bvalid(master_full_axi_bvalid),
        .master_full_axi_rdata(master_full_axi_rdata),
        .master_full_axi_rid(master_full_axi_rid),
        .master_full_axi_rlast(master_full_axi_rlast),
        .master_full_axi_rready(master_full_axi_rready),
        .master_full_axi_rresp(master_full_axi_rresp),
        .master_full_axi_ruser(master_full_axi_ruser),
        .master_full_axi_rvalid(master_full_axi_rvalid),
        .master_full_axi_wdata(master_full_axi_wdata),
        .master_full_axi_wlast(master_full_axi_wlast),
        .master_full_axi_wready(master_full_axi_wready),
        .master_full_axi_wstrb(master_full_axi_wstrb),
        .master_full_axi_wuser(master_full_axi_wuser),
        .master_full_axi_wvalid(master_full_axi_wvalid),
        .master_rd_addr(master_rd_addr),
        .master_wr_addr(master_wr_addr),
        .read_data_out(read_data_out),
        .read_data_val(read_data_val),
        .user_rd_base_addr(user_rd_base_addr),
        .user_rd_burst_len(user_rd_burst_len),
        .user_rd_data_en(user_rd_data_en),
        .user_rd_en(user_rd_en),
        .user_rd_len(user_rd_len),
        .user_wr_base_addr(user_wr_base_addr),
        .user_wr_burst_len(user_wr_burst_len),
        .user_wr_data_in(user_wr_data_in),
        .user_wr_en(user_wr_en),
        .user_wr_len(user_wr_len),
        .user_wr_satisfy(user_wr_satisfy));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
