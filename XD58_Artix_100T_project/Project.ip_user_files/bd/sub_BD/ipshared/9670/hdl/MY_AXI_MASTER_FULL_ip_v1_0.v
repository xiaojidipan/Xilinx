
`timescale 1 ns / 1 ps

	module MY_AXI_MASTER_FULL_ip_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface Master_Full_AXI
//		parameter  C_Master_Full_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
//		parameter integer C_Master_Full_AXI_BURST_LEN	= 16,
		parameter integer C_Master_Full_AXI_ID_WIDTH	= 1,
		parameter integer C_Master_Full_AXI_ADDR_WIDTH	= 32,
		parameter integer C_Master_Full_AXI_DATA_WIDTH	= 32,
		parameter integer C_Master_Full_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_Master_Full_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_Master_Full_AXI_WUSER_WIDTH	= 0,
		parameter integer C_Master_Full_AXI_RUSER_WIDTH	= 0,
		parameter integer C_Master_Full_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line
        input        user_wr_en,//00是只写，01只读，10先读后写
        input        user_rd_en,
        input [31:0] user_wr_base_addr,
        input [31:0] user_rd_base_addr,
        input [15:0] user_wr_len,//读写总长度
        input [15:0] user_rd_len,
        
        input [7:0]  user_wr_burst_len,
        input [7:0]  user_rd_burst_len,
        input [31:0] user_wr_data_in,
        input        user_wr_satisfy,
        output wire  user_rd_data_en,
        
        output wire read_data_val,
        output wire [31:0] read_data_out,
        
        output wire [31:0] master_wr_addr,
        output wire [31:0] master_rd_addr,
		// Ports of Axi Master Bus Interface Master_Full_AXI
		input wire        master_axi_init_txn,
		output wire [1:0] master_axi_txn_done,
		output wire  master_axi_error,
		input wire  master_axi_aclk,
		input wire  master_axi_aresetn,
		output wire [C_Master_Full_AXI_ID_WIDTH-1 : 0] master_full_axi_awid,
		output wire [C_Master_Full_AXI_ADDR_WIDTH-1 : 0] master_full_axi_awaddr,
		output wire [7 : 0] master_full_axi_awlen,
		output wire [2 : 0] master_full_axi_awsize,
		output wire [1 : 0] master_full_axi_awburst,
		output wire  master_full_axi_awlock,
		output wire [3 : 0] master_full_axi_awcache,
		output wire [2 : 0] master_full_axi_awprot,
		output wire [3 : 0] master_full_axi_awqos,
		output wire [C_Master_Full_AXI_AWUSER_WIDTH-1 : 0] master_full_axi_awuser,
		output wire  master_full_axi_awvalid,
		input wire  master_full_axi_awready,
		output wire [C_Master_Full_AXI_DATA_WIDTH-1 : 0] master_full_axi_wdata,
		output wire [C_Master_Full_AXI_DATA_WIDTH/8-1 : 0] master_full_axi_wstrb,
		output wire  master_full_axi_wlast,
		output wire [C_Master_Full_AXI_WUSER_WIDTH-1 : 0] master_full_axi_wuser,
		output wire  master_full_axi_wvalid,
		input wire  master_full_axi_wready,
		input wire [C_Master_Full_AXI_ID_WIDTH-1 : 0] master_full_axi_bid,
		input wire [1 : 0] master_full_axi_bresp,
		input wire [C_Master_Full_AXI_BUSER_WIDTH-1 : 0] master_full_axi_buser,
		input wire  master_full_axi_bvalid,
		output wire  master_full_axi_bready,
		output wire [C_Master_Full_AXI_ID_WIDTH-1 : 0] master_full_axi_arid,
		output wire [C_Master_Full_AXI_ADDR_WIDTH-1 : 0] master_full_axi_araddr,
		output wire [7 : 0] master_full_axi_arlen,
		output wire [2 : 0] master_full_axi_arsize,
		output wire [1 : 0] master_full_axi_arburst,
		output wire  master_full_axi_arlock,
		output wire [3 : 0] master_full_axi_arcache,
		output wire [2 : 0] master_full_axi_arprot,
		output wire [3 : 0] master_full_axi_arqos,
		output wire [C_Master_Full_AXI_ARUSER_WIDTH-1 : 0] master_full_axi_aruser,
		output wire  master_full_axi_arvalid,
		input wire  master_full_axi_arready,
		input wire [C_Master_Full_AXI_ID_WIDTH-1 : 0] master_full_axi_rid,
		input wire [C_Master_Full_AXI_DATA_WIDTH-1 : 0] master_full_axi_rdata,
		input wire [1 : 0] master_full_axi_rresp,
		input wire  master_full_axi_rlast,
		input wire [C_Master_Full_AXI_RUSER_WIDTH-1 : 0] master_full_axi_ruser,
		input wire  master_full_axi_rvalid,
		output wire  master_full_axi_rready
	);
// Instantiation of Axi Bus Interface Master_Full_AXI
	MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI # ( 
//		.C_M_TARGET_SLAVE_BASE_ADDR(C_Master_Full_AXI_TARGET_SLAVE_BASE_ADDR),
//		.C_M_AXI_BURST_LEN(C_Master_Full_AXI_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_Master_Full_AXI_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_Master_Full_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_Master_Full_AXI_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH(C_Master_Full_AXI_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_Master_Full_AXI_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH(C_Master_Full_AXI_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_Master_Full_AXI_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH(C_Master_Full_AXI_BUSER_WIDTH)
	) MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst (
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
		.INIT_AXI_TXN(master_axi_init_txn),
		.TXN_DONE(master_axi_txn_done),
		.ERROR(master_axi_error),
		.M_AXI_ACLK(master_axi_aclk),
		.M_AXI_ARESETN(master_axi_aresetn),
		.M_AXI_AWID(master_full_axi_awid),
		.M_AXI_AWADDR(master_full_axi_awaddr),
		.M_AXI_AWLEN(master_full_axi_awlen),
		.M_AXI_AWSIZE(master_full_axi_awsize),
		.M_AXI_AWBURST(master_full_axi_awburst),
		.M_AXI_AWLOCK(master_full_axi_awlock),
		.M_AXI_AWCACHE(master_full_axi_awcache),
		.M_AXI_AWPROT(master_full_axi_awprot),
		.M_AXI_AWQOS(master_full_axi_awqos),
		.M_AXI_AWUSER(master_full_axi_awuser),
		.M_AXI_AWVALID(master_full_axi_awvalid),
		.M_AXI_AWREADY(master_full_axi_awready),
		.M_AXI_WDATA(master_full_axi_wdata),
		.M_AXI_WSTRB(master_full_axi_wstrb),
		.M_AXI_WLAST(master_full_axi_wlast),
		.M_AXI_WUSER(master_full_axi_wuser),
		.M_AXI_WVALID(master_full_axi_wvalid),
		.M_AXI_WREADY(master_full_axi_wready),
		.M_AXI_BID(master_full_axi_bid),
		.M_AXI_BRESP(master_full_axi_bresp),
		.M_AXI_BUSER(master_full_axi_buser),
		.M_AXI_BVALID(master_full_axi_bvalid),
		.M_AXI_BREADY(master_full_axi_bready),
		.M_AXI_ARID(master_full_axi_arid),
		.M_AXI_ARADDR(master_full_axi_araddr),
		.M_AXI_ARLEN(master_full_axi_arlen),
		.M_AXI_ARSIZE(master_full_axi_arsize),
		.M_AXI_ARBURST(master_full_axi_arburst),
		.M_AXI_ARLOCK(master_full_axi_arlock),
		.M_AXI_ARCACHE(master_full_axi_arcache),
		.M_AXI_ARPROT(master_full_axi_arprot),
		.M_AXI_ARQOS(master_full_axi_arqos),
		.M_AXI_ARUSER(master_full_axi_aruser),
		.M_AXI_ARVALID(master_full_axi_arvalid),
		.M_AXI_ARREADY(master_full_axi_arready),
		.M_AXI_RID(master_full_axi_rid),
		.M_AXI_RDATA(master_full_axi_rdata),
		.M_AXI_RRESP(master_full_axi_rresp),
		.M_AXI_RLAST(master_full_axi_rlast),
		.M_AXI_RUSER(master_full_axi_ruser),
		.M_AXI_RVALID(master_full_axi_rvalid),
		.M_AXI_RREADY(master_full_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
