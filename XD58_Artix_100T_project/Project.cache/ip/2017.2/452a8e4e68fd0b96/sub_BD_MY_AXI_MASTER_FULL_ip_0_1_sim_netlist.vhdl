-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue Nov 14 13:31:44 2017
-- Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
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
    master_full_axi_bready : out STD_LOGIC;
    master_full_axi_awaddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    master_full_axi_araddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    master_full_axi_wlast : out STD_LOGIC;
    master_full_axi_awvalid : out STD_LOGIC;
    master_full_axi_rready : out STD_LOGIC;
    master_full_axi_arvalid : out STD_LOGIC;
    master_full_axi_wvalid : out STD_LOGIC;
    user_rd_data_en : out STD_LOGIC;
    read_data_val : out STD_LOGIC;
    axi_wlast_reg_0 : out STD_LOGIC;
    \read_index_reg[0]_0\ : out STD_LOGIC;
    master_axi_txn_done : out STD_LOGIC_VECTOR ( 1 downto 0 );
    master_axi_aclk : in STD_LOGIC;
    user_wr_base_addr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    user_rd_base_addr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    master_axi_aresetn : in STD_LOGIC;
    user_wr_en : in STD_LOGIC;
    master_full_axi_wready : in STD_LOGIC;
    master_full_axi_awready : in STD_LOGIC;
    user_rd_en : in STD_LOGIC;
    master_full_axi_rvalid : in STD_LOGIC;
    master_full_axi_arready : in STD_LOGIC;
    user_wr_burst_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    user_wr_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_rd_burst_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    user_wr_satisfy : in STD_LOGIC;
    user_rd_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    master_full_axi_bvalid : in STD_LOGIC;
    master_full_axi_rlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI is
  signal \M_AXI_ARADDR_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__0_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__0_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__0_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__0_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__1_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__2_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__3_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__4_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_n_1\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__5_n_3\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__6_n_2\ : STD_LOGIC;
  signal \M_AXI_ARADDR_carry__6_n_3\ : STD_LOGIC;
  signal M_AXI_ARADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_i_2_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_i_3_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_i_4_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_1 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_2 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_3 : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__1_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__4_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__5_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__6_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_carry__6_n_3\ : STD_LOGIC;
  signal M_AXI_AWADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_i_2_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_i_3_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_i_4_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_1 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_2 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_3 : STD_LOGIC;
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
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bready0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_wlast3 : STD_LOGIC;
  signal \axi_wlast3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__0_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__0_n_1\ : STD_LOGIC;
  signal \axi_wlast3_carry__0_n_2\ : STD_LOGIC;
  signal \axi_wlast3_carry__0_n_3\ : STD_LOGIC;
  signal \axi_wlast3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \axi_wlast3_carry__1_n_2\ : STD_LOGIC;
  signal \axi_wlast3_carry__1_n_3\ : STD_LOGIC;
  signal axi_wlast3_carry_i_1_n_0 : STD_LOGIC;
  signal axi_wlast3_carry_i_2_n_0 : STD_LOGIC;
  signal axi_wlast3_carry_i_3_n_0 : STD_LOGIC;
  signal axi_wlast3_carry_i_4_n_0 : STD_LOGIC;
  signal axi_wlast3_carry_i_5_n_0 : STD_LOGIC;
  signal axi_wlast3_carry_i_6_n_0 : STD_LOGIC;
  signal axi_wlast3_carry_n_0 : STD_LOGIC;
  signal axi_wlast3_carry_n_1 : STD_LOGIC;
  signal axi_wlast3_carry_n_2 : STD_LOGIC;
  signal axi_wlast3_carry_n_3 : STD_LOGIC;
  signal axi_wlast_i_1_n_0 : STD_LOGIC;
  signal axi_wlast_i_2_n_0 : STD_LOGIC;
  signal \^axi_wlast_reg_0\ : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal burst_read_active : STD_LOGIC;
  signal burst_read_active_i_1_n_0 : STD_LOGIC;
  signal burst_write_active : STD_LOGIC;
  signal burst_write_active_i_1_n_0 : STD_LOGIC;
  signal \^master_full_axi_arvalid\ : STD_LOGIC;
  signal \^master_full_axi_awvalid\ : STD_LOGIC;
  signal \^master_full_axi_bready\ : STD_LOGIC;
  signal \^master_full_axi_rready\ : STD_LOGIC;
  signal \^master_full_axi_wlast\ : STD_LOGIC;
  signal \^master_full_axi_wvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
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
  signal \read_index1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \read_index1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \read_index1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \read_index1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \read_index1_carry__0_n_0\ : STD_LOGIC;
  signal \read_index1_carry__0_n_1\ : STD_LOGIC;
  signal \read_index1_carry__0_n_2\ : STD_LOGIC;
  signal \read_index1_carry__0_n_3\ : STD_LOGIC;
  signal \read_index1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \read_index1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \read_index1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \read_index1_carry__1_n_2\ : STD_LOGIC;
  signal \read_index1_carry__1_n_3\ : STD_LOGIC;
  signal read_index1_carry_i_1_n_0 : STD_LOGIC;
  signal read_index1_carry_i_2_n_0 : STD_LOGIC;
  signal read_index1_carry_i_3_n_0 : STD_LOGIC;
  signal read_index1_carry_i_4_n_0 : STD_LOGIC;
  signal read_index1_carry_i_5_n_0 : STD_LOGIC;
  signal read_index1_carry_i_6_n_0 : STD_LOGIC;
  signal read_index1_carry_i_7_n_0 : STD_LOGIC;
  signal read_index1_carry_n_0 : STD_LOGIC;
  signal read_index1_carry_n_1 : STD_LOGIC;
  signal read_index1_carry_n_2 : STD_LOGIC;
  signal read_index1_carry_n_3 : STD_LOGIC;
  signal \read_index[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_4_n_0\ : STD_LOGIC;
  signal \^read_index_reg[0]_0\ : STD_LOGIC;
  signal \read_index_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal reads_done : STD_LOGIC;
  signal reads_done1 : STD_LOGIC;
  signal reads_done2 : STD_LOGIC;
  signal \reads_done2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__0_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__0_n_1\ : STD_LOGIC;
  signal \reads_done2_carry__0_n_2\ : STD_LOGIC;
  signal \reads_done2_carry__0_n_3\ : STD_LOGIC;
  signal \reads_done2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \reads_done2_carry__1_n_2\ : STD_LOGIC;
  signal \reads_done2_carry__1_n_3\ : STD_LOGIC;
  signal reads_done2_carry_i_1_n_0 : STD_LOGIC;
  signal reads_done2_carry_i_2_n_0 : STD_LOGIC;
  signal reads_done2_carry_i_3_n_0 : STD_LOGIC;
  signal reads_done2_carry_i_4_n_0 : STD_LOGIC;
  signal reads_done2_carry_n_0 : STD_LOGIC;
  signal reads_done2_carry_n_1 : STD_LOGIC;
  signal reads_done2_carry_n_2 : STD_LOGIC;
  signal reads_done2_carry_n_3 : STD_LOGIC;
  signal reads_done_d1 : STD_LOGIC;
  signal reads_done_d2 : STD_LOGIC;
  signal reads_done_i_1_n_0 : STD_LOGIC;
  signal reads_done_i_4_n_0 : STD_LOGIC;
  signal reads_done_i_5_n_0 : STD_LOGIC;
  signal reads_done_i_6_n_0 : STD_LOGIC;
  signal reads_done_i_7_n_0 : STD_LOGIC;
  signal reads_done_i_8_n_0 : STD_LOGIC;
  signal reads_done_i_9_n_0 : STD_LOGIC;
  signal reads_done_reg_i_2_n_3 : STD_LOGIC;
  signal reads_done_reg_i_3_n_0 : STD_LOGIC;
  signal reads_done_reg_i_3_n_1 : STD_LOGIC;
  signal reads_done_reg_i_3_n_2 : STD_LOGIC;
  signal reads_done_reg_i_3_n_3 : STD_LOGIC;
  signal start_single_burst_read : STD_LOGIC;
  signal start_single_burst_read_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_read_i_2_n_0 : STD_LOGIC;
  signal start_single_burst_write : STD_LOGIC;
  signal start_single_burst_write0 : STD_LOGIC;
  signal start_single_burst_write2 : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_n_1\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_n_2\ : STD_LOGIC;
  signal \start_single_burst_write2_carry__0_n_3\ : STD_LOGIC;
  signal start_single_burst_write2_carry_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_i_2_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_i_3_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_i_4_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_i_5_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_i_6_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_i_7_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_i_8_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_n_0 : STD_LOGIC;
  signal start_single_burst_write2_carry_n_1 : STD_LOGIC;
  signal start_single_burst_write2_carry_n_2 : STD_LOGIC;
  signal start_single_burst_write2_carry_n_3 : STD_LOGIC;
  signal start_single_burst_write_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_write_i_3_n_0 : STD_LOGIC;
  signal start_single_burst_write_i_4_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state_inferred__1/i__n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal write_burst_counter : STD_LOGIC;
  signal write_burst_counter0 : STD_LOGIC;
  signal \write_burst_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_13_n_0\ : STD_LOGIC;
  signal \write_burst_counter[0]_i_14_n_0\ : STD_LOGIC;
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
  signal write_burst_counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal write_index0 : STD_LOGIC;
  signal write_index1 : STD_LOGIC;
  signal \write_index1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_index1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_index1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_index1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_index1_carry__0_n_0\ : STD_LOGIC;
  signal \write_index1_carry__0_n_1\ : STD_LOGIC;
  signal \write_index1_carry__0_n_2\ : STD_LOGIC;
  signal \write_index1_carry__0_n_3\ : STD_LOGIC;
  signal \write_index1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \write_index1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \write_index1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \write_index1_carry__1_n_2\ : STD_LOGIC;
  signal \write_index1_carry__1_n_3\ : STD_LOGIC;
  signal write_index1_carry_i_1_n_0 : STD_LOGIC;
  signal write_index1_carry_i_2_n_0 : STD_LOGIC;
  signal write_index1_carry_i_3_n_0 : STD_LOGIC;
  signal write_index1_carry_i_4_n_0 : STD_LOGIC;
  signal write_index1_carry_i_5_n_0 : STD_LOGIC;
  signal write_index1_carry_i_6_n_0 : STD_LOGIC;
  signal write_index1_carry_i_7_n_0 : STD_LOGIC;
  signal write_index1_carry_i_8_n_0 : STD_LOGIC;
  signal write_index1_carry_n_0 : STD_LOGIC;
  signal write_index1_carry_n_1 : STD_LOGIC;
  signal write_index1_carry_n_2 : STD_LOGIC;
  signal write_index1_carry_n_3 : STD_LOGIC;
  signal \write_index[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_4_n_0\ : STD_LOGIC;
  signal \write_index_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal writes_done : STD_LOGIC;
  signal writes_done2 : STD_LOGIC;
  signal writes_done_d1 : STD_LOGIC;
  signal writes_done_d2 : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal writes_done_i_4_n_0 : STD_LOGIC;
  signal writes_done_i_5_n_0 : STD_LOGIC;
  signal writes_done_i_6_n_0 : STD_LOGIC;
  signal writes_done_i_7_n_0 : STD_LOGIC;
  signal writes_done_i_8_n_0 : STD_LOGIC;
  signal writes_done_i_9_n_0 : STD_LOGIC;
  signal writes_done_reg_i_2_n_3 : STD_LOGIC;
  signal writes_done_reg_i_3_n_0 : STD_LOGIC;
  signal writes_done_reg_i_3_n_1 : STD_LOGIC;
  signal writes_done_reg_i_3_n_2 : STD_LOGIC;
  signal writes_done_reg_i_3_n_3 : STD_LOGIC;
  signal NLW_M_AXI_ARADDR_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_M_AXI_ARADDR_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_M_AXI_ARADDR_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_M_AXI_AWADDR_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_M_AXI_AWADDR_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_M_AXI_AWADDR_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axi_araddr_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_araddr_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axi_awaddr_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_awaddr_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_axi_wlast3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_wlast3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_wlast3_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axi_wlast3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_burst_counter_reg[0]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_read_burst_counter_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_burst_counter_reg[0]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_burst_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_read_index1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_index1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_index1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_read_index1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reads_done2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reads_done2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reads_done2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_reads_done_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reads_done_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_start_single_burst_write2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_single_burst_write2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_burst_counter_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_write_burst_counter_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_burst_counter_reg[0]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_burst_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_write_index1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_index1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_index1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_index1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_writes_done_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_writes_done_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_writes_done_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_awvalid_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_rready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_wlast3_carry_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_wvalid_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of burst_write_active_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \master_full_axi_awlen[7]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of read_data_val_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of read_index1_carry_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of read_index1_carry_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \read_index[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \read_index[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_index[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_index[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_index[8]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of start_single_burst_read_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of start_single_burst_write_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of start_single_burst_write_i_3 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state_inferred__1/i_\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of user_rd_data_en_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of write_index1_carry_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of write_index1_carry_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_index[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \write_index[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \write_index[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_index[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_index[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_index[8]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair12";
begin
  axi_wlast_reg_0 <= \^axi_wlast_reg_0\;
  master_full_axi_arvalid <= \^master_full_axi_arvalid\;
  master_full_axi_awvalid <= \^master_full_axi_awvalid\;
  master_full_axi_bready <= \^master_full_axi_bready\;
  master_full_axi_rready <= \^master_full_axi_rready\;
  master_full_axi_wlast <= \^master_full_axi_wlast\;
  master_full_axi_wvalid <= \^master_full_axi_wvalid\;
  \read_index_reg[0]_0\ <= \^read_index_reg[0]_0\;
M_AXI_ARADDR_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => M_AXI_ARADDR_carry_n_0,
      CO(2) => M_AXI_ARADDR_carry_n_1,
      CO(1) => M_AXI_ARADDR_carry_n_2,
      CO(0) => M_AXI_ARADDR_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_base_addr(3 downto 0),
      O(3 downto 1) => master_full_axi_araddr(3 downto 1),
      O(0) => NLW_M_AXI_ARADDR_carry_O_UNCONNECTED(0),
      S(3) => M_AXI_ARADDR_carry_i_1_n_0,
      S(2) => M_AXI_ARADDR_carry_i_2_n_0,
      S(1) => M_AXI_ARADDR_carry_i_3_n_0,
      S(0) => M_AXI_ARADDR_carry_i_4_n_0
    );
\M_AXI_ARADDR_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => M_AXI_ARADDR_carry_n_0,
      CO(3) => \M_AXI_ARADDR_carry__0_n_0\,
      CO(2) => \M_AXI_ARADDR_carry__0_n_1\,
      CO(1) => \M_AXI_ARADDR_carry__0_n_2\,
      CO(0) => \M_AXI_ARADDR_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_base_addr(7 downto 4),
      O(3 downto 0) => master_full_axi_araddr(7 downto 4),
      S(3) => \M_AXI_ARADDR_carry__0_i_1_n_0\,
      S(2) => \M_AXI_ARADDR_carry__0_i_2_n_0\,
      S(1) => \M_AXI_ARADDR_carry__0_i_3_n_0\,
      S(0) => \M_AXI_ARADDR_carry__0_i_4_n_0\
    );
\M_AXI_ARADDR_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(7),
      I1 => axi_araddr_reg(8),
      O => \M_AXI_ARADDR_carry__0_i_1_n_0\
    );
\M_AXI_ARADDR_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(6),
      I1 => axi_araddr_reg(7),
      O => \M_AXI_ARADDR_carry__0_i_2_n_0\
    );
\M_AXI_ARADDR_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(5),
      I1 => axi_araddr_reg(6),
      O => \M_AXI_ARADDR_carry__0_i_3_n_0\
    );
\M_AXI_ARADDR_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(4),
      I1 => axi_araddr_reg(5),
      O => \M_AXI_ARADDR_carry__0_i_4_n_0\
    );
\M_AXI_ARADDR_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR_carry__0_n_0\,
      CO(3) => \M_AXI_ARADDR_carry__1_n_0\,
      CO(2) => \M_AXI_ARADDR_carry__1_n_1\,
      CO(1) => \M_AXI_ARADDR_carry__1_n_2\,
      CO(0) => \M_AXI_ARADDR_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_base_addr(11 downto 8),
      O(3 downto 0) => master_full_axi_araddr(11 downto 8),
      S(3) => \M_AXI_ARADDR_carry__1_i_1_n_0\,
      S(2) => \M_AXI_ARADDR_carry__1_i_2_n_0\,
      S(1) => \M_AXI_ARADDR_carry__1_i_3_n_0\,
      S(0) => \M_AXI_ARADDR_carry__1_i_4_n_0\
    );
\M_AXI_ARADDR_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(11),
      I1 => axi_araddr_reg(12),
      O => \M_AXI_ARADDR_carry__1_i_1_n_0\
    );
\M_AXI_ARADDR_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(10),
      I1 => axi_araddr_reg(11),
      O => \M_AXI_ARADDR_carry__1_i_2_n_0\
    );
\M_AXI_ARADDR_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(9),
      I1 => axi_araddr_reg(10),
      O => \M_AXI_ARADDR_carry__1_i_3_n_0\
    );
\M_AXI_ARADDR_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(8),
      I1 => axi_araddr_reg(9),
      O => \M_AXI_ARADDR_carry__1_i_4_n_0\
    );
\M_AXI_ARADDR_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR_carry__1_n_0\,
      CO(3) => \M_AXI_ARADDR_carry__2_n_0\,
      CO(2) => \M_AXI_ARADDR_carry__2_n_1\,
      CO(1) => \M_AXI_ARADDR_carry__2_n_2\,
      CO(0) => \M_AXI_ARADDR_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_base_addr(15 downto 12),
      O(3 downto 0) => master_full_axi_araddr(15 downto 12),
      S(3) => \M_AXI_ARADDR_carry__2_i_1_n_0\,
      S(2) => \M_AXI_ARADDR_carry__2_i_2_n_0\,
      S(1) => \M_AXI_ARADDR_carry__2_i_3_n_0\,
      S(0) => \M_AXI_ARADDR_carry__2_i_4_n_0\
    );
\M_AXI_ARADDR_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(15),
      I1 => axi_araddr_reg(16),
      O => \M_AXI_ARADDR_carry__2_i_1_n_0\
    );
\M_AXI_ARADDR_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(14),
      I1 => axi_araddr_reg(15),
      O => \M_AXI_ARADDR_carry__2_i_2_n_0\
    );
\M_AXI_ARADDR_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(13),
      I1 => axi_araddr_reg(14),
      O => \M_AXI_ARADDR_carry__2_i_3_n_0\
    );
\M_AXI_ARADDR_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(12),
      I1 => axi_araddr_reg(13),
      O => \M_AXI_ARADDR_carry__2_i_4_n_0\
    );
\M_AXI_ARADDR_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR_carry__2_n_0\,
      CO(3) => \M_AXI_ARADDR_carry__3_n_0\,
      CO(2) => \M_AXI_ARADDR_carry__3_n_1\,
      CO(1) => \M_AXI_ARADDR_carry__3_n_2\,
      CO(0) => \M_AXI_ARADDR_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_base_addr(19 downto 16),
      O(3 downto 0) => master_full_axi_araddr(19 downto 16),
      S(3) => \M_AXI_ARADDR_carry__3_i_1_n_0\,
      S(2) => \M_AXI_ARADDR_carry__3_i_2_n_0\,
      S(1) => \M_AXI_ARADDR_carry__3_i_3_n_0\,
      S(0) => \M_AXI_ARADDR_carry__3_i_4_n_0\
    );
\M_AXI_ARADDR_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(19),
      I1 => axi_araddr_reg(20),
      O => \M_AXI_ARADDR_carry__3_i_1_n_0\
    );
\M_AXI_ARADDR_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(18),
      I1 => axi_araddr_reg(19),
      O => \M_AXI_ARADDR_carry__3_i_2_n_0\
    );
\M_AXI_ARADDR_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(17),
      I1 => axi_araddr_reg(18),
      O => \M_AXI_ARADDR_carry__3_i_3_n_0\
    );
\M_AXI_ARADDR_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(16),
      I1 => axi_araddr_reg(17),
      O => \M_AXI_ARADDR_carry__3_i_4_n_0\
    );
\M_AXI_ARADDR_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR_carry__3_n_0\,
      CO(3) => \M_AXI_ARADDR_carry__4_n_0\,
      CO(2) => \M_AXI_ARADDR_carry__4_n_1\,
      CO(1) => \M_AXI_ARADDR_carry__4_n_2\,
      CO(0) => \M_AXI_ARADDR_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_base_addr(23 downto 20),
      O(3 downto 0) => master_full_axi_araddr(23 downto 20),
      S(3) => \M_AXI_ARADDR_carry__4_i_1_n_0\,
      S(2) => \M_AXI_ARADDR_carry__4_i_2_n_0\,
      S(1) => \M_AXI_ARADDR_carry__4_i_3_n_0\,
      S(0) => \M_AXI_ARADDR_carry__4_i_4_n_0\
    );
\M_AXI_ARADDR_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(23),
      I1 => axi_araddr_reg(24),
      O => \M_AXI_ARADDR_carry__4_i_1_n_0\
    );
\M_AXI_ARADDR_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(22),
      I1 => axi_araddr_reg(23),
      O => \M_AXI_ARADDR_carry__4_i_2_n_0\
    );
\M_AXI_ARADDR_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(21),
      I1 => axi_araddr_reg(22),
      O => \M_AXI_ARADDR_carry__4_i_3_n_0\
    );
\M_AXI_ARADDR_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(20),
      I1 => axi_araddr_reg(21),
      O => \M_AXI_ARADDR_carry__4_i_4_n_0\
    );
\M_AXI_ARADDR_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR_carry__4_n_0\,
      CO(3) => \M_AXI_ARADDR_carry__5_n_0\,
      CO(2) => \M_AXI_ARADDR_carry__5_n_1\,
      CO(1) => \M_AXI_ARADDR_carry__5_n_2\,
      CO(0) => \M_AXI_ARADDR_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_rd_base_addr(27 downto 24),
      O(3 downto 0) => master_full_axi_araddr(27 downto 24),
      S(3) => \M_AXI_ARADDR_carry__5_i_1_n_0\,
      S(2) => \M_AXI_ARADDR_carry__5_i_2_n_0\,
      S(1) => \M_AXI_ARADDR_carry__5_i_3_n_0\,
      S(0) => \M_AXI_ARADDR_carry__5_i_4_n_0\
    );
\M_AXI_ARADDR_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(27),
      I1 => axi_araddr_reg(28),
      O => \M_AXI_ARADDR_carry__5_i_1_n_0\
    );
\M_AXI_ARADDR_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(26),
      I1 => axi_araddr_reg(27),
      O => \M_AXI_ARADDR_carry__5_i_2_n_0\
    );
\M_AXI_ARADDR_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(25),
      I1 => axi_araddr_reg(26),
      O => \M_AXI_ARADDR_carry__5_i_3_n_0\
    );
\M_AXI_ARADDR_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(24),
      I1 => axi_araddr_reg(25),
      O => \M_AXI_ARADDR_carry__5_i_4_n_0\
    );
\M_AXI_ARADDR_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_ARADDR_carry__5_n_0\,
      CO(3 downto 2) => \NLW_M_AXI_ARADDR_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \M_AXI_ARADDR_carry__6_n_2\,
      CO(0) => \M_AXI_ARADDR_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => user_rd_base_addr(29 downto 28),
      O(3) => \NLW_M_AXI_ARADDR_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => master_full_axi_araddr(30 downto 28),
      S(3) => '0',
      S(2) => \M_AXI_ARADDR_carry__6_i_1_n_0\,
      S(1) => \M_AXI_ARADDR_carry__6_i_2_n_0\,
      S(0) => \M_AXI_ARADDR_carry__6_i_3_n_0\
    );
\M_AXI_ARADDR_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(30),
      I1 => axi_araddr_reg(31),
      O => \M_AXI_ARADDR_carry__6_i_1_n_0\
    );
\M_AXI_ARADDR_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(29),
      I1 => axi_araddr_reg(30),
      O => \M_AXI_ARADDR_carry__6_i_2_n_0\
    );
\M_AXI_ARADDR_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(28),
      I1 => axi_araddr_reg(29),
      O => \M_AXI_ARADDR_carry__6_i_3_n_0\
    );
M_AXI_ARADDR_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(3),
      I1 => axi_araddr_reg(4),
      O => M_AXI_ARADDR_carry_i_1_n_0
    );
M_AXI_ARADDR_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(2),
      I1 => axi_araddr_reg(3),
      O => M_AXI_ARADDR_carry_i_2_n_0
    );
M_AXI_ARADDR_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(1),
      I1 => axi_araddr_reg(2),
      O => M_AXI_ARADDR_carry_i_3_n_0
    );
M_AXI_ARADDR_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(0),
      I1 => axi_araddr_reg(1),
      O => M_AXI_ARADDR_carry_i_4_n_0
    );
M_AXI_AWADDR_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => M_AXI_AWADDR_carry_n_0,
      CO(2) => M_AXI_AWADDR_carry_n_1,
      CO(1) => M_AXI_AWADDR_carry_n_2,
      CO(0) => M_AXI_AWADDR_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_base_addr(3 downto 0),
      O(3 downto 1) => master_full_axi_awaddr(3 downto 1),
      O(0) => NLW_M_AXI_AWADDR_carry_O_UNCONNECTED(0),
      S(3) => M_AXI_AWADDR_carry_i_1_n_0,
      S(2) => M_AXI_AWADDR_carry_i_2_n_0,
      S(1) => M_AXI_AWADDR_carry_i_3_n_0,
      S(0) => M_AXI_AWADDR_carry_i_4_n_0
    );
\M_AXI_AWADDR_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => M_AXI_AWADDR_carry_n_0,
      CO(3) => \M_AXI_AWADDR_carry__0_n_0\,
      CO(2) => \M_AXI_AWADDR_carry__0_n_1\,
      CO(1) => \M_AXI_AWADDR_carry__0_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_base_addr(7 downto 4),
      O(3 downto 0) => master_full_axi_awaddr(7 downto 4),
      S(3) => \M_AXI_AWADDR_carry__0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR_carry__0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR_carry__0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR_carry__0_i_4_n_0\
    );
\M_AXI_AWADDR_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(7),
      I1 => axi_awaddr_reg(8),
      O => \M_AXI_AWADDR_carry__0_i_1_n_0\
    );
\M_AXI_AWADDR_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(6),
      I1 => axi_awaddr_reg(7),
      O => \M_AXI_AWADDR_carry__0_i_2_n_0\
    );
\M_AXI_AWADDR_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(5),
      I1 => axi_awaddr_reg(6),
      O => \M_AXI_AWADDR_carry__0_i_3_n_0\
    );
\M_AXI_AWADDR_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(4),
      I1 => axi_awaddr_reg(5),
      O => \M_AXI_AWADDR_carry__0_i_4_n_0\
    );
\M_AXI_AWADDR_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_carry__0_n_0\,
      CO(3) => \M_AXI_AWADDR_carry__1_n_0\,
      CO(2) => \M_AXI_AWADDR_carry__1_n_1\,
      CO(1) => \M_AXI_AWADDR_carry__1_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_base_addr(11 downto 8),
      O(3 downto 0) => master_full_axi_awaddr(11 downto 8),
      S(3) => \M_AXI_AWADDR_carry__1_i_1_n_0\,
      S(2) => \M_AXI_AWADDR_carry__1_i_2_n_0\,
      S(1) => \M_AXI_AWADDR_carry__1_i_3_n_0\,
      S(0) => \M_AXI_AWADDR_carry__1_i_4_n_0\
    );
\M_AXI_AWADDR_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(11),
      I1 => axi_awaddr_reg(12),
      O => \M_AXI_AWADDR_carry__1_i_1_n_0\
    );
\M_AXI_AWADDR_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(10),
      I1 => axi_awaddr_reg(11),
      O => \M_AXI_AWADDR_carry__1_i_2_n_0\
    );
\M_AXI_AWADDR_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(9),
      I1 => axi_awaddr_reg(10),
      O => \M_AXI_AWADDR_carry__1_i_3_n_0\
    );
\M_AXI_AWADDR_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(8),
      I1 => axi_awaddr_reg(9),
      O => \M_AXI_AWADDR_carry__1_i_4_n_0\
    );
\M_AXI_AWADDR_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_carry__1_n_0\,
      CO(3) => \M_AXI_AWADDR_carry__2_n_0\,
      CO(2) => \M_AXI_AWADDR_carry__2_n_1\,
      CO(1) => \M_AXI_AWADDR_carry__2_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_base_addr(15 downto 12),
      O(3 downto 0) => master_full_axi_awaddr(15 downto 12),
      S(3) => \M_AXI_AWADDR_carry__2_i_1_n_0\,
      S(2) => \M_AXI_AWADDR_carry__2_i_2_n_0\,
      S(1) => \M_AXI_AWADDR_carry__2_i_3_n_0\,
      S(0) => \M_AXI_AWADDR_carry__2_i_4_n_0\
    );
\M_AXI_AWADDR_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(15),
      I1 => axi_awaddr_reg(16),
      O => \M_AXI_AWADDR_carry__2_i_1_n_0\
    );
\M_AXI_AWADDR_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(14),
      I1 => axi_awaddr_reg(15),
      O => \M_AXI_AWADDR_carry__2_i_2_n_0\
    );
\M_AXI_AWADDR_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(13),
      I1 => axi_awaddr_reg(14),
      O => \M_AXI_AWADDR_carry__2_i_3_n_0\
    );
\M_AXI_AWADDR_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(12),
      I1 => axi_awaddr_reg(13),
      O => \M_AXI_AWADDR_carry__2_i_4_n_0\
    );
\M_AXI_AWADDR_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_carry__2_n_0\,
      CO(3) => \M_AXI_AWADDR_carry__3_n_0\,
      CO(2) => \M_AXI_AWADDR_carry__3_n_1\,
      CO(1) => \M_AXI_AWADDR_carry__3_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_base_addr(19 downto 16),
      O(3 downto 0) => master_full_axi_awaddr(19 downto 16),
      S(3) => \M_AXI_AWADDR_carry__3_i_1_n_0\,
      S(2) => \M_AXI_AWADDR_carry__3_i_2_n_0\,
      S(1) => \M_AXI_AWADDR_carry__3_i_3_n_0\,
      S(0) => \M_AXI_AWADDR_carry__3_i_4_n_0\
    );
\M_AXI_AWADDR_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(19),
      I1 => axi_awaddr_reg(20),
      O => \M_AXI_AWADDR_carry__3_i_1_n_0\
    );
\M_AXI_AWADDR_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(18),
      I1 => axi_awaddr_reg(19),
      O => \M_AXI_AWADDR_carry__3_i_2_n_0\
    );
\M_AXI_AWADDR_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(17),
      I1 => axi_awaddr_reg(18),
      O => \M_AXI_AWADDR_carry__3_i_3_n_0\
    );
\M_AXI_AWADDR_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(16),
      I1 => axi_awaddr_reg(17),
      O => \M_AXI_AWADDR_carry__3_i_4_n_0\
    );
\M_AXI_AWADDR_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_carry__3_n_0\,
      CO(3) => \M_AXI_AWADDR_carry__4_n_0\,
      CO(2) => \M_AXI_AWADDR_carry__4_n_1\,
      CO(1) => \M_AXI_AWADDR_carry__4_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_base_addr(23 downto 20),
      O(3 downto 0) => master_full_axi_awaddr(23 downto 20),
      S(3) => \M_AXI_AWADDR_carry__4_i_1_n_0\,
      S(2) => \M_AXI_AWADDR_carry__4_i_2_n_0\,
      S(1) => \M_AXI_AWADDR_carry__4_i_3_n_0\,
      S(0) => \M_AXI_AWADDR_carry__4_i_4_n_0\
    );
\M_AXI_AWADDR_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(23),
      I1 => axi_awaddr_reg(24),
      O => \M_AXI_AWADDR_carry__4_i_1_n_0\
    );
\M_AXI_AWADDR_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(22),
      I1 => axi_awaddr_reg(23),
      O => \M_AXI_AWADDR_carry__4_i_2_n_0\
    );
\M_AXI_AWADDR_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(21),
      I1 => axi_awaddr_reg(22),
      O => \M_AXI_AWADDR_carry__4_i_3_n_0\
    );
\M_AXI_AWADDR_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(20),
      I1 => axi_awaddr_reg(21),
      O => \M_AXI_AWADDR_carry__4_i_4_n_0\
    );
\M_AXI_AWADDR_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_carry__4_n_0\,
      CO(3) => \M_AXI_AWADDR_carry__5_n_0\,
      CO(2) => \M_AXI_AWADDR_carry__5_n_1\,
      CO(1) => \M_AXI_AWADDR_carry__5_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => user_wr_base_addr(27 downto 24),
      O(3 downto 0) => master_full_axi_awaddr(27 downto 24),
      S(3) => \M_AXI_AWADDR_carry__5_i_1_n_0\,
      S(2) => \M_AXI_AWADDR_carry__5_i_2_n_0\,
      S(1) => \M_AXI_AWADDR_carry__5_i_3_n_0\,
      S(0) => \M_AXI_AWADDR_carry__5_i_4_n_0\
    );
\M_AXI_AWADDR_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(27),
      I1 => axi_awaddr_reg(28),
      O => \M_AXI_AWADDR_carry__5_i_1_n_0\
    );
\M_AXI_AWADDR_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(26),
      I1 => axi_awaddr_reg(27),
      O => \M_AXI_AWADDR_carry__5_i_2_n_0\
    );
\M_AXI_AWADDR_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(25),
      I1 => axi_awaddr_reg(26),
      O => \M_AXI_AWADDR_carry__5_i_3_n_0\
    );
\M_AXI_AWADDR_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(24),
      I1 => axi_awaddr_reg(25),
      O => \M_AXI_AWADDR_carry__5_i_4_n_0\
    );
\M_AXI_AWADDR_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_carry__5_n_0\,
      CO(3 downto 2) => \NLW_M_AXI_AWADDR_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \M_AXI_AWADDR_carry__6_n_2\,
      CO(0) => \M_AXI_AWADDR_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => user_wr_base_addr(29 downto 28),
      O(3) => \NLW_M_AXI_AWADDR_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => master_full_axi_awaddr(30 downto 28),
      S(3) => '0',
      S(2) => \M_AXI_AWADDR_carry__6_i_1_n_0\,
      S(1) => \M_AXI_AWADDR_carry__6_i_2_n_0\,
      S(0) => \M_AXI_AWADDR_carry__6_i_3_n_0\
    );
\M_AXI_AWADDR_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(30),
      I1 => axi_awaddr_reg(31),
      O => \M_AXI_AWADDR_carry__6_i_1_n_0\
    );
\M_AXI_AWADDR_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(29),
      I1 => axi_awaddr_reg(30),
      O => \M_AXI_AWADDR_carry__6_i_2_n_0\
    );
\M_AXI_AWADDR_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(28),
      I1 => axi_awaddr_reg(29),
      O => \M_AXI_AWADDR_carry__6_i_3_n_0\
    );
M_AXI_AWADDR_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(3),
      I1 => axi_awaddr_reg(4),
      O => M_AXI_AWADDR_carry_i_1_n_0
    );
M_AXI_AWADDR_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(2),
      I1 => axi_awaddr_reg(3),
      O => M_AXI_AWADDR_carry_i_2_n_0
    );
M_AXI_AWADDR_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(1),
      I1 => axi_awaddr_reg(2),
      O => M_AXI_AWADDR_carry_i_3_n_0
    );
M_AXI_AWADDR_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(0),
      I1 => axi_awaddr_reg(1),
      O => M_AXI_AWADDR_carry_i_4_n_0
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
      I0 => \^master_full_axi_arvalid\,
      I1 => master_full_axi_arready,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[9]_i_1_n_6\,
      Q => axi_araddr_reg(10),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[9]_i_1_n_5\,
      Q => axi_araddr_reg(11),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[9]_i_1_n_4\,
      Q => axi_araddr_reg(12),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_6\,
      Q => axi_araddr_reg(14),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_5\,
      Q => axi_araddr_reg(15),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[13]_i_1_n_4\,
      Q => axi_araddr_reg(16),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_6\,
      Q => axi_araddr_reg(18),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_5\,
      Q => axi_araddr_reg(19),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[17]_i_1_n_4\,
      Q => axi_araddr_reg(20),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_6\,
      Q => axi_araddr_reg(22),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_5\,
      Q => axi_araddr_reg(23),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[21]_i_1_n_4\,
      Q => axi_araddr_reg(24),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_6\,
      Q => axi_araddr_reg(26),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_5\,
      Q => axi_araddr_reg(27),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[25]_i_1_n_4\,
      Q => axi_araddr_reg(28),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[1]_i_2_n_6\,
      Q => axi_araddr_reg(2),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[29]_i_1_n_6\,
      Q => axi_araddr_reg(30),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[29]_i_1_n_5\,
      Q => axi_araddr_reg(31),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[1]_i_2_n_5\,
      Q => axi_araddr_reg(3),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[1]_i_2_n_4\,
      Q => axi_araddr_reg(4),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[5]_i_1_n_6\,
      Q => axi_araddr_reg(6),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[5]_i_1_n_5\,
      Q => axi_araddr_reg(7),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[5]_i_1_n_4\,
      Q => axi_araddr_reg(8),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      I1 => \^master_full_axi_arvalid\,
      I2 => master_full_axi_arready,
      I3 => master_axi_aresetn,
      I4 => user_rd_en,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^master_full_axi_arvalid\,
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
      I0 => \^master_full_axi_awvalid\,
      I1 => master_full_axi_awready,
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_6\,
      Q => axi_awaddr_reg(10),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_5\,
      Q => axi_awaddr_reg(11),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_4\,
      Q => axi_awaddr_reg(12),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_7\,
      Q => axi_awaddr_reg(13),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_6\,
      Q => axi_awaddr_reg(14),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_5\,
      Q => axi_awaddr_reg(15),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[13]_i_1_n_4\,
      Q => axi_awaddr_reg(16),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_7\,
      Q => axi_awaddr_reg(17),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_6\,
      Q => axi_awaddr_reg(18),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_5\,
      Q => axi_awaddr_reg(19),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_7\,
      Q => axi_awaddr_reg(1),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[17]_i_1_n_4\,
      Q => axi_awaddr_reg(20),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_7\,
      Q => axi_awaddr_reg(21),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_6\,
      Q => axi_awaddr_reg(22),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_5\,
      Q => axi_awaddr_reg(23),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[21]_i_1_n_4\,
      Q => axi_awaddr_reg(24),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_7\,
      Q => axi_awaddr_reg(25),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_6\,
      Q => axi_awaddr_reg(26),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_5\,
      Q => axi_awaddr_reg(27),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[25]_i_1_n_4\,
      Q => axi_awaddr_reg(28),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[29]_i_1_n_7\,
      Q => axi_awaddr_reg(29),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_6\,
      Q => axi_awaddr_reg(2),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[29]_i_1_n_6\,
      Q => axi_awaddr_reg(30),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[29]_i_1_n_5\,
      Q => axi_awaddr_reg(31),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_5\,
      Q => axi_awaddr_reg(3),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[1]_i_2_n_4\,
      Q => axi_awaddr_reg(4),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_7\,
      Q => axi_awaddr_reg(5),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_6\,
      Q => axi_awaddr_reg(6),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_5\,
      Q => axi_awaddr_reg(7),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[5]_i_1_n_4\,
      Q => axi_awaddr_reg(8),
      R => axi_awvalid_i_1_n_0
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => axi_awvalid0,
      D => \axi_awaddr_reg[9]_i_1_n_7\,
      Q => axi_awaddr_reg(9),
      R => axi_awvalid_i_1_n_0
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
      I1 => master_axi_aresetn,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => master_full_axi_awready,
      I1 => \^master_full_axi_awvalid\,
      I2 => start_single_burst_write,
      O => axi_awvalid_i_2_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => axi_awvalid_i_2_n_0,
      Q => \^master_full_axi_awvalid\,
      R => axi_awvalid_i_1_n_0
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => master_full_axi_bvalid,
      I1 => \^master_full_axi_bready\,
      O => axi_bready0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => axi_bready0,
      Q => \^master_full_axi_bready\,
      R => axi_awvalid_i_1_n_0
    );
axi_rready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404440"
    )
        port map (
      I0 => user_rd_en,
      I1 => master_axi_aresetn,
      I2 => \^master_full_axi_rready\,
      I3 => master_full_axi_rvalid,
      I4 => master_full_axi_rlast,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^master_full_axi_rready\,
      R => '0'
    );
axi_wlast3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axi_wlast3_carry_n_0,
      CO(2) => axi_wlast3_carry_n_1,
      CO(1) => axi_wlast3_carry_n_2,
      CO(0) => axi_wlast3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_axi_wlast3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axi_wlast3_carry_i_1_n_0,
      S(2) => axi_wlast3_carry_i_2_n_0,
      S(1) => axi_wlast3_carry_i_3_n_0,
      S(0) => axi_wlast3_carry_i_4_n_0
    );
\axi_wlast3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axi_wlast3_carry_n_0,
      CO(3) => \axi_wlast3_carry__0_n_0\,
      CO(2) => \axi_wlast3_carry__0_n_1\,
      CO(1) => \axi_wlast3_carry__0_n_2\,
      CO(0) => \axi_wlast3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_axi_wlast3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \axi_wlast3_carry__0_i_1_n_0\,
      S(2) => \axi_wlast3_carry__0_i_2_n_0\,
      S(1) => \axi_wlast3_carry__0_i_3_n_0\,
      S(0) => \axi_wlast3_carry__0_i_4_n_0\
    );
\axi_wlast3_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => \axi_wlast3_carry__0_i_1_n_0\
    );
\axi_wlast3_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => \axi_wlast3_carry__0_i_2_n_0\
    );
\axi_wlast3_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => \axi_wlast3_carry__0_i_3_n_0\
    );
\axi_wlast3_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => \axi_wlast3_carry__0_i_4_n_0\
    );
\axi_wlast3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_wlast3_carry__0_n_0\,
      CO(3) => \NLW_axi_wlast3_carry__1_CO_UNCONNECTED\(3),
      CO(2) => axi_wlast3,
      CO(1) => \axi_wlast3_carry__1_n_2\,
      CO(0) => \axi_wlast3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_axi_wlast3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \axi_wlast3_carry__1_i_1_n_0\,
      S(1) => \axi_wlast3_carry__1_i_2_n_0\,
      S(0) => \axi_wlast3_carry__1_i_3_n_0\
    );
\axi_wlast3_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => \axi_wlast3_carry__1_i_1_n_0\
    );
\axi_wlast3_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => \axi_wlast3_carry__1_i_2_n_0\
    );
\axi_wlast3_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => \axi_wlast3_carry__1_i_3_n_0\
    );
axi_wlast3_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      O => axi_wlast3_carry_i_1_n_0
    );
axi_wlast3_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2100004200212100"
    )
        port map (
      I0 => user_wr_burst_len(7),
      I1 => \write_index_reg__0\(8),
      I2 => \write_index_reg__0\(7),
      I3 => axi_wlast3_carry_i_5_n_0,
      I4 => user_wr_burst_len(6),
      I5 => \write_index_reg__0\(6),
      O => axi_wlast3_carry_i_2_n_0
    );
axi_wlast3_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200002800828200"
    )
        port map (
      I0 => axi_wlast3_carry_i_6_n_0,
      I1 => user_wr_burst_len(5),
      I2 => \write_index_reg__0\(5),
      I3 => \^axi_wlast_reg_0\,
      I4 => user_wr_burst_len(4),
      I5 => \write_index_reg__0\(4),
      O => axi_wlast3_carry_i_3_n_0
    );
axi_wlast3_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1200001284000084"
    )
        port map (
      I0 => user_wr_burst_len(2),
      I1 => user_wr_burst_len(1),
      I2 => \write_index_reg__0\(2),
      I3 => user_wr_burst_len(0),
      I4 => \write_index_reg__0\(0),
      I5 => \write_index_reg__0\(1),
      O => axi_wlast3_carry_i_4_n_0
    );
axi_wlast3_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(4),
      I1 => user_wr_burst_len(1),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(3),
      I4 => user_wr_burst_len(5),
      O => axi_wlast3_carry_i_5_n_0
    );
axi_wlast3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => user_wr_burst_len(3),
      I1 => user_wr_burst_len(2),
      I2 => user_wr_burst_len(1),
      I3 => \write_index_reg__0\(3),
      O => axi_wlast3_carry_i_6_n_0
    );
axi_wlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8303030"
    )
        port map (
      I0 => axi_wlast3,
      I1 => axi_wlast_i_2_n_0,
      I2 => user_wr_burst_len(0),
      I3 => master_full_axi_wready,
      I4 => \^master_full_axi_wvalid\,
      I5 => \^master_full_axi_wlast\,
      O => axi_wlast_i_1_n_0
    );
axi_wlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(7),
      I1 => user_wr_burst_len(6),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(4),
      I4 => \^axi_wlast_reg_0\,
      O => axi_wlast_i_2_n_0
    );
axi_wlast_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => axi_wlast_i_1_n_0,
      Q => \^master_full_axi_wlast\,
      R => axi_awvalid_i_1_n_0
    );
axi_wvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => \^master_full_axi_wlast\,
      I1 => master_full_axi_wready,
      I2 => \^master_full_axi_wvalid\,
      I3 => start_single_burst_write,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => \^master_full_axi_wvalid\,
      R => axi_awvalid_i_1_n_0
    );
burst_read_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CEEEEEEE"
    )
        port map (
      I0 => burst_read_active,
      I1 => start_single_burst_read,
      I2 => \^master_full_axi_rready\,
      I3 => master_full_axi_rvalid,
      I4 => master_full_axi_rlast,
      I5 => \read_burst_counter[0]_i_1_n_0\,
      O => burst_read_active_i_1_n_0
    );
burst_read_active_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      I0 => master_full_axi_bvalid,
      I1 => \^master_full_axi_bready\,
      I2 => start_single_burst_write,
      I3 => burst_write_active,
      O => burst_write_active_i_1_n_0
    );
burst_write_active_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => burst_write_active_i_1_n_0,
      Q => burst_write_active,
      R => axi_awvalid_i_1_n_0
    );
\master_axi_txn_done[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writes_done,
      I1 => writes_done_d2,
      O => master_axi_txn_done(0)
    );
\master_axi_txn_done[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reads_done,
      I1 => reads_done_d2,
      O => master_axi_txn_done(1)
    );
\master_full_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_rd_base_addr(0),
      I1 => axi_araddr_reg(1),
      O => master_full_axi_araddr(0)
    );
\master_full_axi_arlen[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => user_rd_burst_len(1),
      I1 => user_rd_burst_len(0),
      I2 => user_rd_burst_len(2),
      O => \^read_index_reg[0]_0\
    );
\master_full_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => user_wr_base_addr(0),
      I1 => axi_awaddr_reg(1),
      O => master_full_axi_awaddr(0)
    );
\master_full_axi_awlen[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => user_wr_burst_len(1),
      I1 => user_wr_burst_len(2),
      I2 => user_wr_burst_len(3),
      O => \^axi_wlast_reg_0\
    );
\read_burst_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => user_rd_en,
      I1 => master_axi_aresetn,
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
      I0 => master_full_axi_arready,
      I1 => \^master_full_axi_arvalid\,
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
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_5\,
      Q => read_burst_counter_reg(10),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[8]_i_1_n_4\,
      Q => read_burst_counter_reg(11),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[12]_i_1_n_6\,
      Q => read_burst_counter_reg(13),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[12]_i_1_n_5\,
      Q => read_burst_counter_reg(14),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[12]_i_1_n_4\,
      Q => read_burst_counter_reg(15),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_3_n_6\,
      Q => read_burst_counter_reg(1),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_3_n_5\,
      Q => read_burst_counter_reg(2),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[0]_i_3_n_4\,
      Q => read_burst_counter_reg(3),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_6\,
      Q => read_burst_counter_reg(5),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_5\,
      Q => read_burst_counter_reg(6),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_burst_counter,
      D => \read_burst_counter_reg[4]_i_1_n_4\,
      Q => read_burst_counter_reg(7),
      R => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      C => master_axi_aclk,
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
      I0 => master_full_axi_rvalid,
      I1 => \^master_full_axi_rready\,
      O => read_data_val
    );
read_index1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => read_index1_carry_n_0,
      CO(2) => read_index1_carry_n_1,
      CO(1) => read_index1_carry_n_2,
      CO(0) => read_index1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_read_index1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => read_index1_carry_i_1_n_0,
      S(2) => read_index1_carry_i_2_n_0,
      S(1) => read_index1_carry_i_3_n_0,
      S(0) => read_index1_carry_i_4_n_0
    );
\read_index1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => read_index1_carry_n_0,
      CO(3) => \read_index1_carry__0_n_0\,
      CO(2) => \read_index1_carry__0_n_1\,
      CO(1) => \read_index1_carry__0_n_2\,
      CO(0) => \read_index1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_read_index1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_index1_carry__0_i_1_n_0\,
      S(2) => \read_index1_carry__0_i_2_n_0\,
      S(1) => \read_index1_carry__0_i_3_n_0\,
      S(0) => \read_index1_carry__0_i_4_n_0\
    );
\read_index1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index1_carry__0_i_1_n_0\
    );
\read_index1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index1_carry__0_i_2_n_0\
    );
\read_index1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index1_carry__0_i_3_n_0\
    );
\read_index1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index1_carry__0_i_4_n_0\
    );
\read_index1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_index1_carry__0_n_0\,
      CO(3) => \NLW_read_index1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => read_index1,
      CO(1) => \read_index1_carry__1_n_2\,
      CO(0) => \read_index1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_read_index1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \read_index1_carry__1_i_1_n_0\,
      S(1) => \read_index1_carry__1_i_2_n_0\,
      S(0) => \read_index1_carry__1_i_3_n_0\
    );
\read_index1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index1_carry__1_i_1_n_0\
    );
\read_index1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index1_carry__1_i_2_n_0\
    );
\read_index1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => \read_index1_carry__1_i_3_n_0\
    );
read_index1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => \^read_index_reg[0]_0\,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      I5 => user_rd_burst_len(7),
      O => read_index1_carry_i_1_n_0
    );
read_index1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2110000800022110"
    )
        port map (
      I0 => \read_index_reg__0\(6),
      I1 => \read_index_reg__0\(8),
      I2 => user_rd_burst_len(6),
      I3 => read_index1_carry_i_5_n_0,
      I4 => user_rd_burst_len(7),
      I5 => \read_index_reg__0\(7),
      O => read_index1_carry_i_2_n_0
    );
read_index1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8040400808040480"
    )
        port map (
      I0 => \read_index_reg__0\(4),
      I1 => read_index1_carry_i_6_n_0,
      I2 => \read_index_reg__0\(5),
      I3 => user_rd_burst_len(4),
      I4 => read_index1_carry_i_7_n_0,
      I5 => user_rd_burst_len(5),
      O => read_index1_carry_i_3_n_0
    );
read_index1_carry_i_4: unisim.vcomponents.LUT6
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
      O => read_index1_carry_i_4_n_0
    );
read_index1_carry_i_5: unisim.vcomponents.LUT6
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
      O => read_index1_carry_i_5_n_0
    );
read_index1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \read_index_reg__0\(3),
      I1 => user_rd_burst_len(3),
      I2 => user_rd_burst_len(1),
      I3 => user_rd_burst_len(0),
      I4 => user_rd_burst_len(2),
      O => read_index1_carry_i_6_n_0
    );
read_index1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => user_rd_burst_len(2),
      I1 => user_rd_burst_len(0),
      I2 => user_rd_burst_len(1),
      I3 => user_rd_burst_len(3),
      O => read_index1_carry_i_7_n_0
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\read_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      I2 => \read_index_reg__0\(2),
      O => \p_0_in__0\(2)
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
      O => \p_0_in__0\(3)
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
      O => \p_0_in__0\(4)
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
      O => \p_0_in__0\(5)
    );
\read_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \read_index[8]_i_4_n_0\,
      I1 => \read_index_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\read_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \read_index_reg__0\(6),
      I1 => \read_index[8]_i_4_n_0\,
      I2 => \read_index_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\read_index[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => master_axi_aresetn,
      I1 => user_rd_en,
      I2 => start_single_burst_read,
      O => \read_index[8]_i_1_n_0\
    );
\read_index[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^master_full_axi_rready\,
      I1 => master_full_axi_rvalid,
      I2 => read_index1,
      O => read_index0
    );
\read_index[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \read_index_reg__0\(7),
      I1 => \read_index[8]_i_4_n_0\,
      I2 => \read_index_reg__0\(6),
      I3 => \read_index_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\read_index[8]_i_4\: unisim.vcomponents.LUT6
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
      O => \read_index[8]_i_4_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(0),
      Q => \read_index_reg__0\(0),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(1),
      Q => \read_index_reg__0\(1),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(2),
      Q => \read_index_reg__0\(2),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(3),
      Q => \read_index_reg__0\(3),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(4),
      Q => \read_index_reg__0\(4),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(5),
      Q => \read_index_reg__0\(5),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(6),
      Q => \read_index_reg__0\(6),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(7),
      Q => \read_index_reg__0\(7),
      R => \read_index[8]_i_1_n_0\
    );
\read_index_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => read_index0,
      D => \p_0_in__0\(8),
      Q => \read_index_reg__0\(8),
      R => \read_index[8]_i_1_n_0\
    );
reads_done2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => reads_done2_carry_n_0,
      CO(2) => reads_done2_carry_n_1,
      CO(1) => reads_done2_carry_n_2,
      CO(0) => reads_done2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => reads_done2_carry_i_1_n_0,
      S(2) => reads_done2_carry_i_2_n_0,
      S(1) => reads_done2_carry_i_3_n_0,
      S(0) => reads_done2_carry_i_4_n_0
    );
\reads_done2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => reads_done2_carry_n_0,
      CO(3) => \reads_done2_carry__0_n_0\,
      CO(2) => \reads_done2_carry__0_n_1\,
      CO(1) => \reads_done2_carry__0_n_2\,
      CO(0) => \reads_done2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_reads_done2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \reads_done2_carry__0_i_1_n_0\,
      S(2) => \reads_done2_carry__0_i_2_n_0\,
      S(1) => \reads_done2_carry__0_i_3_n_0\,
      S(0) => \reads_done2_carry__0_i_4_n_0\
    );
\reads_done2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \reads_done2_carry__0_i_1_n_0\
    );
\reads_done2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \reads_done2_carry__0_i_2_n_0\
    );
\reads_done2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \reads_done2_carry__0_i_3_n_0\
    );
\reads_done2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \reads_done2_carry__0_i_4_n_0\
    );
\reads_done2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reads_done2_carry__0_n_0\,
      CO(3) => \NLW_reads_done2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => reads_done2,
      CO(1) => \reads_done2_carry__1_n_2\,
      CO(0) => \reads_done2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_reads_done2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \reads_done2_carry__1_i_1_n_0\,
      S(1) => \reads_done2_carry__1_i_2_n_0\,
      S(0) => \reads_done2_carry__1_i_3_n_0\
    );
\reads_done2_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \reads_done2_carry__1_i_1_n_0\
    );
\reads_done2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \reads_done2_carry__1_i_2_n_0\
    );
\reads_done2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \reads_done2_carry__1_i_3_n_0\
    );
reads_done2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => reads_done2_carry_i_1_n_0
    );
reads_done2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2110000800022110"
    )
        port map (
      I0 => \read_index_reg__0\(6),
      I1 => \read_index_reg__0\(8),
      I2 => user_wr_burst_len(6),
      I3 => write_index1_carry_i_5_n_0,
      I4 => user_wr_burst_len(7),
      I5 => \read_index_reg__0\(7),
      O => reads_done2_carry_i_2_n_0
    );
reads_done2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => write_index1_carry_i_6_n_0,
      I1 => \read_index_reg__0\(3),
      I2 => \read_index_reg__0\(4),
      I3 => write_index1_carry_i_7_n_0,
      I4 => write_index1_carry_i_8_n_0,
      I5 => \read_index_reg__0\(5),
      O => reads_done2_carry_i_3_n_0
    );
reads_done2_carry_i_4: unisim.vcomponents.LUT6
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
      O => reads_done2_carry_i_4_n_0
    );
reads_done_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => reads_done,
      Q => reads_done_d1,
      R => '0'
    );
reads_done_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      I3 => \^master_full_axi_rready\,
      I4 => master_full_axi_rvalid,
      I5 => \read_burst_counter[0]_i_1_n_0\,
      O => reads_done_i_1_n_0
    );
reads_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_rd_len(15),
      I1 => read_burst_counter_reg(15),
      O => reads_done_i_4_n_0
    );
reads_done_i_5: unisim.vcomponents.LUT6
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
      O => reads_done_i_5_n_0
    );
reads_done_i_6: unisim.vcomponents.LUT6
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
      O => reads_done_i_6_n_0
    );
reads_done_i_7: unisim.vcomponents.LUT6
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
      O => reads_done_i_7_n_0
    );
reads_done_i_8: unisim.vcomponents.LUT6
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
      O => reads_done_i_8_n_0
    );
reads_done_i_9: unisim.vcomponents.LUT6
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
      O => reads_done_i_9_n_0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => reads_done_i_1_n_0,
      Q => reads_done,
      R => '0'
    );
reads_done_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => reads_done_reg_i_3_n_0,
      CO(3 downto 2) => NLW_reads_done_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => reads_done1,
      CO(0) => reads_done_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => reads_done_i_4_n_0,
      S(0) => reads_done_i_5_n_0
    );
reads_done_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => reads_done_reg_i_3_n_0,
      CO(2) => reads_done_reg_i_3_n_1,
      CO(1) => reads_done_reg_i_3_n_2,
      CO(0) => reads_done_reg_i_3_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_reads_done_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => reads_done_i_6_n_0,
      S(2) => reads_done_i_7_n_0,
      S(1) => reads_done_i_8_n_0,
      S(0) => reads_done_i_9_n_0
    );
start_single_burst_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F10"
    )
        port map (
      I0 => \^master_full_axi_arvalid\,
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
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => reads_done,
      I4 => \state_reg_n_0_[3]\,
      O => start_single_burst_read_i_2_n_0
    );
start_single_burst_read_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => start_single_burst_read_i_1_n_0,
      Q => start_single_burst_read,
      R => \state[3]_i_1_n_0\
    );
start_single_burst_write2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => start_single_burst_write2_carry_n_0,
      CO(2) => start_single_burst_write2_carry_n_1,
      CO(1) => start_single_burst_write2_carry_n_2,
      CO(0) => start_single_burst_write2_carry_n_3,
      CYINIT => '0',
      DI(3) => start_single_burst_write2_carry_i_1_n_0,
      DI(2) => start_single_burst_write2_carry_i_2_n_0,
      DI(1) => start_single_burst_write2_carry_i_3_n_0,
      DI(0) => start_single_burst_write2_carry_i_4_n_0,
      O(3 downto 0) => NLW_start_single_burst_write2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => start_single_burst_write2_carry_i_5_n_0,
      S(2) => start_single_burst_write2_carry_i_6_n_0,
      S(1) => start_single_burst_write2_carry_i_7_n_0,
      S(0) => start_single_burst_write2_carry_i_8_n_0
    );
\start_single_burst_write2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => start_single_burst_write2_carry_n_0,
      CO(3) => start_single_burst_write2,
      CO(2) => \start_single_burst_write2_carry__0_n_1\,
      CO(1) => \start_single_burst_write2_carry__0_n_2\,
      CO(0) => \start_single_burst_write2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \start_single_burst_write2_carry__0_i_1_n_0\,
      DI(2) => \start_single_burst_write2_carry__0_i_2_n_0\,
      DI(1) => \start_single_burst_write2_carry__0_i_3_n_0\,
      DI(0) => \start_single_burst_write2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_start_single_burst_write2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_single_burst_write2_carry__0_i_5_n_0\,
      S(2) => \start_single_burst_write2_carry__0_i_6_n_0\,
      S(1) => \start_single_burst_write2_carry__0_i_7_n_0\,
      S(0) => \start_single_burst_write2_carry__0_i_8_n_0\
    );
\start_single_burst_write2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(15),
      I1 => write_burst_counter_reg(15),
      I2 => user_wr_len(14),
      I3 => write_burst_counter_reg(14),
      O => \start_single_burst_write2_carry__0_i_1_n_0\
    );
\start_single_burst_write2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(13),
      I1 => write_burst_counter_reg(13),
      I2 => user_wr_len(12),
      I3 => write_burst_counter_reg(12),
      O => \start_single_burst_write2_carry__0_i_2_n_0\
    );
\start_single_burst_write2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(11),
      I1 => write_burst_counter_reg(11),
      I2 => user_wr_len(10),
      I3 => write_burst_counter_reg(10),
      O => \start_single_burst_write2_carry__0_i_3_n_0\
    );
\start_single_burst_write2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(9),
      I1 => write_burst_counter_reg(9),
      I2 => user_wr_len(8),
      I3 => write_burst_counter_reg(8),
      O => \start_single_burst_write2_carry__0_i_4_n_0\
    );
\start_single_burst_write2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => user_wr_len(14),
      I1 => write_burst_counter_reg(14),
      I2 => write_burst_counter_reg(15),
      I3 => user_wr_len(15),
      O => \start_single_burst_write2_carry__0_i_5_n_0\
    );
\start_single_burst_write2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_reg(12),
      I1 => user_wr_len(12),
      I2 => user_wr_len(13),
      I3 => write_burst_counter_reg(13),
      O => \start_single_burst_write2_carry__0_i_6_n_0\
    );
\start_single_burst_write2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_reg(10),
      I1 => user_wr_len(10),
      I2 => user_wr_len(11),
      I3 => write_burst_counter_reg(11),
      O => \start_single_burst_write2_carry__0_i_7_n_0\
    );
\start_single_burst_write2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => user_wr_len(9),
      I1 => write_burst_counter_reg(9),
      I2 => write_burst_counter_reg(8),
      I3 => user_wr_len(8),
      O => \start_single_burst_write2_carry__0_i_8_n_0\
    );
start_single_burst_write2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(7),
      I1 => write_burst_counter_reg(7),
      I2 => user_wr_len(6),
      I3 => write_burst_counter_reg(6),
      O => start_single_burst_write2_carry_i_1_n_0
    );
start_single_burst_write2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(5),
      I1 => write_burst_counter_reg(5),
      I2 => user_wr_len(4),
      I3 => write_burst_counter_reg(4),
      O => start_single_burst_write2_carry_i_2_n_0
    );
start_single_burst_write2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(3),
      I1 => write_burst_counter_reg(3),
      I2 => user_wr_len(2),
      I3 => write_burst_counter_reg(2),
      O => start_single_burst_write2_carry_i_3_n_0
    );
start_single_burst_write2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => user_wr_len(1),
      I1 => write_burst_counter_reg(1),
      I2 => user_wr_len(0),
      I3 => write_burst_counter_reg(0),
      O => start_single_burst_write2_carry_i_4_n_0
    );
start_single_burst_write2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_reg(6),
      I1 => user_wr_len(6),
      I2 => user_wr_len(7),
      I3 => write_burst_counter_reg(7),
      O => start_single_burst_write2_carry_i_5_n_0
    );
start_single_burst_write2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_reg(4),
      I1 => user_wr_len(4),
      I2 => user_wr_len(5),
      I3 => write_burst_counter_reg(5),
      O => start_single_burst_write2_carry_i_6_n_0
    );
start_single_burst_write2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => user_wr_len(3),
      I1 => write_burst_counter_reg(3),
      I2 => write_burst_counter_reg(2),
      I3 => user_wr_len(2),
      O => start_single_burst_write2_carry_i_7_n_0
    );
start_single_burst_write2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_counter_reg(0),
      I1 => user_wr_len(0),
      I2 => user_wr_len(1),
      I3 => write_burst_counter_reg(1),
      O => start_single_burst_write2_carry_i_8_n_0
    );
start_single_burst_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBFFFF08880000"
    )
        port map (
      I0 => start_single_burst_write0,
      I1 => start_single_burst_write_i_3_n_0,
      I2 => start_single_burst_write2,
      I3 => \^master_full_axi_wlast\,
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
      I1 => \^master_full_axi_awvalid\,
      I2 => burst_write_active,
      O => start_single_burst_write0
    );
start_single_burst_write_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => writes_done,
      O => start_single_burst_write_i_3_n_0
    );
start_single_burst_write_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      O => start_single_burst_write_i_4_n_0
    );
start_single_burst_write_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      I1 => \state_inferred__1/i__n_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => writes_done,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => user_rd_en,
      I2 => user_wr_en,
      I3 => reads_done,
      I4 => \state_reg_n_0_[3]\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => start_single_burst_write2,
      I2 => \^master_full_axi_wlast\,
      I3 => writes_done,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_inferred__1/i__n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => user_wr_satisfy,
      I2 => \state_inferred__1/i__n_0\,
      I3 => \state_reg_n_0_[0]\,
      I4 => user_wr_en,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70707070707070"
    )
        port map (
      I0 => start_single_burst_write2,
      I1 => \^master_full_axi_wlast\,
      I2 => \state[2]_i_2_n_0\,
      I3 => \state_inferred__1/i__n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => user_wr_satisfy,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => writes_done,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_inferred__1/i__n_0\,
      O => \state[2]_i_2_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => master_axi_aresetn,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20002000FF002000"
    )
        port map (
      I0 => user_rd_en,
      I1 => user_wr_en,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_inferred__1/i__n_0\,
      I4 => \state_reg_n_0_[3]\,
      I5 => reads_done,
      O => \state[3]_i_2_n_0\
    );
\state_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      O => \state_inferred__1/i__n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      S => \state[3]_i_1_n_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => \state[3]_i_1_n_0\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => \state[3]_i_1_n_0\
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => \state[3]_i_2_n_0\,
      Q => \state_reg_n_0_[3]\,
      R => \state[3]_i_1_n_0\
    );
user_rd_data_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^master_full_axi_wvalid\,
      I1 => master_full_axi_wready,
      O => user_rd_data_en
    );
\write_burst_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => master_full_axi_awready,
      I1 => \^master_full_axi_awvalid\,
      I2 => write_burst_counter0,
      O => write_burst_counter
    );
\write_burst_counter[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(13),
      I1 => user_wr_len(13),
      I2 => user_wr_len(14),
      I3 => write_burst_counter_reg(14),
      I4 => write_burst_counter_reg(12),
      I5 => user_wr_len(12),
      O => \write_burst_counter[0]_i_10_n_0\
    );
\write_burst_counter[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(11),
      I1 => user_wr_len(11),
      I2 => user_wr_len(10),
      I3 => write_burst_counter_reg(10),
      I4 => user_wr_len(9),
      I5 => write_burst_counter_reg(9),
      O => \write_burst_counter[0]_i_11_n_0\
    );
\write_burst_counter[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(7),
      I1 => user_wr_len(7),
      I2 => user_wr_len(8),
      I3 => write_burst_counter_reg(8),
      I4 => write_burst_counter_reg(6),
      I5 => user_wr_len(6),
      O => \write_burst_counter[0]_i_12_n_0\
    );
\write_burst_counter[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(5),
      I1 => user_wr_len(5),
      I2 => user_wr_len(4),
      I3 => write_burst_counter_reg(4),
      I4 => user_wr_len(3),
      I5 => write_burst_counter_reg(3),
      O => \write_burst_counter[0]_i_13_n_0\
    );
\write_burst_counter[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(1),
      I1 => user_wr_len(1),
      I2 => user_wr_len(2),
      I3 => write_burst_counter_reg(2),
      I4 => write_burst_counter_reg(0),
      I5 => user_wr_len(0),
      O => \write_burst_counter[0]_i_14_n_0\
    );
\write_burst_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(3),
      O => \write_burst_counter[0]_i_4_n_0\
    );
\write_burst_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(2),
      O => \write_burst_counter[0]_i_5_n_0\
    );
\write_burst_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(1),
      O => \write_burst_counter[0]_i_6_n_0\
    );
\write_burst_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_burst_counter_reg(0),
      O => \write_burst_counter[0]_i_7_n_0\
    );
\write_burst_counter[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_wr_len(15),
      I1 => write_burst_counter_reg(15),
      O => \write_burst_counter[0]_i_9_n_0\
    );
\write_burst_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(15),
      O => \write_burst_counter[12]_i_2_n_0\
    );
\write_burst_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(14),
      O => \write_burst_counter[12]_i_3_n_0\
    );
\write_burst_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(13),
      O => \write_burst_counter[12]_i_4_n_0\
    );
\write_burst_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(12),
      O => \write_burst_counter[12]_i_5_n_0\
    );
\write_burst_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(7),
      O => \write_burst_counter[4]_i_2_n_0\
    );
\write_burst_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(6),
      O => \write_burst_counter[4]_i_3_n_0\
    );
\write_burst_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(5),
      O => \write_burst_counter[4]_i_4_n_0\
    );
\write_burst_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(4),
      O => \write_burst_counter[4]_i_5_n_0\
    );
\write_burst_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(11),
      O => \write_burst_counter[8]_i_2_n_0\
    );
\write_burst_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(10),
      O => \write_burst_counter[8]_i_3_n_0\
    );
\write_burst_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(9),
      O => \write_burst_counter[8]_i_4_n_0\
    );
\write_burst_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_burst_counter_reg(8),
      O => \write_burst_counter[8]_i_5_n_0\
    );
\write_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[0]_i_2_n_7\,
      Q => write_burst_counter_reg(0),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[8]_i_1_n_5\,
      Q => write_burst_counter_reg(10),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[8]_i_1_n_4\,
      Q => write_burst_counter_reg(11),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[12]_i_1_n_7\,
      Q => write_burst_counter_reg(12),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[12]_i_1_n_6\,
      Q => write_burst_counter_reg(13),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[12]_i_1_n_5\,
      Q => write_burst_counter_reg(14),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[12]_i_1_n_4\,
      Q => write_burst_counter_reg(15),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[0]_i_2_n_6\,
      Q => write_burst_counter_reg(1),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[0]_i_2_n_5\,
      Q => write_burst_counter_reg(2),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[0]_i_2_n_4\,
      Q => write_burst_counter_reg(3),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[4]_i_1_n_7\,
      Q => write_burst_counter_reg(4),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[4]_i_1_n_6\,
      Q => write_burst_counter_reg(5),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[4]_i_1_n_5\,
      Q => write_burst_counter_reg(6),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[4]_i_1_n_4\,
      Q => write_burst_counter_reg(7),
      R => axi_awvalid_i_1_n_0
    );
\write_burst_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[8]_i_1_n_7\,
      Q => write_burst_counter_reg(8),
      R => axi_awvalid_i_1_n_0
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
      C => master_axi_aclk,
      CE => write_burst_counter,
      D => \write_burst_counter_reg[8]_i_1_n_6\,
      Q => write_burst_counter_reg(9),
      R => axi_awvalid_i_1_n_0
    );
write_index1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => write_index1_carry_n_0,
      CO(2) => write_index1_carry_n_1,
      CO(1) => write_index1_carry_n_2,
      CO(0) => write_index1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_write_index1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => write_index1_carry_i_1_n_0,
      S(2) => write_index1_carry_i_2_n_0,
      S(1) => write_index1_carry_i_3_n_0,
      S(0) => write_index1_carry_i_4_n_0
    );
\write_index1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => write_index1_carry_n_0,
      CO(3) => \write_index1_carry__0_n_0\,
      CO(2) => \write_index1_carry__0_n_1\,
      CO(1) => \write_index1_carry__0_n_2\,
      CO(0) => \write_index1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_write_index1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_index1_carry__0_i_1_n_0\,
      S(2) => \write_index1_carry__0_i_2_n_0\,
      S(1) => \write_index1_carry__0_i_3_n_0\,
      S(0) => \write_index1_carry__0_i_4_n_0\
    );
\write_index1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index1_carry__0_i_1_n_0\
    );
\write_index1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index1_carry__0_i_2_n_0\
    );
\write_index1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index1_carry__0_i_3_n_0\
    );
\write_index1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index1_carry__0_i_4_n_0\
    );
\write_index1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_index1_carry__0_n_0\,
      CO(3) => \NLW_write_index1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => write_index1,
      CO(1) => \write_index1_carry__1_n_2\,
      CO(0) => \write_index1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_write_index1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \write_index1_carry__1_i_1_n_0\,
      S(1) => \write_index1_carry__1_i_2_n_0\,
      S(0) => \write_index1_carry__1_i_3_n_0\
    );
\write_index1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index1_carry__1_i_1_n_0\
    );
\write_index1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index1_carry__1_i_2_n_0\
    );
\write_index1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => \write_index1_carry__1_i_3_n_0\
    );
write_index1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(7),
      I2 => user_wr_burst_len(5),
      I3 => user_wr_burst_len(0),
      I4 => \^axi_wlast_reg_0\,
      I5 => user_wr_burst_len(4),
      O => write_index1_carry_i_1_n_0
    );
write_index1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2010100202010180"
    )
        port map (
      I0 => \write_index_reg__0\(6),
      I1 => \write_index_reg__0\(8),
      I2 => \write_index_reg__0\(7),
      I3 => user_wr_burst_len(6),
      I4 => write_index1_carry_i_5_n_0,
      I5 => user_wr_burst_len(7),
      O => write_index1_carry_i_2_n_0
    );
write_index1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => write_index1_carry_i_6_n_0,
      I1 => \write_index_reg__0\(3),
      I2 => write_index1_carry_i_7_n_0,
      I3 => \write_index_reg__0\(4),
      I4 => \write_index_reg__0\(5),
      I5 => write_index1_carry_i_8_n_0,
      O => write_index1_carry_i_3_n_0
    );
write_index1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010200804010280"
    )
        port map (
      I0 => \write_index_reg__0\(0),
      I1 => \write_index_reg__0\(1),
      I2 => \write_index_reg__0\(2),
      I3 => user_wr_burst_len(1),
      I4 => user_wr_burst_len(0),
      I5 => user_wr_burst_len(2),
      O => write_index1_carry_i_4_n_0
    );
write_index1_carry_i_5: unisim.vcomponents.LUT6
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
      O => write_index1_carry_i_5_n_0
    );
write_index1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => user_wr_burst_len(0),
      I1 => user_wr_burst_len(2),
      I2 => user_wr_burst_len(1),
      I3 => user_wr_burst_len(3),
      O => write_index1_carry_i_6_n_0
    );
write_index1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => user_wr_burst_len(0),
      I1 => user_wr_burst_len(1),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(3),
      I4 => user_wr_burst_len(4),
      O => write_index1_carry_i_7_n_0
    );
write_index1_carry_i_8: unisim.vcomponents.LUT6
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
      O => write_index1_carry_i_8_n_0
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_index_reg__0\(0),
      O => p_0_in(0)
    );
\write_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \write_index_reg__0\(0),
      I1 => \write_index_reg__0\(1),
      O => p_0_in(1)
    );
\write_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \write_index_reg__0\(0),
      I1 => \write_index_reg__0\(1),
      I2 => \write_index_reg__0\(2),
      O => p_0_in(2)
    );
\write_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \write_index_reg__0\(2),
      I1 => \write_index_reg__0\(1),
      I2 => \write_index_reg__0\(0),
      I3 => \write_index_reg__0\(3),
      O => p_0_in(3)
    );
\write_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \write_index_reg__0\(3),
      I1 => \write_index_reg__0\(0),
      I2 => \write_index_reg__0\(1),
      I3 => \write_index_reg__0\(2),
      I4 => \write_index_reg__0\(4),
      O => p_0_in(4)
    );
\write_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \write_index_reg__0\(2),
      I1 => \write_index_reg__0\(1),
      I2 => \write_index_reg__0\(0),
      I3 => \write_index_reg__0\(3),
      I4 => \write_index_reg__0\(4),
      I5 => \write_index_reg__0\(5),
      O => p_0_in(5)
    );
\write_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \write_index[8]_i_4_n_0\,
      I1 => \write_index_reg__0\(6),
      O => p_0_in(6)
    );
\write_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \write_index_reg__0\(6),
      I1 => \write_index[8]_i_4_n_0\,
      I2 => \write_index_reg__0\(7),
      O => p_0_in(7)
    );
\write_index[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => master_axi_aresetn,
      I1 => user_wr_en,
      I2 => start_single_burst_write,
      O => \write_index[8]_i_1_n_0\
    );
\write_index[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => master_full_axi_wready,
      I1 => \^master_full_axi_wvalid\,
      I2 => write_index1,
      O => write_index0
    );
\write_index[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \write_index_reg__0\(7),
      I1 => \write_index[8]_i_4_n_0\,
      I2 => \write_index_reg__0\(6),
      I3 => \write_index_reg__0\(8),
      O => p_0_in(8)
    );
\write_index[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \write_index_reg__0\(5),
      I1 => \write_index_reg__0\(2),
      I2 => \write_index_reg__0\(1),
      I3 => \write_index_reg__0\(0),
      I4 => \write_index_reg__0\(3),
      I5 => \write_index_reg__0\(4),
      O => \write_index[8]_i_4_n_0\
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(0),
      Q => \write_index_reg__0\(0),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(1),
      Q => \write_index_reg__0\(1),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(2),
      Q => \write_index_reg__0\(2),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(3),
      Q => \write_index_reg__0\(3),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(4),
      Q => \write_index_reg__0\(4),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(5),
      Q => \write_index_reg__0\(5),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(6),
      Q => \write_index_reg__0\(6),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(7),
      Q => \write_index_reg__0\(7),
      R => \write_index[8]_i_1_n_0\
    );
\write_index_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => write_index0,
      D => p_0_in(8),
      Q => \write_index_reg__0\(8),
      R => \write_index[8]_i_1_n_0\
    );
writes_done_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => writes_done,
      Q => writes_done_d1,
      R => '0'
    );
writes_done_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
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
      I0 => writes_done2,
      I1 => \^master_full_axi_bready\,
      I2 => master_full_axi_bvalid,
      I3 => writes_done,
      O => writes_done_i_1_n_0
    );
writes_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_wr_len(15),
      I1 => write_burst_counter_reg(15),
      O => writes_done_i_4_n_0
    );
writes_done_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(13),
      I1 => user_wr_len(13),
      I2 => user_wr_len(14),
      I3 => write_burst_counter_reg(14),
      I4 => write_burst_counter_reg(12),
      I5 => user_wr_len(12),
      O => writes_done_i_5_n_0
    );
writes_done_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(11),
      I1 => user_wr_len(11),
      I2 => user_wr_len(10),
      I3 => write_burst_counter_reg(10),
      I4 => user_wr_len(9),
      I5 => write_burst_counter_reg(9),
      O => writes_done_i_6_n_0
    );
writes_done_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(7),
      I1 => user_wr_len(7),
      I2 => user_wr_len(8),
      I3 => write_burst_counter_reg(8),
      I4 => write_burst_counter_reg(6),
      I5 => user_wr_len(6),
      O => writes_done_i_7_n_0
    );
writes_done_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(5),
      I1 => user_wr_len(5),
      I2 => user_wr_len(4),
      I3 => write_burst_counter_reg(4),
      I4 => user_wr_len(3),
      I5 => write_burst_counter_reg(3),
      O => writes_done_i_8_n_0
    );
writes_done_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_burst_counter_reg(1),
      I1 => user_wr_len(1),
      I2 => user_wr_len(2),
      I3 => write_burst_counter_reg(2),
      I4 => write_burst_counter_reg(0),
      I5 => user_wr_len(0),
      O => writes_done_i_9_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => master_axi_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => axi_awvalid_i_1_n_0
    );
writes_done_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => writes_done_reg_i_3_n_0,
      CO(3 downto 2) => NLW_writes_done_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => writes_done2,
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
    master_full_axi_bready : out STD_LOGIC;
    master_full_axi_awaddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    master_full_axi_araddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    master_full_axi_wlast : out STD_LOGIC;
    master_full_axi_awvalid : out STD_LOGIC;
    master_full_axi_rready : out STD_LOGIC;
    master_full_axi_arvalid : out STD_LOGIC;
    master_full_axi_wvalid : out STD_LOGIC;
    user_rd_data_en : out STD_LOGIC;
    read_data_val : out STD_LOGIC;
    axi_wlast_reg : out STD_LOGIC;
    \read_index_reg[0]\ : out STD_LOGIC;
    master_axi_txn_done : out STD_LOGIC_VECTOR ( 1 downto 0 );
    master_axi_aclk : in STD_LOGIC;
    user_wr_base_addr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    user_rd_base_addr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    master_axi_aresetn : in STD_LOGIC;
    user_wr_en : in STD_LOGIC;
    master_full_axi_wready : in STD_LOGIC;
    master_full_axi_awready : in STD_LOGIC;
    user_rd_en : in STD_LOGIC;
    master_full_axi_rvalid : in STD_LOGIC;
    master_full_axi_arready : in STD_LOGIC;
    user_wr_burst_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    user_wr_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_rd_burst_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    user_wr_satisfy : in STD_LOGIC;
    user_rd_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    master_full_axi_bvalid : in STD_LOGIC;
    master_full_axi_rlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0 is
begin
MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI
     port map (
      axi_wlast_reg_0 => axi_wlast_reg,
      master_axi_aclk => master_axi_aclk,
      master_axi_aresetn => master_axi_aresetn,
      master_axi_txn_done(1 downto 0) => master_axi_txn_done(1 downto 0),
      master_full_axi_araddr(30 downto 0) => master_full_axi_araddr(30 downto 0),
      master_full_axi_arready => master_full_axi_arready,
      master_full_axi_arvalid => master_full_axi_arvalid,
      master_full_axi_awaddr(30 downto 0) => master_full_axi_awaddr(30 downto 0),
      master_full_axi_awready => master_full_axi_awready,
      master_full_axi_awvalid => master_full_axi_awvalid,
      master_full_axi_bready => master_full_axi_bready,
      master_full_axi_bvalid => master_full_axi_bvalid,
      master_full_axi_rlast => master_full_axi_rlast,
      master_full_axi_rready => master_full_axi_rready,
      master_full_axi_rvalid => master_full_axi_rvalid,
      master_full_axi_wlast => master_full_axi_wlast,
      master_full_axi_wready => master_full_axi_wready,
      master_full_axi_wvalid => master_full_axi_wvalid,
      read_data_val => read_data_val,
      \read_index_reg[0]_0\ => \read_index_reg[0]\,
      user_rd_base_addr(30 downto 0) => user_rd_base_addr(30 downto 0),
      user_rd_burst_len(7 downto 0) => user_rd_burst_len(7 downto 0),
      user_rd_data_en => user_rd_data_en,
      user_rd_en => user_rd_en,
      user_rd_len(15 downto 0) => user_rd_len(15 downto 0),
      user_wr_base_addr(30 downto 0) => user_wr_base_addr(30 downto 0),
      user_wr_burst_len(7 downto 0) => user_wr_burst_len(7 downto 0),
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
    master_wr_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    master_rd_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal inst_n_70 : STD_LOGIC;
  signal inst_n_71 : STD_LOGIC;
  signal \^master_full_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^master_full_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^master_full_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^user_rd_base_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^user_wr_base_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^user_wr_data_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^master_full_axi_rdata\(31 downto 0) <= master_full_axi_rdata(31 downto 0);
  \^user_rd_base_addr\(31 downto 0) <= user_rd_base_addr(31 downto 0);
  \^user_wr_base_addr\(31 downto 0) <= user_wr_base_addr(31 downto 0);
  \^user_wr_data_in\(31 downto 0) <= user_wr_data_in(31 downto 0);
  master_axi_error <= \<const0>\;
  master_full_axi_araddr(31 downto 1) <= \^master_full_axi_araddr\(31 downto 1);
  master_full_axi_araddr(0) <= \^user_rd_base_addr\(0);
  master_full_axi_arburst(1) <= \<const0>\;
  master_full_axi_arburst(0) <= \<const1>\;
  master_full_axi_arcache(3) <= \<const0>\;
  master_full_axi_arcache(2) <= \<const0>\;
  master_full_axi_arcache(1) <= \<const1>\;
  master_full_axi_arcache(0) <= \<const0>\;
  master_full_axi_arid(0) <= \<const0>\;
  master_full_axi_arlock <= \<const0>\;
  master_full_axi_arprot(2) <= \<const0>\;
  master_full_axi_arprot(1) <= \<const0>\;
  master_full_axi_arprot(0) <= \<const0>\;
  master_full_axi_arqos(3) <= \<const0>\;
  master_full_axi_arqos(2) <= \<const0>\;
  master_full_axi_arqos(1) <= \<const0>\;
  master_full_axi_arqos(0) <= \<const0>\;
  master_full_axi_arsize(2) <= \<const0>\;
  master_full_axi_arsize(1) <= \<const1>\;
  master_full_axi_arsize(0) <= \<const0>\;
  master_full_axi_aruser(0) <= \<const1>\;
  master_full_axi_awaddr(31 downto 1) <= \^master_full_axi_awaddr\(31 downto 1);
  master_full_axi_awaddr(0) <= \^user_wr_base_addr\(0);
  master_full_axi_awburst(1) <= \<const0>\;
  master_full_axi_awburst(0) <= \<const1>\;
  master_full_axi_awcache(3) <= \<const0>\;
  master_full_axi_awcache(2) <= \<const0>\;
  master_full_axi_awcache(1) <= \<const1>\;
  master_full_axi_awcache(0) <= \<const0>\;
  master_full_axi_awid(0) <= \<const0>\;
  master_full_axi_awlock <= \<const0>\;
  master_full_axi_awprot(2) <= \<const0>\;
  master_full_axi_awprot(1) <= \<const0>\;
  master_full_axi_awprot(0) <= \<const0>\;
  master_full_axi_awqos(3) <= \<const0>\;
  master_full_axi_awqos(2) <= \<const0>\;
  master_full_axi_awqos(1) <= \<const0>\;
  master_full_axi_awqos(0) <= \<const0>\;
  master_full_axi_awsize(2) <= \<const0>\;
  master_full_axi_awsize(1) <= \<const1>\;
  master_full_axi_awsize(0) <= \<const0>\;
  master_full_axi_awuser(0) <= \<const1>\;
  master_full_axi_wdata(31 downto 0) <= \^user_wr_data_in\(31 downto 0);
  master_full_axi_wstrb(3) <= \<const1>\;
  master_full_axi_wstrb(2) <= \<const1>\;
  master_full_axi_wstrb(1) <= \<const1>\;
  master_full_axi_wstrb(0) <= \<const1>\;
  master_full_axi_wuser(0) <= \<const0>\;
  master_rd_addr(31 downto 1) <= \^master_full_axi_araddr\(31 downto 1);
  master_rd_addr(0) <= \^user_rd_base_addr\(0);
  master_wr_addr(31 downto 1) <= \^master_full_axi_awaddr\(31 downto 1);
  master_wr_addr(0) <= \^user_wr_base_addr\(0);
  read_data_out(31 downto 0) <= \^master_full_axi_rdata\(31 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MY_AXI_MASTER_FULL_ip_v1_0
     port map (
      axi_wlast_reg => inst_n_70,
      master_axi_aclk => master_axi_aclk,
      master_axi_aresetn => master_axi_aresetn,
      master_axi_txn_done(1 downto 0) => master_axi_txn_done(1 downto 0),
      master_full_axi_araddr(30 downto 0) => \^master_full_axi_araddr\(31 downto 1),
      master_full_axi_arready => master_full_axi_arready,
      master_full_axi_arvalid => master_full_axi_arvalid,
      master_full_axi_awaddr(30 downto 0) => \^master_full_axi_awaddr\(31 downto 1),
      master_full_axi_awready => master_full_axi_awready,
      master_full_axi_awvalid => master_full_axi_awvalid,
      master_full_axi_bready => master_full_axi_bready,
      master_full_axi_bvalid => master_full_axi_bvalid,
      master_full_axi_rlast => master_full_axi_rlast,
      master_full_axi_rready => master_full_axi_rready,
      master_full_axi_rvalid => master_full_axi_rvalid,
      master_full_axi_wlast => master_full_axi_wlast,
      master_full_axi_wready => master_full_axi_wready,
      master_full_axi_wvalid => master_full_axi_wvalid,
      read_data_val => read_data_val,
      \read_index_reg[0]\ => inst_n_71,
      user_rd_base_addr(30 downto 0) => \^user_rd_base_addr\(31 downto 1),
      user_rd_burst_len(7 downto 0) => user_rd_burst_len(7 downto 0),
      user_rd_data_en => user_rd_data_en,
      user_rd_en => user_rd_en,
      user_rd_len(15 downto 0) => user_rd_len(15 downto 0),
      user_wr_base_addr(30 downto 0) => \^user_wr_base_addr\(31 downto 1),
      user_wr_burst_len(7 downto 0) => user_wr_burst_len(7 downto 0),
      user_wr_en => user_wr_en,
      user_wr_len(15 downto 0) => user_wr_len(15 downto 0),
      user_wr_satisfy => user_wr_satisfy
    );
\master_full_axi_arlen[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => user_rd_burst_len(0),
      O => master_full_axi_arlen(0)
    );
\master_full_axi_arlen[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_rd_burst_len(1),
      I1 => user_rd_burst_len(0),
      O => master_full_axi_arlen(1)
    );
\master_full_axi_arlen[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => user_rd_burst_len(2),
      I1 => user_rd_burst_len(0),
      I2 => user_rd_burst_len(1),
      O => master_full_axi_arlen(2)
    );
\master_full_axi_arlen[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => user_rd_burst_len(3),
      I1 => user_rd_burst_len(1),
      I2 => user_rd_burst_len(0),
      I3 => user_rd_burst_len(2),
      O => master_full_axi_arlen(3)
    );
\master_full_axi_arlen[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_rd_burst_len(4),
      I1 => user_rd_burst_len(2),
      I2 => user_rd_burst_len(0),
      I3 => user_rd_burst_len(1),
      I4 => user_rd_burst_len(3),
      O => master_full_axi_arlen(4)
    );
\master_full_axi_arlen[5]_INST_0\: unisim.vcomponents.LUT6
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
      O => master_full_axi_arlen(5)
    );
\master_full_axi_arlen[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_rd_burst_len(6),
      I1 => user_rd_burst_len(4),
      I2 => inst_n_71,
      I3 => user_rd_burst_len(3),
      I4 => user_rd_burst_len(5),
      O => master_full_axi_arlen(6)
    );
\master_full_axi_arlen[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => user_rd_burst_len(7),
      I1 => user_rd_burst_len(5),
      I2 => user_rd_burst_len(3),
      I3 => inst_n_71,
      I4 => user_rd_burst_len(4),
      I5 => user_rd_burst_len(6),
      O => master_full_axi_arlen(7)
    );
\master_full_axi_awlen[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => user_wr_burst_len(0),
      O => master_full_axi_awlen(0)
    );
\master_full_axi_awlen[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => user_wr_burst_len(1),
      I1 => user_wr_burst_len(0),
      O => master_full_axi_awlen(1)
    );
\master_full_axi_awlen[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => user_wr_burst_len(2),
      I1 => user_wr_burst_len(0),
      I2 => user_wr_burst_len(1),
      O => master_full_axi_awlen(2)
    );
\master_full_axi_awlen[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => user_wr_burst_len(3),
      I1 => user_wr_burst_len(1),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(0),
      O => master_full_axi_awlen(3)
    );
\master_full_axi_awlen[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_wr_burst_len(4),
      I1 => user_wr_burst_len(3),
      I2 => user_wr_burst_len(2),
      I3 => user_wr_burst_len(1),
      I4 => user_wr_burst_len(0),
      O => master_full_axi_awlen(4)
    );
\master_full_axi_awlen[5]_INST_0\: unisim.vcomponents.LUT6
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
      O => master_full_axi_awlen(5)
    );
\master_full_axi_awlen[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => user_wr_burst_len(6),
      I1 => user_wr_burst_len(4),
      I2 => inst_n_70,
      I3 => user_wr_burst_len(0),
      I4 => user_wr_burst_len(5),
      O => master_full_axi_awlen(6)
    );
\master_full_axi_awlen[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => user_wr_burst_len(7),
      I1 => user_wr_burst_len(5),
      I2 => user_wr_burst_len(0),
      I3 => inst_n_70,
      I4 => user_wr_burst_len(4),
      I5 => user_wr_burst_len(6),
      O => master_full_axi_awlen(7)
    );
end STRUCTURE;
