// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Nov 17 16:57:05 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/Effective_add_ip/Effective_add_ip_sim_netlist.v
// Design      : Effective_add_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Effective_add_ip,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module Effective_add_ip
   (A,
    B,
    CLK,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [43:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [43:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [43:0]S;

  wire [43:0]A;
  wire [43:0]B;
  wire CLK;
  wire [43:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "44" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000000000000000" *) 
  (* c_b_width = "44" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "44" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Effective_add_ip_c_addsub_v12_0_10 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "44" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000000000000000" *) 
(* C_B_WIDTH = "44" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "44" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Effective_add_ip_c_addsub_v12_0_10
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [43:0]A;
  input [43:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [43:0]S;

  wire \<const0> ;
  wire [43:0]A;
  wire [43:0]B;
  wire CLK;
  wire [43:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "44" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000000000000000" *) 
  (* c_b_width = "44" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "44" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Effective_add_ip_c_addsub_v12_0_10_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
l1NG3g81+vM8a/OECNXckQ6Ih+534PcHu9If3GBzfNiHrQt4ZqWyOCmUfR9HBrKJ6dazleZpBLLQ
VkjiEZOvOw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z0LH98ijrG2zSKQ428sLNLNN8LOYW53zGTr9NWQ16ZrFJS/8H+Sypz2sLY7sCYpj+gN48UB+J20x
PvOEIxFZVPZNmhrcvIxztIiTduaVtyypOS3Jx8r3YE6fOwVJrfZ9eXRQUIdKvbN0bVZFUcjZ2HOu
2IHyG/UIDoelWrgO0GY=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QNC1y7mnDIW3BeoEUG5xtIOyuA9VVC6sNeWDOT6S5qoB4e5s9LHwLIGpByH8Fz0PGaafc2Pp1LqC
lzXnevLntdeO+Pz1NMCI4Ojicg8oWhR3msMyGBNzheYZMtUoYnT2zC0eafrxC+G2D8yNbUPHtf++
Y0MP0FYlKg8jJhDSX3w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRemsiwW6AApgQWC90BqiBlMFD2jEWM37Ph/oR3/T151pMQpEWD3gu3SGbUebLL6tc97cE/PgSCy
KS0n/kkTjP8yz3D6tbz01kj9QAWvzzWfukcjy4U1p/TuuIIUFcvoH/P+MznfeFrHL11ZwDgOg40p
h2VhrJPIbdfbr6mfhPFTBuWKYDGmQfgZeWyn7BSTLS+wvNUS+AvTJnaPj6O9Szcq/v+sphPqX1F0
wfrQOmRJVSa2EfFZxZ1m3+2NmDfYPFsxF203jiTh4pJ8JuezHfzsaK6jbmB9h7QKD6yMUsYRx/O3
idyz3Inko4ZzfMIyZuEPWm6TSA5xk5DeltwcSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSXl52RB2cLbPW8z4SvG8lZpaZT78HIOf6Q3fEiSBBQziVQn5oJPSJW8PdmH2pB/aVZpPeDnm2a
hpp7ddkUsyA+NHykeuxUJfwhWYhyemZLGnSdZXVpbaOhu0TLJiOtAVsDmRdPFs7q6CpwvvPImbuY
YK29r9Mw8w6ATmDgWgWs+wefEAeKjvUWKQmUr9SKi88H0j+hCCdtMoYZnO8+mjtjWlqm6U7NqCPr
K58IyvSojGlh7czWW8xHzOdgUBj872QexFBFCXAZ3caYI+I5tgzbPak7R4g1nHKG2e2HAjefrx2S
bXb3PhWqaTkKbnVCol5mWJuxPclCBxrEtqSjug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cz5g65hbB8shmQPsohjzVr+SPRr5lrGQqqziYjnrsCWqDM27xVRVWn5/2voSXHOso9pm8+P7GN+L
Mz6Nn/qXS+pi/muryE2WEZ1r1ya1OKX8h7vIWuyvbtfcgSkvPQb+oNRpZXNONTBmmBFus8k0rin2
VJPxBV5qCpoPGWDVS1QCTJ852TyqzdEMM2h/x7mD8lHifZIkjoWi+O8HkWSf1j2JrYg2fikk0O71
heaF0CkbjGmy7ezg8wpLUywMgWUhCjFFanO1rqzaTEvWYxCjx+FFJRXRyfP3qUeBqMaTvZsGSDDl
/9EG0TehdoOmg4VPXawJiGfiqr2sBbg7f0zlow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
hO6wZ2sTaRt4IRevGzNRxQM2shtnyC4DOr5rLCqd81Yf780t17jZB9XLudjcoOVOgSo7B/GR/FJL
hwaOgEYxygdOnX27NWYduMka9jbnF8tQxyQo7aRBcZ8GPufcVvxpL9+UaDvfot5KJg9I17KP8d+h
ulmtKi/yE8Bv6H8MzuZlgo5LIyvjsE0c40hEnRZf8z1INmT066gYkAJePaho/GljCPvQLzWWR+2Y
YmvwqNFvH5PxkDHtyslnOuL2MWKj9M547W1xa67ecrKdsfVQkX7f7vQAwUJgVlXC7+NDPznruLXo
BcRm+TU77VmthQPMnzqDo+NUBeu5rFVxfSI4xA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
l/j4BMI10m+wj/8iWdzYZfi8tqLA/3dh69x5skTLJsBOslRk/Rk6BXn0BTvKXvRXhrKiVxVBl9hr
SG7xhnVZ+iH7Cng0KGDT3gjGHt8Xf7VBLkj2ScZ9QWgMDhfIAQPtZM2eCrKAwBWQaeXqM842/Xfi
NM7vkkK3Pws2MwaMK0rxBjm3j8Z9VDi6Otih/cYzbc7/k6+BNF1nYOolps4+kEOo7K/7pdlS095A
gXZ2TOUHxd+C6v5eUXK2ZCRpdHRoe9rCdE3oYHQtIF9Dd+5LnthZV9rQIT5f2AcvxZ7Gyu9nb2ai
j1w7uHbtzFQynasxf7BagaHNGEFSZP7J8ZO28A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30848)
`pragma protect data_block
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
I9SC9RHL/rSmEZo=
`pragma protect end_protected
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
