// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Nov 17 16:57:05 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/Effective_add_ip/Effective_add_ip_stub.v
// Design      : Effective_add_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *)
module Effective_add_ip(A, B, CLK, SCLR, S)
/* synthesis syn_black_box black_box_pad_pin="A[43:0],B[43:0],CLK,SCLR,S[43:0]" */;
  input [43:0]A;
  input [43:0]B;
  input CLK;
  input SCLR;
  output [43:0]S;
endmodule