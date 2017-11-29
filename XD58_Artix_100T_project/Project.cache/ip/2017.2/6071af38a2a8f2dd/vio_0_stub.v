// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Nov 16 14:54:53 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe_out0, probe_out1, probe_out2, 
  probe_out3, probe_out4, probe_out5, probe_out6, probe_out7, probe_out8, probe_out9, 
  probe_out10, probe_out11)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[15:0],probe_out1[15:0],probe_out2[0:0],probe_out3[15:0],probe_out4[0:0],probe_out5[0:0],probe_out6[7:0],probe_out7[15:0],probe_out8[15:0],probe_out9[0:0],probe_out10[0:0],probe_out11[0:0]" */;
  input clk;
  output [15:0]probe_out0;
  output [15:0]probe_out1;
  output [0:0]probe_out2;
  output [15:0]probe_out3;
  output [0:0]probe_out4;
  output [0:0]probe_out5;
  output [7:0]probe_out6;
  output [15:0]probe_out7;
  output [15:0]probe_out8;
  output [0:0]probe_out9;
  output [0:0]probe_out10;
  output [0:0]probe_out11;
endmodule
