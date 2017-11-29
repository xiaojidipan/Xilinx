-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Fri Nov 17 16:57:05 2017
-- Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/Effective_add_ip/Effective_add_ip_stub.vhdl
-- Design      : Effective_add_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Effective_add_ip is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 43 downto 0 );
    B : in STD_LOGIC_VECTOR ( 43 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 43 downto 0 )
  );

end Effective_add_ip;

architecture stub of Effective_add_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[43:0],B[43:0],CLK,SCLR,S[43:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_10,Vivado 2017.2";
begin
end;
