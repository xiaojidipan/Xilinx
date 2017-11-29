// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Nov 17 16:54:23 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "44" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000000000000000" *) 
  (* C_B_WIDTH = "44" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "44" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "44" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000000000000000000000000000" *) 
(* C_B_WIDTH = "44" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "44" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10
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
  wire ADD;
  wire [43:0]B;
  wire CLK;
  wire [43:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "44" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000000000000000" *) 
  (* C_B_WIDTH = "44" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "44" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10_viv xst_addsub
       (.A(A),
        .ADD(ADD),
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
f3V5FiZHgCWlz2tN3oMT0JJaclGvSW6qVIAKsNz8aEF9bJCdHKOq3hYzCBuFf12WT70Y6bELdxOH
IB6XfXp74BmY09un6JoE+0jOkLfjzc7UjfTYBlExH3iUbsYMJXLRXLMzOSQaiiSeJkIl5iwyamla
NsqB10DM2U0zCiYezCTQuH7K2f1/uMJUusaMOb04bdhVOdlQd64Myu882uYK6xHtlyEcqEgMDhyg
yNzff7dpjaSf+xS9EbI5wqm+q+dgeOK5O57MtQKb6vhMHx99zHHWKtBHg2jPtMeh5jj5obKgkdwI
wPFr+GBDt1h1ocvIOhsZsqLj++RoOKKEwkVKyA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
X8BR3mSt7xG28/NNhof79rkCnD5PonCfrNoMBDcnSXFLOfXFl6Ir6FDoaCOpp5YgsyUOxCyiCPB6
bFXkv2OUq7pf8jh7VnYulMD8+uEWgKjnEcnuYs/uHQwY8i9OK1fOGzso3ifjk9v9h6fD528YirQU
80NY9ipGSHdJGZn8mG7Uf0k9l5PMcrIY8hoF1rR8PQyyC6HxNaR2HHpVw6q8wJY+3l9JqrM08UHs
BK6MD+ERcQLnDKWnLooBenQxCQQ6KEHztrlzOJ9YyFsM5U03+c+eBj2b3Qzo/siABO0zgTFSxyi7
7fru5WEju5dGf6ZXoGHAC4DYuIcf+pD67iTRjQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11584)
`pragma protect data_block
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
cqWSJIyn+XT+wiL7iQ==
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
