-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sat Nov 11 09:12:38 2017
-- Host        : Fred running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sub_BD_MY_AXI_MASTER_FULL_ip_0_1_stub.vhdl
-- Design      : sub_BD_MY_AXI_MASTER_FULL_ip_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    user_wr_en : in STD_LOGIC;
    user_rd_en : in STD_LOGIC;
    user_wr_base_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_rd_base_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_wr_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_rd_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_wr_burst_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    user_rd_burst_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    user_wr_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_wr_satisfy : in STD_LOGIC;
    user_rd_data_en : out STD_LOGIC;
    read_data_val : out STD_LOGIC;
    read_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_axi_init_txn : in STD_LOGIC;
    master_axi_txn_done : out STD_LOGIC_VECTOR ( 1 downto 0 );
    master_axi_error : out STD_LOGIC;
    master_axi_aclk : in STD_LOGIC;
    master_axi_aresetn : in STD_LOGIC;
    master_full_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_full_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    master_full_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    master_full_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    master_full_axi_awlock : out STD_LOGIC;
    master_full_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    master_full_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    master_full_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    master_full_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_awvalid : out STD_LOGIC;
    master_full_axi_awready : in STD_LOGIC;
    master_full_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_full_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    master_full_axi_wlast : out STD_LOGIC;
    master_full_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_wvalid : out STD_LOGIC;
    master_full_axi_wready : in STD_LOGIC;
    master_full_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    master_full_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_bvalid : in STD_LOGIC;
    master_full_axi_bready : out STD_LOGIC;
    master_full_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_full_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    master_full_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    master_full_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    master_full_axi_arlock : out STD_LOGIC;
    master_full_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    master_full_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    master_full_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    master_full_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_arvalid : out STD_LOGIC;
    master_full_axi_arready : in STD_LOGIC;
    master_full_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    master_full_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    master_full_axi_rlast : in STD_LOGIC;
    master_full_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_rvalid : in STD_LOGIC;
    master_full_axi_rready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "user_wr_en,user_rd_en,user_wr_base_addr[31:0],user_rd_base_addr[31:0],user_wr_len[15:0],user_rd_len[15:0],user_wr_burst_len[7:0],user_rd_burst_len[7:0],user_wr_data_in[31:0],user_wr_satisfy,user_rd_data_en,read_data_val,read_data_out[31:0],master_axi_init_txn,master_axi_txn_done[1:0],master_axi_error,master_axi_aclk,master_axi_aresetn,master_full_axi_awid[0:0],master_full_axi_awaddr[31:0],master_full_axi_awlen[7:0],master_full_axi_awsize[2:0],master_full_axi_awburst[1:0],master_full_axi_awlock,master_full_axi_awcache[3:0],master_full_axi_awprot[2:0],master_full_axi_awqos[3:0],master_full_axi_awuser[0:0],master_full_axi_awvalid,master_full_axi_awready,master_full_axi_wdata[31:0],master_full_axi_wstrb[3:0],master_full_axi_wlast,master_full_axi_wuser[0:0],master_full_axi_wvalid,master_full_axi_wready,master_full_axi_bid[0:0],master_full_axi_bresp[1:0],master_full_axi_buser[0:0],master_full_axi_bvalid,master_full_axi_bready,master_full_axi_arid[0:0],master_full_axi_araddr[31:0],master_full_axi_arlen[7:0],master_full_axi_arsize[2:0],master_full_axi_arburst[1:0],master_full_axi_arlock,master_full_axi_arcache[3:0],master_full_axi_arprot[2:0],master_full_axi_arqos[3:0],master_full_axi_aruser[0:0],master_full_axi_arvalid,master_full_axi_arready,master_full_axi_rid[0:0],master_full_axi_rdata[31:0],master_full_axi_rresp[1:0],master_full_axi_rlast,master_full_axi_ruser[0:0],master_full_axi_rvalid,master_full_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MY_AXI_MASTER_FULL_ip_v1_0,Vivado 2017.2";
begin
end;
