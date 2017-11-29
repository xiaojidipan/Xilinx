// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Nov 17 16:45:32 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/Effective_mult_ip/Effective_mult_ip_sim_netlist.v
// Design      : Effective_mult_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Effective_mult_ip,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module Effective_mult_ip
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
  Effective_mult_ip_mult_gen_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Effective_mult_ip_mult_gen_v12_0_12
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
  Effective_mult_ip_mult_gen_v12_0_12_viv i_mult
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
R1WsAJWVtbrNNEytSjGzyd5ik+gclQz780BEIUonhqbepktRbLw+D0jpV4rIY9Pa0rV7RX1HKZbX
g9OXNLroWb6lg10YVMbLDPssHhX9wk6X0xz7vVVu2lamJ1chTUIvPndsaq/0uYgSD/E9DC1PhJ/c
Jvz0D8s6cAGcZEno+5KfWBO1Tvu3bVniicfoVRtd96w4FjPIkK31lRatod0CXpJzGrTpAUlx2cLh
ufjWTs+0/2COsOb6radXWswBRkJsUa6S7t32b8X637P+lDpNJbSXQfIBbz26fQNsv9itNouwmbr7
aAFe7aXtmm0R7HGxox2VXktOk6yCkQ4DQmTDLA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
rrYSaltGfxVD2ramqSCuiUa8S8r2fIVEMFz3odcd502tIbCgwBZ6tkuox2HA+jqTAhoJWs8A7ntQ
guMcIyFTpEmtD/scV/VisGTCRp+emJwMnJxWIfw3ryeumJ/de8FxU8LzyqBNiges78uoa2BuJ22L
Ys3FC+oahtJxVVX2H6Z77ZEt9gSnCNSXnrk1BPclk5rNQVONjhjJhH+FeqXl16nQHL7XAV4lmzWs
Gz9IdZ4TRp2JIwk1eaMa8AaeNbVMvE5hgwfvg0dFEBJLcxPNfHo0ULgkEmCkG581qC8HFD3SEbsr
3MDzC7idV0yBhTWCErUpZjfU+MZRxQAYje1YKQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
Vrg2oNbBdZhb
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
