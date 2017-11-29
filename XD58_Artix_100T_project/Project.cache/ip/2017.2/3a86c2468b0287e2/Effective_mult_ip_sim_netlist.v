// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Nov 17 16:45:32 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Effective_mult_ip_sim_netlist.v
// Design      : Effective_mult_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Effective_mult_ip,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
lEAWhwyix5jBGG66vdOS8nJpVNdFrJkI8qYgE8UK5+7avncLp8v54uPGoRWR36jLWh6ehDkiSjec
BS6Kf+NkuQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pIREr1/dqaPvd4j2lTxOBSnAy2Ra6DuJsnP63kEHv0IS6up5E7T2izznuVUSTCTOb47ap4dcNzFs
VunReb3wPh7pLPeb7xw5iV9uBkd/TpxZM73yc3k1Rpf+4J2IVlTVOAQ5OEjaorVixNlt8NiWGqzH
R/d96oqeazauoI3oOnQ=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DELvK5o++4pE4MCoxr5fui0H5JI8L1lrkSphbogK2GjTRYuCaX9esyobvkVAA3D3d9tJqaP3hGDO
abwxN4b4ezNtusv1gy6cglGx/GN3jUuKSbgskyfUxDvL7LrGyqNFVNMUu2E9m+BfM4Ntpn0n9FIV
ziDzomLe9jJOEfua5U0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V5WVwaxzoZCaNjBtQkebL2emEOYwtLrt2YC/Nhjv+maBGQv/B4iXQaCQdVt72XysdOqpG+W7acY4
LQoDKOXjpn3NnQIeXe5yNHpeBxy0UeQS9x3LKwyD7PTy2e6Psu8FyrhI0YZfF7izMLFdHz6hGOSF
AIMgUa/N0UmNtXEjM3DkfZLqoYQAht0o6JFtiqajvc59tPsvMZCCtiKwhXu7PlN11ghLauG7TulD
K2KfLDkX0cfwDA2TPyp16kT6EIfZoCRnafITvpKhHXZv+NQc+XN9PbcRpp9BOAC79WhsNkBBXYhL
PABV65LzYa8+x5tqKdf3v0X46IAMWJ1e3wS5UA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U33OFhvyDr6TZQknmG9CiJblHCnuyjNFktguLuIFzd/VYuPGNPUXzm3pNVHAmifAJrPB2CT7TAF6
SpBdgM2KIeON3LRhsrRAbVtPF8PLeYtYTgU5BOY8SIKKoSu1FY2Gr1zMrTO/nd+RiZegYkT/1u27
xI0aTCkoWlFt3amFg2MasqdnOSk77Lt/DgM2JPd9muhj3QoSr10ZjlsDKpO31B9RZyxGfIMIft8A
zXeFtxJQH+1UZmzli9TNedfnlc4Etx1ofsn10PXyAOJjpszIhUCVPKZIY14gmxL8f+2bLkbtbsCM
BVqE9L8J6oKTduRVz5WGnDuPWMDwM24T9TA/dA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j6YL/khcx2/CEaOFv1YeHhnfPBfzoLLf3YocgJW2UWv3fiNKR3/XVXrjS7WsQlB+PoA6wradLkll
gsCEiQrgYuwxUEkrZPREX1CG/XJwUl9PKDBg75CevIh9+3qKHJGSxr9GydBxI8A2Bl+6FCqWp+ji
fmjdmpZhDdGqO9F7NIOUIknT0jWHS4jX/6J6w3BhZ/5VtUKxAeh4CNotWM+2fGo67UsEmFovMSdb
AWdoeaA+uo+Nh0kX6bc0yzej6R0ECeV3uzW4Gr9HgZtmqiZ4XMox/30Qmatsy8mCmeKd4pCcCVaP
xJ2QjwO5By08VArjkqF+F5MjSBTB2AgEgKQm4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
drl9RUGjP+CINy1ecZTEPpphKOUSiZfpl6T4hC1aOiLYX5k2ag+AayZvlHcKx9CK5EbaIdeyqHJk
BQqM5xu5gsf050cm4rq71d6VM9+GybyzoItFBvZe+0uxQ5t8foXgUSvrYgQCjEetLKG//+cFBZpf
SWHObDvftxhvPo4/v6DIOfXSyZkgOw0S0ZGlmL05qifmwtYiuouAoxTf27stjoza6Yt3kXD5xsFX
vcaTV4AIdxy51V4X3amfrIqZnNj7RP9BMJ3mYijeeDMS7NrBrKaCVeqQxGI4aURkPuksKG5tRk31
wBdGDU2Xuhy+5vI8+DjCRtKzz0xJQu0yVhsUSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
WraW1wYOcpdONMggy5G6C0AAxcKNlooG3XOZ+re4Pg4zTjv12Brsm8Jze5ifNsFXWn/nO/TwKlyj
oYFUBiBgveKM3gMv/9wwTRUA+gQZgJYmFl3mW9tPLcWr41RPIiV9gXW54omuyE+n5dMwaM778S0k
zr/eZSvzJBo/xzkRXfAhiSh5YeGTmK27fBFDrfxafDYQQ1o7D2lFj0QGewkxMVkeJ1qljAFWkcnO
qooTo9jyApPKnhG9QsVv17KqpGipMbHWaspgQ9IeOgWKYioZki3Ey68YPn7IwdjxBF4fLgn9sNt2
hnoC+ufHjDMAX5jrb04BCKfyq1hZHVYOHYspMQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
onlD0ZO+3QmR
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
