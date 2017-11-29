-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sat Nov 11 09:12:38 2017
-- Host        : Fred running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sub_BD_MY_AXI_MASTER_FULL_ip_0_1_sim_netlist.vhdl
-- Design      : sub_BD_MY_AXI_MASTER_FULL_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI is
  port (
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
    INIT_AXI_TXN : in STD_LOGIC;
    TXN_DONE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ERROR : out STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute C_MASTER_LENGTH : integer;
  attribute C_MASTER_LENGTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 12;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 32;
  attribute C_M_AXI_ARUSER_WIDTH : integer;
  attribute C_M_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 1;
  attribute C_M_AXI_AWUSER_WIDTH : integer;
  attribute C_M_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 1;
  attribute C_M_AXI_BUSER_WIDTH : integer;
  attribute C_M_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 1;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 32;
  attribute C_M_AXI_ID_WIDTH : integer;
  attribute C_M_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 1;
  attribute C_M_AXI_RUSER_WIDTH : integer;
  attribute C_M_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 1;
  attribute C_M_AXI_WUSER_WIDTH : integer;
  attribute C_M_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 1;
  attribute C_NO_BURSTS_REQ : integer;
  attribute C_NO_BURSTS_REQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 8;
  attribute C_TRANSACTIONS_NUM : integer;
  attribute C_TRANSACTIONS_NUM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is 8;
  attribute STATE0 : string;
  attribute STATE0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is "6'b000001";
  attribute STATE1 : string;
  attribute STATE1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is "6'b000010";
  attribute STATE2 : string;
  attribute STATE2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is "6'b000100";
  attribute STATE3 : string;
  attribute STATE3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is "6'b001000";
  attribute STATE4 : string;
  attribute STATE4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI : entity is "6'b010000";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \M_AXI_ARADDR[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[13]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[13]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR[13]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[13]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[17]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[21]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[25]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[29]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[29]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[2]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[5]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR[9]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARLEN[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[13]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[17]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[21]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[25]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[29]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[29]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[2]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[5]_INST_0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR[9]_INST_0_n_3\ : STD_LOGIC;
  signal M_AXI_AWADDR_w : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of M_AXI_AWADDR_w : signal is std.standard.true;
  signal \M_AXI_AWLEN[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal M_AXI_AWREADY_w : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_AWREADY_w : signal is std.standard.true;
  signal M_AXI_AWVALID_w : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_AWVALID_w : signal is std.standard.true;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_rready\ : STD_LOGIC;
  signal M_AXI_WDATA_w : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of M_AXI_WDATA_w : signal is std.standard.true;
  signal M_AXI_WLAST_w : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_WLAST_w : signal is std.standard.true;
  signal M_AXI_WREADY_w : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_WREADY_w : signal is std.standard.true;
  signal M_AXI_WVALID_w : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_WVALID_w : signal is std.standard.true;
  signal \axi_araddr[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_5_n_0\ : STD_LOGIC;
  signal axi_araddr_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \axi_araddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[1]_i_2_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal axi_arvalid0 : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[9]_i_5_n_0\ : STD_LOGIC;
  signal axi_awaddr_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \axi_awaddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[1]_i_2_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal axi_awvalid0 : STD_LOGIC;
  signal axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal axi_awvalid_reg0 : STD_LOGIC;
  signal axi_bready0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_wlast_i_10_n_0 : STD_LOGIC;
  signal axi_wlast_i_11_n_0 : STD_LOGIC;
  signal axi_wlast_i_12_n_0 : STD_LOGIC;
  signal axi_wlast_i_13_n_0 : STD_LOGIC;
  signal axi_wlast_i_14_n_0 : STD_LOGIC;
  signal axi_wlast_i_15_n_0 : STD_LOGIC;
  signal axi_wlast_i_16_n_0 : STD_LOGIC;
  signal axi_wlast_i_17_n_0 : STD_LOGIC;
  signal axi_wlast_i_18_n_0 : STD_LOGIC;
  signal axi_wlast_i_1_n_0 : STD_LOGIC;
  signal axi_wlast_i_3_n_0 : STD_LOGIC;
  signal axi_wlast_i_5_n_0 : STD_LOGIC;
  signal axi_wlast_i_6_n_0 : STD_LOGIC;
  signal axi_wlast_i_7_n_0 : STD_LOGIC;
  signal axi_wlast_i_9_n_0 : STD_LOGIC;
  signal axi_wlast_reg3 : STD_LOGIC;
  signal axi_wlast_reg_i_2_n_2 : STD_LOGIC;
  signal axi_wlast_reg_i_2_n_3 : STD_LOGIC;
  signal axi_wlast_reg_i_4_n_0 : STD_LOGIC;
  signal axi_wlast_reg_i_4_n_1 : STD_LOGIC;
  signal axi_wlast_reg_i_4_n_2 : STD_LOGIC;
  signal axi_wlast_reg_i_4_n_3 : STD_LOGIC;
  signal axi_wlast_reg_i_8_n_0 : STD_LOGIC;
  signal axi_wlast_reg_i_8_n_1 : STD_LOGIC;
  signal axi_wlast_reg_i_8_n_2 : STD_LOGIC;
  signal axi_wlast_reg_i_8_n_3 : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal burst_read_active : STD_LOGIC;
  signal burst_read_active_i_1_n_0 : STD_LOGIC;
  signal burst_write_active : STD_LOGIC;
  signal burst_write_active_i_1_n_0 : STD_LOGIC;
  signal f_q_w : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of f_q_w : signal is std.standard.true;
  signal f_rd_w : STD_LOGIC;
  attribute MARK_DEBUG of f_rd_w : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal read_burst_counter : STD_LOGIC;
  signal read_burst_counter0 : STD_LOGIC;
  signal \read_burst_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_13_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_14_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_15_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \read_burst_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \read_burst_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \read_burst_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \read_burst_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal read_burst_counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \read_burst_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_4_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_9_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_9_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[0]_i_9_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal read_index0 : STD_LOGIC;
  signal read_index1 : STD_LOGIC;
  signal \read_index[8]_i_11_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_12_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_13_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_14_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_15_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_16_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_17_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_18_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_19_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_20_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_21_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_5_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_7_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_8_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_9_n_0\ : STD_LOGIC;
  signal \read_index_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \read_index_reg[8]_i_10_n_1\ : STD_LOGIC;
  signal \read_index_reg[8]_i_10_n_2\ : STD_LOGIC;
  signal \read_index_reg[8]_i_10_n_3\ : STD_LOGIC;
  signal \read_index_reg[8]_i_4_n_2\ : STD_LOGIC;
  signal \read_index_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \read_index_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \read_index_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \read_index_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \read_index_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \read_index_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal reads_done : STD_LOGIC;
  signal reads_done1 : STD_LOGIC;
  signal reads_done2 : STD_LOGIC;
  signal reads_done_d1 : STD_LOGIC;
  signal reads_done_d2 : STD_LOGIC;
  signal reads_done_i_10_n_0 : STD_LOGIC;
  signal reads_done_i_11_n_0 : STD_LOGIC;
  signal reads_done_i_12_n_0 : STD_LOGIC;
  signal reads_done_i_13_n_0 : STD_LOGIC;
  signal reads_done_i_14_n_0 : STD_LOGIC;
  signal reads_done_i_16_n_0 : STD_LOGIC;
  signal reads_done_i_17_n_0 : STD_LOGIC;
  signal reads_done_i_18_n_0 : STD_LOGIC;
  signal reads_done_i_19_n_0 : STD_LOGIC;
  signal reads_done_i_1_n_0 : STD_LOGIC;
  signal reads_done_i_20_n_0 : STD_LOGIC;
  signal reads_done_i_21_n_0 : STD_LOGIC;
  signal reads_done_i_22_n_0 : STD_LOGIC;
  signal reads_done_i_23_n_0 : STD_LOGIC;
  signal reads_done_i_5_n_0 : STD_LOGIC;
  signal reads_done_i_6_n_0 : STD_LOGIC;
  signal reads_done_i_8_n_0 : STD_LOGIC;
  signal reads_done_i_9_n_0 : STD_LOGIC;
  signal reads_done_reg_i_15_n_0 : STD_LOGIC;
  signal reads_done_reg_i_15_n_1 : STD_LOGIC;
  signal reads_done_reg_i_15_n_2 : STD_LOGIC;
  signal reads_done_reg_i_15_n_3 : STD_LOGIC;
  signal reads_done_reg_i_2_n_3 : STD_LOGIC;
  signal reads_done_reg_i_3_n_2 : STD_LOGIC;
  signal reads_done_reg_i_3_n_3 : STD_LOGIC;
  signal reads_done_reg_i_4_n_0 : STD_LOGIC;
  signal reads_done_reg_i_4_n_1 : STD_LOGIC;
  signal reads_done_reg_i_4_n_2 : STD_LOGIC;
  signal reads_done_reg_i_4_n_3 : STD_LOGIC;
  signal reads_done_reg_i_7_n_0 : STD_LOGIC;
  signal reads_done_reg_i_7_n_1 : STD_LOGIC;
  signal reads_done_reg_i_7_n_2 : STD_LOGIC;
  signal reads_done_reg_i_7_n_3 : STD_LOGIC;
  signal start_single_burst_read : STD_LOGIC;
  signal start_single_burst_read_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_read_i_2_n_0 : STD_LOGIC;
  signal start_single_burst_write : STD_LOGIC;
  signal start_single_burst_write0 : STD_LOGIC;
  signal start_single_burst_write2 : STD_LOGIC;
  signal start_single_burst_write_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_write_i_3_n_0 : STD_LOGIC;
  signal start_single_burst_write_i_4_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_10_n_0\ : STD_LOGIC;
  signal \state[2]_i_11_n_0\ : STD_LOGIC;
  signal \state[2]_i_12_n_0\ : STD_LOGIC;
  signal \state[2]_i_13_n_0\ : STD_LOGIC;
  signal \state[2]_i_14_n_0\ : STD_LOGIC;
  signal \state[2]_i_15_n_0\ : STD_LOGIC;
  signal \state[2]_i_16_n_0\ : STD_LOGIC;
  signal \state[2]_i_17_n_0\ : STD_LOGIC;
  signal \state[2]_i_18_n_0\ : STD_LOGIC;
  signal \state[2]_i_19_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_20_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_7_n_0\ : STD_LOGIC;
  signal \state[2]_i_8_n_0\ : STD_LOGIC;
  signal \state[2]_i_9_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \state_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \state_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \state_reg[2]_i_4_n_1\ : STD_LOGIC;
  signal \state_reg[2]_i_4_n_2\ : STD_LOGIC;
  signal \state_reg[2]_i_4_n_3\ : STD_LOGIC;
  signal state_w : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute MARK_DEBUG of state_w : signal is std.standard.true;
  signal \^user_rd_base_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^user_wr_base_addr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal user_wr_satisfy_w : STD_LOGIC;
  attribute MARK_DEBUG of user_wr_satisfy_w : signal is std.standard.true;
  signal wnext_w : STD_LOGIC;
  attribute MARK_DEBUG of wnext_w : signal is std.standard.true;
  signal write_burst_counter0 : STD_LOGIC;
  signal \write_burst_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_13_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_14_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \write_burst_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \write_burst_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \write_burst_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \write_burst_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \write_burst_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \write_burst_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \write_burst_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \write_burst_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \write_burst_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \write_burst_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \write_burst_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \write_burst_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_8_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_8_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[0]_i_8_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal write_burst_counter_w : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of write_burst_counter_w : signal is std.standard.true;
  signal write_index0 : STD_LOGIC;
  signal write_index1 : STD_LOGIC;
  signal \write_index[8]_i_11_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_12_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_13_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_14_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_15_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_16_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_17_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_18_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_19_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_20_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_21_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_22_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_5_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_7_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_8_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_9_n_0\ : STD_LOGIC;
  signal \write_index_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \write_index_reg[8]_i_10_n_1\ : STD_LOGIC;
  signal \write_index_reg[8]_i_10_n_2\ : STD_LOGIC;
  signal \write_index_reg[8]_i_10_n_3\ : STD_LOGIC;
  signal \write_index_reg[8]_i_4_n_2\ : STD_LOGIC;
  signal \write_index_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \write_index_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \write_index_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \write_index_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \write_index_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \write_index_reg__0\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal write_index_w : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of write_index_w : signal is std.standard.true;
  signal writes_done_d1 : STD_LOGIC;
  signal writes_done_d2 : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal writes_done_i_4_n_0 : STD_LOGIC;
  signal writes_done_i_5_n_0 : STD_LOGIC;
  signal writes_done_i_6_n_0 : STD_LOGIC;
  signal writes_done_i_7_n_0 : STD_LOGIC;
  signal writes_done_i_8_n_0 : STD_LOGIC;
  signal writes_done_i_9_n_0 : STD_LOGIC;
  signal writes_done_reg2 : STD_LOGIC;
  signal writes_done_reg_i_2_n_3 : STD_LOGIC;
  signal writes_done_reg_i_3_n_0 : STD_LOGIC;
  signal writes_done_reg_i_3_n_1 : STD_LOGIC;
  signal writes_done_reg_i_3_n_2 : STD_LOGIC;
  signal writes_done_reg_i_3_n_3 : STD_LOGIC;
  signal writes_done_w : STD_LOGIC;
  attribute MARK_DEBUG of writes_done_w : signal is std.standard.true;
  signal \NLW_M_AXI_ARADDR[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_M_AXI_ARADDR[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_M_AXI_ARADDR[2]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_M_AXI_AWADDR[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_M_AXI_AWADDR[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_M_AXI_AWADDR[2]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_axi_araddr_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_araddr_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axi_awaddr_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_awaddr_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_axi_wlast_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_axi_wlast_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_wlast_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_wlast_reg_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_burst_counter_reg[0]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_read_burst_counter_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_burst_counter_reg[0]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_burst_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_read_index_reg[8]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_index_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_read_index_reg[8]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_index_reg[8]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done_reg_i_15_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_reads_done_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_reads_done_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_burst_counter_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_write_burst_counter_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_burst_counter_reg[0]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_burst_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_index_reg[8]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_index_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_index_reg[8]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_index_reg[8]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_writes_done_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_writes_done_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_writes_done_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \M_AXI_ARLEN[0]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \M_AXI_ARLEN[1]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \M_AXI_ARLEN[2]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \M_AXI_ARLEN[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \M_AXI_ARLEN[4]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \M_AXI_ARLEN[7]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[4]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[6]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[7]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TXN_DONE[0]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of axi_rready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_wlast_i_17 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_wlast_i_18 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of burst_write_active_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of read_data_val_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \read_index[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \read_index[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_index[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_index[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_index[8]_i_20\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_index[8]_i_21\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \read_index[8]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of start_single_burst_read_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of start_single_burst_write_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of start_single_burst_write_i_3 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_index[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \write_index[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \write_index[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_index[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_index[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_index[8]_i_20\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_index[8]_i_21\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_index[8]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair13";
begin
  ERROR <= \<const0>\;
  M_AXI_ARADDR(31 downto 1) <= \^m_axi_araddr\(31 downto 1);
  M_AXI_ARADDR(0) <= \^user_rd_base_addr\(0);
  M_AXI_ARBURST(1) <= \<const0>\;
  M_AXI_ARBURST(0) <= \<const1>\;
  M_AXI_ARCACHE(3) <= \<const0>\;
  M_AXI_ARCACHE(2) <= \<const0>\;
  M_AXI_ARCACHE(1) <= \<const1>\;
  M_AXI_ARCACHE(0) <= \<const0>\;
  M_AXI_ARID(0) <= \<const0>\;
  M_AXI_ARLOCK <= \<const0>\;
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const0>\;
  M_AXI_ARQOS(3) <= \<const0>\;
  M_AXI_ARQOS(2) <= \<const0>\;
  M_AXI_ARQOS(1) <= \<const0>\;
  M_AXI_ARQOS(0) <= \<const0>\;
  M_AXI_ARSIZE(2) <= \<const0>\;
  M_AXI_ARSIZE(1) <= \<const1>\;
  M_AXI_ARSIZE(0) <= \<const0>\;
  M_AXI_ARUSER(0) <= \<const1>\;
  M_AXI_ARVALID <= \^m_axi_arvalid\;
  M_AXI_AWADDR(31 downto 0) <= M_AXI_AWADDR_w(31 downto 0);
  M_AXI_AWADDR_w(0) <= user_wr_base_addr(0);
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const1>\;
  M_AXI_AWCACHE(3) <= \<const0>\;
  M_AXI_AWCACHE(2) <= \<const0>\;
  M_AXI_AWCACHE(1) <= \<const1>\;
  M_AXI_AWCACHE(0) <= \<const0>\;
  M_AXI_AWID(0) <= \<const0>\;
  M_AXI_AWLOCK <= \<const0>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWQOS(3) <= \<const0>\;
  M_AXI_AWQOS(2) <= \<const0>\;
  M_AXI_AWQOS(1) <= \<const0>\;
  M_AXI_AWQOS(0) <= \<const0>\;
  M_AXI_AWREADY_w <= M_AXI_AWREADY;
  M_AXI_AWSIZE(2) <= \<const0>\;
  M_AXI_AWSIZE(1) <= \<const1>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  M_AXI_AWUSER(0) <= \<const1>\;
  M_AXI_AWVALID <= M_AXI_AWVALID_w;
  M_AXI_BREADY <= \^m_axi_bready\;
  M_AXI_RREADY <= \^m_axi_rready\;
  M_AXI_WDATA(31 downto 0) <= f_q_w(31 downto 0);
  M_AXI_WLAST <= M_AXI_WLAST_w;
  M_AXI_WREADY_w <= M_AXI_WREADY;
  M_AXI_WSTRB(3) <= \<const1>\;
  M_AXI_WSTRB(2) <= \<const1>\;
  M_AXI_WSTRB(1) <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const1>\;
  M_AXI_WUSER(0) <= \<const0>\;
  M_AXI_WVALID <= M_AXI_WVALID_w;
  \^m_axi_rdata\(31 downto 0) <= M_AXI_RDATA(31 downto 0);
  \^user_rd_base_addr\(31 downto 0) <= user_rd_base_addr(31 downto 0);
  \^user_wr_base_addr\(31 downto 1) <= user_wr_base_addr(31 downto 1);
  f_q_w(31 downto 0) <= user_wr_data_in(31 downto 0);
  read_data_out(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  user_rd_data_en <= f_rd_w;
  user_wr_satisfy_w <= user_wr_satisfy;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\M_AXI_ARADDR[13]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR[9]_INST_0_n_0\,
      CO(3) => \M_AXI_ARADDR[13]_INST_0_n_0\,
      CO(2) => \M_AXI_ARADDR[13]_INST_0_n_1\,
      CO(1) => \M_AXI_ARADDR[13]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[13]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_rd_base_addr\(16 downto 13),
      O(3 downto 0) => \^m_axi_araddr\(16 downto 13),
      S(3) => \M_AXI_ARADDR[13]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR[13]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR[13]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR[13]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[13]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(16),
      I1 => axi_araddr_reg(16),
      O => \M_AXI_ARADDR[13]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[13]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(15),
      I1 => axi_araddr_reg(15),
      O => \M_AXI_ARADDR[13]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[13]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(14),
      I1 => axi_araddr_reg(14),
      O => \M_AXI_ARADDR[13]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[13]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(13),
      I1 => axi_araddr_reg(13),
      O => \M_AXI_ARADDR[13]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[17]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR[13]_INST_0_n_0\,
      CO(3) => \M_AXI_ARADDR[17]_INST_0_n_0\,
      CO(2) => \M_AXI_ARADDR[17]_INST_0_n_1\,
      CO(1) => \M_AXI_ARADDR[17]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[17]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_rd_base_addr\(20 downto 17),
      O(3 downto 0) => \^m_axi_araddr\(20 downto 17),
      S(3) => \M_AXI_ARADDR[17]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR[17]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR[17]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR[17]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[17]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(20),
      I1 => axi_araddr_reg(20),
      O => \M_AXI_ARADDR[17]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[17]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(19),
      I1 => axi_araddr_reg(19),
      O => \M_AXI_ARADDR[17]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[17]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(18),
      I1 => axi_araddr_reg(18),
      O => \M_AXI_ARADDR[17]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[17]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(17),
      I1 => axi_araddr_reg(17),
      O => \M_AXI_ARADDR[17]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(1),
      I1 => axi_araddr_reg(1),
      O => \^m_axi_araddr\(1)
    );
\M_AXI_ARADDR[21]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR[17]_INST_0_n_0\,
      CO(3) => \M_AXI_ARADDR[21]_INST_0_n_0\,
      CO(2) => \M_AXI_ARADDR[21]_INST_0_n_1\,
      CO(1) => \M_AXI_ARADDR[21]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[21]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_rd_base_addr\(24 downto 21),
      O(3 downto 0) => \^m_axi_araddr\(24 downto 21),
      S(3) => \M_AXI_ARADDR[21]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR[21]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR[21]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR[21]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[21]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(24),
      I1 => axi_araddr_reg(24),
      O => \M_AXI_ARADDR[21]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[21]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(23),
      I1 => axi_araddr_reg(23),
      O => \M_AXI_ARADDR[21]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[21]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(22),
      I1 => axi_araddr_reg(22),
      O => \M_AXI_ARADDR[21]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[21]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(21),
      I1 => axi_araddr_reg(21),
      O => \M_AXI_ARADDR[21]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[25]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR[21]_INST_0_n_0\,
      CO(3) => \M_AXI_ARADDR[25]_INST_0_n_0\,
      CO(2) => \M_AXI_ARADDR[25]_INST_0_n_1\,
      CO(1) => \M_AXI_ARADDR[25]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[25]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_rd_base_addr\(28 downto 25),
      O(3 downto 0) => \^m_axi_araddr\(28 downto 25),
      S(3) => \M_AXI_ARADDR[25]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR[25]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR[25]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR[25]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[25]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(28),
      I1 => axi_araddr_reg(28),
      O => \M_AXI_ARADDR[25]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[25]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(27),
      I1 => axi_araddr_reg(27),
      O => \M_AXI_ARADDR[25]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[25]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(26),
      I1 => axi_araddr_reg(26),
      O => \M_AXI_ARADDR[25]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[25]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(25),
      I1 => axi_araddr_reg(25),
      O => \M_AXI_ARADDR[25]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[29]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR[25]_INST_0_n_0\,
      CO(3 downto 2) => \NLW_M_AXI_ARADDR[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \M_AXI_ARADDR[29]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[29]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^user_rd_base_addr\(30 downto 29),
      O(3) => \NLW_M_AXI_ARADDR[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => \^m_axi_araddr\(31 downto 29),
      S(3) => '0',
      S(2) => \M_AXI_ARADDR[29]_INST_0_i_1_n_0\,
      S(1) => \M_AXI_ARADDR[29]_INST_0_i_2_n_0\,
      S(0) => \M_AXI_ARADDR[29]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[29]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(31),
      I1 => axi_araddr_reg(31),
      O => \M_AXI_ARADDR[29]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[29]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(30),
      I1 => axi_araddr_reg(30),
      O => \M_AXI_ARADDR[29]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[29]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(29),
      I1 => axi_araddr_reg(29),
      O => \M_AXI_ARADDR[29]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \M_AXI_ARADDR[2]_INST_0_n_0\,
      CO(2) => \M_AXI_ARADDR[2]_INST_0_n_1\,
      CO(1) => \M_AXI_ARADDR[2]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_rd_base_addr\(4 downto 1),
      O(3 downto 1) => \^m_axi_araddr\(4 downto 2),
      O(0) => \NLW_M_AXI_ARADDR[2]_INST_0_O_UNCONNECTED\(0),
      S(3) => \M_AXI_ARADDR[2]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR[2]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR[2]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR[2]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[2]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(4),
      I1 => axi_araddr_reg(4),
      O => \M_AXI_ARADDR[2]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(3),
      I1 => axi_araddr_reg(3),
      O => \M_AXI_ARADDR[2]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(2),
      I1 => axi_araddr_reg(2),
      O => \M_AXI_ARADDR[2]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[2]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(1),
      I1 => axi_araddr_reg(1),
      O => \M_AXI_ARADDR[2]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[5]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR[2]_INST_0_n_0\,
      CO(3) => \M_AXI_ARADDR[5]_INST_0_n_0\,
      CO(2) => \M_AXI_ARADDR[5]_INST_0_n_1\,
      CO(1) => \M_AXI_ARADDR[5]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[5]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_rd_base_addr\(8 downto 5),
      O(3 downto 0) => \^m_axi_araddr\(8 downto 5),
      S(3) => \M_AXI_ARADDR[5]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR[5]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR[5]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR[5]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[5]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(8),
      I1 => axi_araddr_reg(8),
      O => \M_AXI_ARADDR[5]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[5]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(7),
      I1 => axi_araddr_reg(7),
      O => \M_AXI_ARADDR[5]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[5]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(6),
      I1 => axi_araddr_reg(6),
      O => \M_AXI_ARADDR[5]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[5]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(5),
      I1 => axi_araddr_reg(5),
      O => \M_AXI_ARADDR[5]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[9]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR[5]_INST_0_n_0\,
      CO(3) => \M_AXI_ARADDR[9]_INST_0_n_0\,
      CO(2) => \M_AXI_ARADDR[9]_INST_0_n_1\,
      CO(1) => \M_AXI_ARADDR[9]_INST_0_n_2\,
      CO(0) => \M_AXI_ARADDR[9]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_rd_base_addr\(12 downto 9),
      O(3 downto 0) => \^m_axi_araddr\(12 downto 9),
      S(3) => \M_AXI_ARADDR[9]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR[9]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR[9]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR[9]_INST_0_i_4_n_0\
    );
\M_AXI_ARADDR[9]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(12),
      I1 => axi_araddr_reg(12),
      O => \M_AXI_ARADDR[9]_INST_0_i_1_n_0\
    );
\M_AXI_ARADDR[9]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(11),
      I1 => axi_araddr_reg(11),
      O => \M_AXI_ARADDR[9]_INST_0_i_2_n_0\
    );
\M_AXI_ARADDR[9]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(10),
      I1 => axi_araddr_reg(10),
      O => \M_AXI_ARADDR[9]_INST_0_i_3_n_0\
    );
\M_AXI_ARADDR[9]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_rd_base_addr\(9),
      I1 => axi_araddr_reg(9),
      O => \M_AXI_ARADDR[9]_INST_0_i_4_n_0\
    );
\M_AXI_ARLEN[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => user_rd_burst_len(0),
      O => M_AXI_ARLEN(0)
    );
\M_AXI_ARLEN[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_rd_burst_len(1),
      I1 => user_rd_burst_len(0),
      O => M_AXI_ARLEN(1)
    );
\M_AXI_ARLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => user_rd_burst_len(2),
      I1 => user_rd_burst_len(0),
      I2 => user_rd_burst_len(1),
      O => M_AXI_ARLEN(2)
    );
\M_AXI_ARLEN[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => user_rd_burst_len(3),
      I1 => user_rd_burst_len(1),
      I2 => user_rd_burst_len(0),
      I3 => user_rd_burst_len(2),
      O => M_AXI_ARLEN(3)
    );
\M_AXI_ARLEN[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_rd_burst_len(4),
      I1 => user_rd_burst_len(2),
      I2 => user_rd_burst_len(0),
      I3 => user_rd_burst_len(1),
      I4 => user_rd_burst_len(3),
      O => M_AXI_ARLEN(4)
    );
\M_AXI_ARLEN[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => user_rd_burst_len(5),
      I1 => user_rd_burst_len(3),
      I2 => user_rd_burst_len(1),
      I3 => user_rd_burst_len(0),
      I4 => user_rd_burst_len(2),
      I5 => user_rd_burst_len(4),
      O => M_AXI_ARLEN(5)
    );
\M_AXI_ARLEN[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      O => M_AXI_ARLEN(6)
    );
\M_AXI_ARLEN[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => user_rd_burst_len(7),
      I1 => user_rd_burst_len(5),
      I2 => user_rd_burst_len(3),
      I3 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I4 => user_rd_burst_len(4),
      I5 => user_rd_burst_len(6),
      O => M_AXI_ARLEN(7)
    );
\M_AXI_ARLEN[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => user_rd_burst_len(1),
      I1 => user_rd_burst_len(0),
      I2 => user_rd_burst_len(2),
      O => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[13]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR[9]_INST_0_n_0\,
      CO(3) => \M_AXI_AWADDR[13]_INST_0_n_0\,
      CO(2) => \M_AXI_AWADDR[13]_INST_0_n_1\,
      CO(1) => \M_AXI_AWADDR[13]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[13]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_wr_base_addr\(16 downto 13),
      O(3 downto 0) => M_AXI_AWADDR_w(16 downto 13),
      S(3) => \M_AXI_AWADDR[13]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR[13]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR[13]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR[13]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[13]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(16),
      I1 => axi_awaddr_reg(16),
      O => \M_AXI_AWADDR[13]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[13]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(15),
      I1 => axi_awaddr_reg(15),
      O => \M_AXI_AWADDR[13]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[13]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(14),
      I1 => axi_awaddr_reg(14),
      O => \M_AXI_AWADDR[13]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[13]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(13),
      I1 => axi_awaddr_reg(13),
      O => \M_AXI_AWADDR[13]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[17]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR[13]_INST_0_n_0\,
      CO(3) => \M_AXI_AWADDR[17]_INST_0_n_0\,
      CO(2) => \M_AXI_AWADDR[17]_INST_0_n_1\,
      CO(1) => \M_AXI_AWADDR[17]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[17]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_wr_base_addr\(20 downto 17),
      O(3 downto 0) => M_AXI_AWADDR_w(20 downto 17),
      S(3) => \M_AXI_AWADDR[17]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR[17]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR[17]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR[17]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[17]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(20),
      I1 => axi_awaddr_reg(20),
      O => \M_AXI_AWADDR[17]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[17]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(19),
      I1 => axi_awaddr_reg(19),
      O => \M_AXI_AWADDR[17]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[17]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(18),
      I1 => axi_awaddr_reg(18),
      O => \M_AXI_AWADDR[17]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[17]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(17),
      I1 => axi_awaddr_reg(17),
      O => \M_AXI_AWADDR[17]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(1),
      I1 => axi_awaddr_reg(1),
      O => M_AXI_AWADDR_w(1)
    );
\M_AXI_AWADDR[21]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR[17]_INST_0_n_0\,
      CO(3) => \M_AXI_AWADDR[21]_INST_0_n_0\,
      CO(2) => \M_AXI_AWADDR[21]_INST_0_n_1\,
      CO(1) => \M_AXI_AWADDR[21]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[21]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_wr_base_addr\(24 downto 21),
      O(3 downto 0) => M_AXI_AWADDR_w(24 downto 21),
      S(3) => \M_AXI_AWADDR[21]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR[21]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR[21]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR[21]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[21]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(24),
      I1 => axi_awaddr_reg(24),
      O => \M_AXI_AWADDR[21]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[21]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(23),
      I1 => axi_awaddr_reg(23),
      O => \M_AXI_AWADDR[21]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[21]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(22),
      I1 => axi_awaddr_reg(22),
      O => \M_AXI_AWADDR[21]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[21]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(21),
      I1 => axi_awaddr_reg(21),
      O => \M_AXI_AWADDR[21]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[25]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR[21]_INST_0_n_0\,
      CO(3) => \M_AXI_AWADDR[25]_INST_0_n_0\,
      CO(2) => \M_AXI_AWADDR[25]_INST_0_n_1\,
      CO(1) => \M_AXI_AWADDR[25]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[25]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_wr_base_addr\(28 downto 25),
      O(3 downto 0) => M_AXI_AWADDR_w(28 downto 25),
      S(3) => \M_AXI_AWADDR[25]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR[25]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR[25]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR[25]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[25]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(28),
      I1 => axi_awaddr_reg(28),
      O => \M_AXI_AWADDR[25]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[25]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(27),
      I1 => axi_awaddr_reg(27),
      O => \M_AXI_AWADDR[25]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[25]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(26),
      I1 => axi_awaddr_reg(26),
      O => \M_AXI_AWADDR[25]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[25]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(25),
      I1 => axi_awaddr_reg(25),
      O => \M_AXI_AWADDR[25]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[29]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR[25]_INST_0_n_0\,
      CO(3 downto 2) => \NLW_M_AXI_AWADDR[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \M_AXI_AWADDR[29]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[29]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^user_wr_base_addr\(30 downto 29),
      O(3) => \NLW_M_AXI_AWADDR[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => M_AXI_AWADDR_w(31 downto 29),
      S(3) => '0',
      S(2) => \M_AXI_AWADDR[29]_INST_0_i_1_n_0\,
      S(1) => \M_AXI_AWADDR[29]_INST_0_i_2_n_0\,
      S(0) => \M_AXI_AWADDR[29]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[29]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(31),
      I1 => axi_awaddr_reg(31),
      O => \M_AXI_AWADDR[29]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[29]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(30),
      I1 => axi_awaddr_reg(30),
      O => \M_AXI_AWADDR[29]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[29]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(29),
      I1 => axi_awaddr_reg(29),
      O => \M_AXI_AWADDR[29]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \M_AXI_AWADDR[2]_INST_0_n_0\,
      CO(2) => \M_AXI_AWADDR[2]_INST_0_n_1\,
      CO(1) => \M_AXI_AWADDR[2]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_wr_base_addr\(4 downto 1),
      O(3 downto 1) => M_AXI_AWADDR_w(4 downto 2),
      O(0) => \NLW_M_AXI_AWADDR[2]_INST_0_O_UNCONNECTED\(0),
      S(3) => \M_AXI_AWADDR[2]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR[2]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR[2]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR[2]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[2]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(4),
      I1 => axi_awaddr_reg(4),
      O => \M_AXI_AWADDR[2]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(3),
      I1 => axi_awaddr_reg(3),
      O => \M_AXI_AWADDR[2]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(2),
      I1 => axi_awaddr_reg(2),
      O => \M_AXI_AWADDR[2]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[2]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(1),
      I1 => axi_awaddr_reg(1),
      O => \M_AXI_AWADDR[2]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[5]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR[2]_INST_0_n_0\,
      CO(3) => \M_AXI_AWADDR[5]_INST_0_n_0\,
      CO(2) => \M_AXI_AWADDR[5]_INST_0_n_1\,
      CO(1) => \M_AXI_AWADDR[5]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[5]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_wr_base_addr\(8 downto 5),
      O(3 downto 0) => M_AXI_AWADDR_w(8 downto 5),
      S(3) => \M_AXI_AWADDR[5]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR[5]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR[5]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR[5]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[5]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(8),
      I1 => axi_awaddr_reg(8),
      O => \M_AXI_AWADDR[5]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[5]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(7),
      I1 => axi_awaddr_reg(7),
      O => \M_AXI_AWADDR[5]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[5]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(6),
      I1 => axi_awaddr_reg(6),
      O => \M_AXI_AWADDR[5]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[5]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(5),
      I1 => axi_awaddr_reg(5),
      O => \M_AXI_AWADDR[5]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[9]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR[5]_INST_0_n_0\,
      CO(3) => \M_AXI_AWADDR[9]_INST_0_n_0\,
      CO(2) => \M_AXI_AWADDR[9]_INST_0_n_1\,
      CO(1) => \M_AXI_AWADDR[9]_INST_0_n_2\,
      CO(0) => \M_AXI_AWADDR[9]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^user_wr_base_addr\(12 downto 9),
      O(3 downto 0) => M_AXI_AWADDR_w(12 downto 9),
      S(3) => \M_AXI_AWADDR[9]_INST_0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR[9]_INST_0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR[9]_INST_0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR[9]_INST_0_i_4_n_0\
    );
\M_AXI_AWADDR[9]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(12),
      I1 => axi_awaddr_reg(12),
      O => \M_AXI_AWADDR[9]_INST_0_i_1_n_0\
    );
\M_AXI_AWADDR[9]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(11),
      I1 => axi_awaddr_reg(11),
      O => \M_AXI_AWADDR[9]_INST_0_i_2_n_0\
    );
\M_AXI_AWADDR[9]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(10),
      I1 => axi_awaddr_reg(10),
      O => \M_AXI_AWADDR[9]_INST_0_i_3_n_0\
    );
\M_AXI_AWADDR[9]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^user_wr_base_addr\(9),
      I1 => axi_awaddr_reg(9),
      O => \M_AXI_AWADDR[9]_INST_0_i_4_n_0\
    );
\M_AXI_AWLEN[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => user_wr_burst_len(0),
      O => M_AXI_AWLEN(0)
    );
\M_AXI_AWLEN[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_wr_burst_len(1),
      I1 => user_wr_burst_len(0),
      O => M_AXI_AWLEN(1)
    );
\M_AXI_AWLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => user_wr_burst_len(2),
      I1 => user_wr_burst_len(0),
      I2 => user_wr_burst_len(1),
      O => M_AXI_AWLEN(2)
    );
\M_AXI_AWLEN[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => user_wr_burst_len(3),
      I1 => user_wr_burst_len(1),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(0),
      O => M_AXI_AWLEN(3)
    );
\M_AXI_AWLEN[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_wr_burst_len(4),
      I1 => user_wr_burst_len(3),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(1),
      I4 => user_wr_burst_len(0),
      O => M_AXI_AWLEN(4)
    );
\M_AXI_AWLEN[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => user_wr_burst_len(5),
      I1 => user_wr_burst_len(0),
      I2 => user_wr_burst_len(1),
      I3 => user_wr_burst_len(2),
      I4 => user_wr_burst_len(3),
      I5 => user_wr_burst_len(4),
      O => M_AXI_AWLEN(5)
    );
\M_AXI_AWLEN[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(4),
      I2 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I3 => user_wr_burst_len(0),
      I4 => user_wr_burst_len(5),
      O => M_AXI_AWLEN(6)
    );
\M_AXI_AWLEN[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => user_wr_burst_len(7),
      I1 => user_wr_burst_len(5),
      I2 => user_wr_burst_len(0),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      I5 => user_wr_burst_len(6),
      O => M_AXI_AWLEN(7)
    );
\M_AXI_AWLEN[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => user_wr_burst_len(1),
      I1 => user_wr_burst_len(2),
      I2 => user_wr_burst_len(3),
      O => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\
    );
\TXN_DONE[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writes_done_w,
      I1 => writes_done_d2,
      O => TXN_DONE(0)
    );
\TXN_DONE[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reads_done,
      I1 => reads_done_d2,
      O => TXN_DONE(1)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\axi_araddr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(16),
      O => \axi_araddr[13]_i_2_n_0\
    );
\axi_araddr[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(15),
      O => \axi_araddr[13]_i_3_n_0\
    );
\axi_araddr[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(14),
      O => \axi_araddr[13]_i_4_n_0\
    );
\axi_araddr[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(13),
      O => \axi_araddr[13]_i_5_n_0\
    );
\axi_araddr[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(20),
      O => \axi_araddr[17]_i_2_n_0\
    );
\axi_araddr[17]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(19),
      O => \axi_araddr[17]_i_3_n_0\
    );
\axi_araddr[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(18),
      O => \axi_araddr[17]_i_4_n_0\
    );
\axi_araddr[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(17),
      O => \axi_araddr[17]_i_5_n_0\
    );
\axi_araddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\,
      I1 => M_AXI_ARREADY,
      O => axi_arvalid0
    );
\axi_araddr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(2),
      I1 => axi_araddr_reg(4),
      O => \axi_araddr[1]_i_3_n_0\
    );
\axi_araddr[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(1),
      I1 => axi_araddr_reg(3),
      O => \axi_araddr[1]_i_4_n_0\
    );
\axi_araddr[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(0),
      I1 => axi_araddr_reg(2),
      O => \axi_araddr[1]_i_5_n_0\
    );
\axi_araddr[1]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(1),
      O => \axi_araddr[1]_i_6_n_0\
    );
\axi_araddr[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(24),
      O => \axi_araddr[21]_i_2_n_0\
    );
\axi_araddr[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(23),
      O => \axi_araddr[21]_i_3_n_0\
    );
\axi_araddr[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(22),
      O => \axi_araddr[21]_i_4_n_0\
    );
\axi_araddr[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(21),
      O => \axi_araddr[21]_i_5_n_0\
    );
\axi_araddr[25]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(28),
      O => \axi_araddr[25]_i_2_n_0\
    );
\axi_araddr[25]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(27),
      O => \axi_araddr[25]_i_3_n_0\
    );
\axi_araddr[25]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(26),
      O => \axi_araddr[25]_i_4_n_0\
    );
\axi_araddr[25]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(25),
      O => \axi_araddr[25]_i_5_n_0\
    );
\axi_araddr[29]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(31),
      O => \axi_araddr[29]_i_2_n_0\
    );
\axi_araddr[29]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(30),
      O => \axi_araddr[29]_i_3_n_0\
    );
\axi_araddr[29]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(29),
      O => \axi_araddr[29]_i_4_n_0\
    );
\axi_araddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => axi_araddr_reg(8),
      O => \axi_araddr[5]_i_2_n_0\
    );
\axi_araddr[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(5),
      I1 => axi_araddr_reg(7),
      O => \axi_araddr[5]_i_3_n_0\
    );
\axi_araddr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(4),
      I1 => axi_araddr_reg(6),
      O => \axi_araddr[5]_i_4_n_0\
    );
\axi_araddr[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(3),
      I1 => axi_araddr_reg(5),
      O => \axi_araddr[5]_i_5_n_0\
    );
\axi_araddr[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(12),
      O => \axi_araddr[9]_i_2_n_0\
    );
\axi_araddr[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(11),
      O => \axi_araddr[9]_i_3_n_0\
    );
\axi_araddr[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_araddr_reg(10),
      O => \axi_araddr[9]_i_4_n_0\
    );
\axi_araddr[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_burst_len(7),
      I1 => axi_araddr_reg(9),
      O => \axi_araddr[9]_i_5_n_0\
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[9]_i_1_n_6\,
      Q => axi_araddr_reg(10),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[9]_i_1_n_5\,
      Q => axi_araddr_reg(11),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[9]_i_1_n_4\,
      Q => axi_araddr_reg(12),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_7\,
      Q => axi_araddr_reg(13),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[9]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[13]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[13]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[13]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[13]_i_1_n_4\,
      O(2) => \axi_araddr_reg[13]_i_1_n_5\,
      O(1) => \axi_araddr_reg[13]_i_1_n_6\,
      O(0) => \axi_araddr_reg[13]_i_1_n_7\,
      S(3) => \axi_araddr[13]_i_2_n_0\,
      S(2) => \axi_araddr[13]_i_3_n_0\,
      S(1) => \axi_araddr[13]_i_4_n_0\,
      S(0) => \axi_araddr[13]_i_5_n_0\
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_6\,
      Q => axi_araddr_reg(14),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_5\,
      Q => axi_araddr_reg(15),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_4\,
      Q => axi_araddr_reg(16),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_7\,
      Q => axi_araddr_reg(17),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[13]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[17]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[17]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[17]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[17]_i_1_n_4\,
      O(2) => \axi_araddr_reg[17]_i_1_n_5\,
      O(1) => \axi_araddr_reg[17]_i_1_n_6\,
      O(0) => \axi_araddr_reg[17]_i_1_n_7\,
      S(3) => \axi_araddr[17]_i_2_n_0\,
      S(2) => \axi_araddr[17]_i_3_n_0\,
      S(1) => \axi_araddr[17]_i_4_n_0\,
      S(0) => \axi_araddr[17]_i_5_n_0\
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_6\,
      Q => axi_araddr_reg(18),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_5\,
      Q => axi_araddr_reg(19),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[1]_i_2_n_7\,
      Q => axi_araddr_reg(1),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_araddr_reg[1]_i_2_n_0\,
      CO(2) => \axi_araddr_reg[1]_i_2_n_1\,
      CO(1) => \axi_araddr_reg[1]_i_2_n_2\,
      CO(0) => \axi_araddr_reg[1]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => user_rd_burst_len(2 downto 0),
      DI(0) => '0',
      O(3) => \axi_araddr_reg[1]_i_2_n_4\,
      O(2) => \axi_araddr_reg[1]_i_2_n_5\,
      O(1) => \axi_araddr_reg[1]_i_2_n_6\,
      O(0) => \axi_araddr_reg[1]_i_2_n_7\,
      S(3) => \axi_araddr[1]_i_3_n_0\,
      S(2) => \axi_araddr[1]_i_4_n_0\,
      S(1) => \axi_araddr[1]_i_5_n_0\,
      S(0) => \axi_araddr[1]_i_6_n_0\
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_4\,
      Q => axi_araddr_reg(20),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_7\,
      Q => axi_araddr_reg(21),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[17]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[21]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[21]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[21]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[21]_i_1_n_4\,
      O(2) => \axi_araddr_reg[21]_i_1_n_5\,
      O(1) => \axi_araddr_reg[21]_i_1_n_6\,
      O(0) => \axi_araddr_reg[21]_i_1_n_7\,
      S(3) => \axi_araddr[21]_i_2_n_0\,
      S(2) => \axi_araddr[21]_i_3_n_0\,
      S(1) => \axi_araddr[21]_i_4_n_0\,
      S(0) => \axi_araddr[21]_i_5_n_0\
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_6\,
      Q => axi_araddr_reg(22),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_5\,
      Q => axi_araddr_reg(23),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_4\,
      Q => axi_araddr_reg(24),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_7\,
      Q => axi_araddr_reg(25),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[21]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[25]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[25]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[25]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[25]_i_1_n_4\,
      O(2) => \axi_araddr_reg[25]_i_1_n_5\,
      O(1) => \axi_araddr_reg[25]_i_1_n_6\,
      O(0) => \axi_araddr_reg[25]_i_1_n_7\,
      S(3) => \axi_araddr[25]_i_2_n_0\,
      S(2) => \axi_araddr[25]_i_3_n_0\,
      S(1) => \axi_araddr[25]_i_4_n_0\,
      S(0) => \axi_araddr[25]_i_5_n_0\
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_6\,
      Q => axi_araddr_reg(26),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_5\,
      Q => axi_araddr_reg(27),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_4\,
      Q => axi_araddr_reg(28),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[29]_i_1_n_7\,
      Q => axi_araddr_reg(29),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[25]_i_1_n_0\,
      CO(3 downto 2) => \NLW_axi_araddr_reg[29]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \axi_araddr_reg[29]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_axi_araddr_reg[29]_i_1_O_UNCONNECTED\(3),
      O(2) => \axi_araddr_reg[29]_i_1_n_5\,
      O(1) => \axi_araddr_reg[29]_i_1_n_6\,
      O(0) => \axi_araddr_reg[29]_i_1_n_7\,
      S(3) => '0',
      S(2) => \axi_araddr[29]_i_2_n_0\,
      S(1) => \axi_araddr[29]_i_3_n_0\,
      S(0) => \axi_araddr[29]_i_4_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[1]_i_2_n_6\,
      Q => axi_araddr_reg(2),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[29]_i_1_n_6\,
      Q => axi_araddr_reg(30),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[29]_i_1_n_5\,
      Q => axi_araddr_reg(31),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[1]_i_2_n_5\,
      Q => axi_araddr_reg(3),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[1]_i_2_n_4\,
      Q => axi_araddr_reg(4),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[5]_i_1_n_7\,
      Q => axi_araddr_reg(5),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[1]_i_2_n_0\,
      CO(3) => \axi_araddr_reg[5]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[5]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[5]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_burst_len(6 downto 3),
      O(3) => \axi_araddr_reg[5]_i_1_n_4\,
      O(2) => \axi_araddr_reg[5]_i_1_n_5\,
      O(1) => \axi_araddr_reg[5]_i_1_n_6\,
      O(0) => \axi_araddr_reg[5]_i_1_n_7\,
      S(3) => \axi_araddr[5]_i_2_n_0\,
      S(2) => \axi_araddr[5]_i_3_n_0\,
      S(1) => \axi_araddr[5]_i_4_n_0\,
      S(0) => \axi_araddr[5]_i_5_n_0\
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[5]_i_1_n_6\,
      Q => axi_araddr_reg(6),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[5]_i_1_n_5\,
      Q => axi_araddr_reg(7),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[5]_i_1_n_4\,
      Q => axi_araddr_reg(8),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[9]_i_1_n_7\,
      Q => axi_araddr_reg(9),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[5]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[9]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[9]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[9]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => user_rd_burst_len(7),
      O(3) => \axi_araddr_reg[9]_i_1_n_4\,
      O(2) => \axi_araddr_reg[9]_i_1_n_5\,
      O(1) => \axi_araddr_reg[9]_i_1_n_6\,
      O(0) => \axi_araddr_reg[9]_i_1_n_7\,
      S(3) => \axi_araddr[9]_i_2_n_0\,
      S(2) => \axi_araddr[9]_i_3_n_0\,
      S(1) => \axi_araddr[9]_i_4_n_0\,
      S(0) => \axi_araddr[9]_i_5_n_0\
    );
axi_arvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E00"
    )
        port map (
      I0 => start_single_burst_read,
      I1 => \^m_axi_arvalid\,
      I2 => M_AXI_ARREADY,
      I3 => M_AXI_ARESETN,
      I4 => user_rd_en,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^m_axi_arvalid\,
      R => '0'
    );
\axi_awaddr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(16),
      O => \axi_awaddr[13]_i_2_n_0\
    );
\axi_awaddr[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(15),
      O => \axi_awaddr[13]_i_3_n_0\
    );
\axi_awaddr[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(14),
      O => \axi_awaddr[13]_i_4_n_0\
    );
\axi_awaddr[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(13),
      O => \axi_awaddr[13]_i_5_n_0\
    );
\axi_awaddr[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(20),
      O => \axi_awaddr[17]_i_2_n_0\
    );
\axi_awaddr[17]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(19),
      O => \axi_awaddr[17]_i_3_n_0\
    );
\axi_awaddr[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(18),
      O => \axi_awaddr[17]_i_4_n_0\
    );
\axi_awaddr[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(17),
      O => \axi_awaddr[17]_i_5_n_0\
    );
\axi_awaddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXI_AWVALID_w,
      I1 => M_AXI_AWREADY_w,
      O => axi_awvalid0
    );
\axi_awaddr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(2),
      I1 => axi_awaddr_reg(4),
      O => \axi_awaddr[1]_i_3_n_0\
    );
\axi_awaddr[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(1),
      I1 => axi_awaddr_reg(3),
      O => \axi_awaddr[1]_i_4_n_0\
    );
\axi_awaddr[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(0),
      I1 => axi_awaddr_reg(2),
      O => \axi_awaddr[1]_i_5_n_0\
    );
\axi_awaddr[1]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(1),
      O => \axi_awaddr[1]_i_6_n_0\
    );
\axi_awaddr[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(24),
      O => \axi_awaddr[21]_i_2_n_0\
    );
\axi_awaddr[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(23),
      O => \axi_awaddr[21]_i_3_n_0\
    );
\axi_awaddr[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(22),
      O => \axi_awaddr[21]_i_4_n_0\
    );
\axi_awaddr[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(21),
      O => \axi_awaddr[21]_i_5_n_0\
    );
\axi_awaddr[25]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(28),
      O => \axi_awaddr[25]_i_2_n_0\
    );
\axi_awaddr[25]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(27),
      O => \axi_awaddr[25]_i_3_n_0\
    );
\axi_awaddr[25]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(26),
      O => \axi_awaddr[25]_i_4_n_0\
    );
\axi_awaddr[25]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(25),
      O => \axi_awaddr[25]_i_5_n_0\
    );
\axi_awaddr[29]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(31),
      O => \axi_awaddr[29]_i_2_n_0\
    );
\axi_awaddr[29]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(30),
      O => \axi_awaddr[29]_i_3_n_0\
    );
\axi_awaddr[29]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(29),
      O => \axi_awaddr[29]_i_4_n_0\
    );
\axi_awaddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => axi_awaddr_reg(8),
      O => \axi_awaddr[5]_i_2_n_0\
    );
\axi_awaddr[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(5),
      I1 => axi_awaddr_reg(7),
      O => \axi_awaddr[5]_i_3_n_0\
    );
\axi_awaddr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(4),
      I1 => axi_awaddr_reg(6),
      O => \axi_awaddr[5]_i_4_n_0\
    );
\axi_awaddr[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(3),
      I1 => axi_awaddr_reg(5),
      O => \axi_awaddr[5]_i_5_n_0\
    );
\axi_awaddr[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(12),
      O => \axi_awaddr[9]_i_2_n_0\
    );
\axi_awaddr[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(11),
      O => \axi_awaddr[9]_i_3_n_0\
    );
\axi_awaddr[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_awaddr_reg(10),
      O => \axi_awaddr[9]_i_4_n_0\
    );
\axi_awaddr[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_burst_len(7),
      I1 => axi_awaddr_reg(9),
      O => \axi_awaddr[9]_i_5_n_0\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_6\,
      Q => axi_awaddr_reg(10),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_5\,
      Q => axi_awaddr_reg(11),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_4\,
      Q => axi_awaddr_reg(12),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_7\,
      Q => axi_awaddr_reg(13),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[9]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[13]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[13]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[13]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[13]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[13]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[13]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[13]_i_1_n_7\,
      S(3) => \axi_awaddr[13]_i_2_n_0\,
      S(2) => \axi_awaddr[13]_i_3_n_0\,
      S(1) => \axi_awaddr[13]_i_4_n_0\,
      S(0) => \axi_awaddr[13]_i_5_n_0\
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_6\,
      Q => axi_awaddr_reg(14),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_5\,
      Q => axi_awaddr_reg(15),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_4\,
      Q => axi_awaddr_reg(16),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_7\,
      Q => axi_awaddr_reg(17),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[13]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[17]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[17]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[17]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[17]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[17]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[17]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[17]_i_1_n_7\,
      S(3) => \axi_awaddr[17]_i_2_n_0\,
      S(2) => \axi_awaddr[17]_i_3_n_0\,
      S(1) => \axi_awaddr[17]_i_4_n_0\,
      S(0) => \axi_awaddr[17]_i_5_n_0\
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_6\,
      Q => axi_awaddr_reg(18),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_5\,
      Q => axi_awaddr_reg(19),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_7\,
      Q => axi_awaddr_reg(1),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_awaddr_reg[1]_i_2_n_0\,
      CO(2) => \axi_awaddr_reg[1]_i_2_n_1\,
      CO(1) => \axi_awaddr_reg[1]_i_2_n_2\,
      CO(0) => \axi_awaddr_reg[1]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => user_wr_burst_len(2 downto 0),
      DI(0) => '0',
      O(3) => \axi_awaddr_reg[1]_i_2_n_4\,
      O(2) => \axi_awaddr_reg[1]_i_2_n_5\,
      O(1) => \axi_awaddr_reg[1]_i_2_n_6\,
      O(0) => \axi_awaddr_reg[1]_i_2_n_7\,
      S(3) => \axi_awaddr[1]_i_3_n_0\,
      S(2) => \axi_awaddr[1]_i_4_n_0\,
      S(1) => \axi_awaddr[1]_i_5_n_0\,
      S(0) => \axi_awaddr[1]_i_6_n_0\
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_4\,
      Q => axi_awaddr_reg(20),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_7\,
      Q => axi_awaddr_reg(21),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[17]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[21]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[21]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[21]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[21]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[21]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[21]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[21]_i_1_n_7\,
      S(3) => \axi_awaddr[21]_i_2_n_0\,
      S(2) => \axi_awaddr[21]_i_3_n_0\,
      S(1) => \axi_awaddr[21]_i_4_n_0\,
      S(0) => \axi_awaddr[21]_i_5_n_0\
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_6\,
      Q => axi_awaddr_reg(22),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_5\,
      Q => axi_awaddr_reg(23),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_4\,
      Q => axi_awaddr_reg(24),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_7\,
      Q => axi_awaddr_reg(25),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[21]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[25]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[25]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[25]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[25]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[25]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[25]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[25]_i_1_n_7\,
      S(3) => \axi_awaddr[25]_i_2_n_0\,
      S(2) => \axi_awaddr[25]_i_3_n_0\,
      S(1) => \axi_awaddr[25]_i_4_n_0\,
      S(0) => \axi_awaddr[25]_i_5_n_0\
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_6\,
      Q => axi_awaddr_reg(26),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_5\,
      Q => axi_awaddr_reg(27),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_4\,
      Q => axi_awaddr_reg(28),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[29]_i_1_n_7\,
      Q => axi_awaddr_reg(29),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[25]_i_1_n_0\,
      CO(3 downto 2) => \NLW_axi_awaddr_reg[29]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \axi_awaddr_reg[29]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_axi_awaddr_reg[29]_i_1_O_UNCONNECTED\(3),
      O(2) => \axi_awaddr_reg[29]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[29]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[29]_i_1_n_7\,
      S(3) => '0',
      S(2) => \axi_awaddr[29]_i_2_n_0\,
      S(1) => \axi_awaddr[29]_i_3_n_0\,
      S(0) => \axi_awaddr[29]_i_4_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_6\,
      Q => axi_awaddr_reg(2),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[29]_i_1_n_6\,
      Q => axi_awaddr_reg(30),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[29]_i_1_n_5\,
      Q => axi_awaddr_reg(31),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_5\,
      Q => axi_awaddr_reg(3),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_4\,
      Q => axi_awaddr_reg(4),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_7\,
      Q => axi_awaddr_reg(5),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[1]_i_2_n_0\,
      CO(3) => \axi_awaddr_reg[5]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[5]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[5]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_burst_len(6 downto 3),
      O(3) => \axi_awaddr_reg[5]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[5]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[5]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[5]_i_1_n_7\,
      S(3) => \axi_awaddr[5]_i_2_n_0\,
      S(2) => \axi_awaddr[5]_i_3_n_0\,
      S(1) => \axi_awaddr[5]_i_4_n_0\,
      S(0) => \axi_awaddr[5]_i_5_n_0\
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_6\,
      Q => axi_awaddr_reg(6),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_5\,
      Q => axi_awaddr_reg(7),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_4\,
      Q => axi_awaddr_reg(8),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_7\,
      Q => axi_awaddr_reg(9),
      R => axi_awvalid_reg0
    );
\axi_awaddr_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[5]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[9]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[9]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[9]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => user_wr_burst_len(7),
      O(3) => \axi_awaddr_reg[9]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[9]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[9]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[9]_i_1_n_7\,
      S(3) => \axi_awaddr[9]_i_2_n_0\,
      S(2) => \axi_awaddr[9]_i_3_n_0\,
      S(1) => \axi_awaddr[9]_i_4_n_0\,
      S(0) => \axi_awaddr[9]_i_5_n_0\
    );
axi_awvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => user_wr_en,
      I1 => M_AXI_ARESETN,
      O => axi_awvalid_reg0
    );
axi_awvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => M_AXI_AWREADY_w,
      I1 => M_AXI_AWVALID_w,
      I2 => start_single_burst_write,
      O => axi_awvalid_i_2_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_awvalid_i_2_n_0,
      Q => M_AXI_AWVALID_w,
      R => axi_awvalid_reg0
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      O => axi_bready0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_bready0,
      Q => \^m_axi_bready\,
      R => axi_awvalid_reg0
    );
axi_rready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404440"
    )
        port map (
      I0 => user_rd_en,
      I1 => M_AXI_ARESETN,
      I2 => M_AXI_RVALID,
      I3 => \^m_axi_rready\,
      I4 => M_AXI_RLAST,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m_axi_rready\,
      R => '0'
    );
axi_wlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8303030"
    )
        port map (
      I0 => axi_wlast_reg3,
      I1 => axi_wlast_i_3_n_0,
      I2 => user_wr_burst_len(0),
      I3 => M_AXI_WREADY_w,
      I4 => M_AXI_WVALID_w,
      I5 => M_AXI_WLAST_w,
      O => axi_wlast_i_1_n_0
    );
axi_wlast_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_10_n_0
    );
axi_wlast_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_11_n_0
    );
axi_wlast_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_12_n_0
    );
axi_wlast_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_13_n_0
    );
axi_wlast_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2100004200212100"
    )
        port map (
      I0 => user_wr_burst_len(7),
      I1 => \write_index_reg__0\(8),
      I2 => write_index_w(7),
      I3 => axi_wlast_i_17_n_0,
      I4 => user_wr_burst_len(6),
      I5 => write_index_w(6),
      O => axi_wlast_i_14_n_0
    );
axi_wlast_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200002800828200"
    )
        port map (
      I0 => axi_wlast_i_18_n_0,
      I1 => user_wr_burst_len(5),
      I2 => write_index_w(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      I5 => write_index_w(4),
      O => axi_wlast_i_15_n_0
    );
axi_wlast_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1200001284000084"
    )
        port map (
      I0 => user_wr_burst_len(2),
      I1 => user_wr_burst_len(1),
      I2 => write_index_w(2),
      I3 => user_wr_burst_len(0),
      I4 => write_index_w(0),
      I5 => write_index_w(1),
      O => axi_wlast_i_16_n_0
    );
axi_wlast_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(4),
      I1 => user_wr_burst_len(1),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(3),
      I4 => user_wr_burst_len(5),
      O => axi_wlast_i_17_n_0
    );
axi_wlast_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => user_wr_burst_len(3),
      I1 => user_wr_burst_len(2),
      I2 => user_wr_burst_len(1),
      I3 => write_index_w(3),
      O => axi_wlast_i_18_n_0
    );
axi_wlast_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(7),
      I1 => user_wr_burst_len(6),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(4),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      O => axi_wlast_i_3_n_0
    );
axi_wlast_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_5_n_0
    );
axi_wlast_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_6_n_0
    );
axi_wlast_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_7_n_0
    );
axi_wlast_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast_i_9_n_0
    );
axi_wlast_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_wlast_i_1_n_0,
      Q => M_AXI_WLAST_w,
      R => axi_awvalid_reg0
    );
axi_wlast_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => axi_wlast_reg_i_4_n_0,
      CO(3) => NLW_axi_wlast_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => axi_wlast_reg3,
      CO(1) => axi_wlast_reg_i_2_n_2,
      CO(0) => axi_wlast_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_axi_wlast_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => axi_wlast_i_5_n_0,
      S(1) => axi_wlast_i_6_n_0,
      S(0) => axi_wlast_i_7_n_0
    );
axi_wlast_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => axi_wlast_reg_i_8_n_0,
      CO(3) => axi_wlast_reg_i_4_n_0,
      CO(2) => axi_wlast_reg_i_4_n_1,
      CO(1) => axi_wlast_reg_i_4_n_2,
      CO(0) => axi_wlast_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_axi_wlast_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => axi_wlast_i_9_n_0,
      S(2) => axi_wlast_i_10_n_0,
      S(1) => axi_wlast_i_11_n_0,
      S(0) => axi_wlast_i_12_n_0
    );
axi_wlast_reg_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axi_wlast_reg_i_8_n_0,
      CO(2) => axi_wlast_reg_i_8_n_1,
      CO(1) => axi_wlast_reg_i_8_n_2,
      CO(0) => axi_wlast_reg_i_8_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_axi_wlast_reg_i_8_O_UNCONNECTED(3 downto 0),
      S(3) => axi_wlast_i_13_n_0,
      S(2) => axi_wlast_i_14_n_0,
      S(1) => axi_wlast_i_15_n_0,
      S(0) => axi_wlast_i_16_n_0
    );
axi_wvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => M_AXI_WLAST_w,
      I1 => M_AXI_WREADY_w,
      I2 => M_AXI_WVALID_w,
      I3 => start_single_burst_write,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => M_AXI_WVALID_w,
      R => axi_awvalid_reg0
    );
burst_read_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CEEEEEEE"
    )
        port map (
      I0 => burst_read_active,
      I1 => start_single_burst_read,
      I2 => M_AXI_RVALID,
      I3 => \^m_axi_rready\,
      I4 => M_AXI_RLAST,
      I5 => \read_burst_counter[0]_i_1_n_0\,
      O => burst_read_active_i_1_n_0
    );
burst_read_active_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => burst_read_active_i_1_n_0,
      Q => burst_read_active,
      R => '0'
    );
burst_write_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      I2 => start_single_burst_write,
      I3 => burst_write_active,
      O => burst_write_active_i_1_n_0
    );
burst_write_active_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => burst_write_active_i_1_n_0,
      Q => burst_write_active,
      R => axi_awvalid_reg0
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(31),
      O => M_AXI_WDATA_w(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(30),
      O => M_AXI_WDATA_w(30)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(21),
      O => M_AXI_WDATA_w(21)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(20),
      O => M_AXI_WDATA_w(20)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(19),
      O => M_AXI_WDATA_w(19)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(18),
      O => M_AXI_WDATA_w(18)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(17),
      O => M_AXI_WDATA_w(17)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(16),
      O => M_AXI_WDATA_w(16)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(15),
      O => M_AXI_WDATA_w(15)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(14),
      O => M_AXI_WDATA_w(14)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(13),
      O => M_AXI_WDATA_w(13)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(12),
      O => M_AXI_WDATA_w(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(29),
      O => M_AXI_WDATA_w(29)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(11),
      O => M_AXI_WDATA_w(11)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(10),
      O => M_AXI_WDATA_w(10)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(9),
      O => M_AXI_WDATA_w(9)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(8),
      O => M_AXI_WDATA_w(8)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(7),
      O => M_AXI_WDATA_w(7)
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(6),
      O => M_AXI_WDATA_w(6)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(5),
      O => M_AXI_WDATA_w(5)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(4),
      O => M_AXI_WDATA_w(4)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(3),
      O => M_AXI_WDATA_w(3)
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(2),
      O => M_AXI_WDATA_w(2)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(28),
      O => M_AXI_WDATA_w(28)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(1),
      O => M_AXI_WDATA_w(1)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(0),
      O => M_AXI_WDATA_w(0)
    );
i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_rd_w,
      O => wnext_w
    );
i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => state_w(5)
    );
i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => state_w(4)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(27),
      O => M_AXI_WDATA_w(27)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(26),
      O => M_AXI_WDATA_w(26)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(25),
      O => M_AXI_WDATA_w(25)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(24),
      O => M_AXI_WDATA_w(24)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(23),
      O => M_AXI_WDATA_w(23)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => f_q_w(22),
      O => M_AXI_WDATA_w(22)
    );
\read_burst_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => user_rd_en,
      I1 => M_AXI_ARESETN,
      O => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_rd_len(15),
      I1 => read_burst_counter_reg(15),
      O => \read_burst_counter[0]_i_10_n_0\
    );
\read_burst_counter[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(12),
      I1 => user_rd_len(12),
      I2 => read_burst_counter_reg(13),
      I3 => user_rd_len(13),
      I4 => user_rd_len(14),
      I5 => read_burst_counter_reg(14),
      O => \read_burst_counter[0]_i_11_n_0\
    );
\read_burst_counter[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(9),
      I1 => user_rd_len(9),
      I2 => read_burst_counter_reg(10),
      I3 => user_rd_len(10),
      I4 => user_rd_len(11),
      I5 => read_burst_counter_reg(11),
      O => \read_burst_counter[0]_i_12_n_0\
    );
\read_burst_counter[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(6),
      I1 => user_rd_len(6),
      I2 => read_burst_counter_reg(7),
      I3 => user_rd_len(7),
      I4 => user_rd_len(8),
      I5 => read_burst_counter_reg(8),
      O => \read_burst_counter[0]_i_13_n_0\
    );
\read_burst_counter[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(3),
      I1 => user_rd_len(3),
      I2 => read_burst_counter_reg(4),
      I3 => user_rd_len(4),
      I4 => user_rd_len(5),
      I5 => read_burst_counter_reg(5),
      O => \read_burst_counter[0]_i_14_n_0\
    );
\read_burst_counter[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(0),
      I1 => user_rd_len(0),
      I2 => read_burst_counter_reg(1),
      I3 => user_rd_len(1),
      I4 => user_rd_len(2),
      I5 => read_burst_counter_reg(2),
      O => \read_burst_counter[0]_i_15_n_0\
    );
\read_burst_counter[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => \^m_axi_arvalid\,
      I2 => read_burst_counter0,
      O => read_burst_counter
    );
\read_burst_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(3),
      O => \read_burst_counter[0]_i_5_n_0\
    );
\read_burst_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(2),
      O => \read_burst_counter[0]_i_6_n_0\
    );
\read_burst_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(1),
      O => \read_burst_counter[0]_i_7_n_0\
    );
\read_burst_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_burst_counter_reg(0),
      O => \read_burst_counter[0]_i_8_n_0\
    );
\read_burst_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(15),
      O => \read_burst_counter[12]_i_2_n_0\
    );
\read_burst_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(14),
      O => \read_burst_counter[12]_i_3_n_0\
    );
\read_burst_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(13),
      O => \read_burst_counter[12]_i_4_n_0\
    );
\read_burst_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(12),
      O => \read_burst_counter[12]_i_5_n_0\
    );
\read_burst_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(7),
      O => \read_burst_counter[4]_i_2_n_0\
    );
\read_burst_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(6),
      O => \read_burst_counter[4]_i_3_n_0\
    );
\read_burst_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(5),
      O => \read_burst_counter[4]_i_4_n_0\
    );
\read_burst_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(4),
      O => \read_burst_counter[4]_i_5_n_0\
    );
\read_burst_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(11),
      O => \read_burst_counter[8]_i_2_n_0\
    );
\read_burst_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(10),
      O => \read_burst_counter[8]_i_3_n_0\
    );
\read_burst_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(9),
      O => \read_burst_counter[8]_i_4_n_0\
    );
\read_burst_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_burst_counter_reg(8),
      O => \read_burst_counter[8]_i_5_n_0\
    );
\read_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_3_n_7\,
      Q => read_burst_counter_reg(0),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_burst_counter_reg[0]_i_3_n_0\,
      CO(2) => \read_burst_counter_reg[0]_i_3_n_1\,
      CO(1) => \read_burst_counter_reg[0]_i_3_n_2\,
      CO(0) => \read_burst_counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \read_burst_counter_reg[0]_i_3_n_4\,
      O(2) => \read_burst_counter_reg[0]_i_3_n_5\,
      O(1) => \read_burst_counter_reg[0]_i_3_n_6\,
      O(0) => \read_burst_counter_reg[0]_i_3_n_7\,
      S(3) => \read_burst_counter[0]_i_5_n_0\,
      S(2) => \read_burst_counter[0]_i_6_n_0\,
      S(1) => \read_burst_counter[0]_i_7_n_0\,
      S(0) => \read_burst_counter[0]_i_8_n_0\
    );
\read_burst_counter_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_burst_counter_reg[0]_i_9_n_0\,
      CO(3 downto 2) => \NLW_read_burst_counter_reg[0]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => read_burst_counter0,
      CO(0) => \read_burst_counter_reg[0]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_read_burst_counter_reg[0]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \read_burst_counter[0]_i_10_n_0\,
      S(0) => \read_burst_counter[0]_i_11_n_0\
    );
\read_burst_counter_reg[0]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_burst_counter_reg[0]_i_9_n_0\,
      CO(2) => \read_burst_counter_reg[0]_i_9_n_1\,
      CO(1) => \read_burst_counter_reg[0]_i_9_n_2\,
      CO(0) => \read_burst_counter_reg[0]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_read_burst_counter_reg[0]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_burst_counter[0]_i_12_n_0\,
      S(2) => \read_burst_counter[0]_i_13_n_0\,
      S(1) => \read_burst_counter[0]_i_14_n_0\,
      S(0) => \read_burst_counter[0]_i_15_n_0\
    );
\read_burst_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_5\,
      Q => read_burst_counter_reg(10),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_4\,
      Q => read_burst_counter_reg(11),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[12]_i_1_n_7\,
      Q => read_burst_counter_reg(12),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_burst_counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_read_burst_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \read_burst_counter_reg[12]_i_1_n_1\,
      CO(1) => \read_burst_counter_reg[12]_i_1_n_2\,
      CO(0) => \read_burst_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_burst_counter_reg[12]_i_1_n_4\,
      O(2) => \read_burst_counter_reg[12]_i_1_n_5\,
      O(1) => \read_burst_counter_reg[12]_i_1_n_6\,
      O(0) => \read_burst_counter_reg[12]_i_1_n_7\,
      S(3) => \read_burst_counter[12]_i_2_n_0\,
      S(2) => \read_burst_counter[12]_i_3_n_0\,
      S(1) => \read_burst_counter[12]_i_4_n_0\,
      S(0) => \read_burst_counter[12]_i_5_n_0\
    );
\read_burst_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[12]_i_1_n_6\,
      Q => read_burst_counter_reg(13),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[12]_i_1_n_5\,
      Q => read_burst_counter_reg(14),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[12]_i_1_n_4\,
      Q => read_burst_counter_reg(15),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_3_n_6\,
      Q => read_burst_counter_reg(1),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_3_n_5\,
      Q => read_burst_counter_reg(2),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_3_n_4\,
      Q => read_burst_counter_reg(3),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_7\,
      Q => read_burst_counter_reg(4),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_burst_counter_reg[0]_i_3_n_0\,
      CO(3) => \read_burst_counter_reg[4]_i_1_n_0\,
      CO(2) => \read_burst_counter_reg[4]_i_1_n_1\,
      CO(1) => \read_burst_counter_reg[4]_i_1_n_2\,
      CO(0) => \read_burst_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_burst_counter_reg[4]_i_1_n_4\,
      O(2) => \read_burst_counter_reg[4]_i_1_n_5\,
      O(1) => \read_burst_counter_reg[4]_i_1_n_6\,
      O(0) => \read_burst_counter_reg[4]_i_1_n_7\,
      S(3) => \read_burst_counter[4]_i_2_n_0\,
      S(2) => \read_burst_counter[4]_i_3_n_0\,
      S(1) => \read_burst_counter[4]_i_4_n_0\,
      S(0) => \read_burst_counter[4]_i_5_n_0\
    );
\read_burst_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_6\,
      Q => read_burst_counter_reg(5),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_5\,
      Q => read_burst_counter_reg(6),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_4\,
      Q => read_burst_counter_reg(7),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_7\,
      Q => read_burst_counter_reg(8),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_burst_counter_reg[4]_i_1_n_0\,
      CO(3) => \read_burst_counter_reg[8]_i_1_n_0\,
      CO(2) => \read_burst_counter_reg[8]_i_1_n_1\,
      CO(1) => \read_burst_counter_reg[8]_i_1_n_2\,
      CO(0) => \read_burst_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_burst_counter_reg[8]_i_1_n_4\,
      O(2) => \read_burst_counter_reg[8]_i_1_n_5\,
      O(1) => \read_burst_counter_reg[8]_i_1_n_6\,
      O(0) => \read_burst_counter_reg[8]_i_1_n_7\,
      S(3) => \read_burst_counter[8]_i_2_n_0\,
      S(2) => \read_burst_counter[8]_i_3_n_0\,
      S(1) => \read_burst_counter[8]_i_4_n_0\,
      S(0) => \read_burst_counter[8]_i_5_n_0\
    );
\read_burst_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_6\,
      Q => read_burst_counter_reg(9),
      R => \read_burst_counter[0]_i_1_n_0\
    );
read_data_val_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_rready\,
      I1 => M_AXI_RVALID,
      O => read_data_val
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\read_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      I2 => \read_index_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\read_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_index_reg__0\(2),
      I1 => \read_index_reg__0\(1),
      I2 => \read_index_reg__0\(0),
      I3 => \read_index_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\read_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \read_index_reg__0\(3),
      I1 => \read_index_reg__0\(0),
      I2 => \read_index_reg__0\(1),
      I3 => \read_index_reg__0\(2),
      I4 => \read_index_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\read_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \read_index_reg__0\(2),
      I1 => \read_index_reg__0\(1),
      I2 => \read_index_reg__0\(0),
      I3 => \read_index_reg__0\(3),
      I4 => \read_index_reg__0\(4),
      I5 => \read_index_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\read_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \read_index[8]_i_5_n_0\,
      I1 => \read_index_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\read_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \read_index_reg__0\(6),
      I1 => \read_index[8]_i_5_n_0\,
      I2 => \read_index_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\read_index[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => user_rd_en,
      I2 => start_single_burst_read,
      O => \read_index[8]_i_1_n_0\
    );
\read_index[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_11_n_0\
    );
\read_index[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_12_n_0\
    );
\read_index[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_13_n_0\
    );
\read_index[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_14_n_0\
    );
\read_index[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_15_n_0\
    );
\read_index[8]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2110000800022110"
    )
        port map (
      I0 => \read_index_reg__0\(6),
      I1 => \read_index_reg__0\(8),
      I2 => user_rd_burst_len(6),
      I3 => \read_index[8]_i_19_n_0\,
      I4 => user_rd_burst_len(7),
      I5 => \read_index_reg__0\(7),
      O => \read_index[8]_i_16_n_0\
    );
\read_index[8]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8040400808040480"
    )
        port map (
      I0 => \read_index_reg__0\(4),
      I1 => \read_index[8]_i_20_n_0\,
      I2 => \read_index_reg__0\(5),
      I3 => user_rd_burst_len(4),
      I4 => \read_index[8]_i_21_n_0\,
      I5 => user_rd_burst_len(5),
      O => \read_index[8]_i_17_n_0\
    );
\read_index[8]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100002800824100"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => user_rd_burst_len(2),
      I2 => \read_index_reg__0\(2),
      I3 => user_rd_burst_len(0),
      I4 => user_rd_burst_len(1),
      I5 => \read_index_reg__0\(1),
      O => \read_index[8]_i_18_n_0\
    );
\read_index[8]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(4),
      I1 => user_rd_burst_len(2),
      I2 => user_rd_burst_len(0),
      I3 => user_rd_burst_len(1),
      I4 => user_rd_burst_len(3),
      I5 => user_rd_burst_len(5),
      O => \read_index[8]_i_19_n_0\
    );
\read_index[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => \^m_axi_rready\,
      I2 => read_index1,
      O => read_index0
    );
\read_index[8]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \read_index_reg__0\(3),
      I1 => user_rd_burst_len(3),
      I2 => user_rd_burst_len(1),
      I3 => user_rd_burst_len(0),
      I4 => user_rd_burst_len(2),
      O => \read_index[8]_i_20_n_0\
    );
\read_index[8]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => user_rd_burst_len(2),
      I1 => user_rd_burst_len(0),
      I2 => user_rd_burst_len(1),
      I3 => user_rd_burst_len(3),
      O => \read_index[8]_i_21_n_0\
    );
\read_index[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \read_index_reg__0\(7),
      I1 => \read_index[8]_i_5_n_0\,
      I2 => \read_index_reg__0\(6),
      I3 => \read_index_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\read_index[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \read_index_reg__0\(5),
      I1 => \read_index_reg__0\(2),
      I2 => \read_index_reg__0\(1),
      I3 => \read_index_reg__0\(0),
      I4 => \read_index_reg__0\(3),
      I5 => \read_index_reg__0\(4),
      O => \read_index[8]_i_5_n_0\
    );
\read_index[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_7_n_0\
    );
\read_index[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_8_n_0\
    );
\read_index[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \M_AXI_ARLEN[7]_INST_0_i_1_n_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index[8]_i_9_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(0),
      Q => \read_index_reg__0\(0),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(1),
      Q => \read_index_reg__0\(1),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(2),
      Q => \read_index_reg__0\(2),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(3),
      Q => \read_index_reg__0\(3),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(4),
      Q => \read_index_reg__0\(4),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(5),
      Q => \read_index_reg__0\(5),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(6),
      Q => \read_index_reg__0\(6),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(7),
      Q => \read_index_reg__0\(7),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__1\(8),
      Q => \read_index_reg__0\(8),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[8]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_index_reg[8]_i_10_n_0\,
      CO(2) => \read_index_reg[8]_i_10_n_1\,
      CO(1) => \read_index_reg[8]_i_10_n_2\,
      CO(0) => \read_index_reg[8]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_read_index_reg[8]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_index[8]_i_15_n_0\,
      S(2) => \read_index[8]_i_16_n_0\,
      S(1) => \read_index[8]_i_17_n_0\,
      S(0) => \read_index[8]_i_18_n_0\
    );
\read_index_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_index_reg[8]_i_6_n_0\,
      CO(3) => \NLW_read_index_reg[8]_i_4_CO_UNCONNECTED\(3),
      CO(2) => read_index1,
      CO(1) => \read_index_reg[8]_i_4_n_2\,
      CO(0) => \read_index_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_read_index_reg[8]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \read_index[8]_i_7_n_0\,
      S(1) => \read_index[8]_i_8_n_0\,
      S(0) => \read_index[8]_i_9_n_0\
    );
\read_index_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_index_reg[8]_i_10_n_0\,
      CO(3) => \read_index_reg[8]_i_6_n_0\,
      CO(2) => \read_index_reg[8]_i_6_n_1\,
      CO(1) => \read_index_reg[8]_i_6_n_2\,
      CO(0) => \read_index_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_read_index_reg[8]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_index[8]_i_11_n_0\,
      S(2) => \read_index[8]_i_12_n_0\,
      S(1) => \read_index[8]_i_13_n_0\,
      S(0) => \read_index[8]_i_14_n_0\
    );
reads_done_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => reads_done,
      Q => reads_done_d1,
      R => '0'
    );
reads_done_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => reads_done_d1,
      Q => reads_done_d2,
      R => '0'
    );
reads_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAAAAAA"
    )
        port map (
      I0 => reads_done,
      I1 => reads_done1,
      I2 => reads_done2,
      I3 => M_AXI_RVALID,
      I4 => \^m_axi_rready\,
      I5 => \read_burst_counter[0]_i_1_n_0\,
      O => reads_done_i_1_n_0
    );
reads_done_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_10_n_0
    );
reads_done_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(9),
      I1 => user_rd_len(9),
      I2 => read_burst_counter_reg(10),
      I3 => user_rd_len(10),
      I4 => user_rd_len(11),
      I5 => read_burst_counter_reg(11),
      O => reads_done_i_11_n_0
    );
reads_done_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(6),
      I1 => user_rd_len(6),
      I2 => read_burst_counter_reg(7),
      I3 => user_rd_len(7),
      I4 => user_rd_len(8),
      I5 => read_burst_counter_reg(8),
      O => reads_done_i_12_n_0
    );
reads_done_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(3),
      I1 => user_rd_len(3),
      I2 => read_burst_counter_reg(4),
      I3 => user_rd_len(4),
      I4 => user_rd_len(5),
      I5 => read_burst_counter_reg(5),
      O => reads_done_i_13_n_0
    );
reads_done_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(0),
      I1 => user_rd_len(0),
      I2 => read_burst_counter_reg(1),
      I3 => user_rd_len(1),
      I4 => user_rd_len(2),
      I5 => read_burst_counter_reg(2),
      O => reads_done_i_14_n_0
    );
reads_done_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_16_n_0
    );
reads_done_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_17_n_0
    );
reads_done_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_18_n_0
    );
reads_done_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_19_n_0
    );
reads_done_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_20_n_0
    );
reads_done_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2110000800022110"
    )
        port map (
      I0 => \read_index_reg__0\(6),
      I1 => \read_index_reg__0\(8),
      I2 => user_wr_burst_len(6),
      I3 => \write_index[8]_i_19_n_0\,
      I4 => user_wr_burst_len(7),
      I5 => \read_index_reg__0\(7),
      O => reads_done_i_21_n_0
    );
reads_done_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \write_index[8]_i_20_n_0\,
      I1 => \read_index_reg__0\(3),
      I2 => \read_index_reg__0\(4),
      I3 => \write_index[8]_i_21_n_0\,
      I4 => \write_index[8]_i_22_n_0\,
      I5 => \read_index_reg__0\(5),
      O => reads_done_i_22_n_0
    );
reads_done_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4120000800084120"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      I2 => user_wr_burst_len(1),
      I3 => user_wr_burst_len(0),
      I4 => user_wr_burst_len(2),
      I5 => \read_index_reg__0\(2),
      O => reads_done_i_23_n_0
    );
reads_done_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_rd_len(15),
      I1 => read_burst_counter_reg(15),
      O => reads_done_i_5_n_0
    );
reads_done_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_burst_counter_reg(12),
      I1 => user_rd_len(12),
      I2 => read_burst_counter_reg(13),
      I3 => user_rd_len(13),
      I4 => user_rd_len(14),
      I5 => read_burst_counter_reg(14),
      O => reads_done_i_6_n_0
    );
reads_done_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_8_n_0
    );
reads_done_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done_i_9_n_0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => reads_done_i_1_n_0,
      Q => reads_done,
      R => '0'
    );
reads_done_reg_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => reads_done_reg_i_15_n_0,
      CO(2) => reads_done_reg_i_15_n_1,
      CO(1) => reads_done_reg_i_15_n_2,
      CO(0) => reads_done_reg_i_15_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done_reg_i_15_O_UNCONNECTED(3 downto 0),
      S(3) => reads_done_i_20_n_0,
      S(2) => reads_done_i_21_n_0,
      S(1) => reads_done_i_22_n_0,
      S(0) => reads_done_i_23_n_0
    );
reads_done_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => reads_done_reg_i_4_n_0,
      CO(3 downto 2) => NLW_reads_done_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => reads_done1,
      CO(0) => reads_done_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => reads_done_i_5_n_0,
      S(0) => reads_done_i_6_n_0
    );
reads_done_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => reads_done_reg_i_7_n_0,
      CO(3) => NLW_reads_done_reg_i_3_CO_UNCONNECTED(3),
      CO(2) => reads_done2,
      CO(1) => reads_done_reg_i_3_n_2,
      CO(0) => reads_done_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => reads_done_i_8_n_0,
      S(1) => reads_done_i_9_n_0,
      S(0) => reads_done_i_10_n_0
    );
reads_done_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => reads_done_reg_i_4_n_0,
      CO(2) => reads_done_reg_i_4_n_1,
      CO(1) => reads_done_reg_i_4_n_2,
      CO(0) => reads_done_reg_i_4_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => reads_done_i_11_n_0,
      S(2) => reads_done_i_12_n_0,
      S(1) => reads_done_i_13_n_0,
      S(0) => reads_done_i_14_n_0
    );
reads_done_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => reads_done_reg_i_15_n_0,
      CO(3) => reads_done_reg_i_7_n_0,
      CO(2) => reads_done_reg_i_7_n_1,
      CO(1) => reads_done_reg_i_7_n_2,
      CO(0) => reads_done_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => reads_done_i_16_n_0,
      S(2) => reads_done_i_17_n_0,
      S(1) => reads_done_i_18_n_0,
      S(0) => reads_done_i_19_n_0
    );
start_single_burst_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F10"
    )
        port map (
      I0 => \^m_axi_arvalid\,
      I1 => burst_read_active,
      I2 => start_single_burst_read_i_2_n_0,
      I3 => start_single_burst_read,
      O => start_single_burst_read_i_1_n_0
    );
start_single_burst_read_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => state_w(0),
      I1 => state_w(1),
      I2 => state_w(2),
      I3 => reads_done,
      I4 => state_w(3),
      O => start_single_burst_read_i_2_n_0
    );
start_single_burst_read_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => start_single_burst_read_i_1_n_0,
      Q => start_single_burst_read,
      R => \state[3]_i_1_n_0\
    );
start_single_burst_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBFFFF08880000"
    )
        port map (
      I0 => start_single_burst_write0,
      I1 => start_single_burst_write_i_3_n_0,
      I2 => start_single_burst_write2,
      I3 => M_AXI_WLAST_w,
      I4 => start_single_burst_write_i_4_n_0,
      I5 => start_single_burst_write,
      O => start_single_burst_write_i_1_n_0
    );
start_single_burst_write_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => start_single_burst_write,
      I1 => M_AXI_AWVALID_w,
      I2 => burst_write_active,
      O => start_single_burst_write0
    );
start_single_burst_write_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_w(3),
      I1 => writes_done_w,
      O => start_single_burst_write_i_3_n_0
    );
start_single_burst_write_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_w(1),
      I1 => state_w(2),
      I2 => state_w(0),
      O => start_single_burst_write_i_4_n_0
    );
start_single_burst_write_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => start_single_burst_write_i_1_n_0,
      Q => start_single_burst_write,
      R => \state[3]_i_1_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[3]_i_3_n_0\,
      I2 => state_w(2),
      I3 => writes_done_w,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => state_w(0),
      I1 => user_rd_en,
      I2 => user_wr_en,
      I3 => reads_done,
      I4 => state_w(3),
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => start_single_burst_write2,
      I2 => M_AXI_WLAST_w,
      I3 => writes_done_w,
      I4 => state_w(2),
      I5 => \state[3]_i_3_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => state_w(1),
      I1 => user_wr_satisfy_w,
      I2 => \state[3]_i_3_n_0\,
      I3 => state_w(0),
      I4 => user_wr_en,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70707070707070"
    )
        port map (
      I0 => start_single_burst_write2,
      I1 => M_AXI_WLAST_w,
      I2 => \state[2]_i_3_n_0\,
      I3 => \state[3]_i_3_n_0\,
      I4 => state_w(1),
      I5 => user_wr_satisfy_w,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_w(12),
      I1 => user_wr_len(12),
      I2 => user_wr_len(13),
      I3 => write_burst_counter_w(13),
      O => \state[2]_i_10_n_0\
    );
\state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_w(10),
      I1 => user_wr_len(10),
      I2 => user_wr_len(11),
      I3 => write_burst_counter_w(11),
      O => \state[2]_i_11_n_0\
    );
\state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => user_wr_len(9),
      I1 => write_burst_counter_w(9),
      I2 => write_burst_counter_w(8),
      I3 => user_wr_len(8),
      O => \state[2]_i_12_n_0\
    );
\state[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(7),
      I1 => write_burst_counter_w(7),
      I2 => user_wr_len(6),
      I3 => write_burst_counter_w(6),
      O => \state[2]_i_13_n_0\
    );
\state[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(5),
      I1 => write_burst_counter_w(5),
      I2 => user_wr_len(4),
      I3 => write_burst_counter_w(4),
      O => \state[2]_i_14_n_0\
    );
\state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(3),
      I1 => write_burst_counter_w(3),
      I2 => user_wr_len(2),
      I3 => write_burst_counter_w(2),
      O => \state[2]_i_15_n_0\
    );
\state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(1),
      I1 => write_burst_counter_w(1),
      I2 => user_wr_len(0),
      I3 => write_burst_counter_w(0),
      O => \state[2]_i_16_n_0\
    );
\state[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_w(6),
      I1 => user_wr_len(6),
      I2 => user_wr_len(7),
      I3 => write_burst_counter_w(7),
      O => \state[2]_i_17_n_0\
    );
\state[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_w(4),
      I1 => user_wr_len(4),
      I2 => user_wr_len(5),
      I3 => write_burst_counter_w(5),
      O => \state[2]_i_18_n_0\
    );
\state[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => user_wr_len(3),
      I1 => write_burst_counter_w(3),
      I2 => write_burst_counter_w(2),
      I3 => user_wr_len(2),
      O => \state[2]_i_19_n_0\
    );
\state[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_w(0),
      I1 => user_wr_len(0),
      I2 => user_wr_len(1),
      I3 => write_burst_counter_w(1),
      O => \state[2]_i_20_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => writes_done_w,
      I1 => state_w(2),
      I2 => \state[3]_i_3_n_0\,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(15),
      I1 => write_burst_counter_w(15),
      I2 => user_wr_len(14),
      I3 => write_burst_counter_w(14),
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(13),
      I1 => write_burst_counter_w(13),
      I2 => user_wr_len(12),
      I3 => write_burst_counter_w(12),
      O => \state[2]_i_6_n_0\
    );
\state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(11),
      I1 => write_burst_counter_w(11),
      I2 => user_wr_len(10),
      I3 => write_burst_counter_w(10),
      O => \state[2]_i_7_n_0\
    );
\state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(9),
      I1 => write_burst_counter_w(9),
      I2 => user_wr_len(8),
      I3 => write_burst_counter_w(8),
      O => \state[2]_i_8_n_0\
    );
\state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => user_wr_len(14),
      I1 => write_burst_counter_w(14),
      I2 => write_burst_counter_w(15),
      I3 => user_wr_len(15),
      O => \state[2]_i_9_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXI_ARESETN,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20002000FF002000"
    )
        port map (
      I0 => user_rd_en,
      I1 => user_wr_en,
      I2 => state_w(0),
      I3 => \state[3]_i_3_n_0\,
      I4 => state_w(3),
      I5 => reads_done,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => state_w(0),
      I1 => state_w(1),
      I2 => state_w(2),
      I3 => state_w(3),
      O => \state[3]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state_w(0),
      S => \state[3]_i_1_n_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state_w(1),
      R => \state[3]_i_1_n_0\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => state_w(2),
      R => \state[3]_i_1_n_0\
    );
\state_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[2]_i_4_n_0\,
      CO(3) => start_single_burst_write2,
      CO(2) => \state_reg[2]_i_2_n_1\,
      CO(1) => \state_reg[2]_i_2_n_2\,
      CO(0) => \state_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \state[2]_i_5_n_0\,
      DI(2) => \state[2]_i_6_n_0\,
      DI(1) => \state[2]_i_7_n_0\,
      DI(0) => \state[2]_i_8_n_0\,
      O(3 downto 0) => \NLW_state_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \state[2]_i_9_n_0\,
      S(2) => \state[2]_i_10_n_0\,
      S(1) => \state[2]_i_11_n_0\,
      S(0) => \state[2]_i_12_n_0\
    );
\state_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state_reg[2]_i_4_n_0\,
      CO(2) => \state_reg[2]_i_4_n_1\,
      CO(1) => \state_reg[2]_i_4_n_2\,
      CO(0) => \state_reg[2]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \state[2]_i_13_n_0\,
      DI(2) => \state[2]_i_14_n_0\,
      DI(1) => \state[2]_i_15_n_0\,
      DI(0) => \state[2]_i_16_n_0\,
      O(3 downto 0) => \NLW_state_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \state[2]_i_17_n_0\,
      S(2) => \state[2]_i_18_n_0\,
      S(1) => \state[2]_i_19_n_0\,
      S(0) => \state[2]_i_20_n_0\
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \state[3]_i_2_n_0\,
      Q => state_w(3),
      R => \state[3]_i_1_n_0\
    );
user_rd_data_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXI_WVALID_w,
      I1 => M_AXI_WREADY_w,
      O => f_rd_w
    );
\write_burst_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => M_AXI_AWREADY_w,
      I1 => M_AXI_AWVALID_w,
      I2 => write_burst_counter0,
      O => \write_burst_counter[0]_i_1_n_0\
    );
\write_burst_counter[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(13),
      I1 => user_wr_len(13),
      I2 => user_wr_len(14),
      I3 => write_burst_counter_w(14),
      I4 => write_burst_counter_w(12),
      I5 => user_wr_len(12),
      O => \write_burst_counter[0]_i_10_n_0\
    );
\write_burst_counter[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(11),
      I1 => user_wr_len(11),
      I2 => user_wr_len(10),
      I3 => write_burst_counter_w(10),
      I4 => user_wr_len(9),
      I5 => write_burst_counter_w(9),
      O => \write_burst_counter[0]_i_11_n_0\
    );
\write_burst_counter[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(7),
      I1 => user_wr_len(7),
      I2 => user_wr_len(8),
      I3 => write_burst_counter_w(8),
      I4 => write_burst_counter_w(6),
      I5 => user_wr_len(6),
      O => \write_burst_counter[0]_i_12_n_0\
    );
\write_burst_counter[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(5),
      I1 => user_wr_len(5),
      I2 => user_wr_len(4),
      I3 => write_burst_counter_w(4),
      I4 => user_wr_len(3),
      I5 => write_burst_counter_w(3),
      O => \write_burst_counter[0]_i_13_n_0\
    );
\write_burst_counter[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(1),
      I1 => user_wr_len(1),
      I2 => user_wr_len(2),
      I3 => write_burst_counter_w(2),
      I4 => write_burst_counter_w(0),
      I5 => user_wr_len(0),
      O => \write_burst_counter[0]_i_14_n_0\
    );
\write_burst_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(3),
      O => \write_burst_counter[0]_i_4_n_0\
    );
\write_burst_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(2),
      O => \write_burst_counter[0]_i_5_n_0\
    );
\write_burst_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(1),
      O => \write_burst_counter[0]_i_6_n_0\
    );
\write_burst_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_burst_counter_w(0),
      O => \write_burst_counter[0]_i_7_n_0\
    );
\write_burst_counter[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_wr_len(15),
      I1 => write_burst_counter_w(15),
      O => \write_burst_counter[0]_i_9_n_0\
    );
\write_burst_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(15),
      O => \write_burst_counter[12]_i_2_n_0\
    );
\write_burst_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(14),
      O => \write_burst_counter[12]_i_3_n_0\
    );
\write_burst_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(13),
      O => \write_burst_counter[12]_i_4_n_0\
    );
\write_burst_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(12),
      O => \write_burst_counter[12]_i_5_n_0\
    );
\write_burst_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(7),
      O => \write_burst_counter[4]_i_2_n_0\
    );
\write_burst_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(6),
      O => \write_burst_counter[4]_i_3_n_0\
    );
\write_burst_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(5),
      O => \write_burst_counter[4]_i_4_n_0\
    );
\write_burst_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(4),
      O => \write_burst_counter[4]_i_5_n_0\
    );
\write_burst_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(11),
      O => \write_burst_counter[8]_i_2_n_0\
    );
\write_burst_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(10),
      O => \write_burst_counter[8]_i_3_n_0\
    );
\write_burst_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(9),
      O => \write_burst_counter[8]_i_4_n_0\
    );
\write_burst_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_w(8),
      O => \write_burst_counter[8]_i_5_n_0\
    );
\write_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[0]_i_2_n_7\,
      Q => write_burst_counter_w(0),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_burst_counter_reg[0]_i_2_n_0\,
      CO(2) => \write_burst_counter_reg[0]_i_2_n_1\,
      CO(1) => \write_burst_counter_reg[0]_i_2_n_2\,
      CO(0) => \write_burst_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \write_burst_counter_reg[0]_i_2_n_4\,
      O(2) => \write_burst_counter_reg[0]_i_2_n_5\,
      O(1) => \write_burst_counter_reg[0]_i_2_n_6\,
      O(0) => \write_burst_counter_reg[0]_i_2_n_7\,
      S(3) => \write_burst_counter[0]_i_4_n_0\,
      S(2) => \write_burst_counter[0]_i_5_n_0\,
      S(1) => \write_burst_counter[0]_i_6_n_0\,
      S(0) => \write_burst_counter[0]_i_7_n_0\
    );
\write_burst_counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_burst_counter_reg[0]_i_8_n_0\,
      CO(3 downto 2) => \NLW_write_burst_counter_reg[0]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => write_burst_counter0,
      CO(0) => \write_burst_counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_write_burst_counter_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \write_burst_counter[0]_i_9_n_0\,
      S(0) => \write_burst_counter[0]_i_10_n_0\
    );
\write_burst_counter_reg[0]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_burst_counter_reg[0]_i_8_n_0\,
      CO(2) => \write_burst_counter_reg[0]_i_8_n_1\,
      CO(1) => \write_burst_counter_reg[0]_i_8_n_2\,
      CO(0) => \write_burst_counter_reg[0]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_write_burst_counter_reg[0]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_burst_counter[0]_i_11_n_0\,
      S(2) => \write_burst_counter[0]_i_12_n_0\,
      S(1) => \write_burst_counter[0]_i_13_n_0\,
      S(0) => \write_burst_counter[0]_i_14_n_0\
    );
\write_burst_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[8]_i_1_n_5\,
      Q => write_burst_counter_w(10),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[8]_i_1_n_4\,
      Q => write_burst_counter_w(11),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[12]_i_1_n_7\,
      Q => write_burst_counter_w(12),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_burst_counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_write_burst_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \write_burst_counter_reg[12]_i_1_n_1\,
      CO(1) => \write_burst_counter_reg[12]_i_1_n_2\,
      CO(0) => \write_burst_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_burst_counter_reg[12]_i_1_n_4\,
      O(2) => \write_burst_counter_reg[12]_i_1_n_5\,
      O(1) => \write_burst_counter_reg[12]_i_1_n_6\,
      O(0) => \write_burst_counter_reg[12]_i_1_n_7\,
      S(3) => \write_burst_counter[12]_i_2_n_0\,
      S(2) => \write_burst_counter[12]_i_3_n_0\,
      S(1) => \write_burst_counter[12]_i_4_n_0\,
      S(0) => \write_burst_counter[12]_i_5_n_0\
    );
\write_burst_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[12]_i_1_n_6\,
      Q => write_burst_counter_w(13),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[12]_i_1_n_5\,
      Q => write_burst_counter_w(14),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[12]_i_1_n_4\,
      Q => write_burst_counter_w(15),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[0]_i_2_n_6\,
      Q => write_burst_counter_w(1),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[0]_i_2_n_5\,
      Q => write_burst_counter_w(2),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[0]_i_2_n_4\,
      Q => write_burst_counter_w(3),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[4]_i_1_n_7\,
      Q => write_burst_counter_w(4),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_burst_counter_reg[0]_i_2_n_0\,
      CO(3) => \write_burst_counter_reg[4]_i_1_n_0\,
      CO(2) => \write_burst_counter_reg[4]_i_1_n_1\,
      CO(1) => \write_burst_counter_reg[4]_i_1_n_2\,
      CO(0) => \write_burst_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_burst_counter_reg[4]_i_1_n_4\,
      O(2) => \write_burst_counter_reg[4]_i_1_n_5\,
      O(1) => \write_burst_counter_reg[4]_i_1_n_6\,
      O(0) => \write_burst_counter_reg[4]_i_1_n_7\,
      S(3) => \write_burst_counter[4]_i_2_n_0\,
      S(2) => \write_burst_counter[4]_i_3_n_0\,
      S(1) => \write_burst_counter[4]_i_4_n_0\,
      S(0) => \write_burst_counter[4]_i_5_n_0\
    );
\write_burst_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[4]_i_1_n_6\,
      Q => write_burst_counter_w(5),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[4]_i_1_n_5\,
      Q => write_burst_counter_w(6),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[4]_i_1_n_4\,
      Q => write_burst_counter_w(7),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[8]_i_1_n_7\,
      Q => write_burst_counter_w(8),
      R => axi_awvalid_reg0
    );
\write_burst_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_burst_counter_reg[4]_i_1_n_0\,
      CO(3) => \write_burst_counter_reg[8]_i_1_n_0\,
      CO(2) => \write_burst_counter_reg[8]_i_1_n_1\,
      CO(1) => \write_burst_counter_reg[8]_i_1_n_2\,
      CO(0) => \write_burst_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_burst_counter_reg[8]_i_1_n_4\,
      O(2) => \write_burst_counter_reg[8]_i_1_n_5\,
      O(1) => \write_burst_counter_reg[8]_i_1_n_6\,
      O(0) => \write_burst_counter_reg[8]_i_1_n_7\,
      S(3) => \write_burst_counter[8]_i_2_n_0\,
      S(2) => \write_burst_counter[8]_i_3_n_0\,
      S(1) => \write_burst_counter[8]_i_4_n_0\,
      S(0) => \write_burst_counter[8]_i_5_n_0\
    );
\write_burst_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \write_burst_counter[0]_i_1_n_0\,
      D => \write_burst_counter_reg[8]_i_1_n_6\,
      Q => write_burst_counter_w(9),
      R => axi_awvalid_reg0
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_index_w(0),
      O => \p_0_in__0\(0)
    );
\write_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_index_w(0),
      I1 => write_index_w(1),
      O => \p_0_in__0\(1)
    );
\write_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_index_w(0),
      I1 => write_index_w(1),
      I2 => write_index_w(2),
      O => \p_0_in__0\(2)
    );
\write_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_index_w(2),
      I1 => write_index_w(1),
      I2 => write_index_w(0),
      I3 => write_index_w(3),
      O => \p_0_in__0\(3)
    );
\write_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_index_w(3),
      I1 => write_index_w(0),
      I2 => write_index_w(1),
      I3 => write_index_w(2),
      I4 => write_index_w(4),
      O => \p_0_in__0\(4)
    );
\write_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_index_w(2),
      I1 => write_index_w(1),
      I2 => write_index_w(0),
      I3 => write_index_w(3),
      I4 => write_index_w(4),
      I5 => write_index_w(5),
      O => \p_0_in__0\(5)
    );
\write_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \write_index[8]_i_5_n_0\,
      I1 => write_index_w(6),
      O => \p_0_in__0\(6)
    );
\write_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => write_index_w(6),
      I1 => \write_index[8]_i_5_n_0\,
      I2 => write_index_w(7),
      O => \p_0_in__0\(7)
    );
\write_index[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => user_wr_en,
      I2 => start_single_burst_write,
      O => \write_index[8]_i_1_n_0\
    );
\write_index[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_11_n_0\
    );
\write_index[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_12_n_0\
    );
\write_index[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_13_n_0\
    );
\write_index[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_14_n_0\
    );
\write_index[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_15_n_0\
    );
\write_index[8]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2010100202010180"
    )
        port map (
      I0 => write_index_w(6),
      I1 => \write_index_reg__0\(8),
      I2 => write_index_w(7),
      I3 => user_wr_burst_len(6),
      I4 => \write_index[8]_i_19_n_0\,
      I5 => user_wr_burst_len(7),
      O => \write_index[8]_i_16_n_0\
    );
\write_index[8]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \write_index[8]_i_20_n_0\,
      I1 => write_index_w(3),
      I2 => \write_index[8]_i_21_n_0\,
      I3 => write_index_w(4),
      I4 => write_index_w(5),
      I5 => \write_index[8]_i_22_n_0\,
      O => \write_index[8]_i_17_n_0\
    );
\write_index[8]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010200804010280"
    )
        port map (
      I0 => write_index_w(0),
      I1 => write_index_w(1),
      I2 => write_index_w(2),
      I3 => user_wr_burst_len(1),
      I4 => user_wr_burst_len(0),
      I5 => user_wr_burst_len(2),
      O => \write_index[8]_i_18_n_0\
    );
\write_index[8]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(4),
      I1 => user_wr_burst_len(3),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(1),
      I4 => user_wr_burst_len(0),
      I5 => user_wr_burst_len(5),
      O => \write_index[8]_i_19_n_0\
    );
\write_index[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => M_AXI_WREADY_w,
      I1 => M_AXI_WVALID_w,
      I2 => write_index1,
      O => write_index0
    );
\write_index[8]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => user_wr_burst_len(0),
      I1 => user_wr_burst_len(2),
      I2 => user_wr_burst_len(1),
      I3 => user_wr_burst_len(3),
      O => \write_index[8]_i_20_n_0\
    );
\write_index[8]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => user_wr_burst_len(0),
      I1 => user_wr_burst_len(1),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(3),
      I4 => user_wr_burst_len(4),
      O => \write_index[8]_i_21_n_0\
    );
\write_index[8]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(4),
      I1 => user_wr_burst_len(3),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(1),
      I4 => user_wr_burst_len(0),
      I5 => user_wr_burst_len(5),
      O => \write_index[8]_i_22_n_0\
    );
\write_index[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => write_index_w(7),
      I1 => \write_index[8]_i_5_n_0\,
      I2 => write_index_w(6),
      I3 => \write_index_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\write_index[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_index_w(5),
      I1 => write_index_w(2),
      I2 => write_index_w(1),
      I3 => write_index_w(0),
      I4 => write_index_w(3),
      I5 => write_index_w(4),
      O => \write_index[8]_i_5_n_0\
    );
\write_index[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_7_n_0\
    );
\write_index[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_8_n_0\
    );
\write_index[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \M_AXI_AWLEN[7]_INST_0_i_1_n_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index[8]_i_9_n_0\
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(0),
      Q => write_index_w(0),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(1),
      Q => write_index_w(1),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(2),
      Q => write_index_w(2),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(3),
      Q => write_index_w(3),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(4),
      Q => write_index_w(4),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(5),
      Q => write_index_w(5),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(6),
      Q => write_index_w(6),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(7),
      Q => write_index_w(7),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__0\(8),
      Q => \write_index_reg__0\(8),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[8]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_index_reg[8]_i_10_n_0\,
      CO(2) => \write_index_reg[8]_i_10_n_1\,
      CO(1) => \write_index_reg[8]_i_10_n_2\,
      CO(0) => \write_index_reg[8]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_write_index_reg[8]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_index[8]_i_15_n_0\,
      S(2) => \write_index[8]_i_16_n_0\,
      S(1) => \write_index[8]_i_17_n_0\,
      S(0) => \write_index[8]_i_18_n_0\
    );
\write_index_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_index_reg[8]_i_6_n_0\,
      CO(3) => \NLW_write_index_reg[8]_i_4_CO_UNCONNECTED\(3),
      CO(2) => write_index1,
      CO(1) => \write_index_reg[8]_i_4_n_2\,
      CO(0) => \write_index_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_write_index_reg[8]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \write_index[8]_i_7_n_0\,
      S(1) => \write_index[8]_i_8_n_0\,
      S(0) => \write_index[8]_i_9_n_0\
    );
\write_index_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_index_reg[8]_i_10_n_0\,
      CO(3) => \write_index_reg[8]_i_6_n_0\,
      CO(2) => \write_index_reg[8]_i_6_n_1\,
      CO(1) => \write_index_reg[8]_i_6_n_2\,
      CO(0) => \write_index_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_write_index_reg[8]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_index[8]_i_11_n_0\,
      S(2) => \write_index[8]_i_12_n_0\,
      S(1) => \write_index[8]_i_13_n_0\,
      S(0) => \write_index[8]_i_14_n_0\
    );
writes_done_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => writes_done_w,
      Q => writes_done_d1,
      R => '0'
    );
writes_done_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => writes_done_d1,
      Q => writes_done_d2,
      R => '0'
    );
writes_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => writes_done_reg2,
      I1 => \^m_axi_bready\,
      I2 => M_AXI_BVALID,
      I3 => writes_done_w,
      O => writes_done_i_1_n_0
    );
writes_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_wr_len(15),
      I1 => write_burst_counter_w(15),
      O => writes_done_i_4_n_0
    );
writes_done_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(13),
      I1 => user_wr_len(13),
      I2 => user_wr_len(14),
      I3 => write_burst_counter_w(14),
      I4 => write_burst_counter_w(12),
      I5 => user_wr_len(12),
      O => writes_done_i_5_n_0
    );
writes_done_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(11),
      I1 => user_wr_len(11),
      I2 => user_wr_len(10),
      I3 => write_burst_counter_w(10),
      I4 => user_wr_len(9),
      I5 => write_burst_counter_w(9),
      O => writes_done_i_6_n_0
    );
writes_done_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(7),
      I1 => user_wr_len(7),
      I2 => user_wr_len(8),
      I3 => write_burst_counter_w(8),
      I4 => write_burst_counter_w(6),
      I5 => user_wr_len(6),
      O => writes_done_i_7_n_0
    );
writes_done_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(5),
      I1 => user_wr_len(5),
      I2 => user_wr_len(4),
      I3 => write_burst_counter_w(4),
      I4 => user_wr_len(3),
      I5 => write_burst_counter_w(3),
      O => writes_done_i_8_n_0
    );
writes_done_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_w(1),
      I1 => user_wr_len(1),
      I2 => user_wr_len(2),
      I3 => write_burst_counter_w(2),
      I4 => write_burst_counter_w(0),
      I5 => user_wr_len(0),
      O => writes_done_i_9_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done_w,
      R => axi_awvalid_reg0
    );
writes_done_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => writes_done_reg_i_3_n_0,
      CO(3 downto 2) => NLW_writes_done_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => writes_done_reg2,
      CO(0) => writes_done_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_writes_done_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => writes_done_i_4_n_0,
      S(0) => writes_done_i_5_n_0
    );
writes_done_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => writes_done_reg_i_3_n_0,
      CO(2) => writes_done_reg_i_3_n_1,
      CO(1) => writes_done_reg_i_3_n_2,
      CO(0) => writes_done_reg_i_3_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_writes_done_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => writes_done_i_6_n_0,
      S(2) => writes_done_i_7_n_0,
      S(1) => writes_done_i_8_n_0,
      S(0) => writes_done_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0 is
  port (
    user_rd_data_en : out STD_LOGIC;
    read_data_val : out STD_LOGIC;
    read_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_axi_txn_done : out STD_LOGIC_VECTOR ( 1 downto 0 );
    master_axi_error : out STD_LOGIC;
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
    master_full_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_full_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    master_full_axi_wlast : out STD_LOGIC;
    master_full_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_wvalid : out STD_LOGIC;
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
    master_full_axi_rready : out STD_LOGIC;
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
    master_axi_init_txn : in STD_LOGIC;
    master_axi_aclk : in STD_LOGIC;
    master_axi_aresetn : in STD_LOGIC;
    master_full_axi_awready : in STD_LOGIC;
    master_full_axi_wready : in STD_LOGIC;
    master_full_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    master_full_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_bvalid : in STD_LOGIC;
    master_full_axi_arready : in STD_LOGIC;
    master_full_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    master_full_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    master_full_axi_rlast : in STD_LOGIC;
    master_full_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_full_axi_rvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0 is
  attribute C_MASTER_LENGTH : integer;
  attribute C_MASTER_LENGTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 12;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 32;
  attribute C_M_AXI_ARUSER_WIDTH : integer;
  attribute C_M_AXI_ARUSER_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 1;
  attribute C_M_AXI_AWUSER_WIDTH : integer;
  attribute C_M_AXI_AWUSER_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 1;
  attribute C_M_AXI_BUSER_WIDTH : integer;
  attribute C_M_AXI_BUSER_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 1;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 32;
  attribute C_M_AXI_ID_WIDTH : integer;
  attribute C_M_AXI_ID_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 1;
  attribute C_M_AXI_RUSER_WIDTH : integer;
  attribute C_M_AXI_RUSER_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 1;
  attribute C_M_AXI_WUSER_WIDTH : integer;
  attribute C_M_AXI_WUSER_WIDTH of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 1;
  attribute C_NO_BURSTS_REQ : integer;
  attribute C_NO_BURSTS_REQ of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 8;
  attribute C_TRANSACTIONS_NUM : integer;
  attribute C_TRANSACTIONS_NUM of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is 8;
  attribute STATE0 : string;
  attribute STATE0 of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is "6'b000001";
  attribute STATE1 : string;
  attribute STATE1 of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is "6'b000010";
  attribute STATE2 : string;
  attribute STATE2 of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is "6'b000100";
  attribute STATE3 : string;
  attribute STATE3 of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is "6'b001000";
  attribute STATE4 : string;
  attribute STATE4 of MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst : label is "6'b010000";
begin
MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI
     port map (
      ERROR => master_axi_error,
      INIT_AXI_TXN => master_axi_init_txn,
      M_AXI_ACLK => master_axi_aclk,
      M_AXI_ARADDR(31 downto 0) => master_full_axi_araddr(31 downto 0),
      M_AXI_ARBURST(1 downto 0) => master_full_axi_arburst(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => master_full_axi_arcache(3 downto 0),
      M_AXI_ARESETN => master_axi_aresetn,
      M_AXI_ARID(0) => master_full_axi_arid(0),
      M_AXI_ARLEN(7 downto 0) => master_full_axi_arlen(7 downto 0),
      M_AXI_ARLOCK => master_full_axi_arlock,
      M_AXI_ARPROT(2 downto 0) => master_full_axi_arprot(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => master_full_axi_arqos(3 downto 0),
      M_AXI_ARREADY => master_full_axi_arready,
      M_AXI_ARSIZE(2 downto 0) => master_full_axi_arsize(2 downto 0),
      M_AXI_ARUSER(0) => master_full_axi_aruser(0),
      M_AXI_ARVALID => master_full_axi_arvalid,
      M_AXI_AWADDR(31 downto 0) => master_full_axi_awaddr(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => master_full_axi_awburst(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => master_full_axi_awcache(3 downto 0),
      M_AXI_AWID(0) => master_full_axi_awid(0),
      M_AXI_AWLEN(7 downto 0) => master_full_axi_awlen(7 downto 0),
      M_AXI_AWLOCK => master_full_axi_awlock,
      M_AXI_AWPROT(2 downto 0) => master_full_axi_awprot(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => master_full_axi_awqos(3 downto 0),
      M_AXI_AWREADY => master_full_axi_awready,
      M_AXI_AWSIZE(2 downto 0) => master_full_axi_awsize(2 downto 0),
      M_AXI_AWUSER(0) => master_full_axi_awuser(0),
      M_AXI_AWVALID => master_full_axi_awvalid,
      M_AXI_BID(0) => master_full_axi_bid(0),
      M_AXI_BREADY => master_full_axi_bready,
      M_AXI_BRESP(1 downto 0) => master_full_axi_bresp(1 downto 0),
      M_AXI_BUSER(0) => master_full_axi_buser(0),
      M_AXI_BVALID => master_full_axi_bvalid,
      M_AXI_RDATA(31 downto 0) => master_full_axi_rdata(31 downto 0),
      M_AXI_RID(0) => master_full_axi_rid(0),
      M_AXI_RLAST => master_full_axi_rlast,
      M_AXI_RREADY => master_full_axi_rready,
      M_AXI_RRESP(1 downto 0) => master_full_axi_rresp(1 downto 0),
      M_AXI_RUSER(0) => master_full_axi_ruser(0),
      M_AXI_RVALID => master_full_axi_rvalid,
      M_AXI_WDATA(31 downto 0) => master_full_axi_wdata(31 downto 0),
      M_AXI_WLAST => master_full_axi_wlast,
      M_AXI_WREADY => master_full_axi_wready,
      M_AXI_WSTRB(3 downto 0) => master_full_axi_wstrb(3 downto 0),
      M_AXI_WUSER(0) => master_full_axi_wuser(0),
      M_AXI_WVALID => master_full_axi_wvalid,
      TXN_DONE(1 downto 0) => master_axi_txn_done(1 downto 0),
      read_data_out(31 downto 0) => read_data_out(31 downto 0),
      read_data_val => read_data_val,
      user_rd_base_addr(31 downto 0) => user_rd_base_addr(31 downto 0),
      user_rd_burst_len(7 downto 0) => user_rd_burst_len(7 downto 0),
      user_rd_data_en => user_rd_data_en,
      user_rd_en => user_rd_en,
      user_rd_len(15 downto 0) => user_rd_len(15 downto 0),
      user_wr_base_addr(31 downto 0) => user_wr_base_addr(31 downto 0),
      user_wr_burst_len(7 downto 0) => user_wr_burst_len(7 downto 0),
      user_wr_data_in(31 downto 0) => user_wr_data_in(31 downto 0),
      user_wr_en => user_wr_en,
      user_wr_len(15 downto 0) => user_wr_len(15 downto 0),
      user_wr_satisfy => user_wr_satisfy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sub_BD_MY_AXI_MASTER_FULL_ip_0_1,MY_AXI_MASTER_FULL_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MY_AXI_MASTER_FULL_ip_v1_0,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0
     port map (
      master_axi_aclk => master_axi_aclk,
      master_axi_aresetn => master_axi_aresetn,
      master_axi_error => master_axi_error,
      master_axi_init_txn => master_axi_init_txn,
      master_axi_txn_done(1 downto 0) => master_axi_txn_done(1 downto 0),
      master_full_axi_araddr(31 downto 0) => master_full_axi_araddr(31 downto 0),
      master_full_axi_arburst(1 downto 0) => master_full_axi_arburst(1 downto 0),
      master_full_axi_arcache(3 downto 0) => master_full_axi_arcache(3 downto 0),
      master_full_axi_arid(0) => master_full_axi_arid(0),
      master_full_axi_arlen(7 downto 0) => master_full_axi_arlen(7 downto 0),
      master_full_axi_arlock => master_full_axi_arlock,
      master_full_axi_arprot(2 downto 0) => master_full_axi_arprot(2 downto 0),
      master_full_axi_arqos(3 downto 0) => master_full_axi_arqos(3 downto 0),
      master_full_axi_arready => master_full_axi_arready,
      master_full_axi_arsize(2 downto 0) => master_full_axi_arsize(2 downto 0),
      master_full_axi_aruser(0) => master_full_axi_aruser(0),
      master_full_axi_arvalid => master_full_axi_arvalid,
      master_full_axi_awaddr(31 downto 0) => master_full_axi_awaddr(31 downto 0),
      master_full_axi_awburst(1 downto 0) => master_full_axi_awburst(1 downto 0),
      master_full_axi_awcache(3 downto 0) => master_full_axi_awcache(3 downto 0),
      master_full_axi_awid(0) => master_full_axi_awid(0),
      master_full_axi_awlen(7 downto 0) => master_full_axi_awlen(7 downto 0),
      master_full_axi_awlock => master_full_axi_awlock,
      master_full_axi_awprot(2 downto 0) => master_full_axi_awprot(2 downto 0),
      master_full_axi_awqos(3 downto 0) => master_full_axi_awqos(3 downto 0),
      master_full_axi_awready => master_full_axi_awready,
      master_full_axi_awsize(2 downto 0) => master_full_axi_awsize(2 downto 0),
      master_full_axi_awuser(0) => master_full_axi_awuser(0),
      master_full_axi_awvalid => master_full_axi_awvalid,
      master_full_axi_bid(0) => master_full_axi_bid(0),
      master_full_axi_bready => master_full_axi_bready,
      master_full_axi_bresp(1 downto 0) => master_full_axi_bresp(1 downto 0),
      master_full_axi_buser(0) => master_full_axi_buser(0),
      master_full_axi_bvalid => master_full_axi_bvalid,
      master_full_axi_rdata(31 downto 0) => master_full_axi_rdata(31 downto 0),
      master_full_axi_rid(0) => master_full_axi_rid(0),
      master_full_axi_rlast => master_full_axi_rlast,
      master_full_axi_rready => master_full_axi_rready,
      master_full_axi_rresp(1 downto 0) => master_full_axi_rresp(1 downto 0),
      master_full_axi_ruser(0) => master_full_axi_ruser(0),
      master_full_axi_rvalid => master_full_axi_rvalid,
      master_full_axi_wdata(31 downto 0) => master_full_axi_wdata(31 downto 0),
      master_full_axi_wlast => master_full_axi_wlast,
      master_full_axi_wready => master_full_axi_wready,
      master_full_axi_wstrb(3 downto 0) => master_full_axi_wstrb(3 downto 0),
      master_full_axi_wuser(0) => master_full_axi_wuser(0),
      master_full_axi_wvalid => master_full_axi_wvalid,
      read_data_out(31 downto 0) => read_data_out(31 downto 0),
      read_data_val => read_data_val,
      user_rd_base_addr(31 downto 0) => user_rd_base_addr(31 downto 0),
      user_rd_burst_len(7 downto 0) => user_rd_burst_len(7 downto 0),
      user_rd_data_en => user_rd_data_en,
      user_rd_en => user_rd_en,
      user_rd_len(15 downto 0) => user_rd_len(15 downto 0),
      user_wr_base_addr(31 downto 0) => user_wr_base_addr(31 downto 0),
      user_wr_burst_len(7 downto 0) => user_wr_burst_len(7 downto 0),
      user_wr_data_in(31 downto 0) => user_wr_data_in(31 downto 0),
      user_wr_en => user_wr_en,
      user_wr_len(15 downto 0) => user_wr_len(15 downto 0),
      user_wr_satisfy => user_wr_satisfy
    );
end STRUCTURE;
