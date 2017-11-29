// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Nov 17 16:57:04 2017
// Host        : Fred-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Effective_add_ip_sim_netlist.v
// Design      : Effective_add_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Effective_add_ip,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *) 
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "44" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000000000000000" *) 
(* C_B_WIDTH = "44" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10_viv xst_addsub
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
W3XajW9PbfJsurre829RI/YzuUSdWIwRrwUWyNM23DxIDIYeYSi78Tys0weYrR2KRqGwA6bLztSy
V68cCeV7DLVx3NYzfX33ktkNjTghlgS6E6ArKjdBGSL2+JZkPhvWDk1gfjmbW4t/V/wzlV5FSSjd
zHR03NuxXz3m3Iyzyy4RLU7tnEE+r6RLyVU6+AATyW2NfK8CKgBcn4UorgEoFhXOsB6cLK8oMA/S
pykRD5D6ZVG4yy3uZzxgT1/p8PTUIlKmxxOGeKFTjLWpxSuiUwICrggOAN3/lvuGDiPdGPsGmKI8
Xmko94AgQLQg6OMpH26hN+8Njn+JDy1WpwTCDA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
2+KwHMsBDahMxh2mUuM/LV5VFTddfaP0dAwHocOch6E+VGjT+jwHxIdpY3QJGyBKPiKOk+ArqApy
x3m+s44sewfxlmQmUUFVNTseXCTkZct2SqdLx0Cpk3/EFGMU7YSsH2COU2OjFaf7p8K3f7yY0O80
TcgJYtHdLjTbU/foIVuNRUrC5ET404AUCD5Uk24dYCoZCR1Uv8/rivRysWwtkjTiVE/yfWvnu54m
AjiHyLj+IpxJbBIiD97r4T6tQTXQpcHBw5jxL+IuJUaLL88xd1GBkQvex1B2QQznU40SPQIxfVY9
/eKAAmtuWGTM038z3ZuajkAct8JrGNX0n1bbqQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30816)
`pragma protect data_block
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
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
