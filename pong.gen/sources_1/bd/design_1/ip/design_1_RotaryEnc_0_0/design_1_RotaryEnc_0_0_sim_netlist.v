// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr 10 23:57:58 2026
// Host        : dell16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/XnxPrj/pong/pong.gen/sources_1/bd/design_1/ip/design_1_RotaryEnc_0_0/design_1_RotaryEnc_0_0_sim_netlist.v
// Design      : design_1_RotaryEnc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_RotaryEnc_0_0,RotaryEnc_wrap,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "RotaryEnc_wrap,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_RotaryEnc_0_0
   (ROT_A,
    ROT_B,
    Clk,
    RotL,
    RotR);
  input ROT_A;
  input ROT_B;
  input Clk;
  output RotL;
  output RotR;

  wire Clk;
  wire ROT_A;
  wire ROT_B;
  wire RotL;
  wire RotR;

  design_1_RotaryEnc_0_0_RotaryEnc_wrap U0
       (.Clk(Clk),
        .ROT_A(ROT_A),
        .ROT_B(ROT_B),
        .RotL(RotL),
        .RotR(RotR));
endmodule

(* ORIG_REF_NAME = "RotaryEnc" *) 
module design_1_RotaryEnc_0_0_RotaryEnc
   (Clk,
    ROT_A,
    ROT_B,
    RotL,
    RotR);
  input Clk;
  input ROT_A;
  input ROT_B;
  output RotL;
  output RotR;

  wire Clk;
  wire FF;
  wire FF_i_1_n_0;
  wire ROT_A;
  wire ROT_B;
  wire RotL;
  wire RotL0;
  wire RotR;
  wire RotR0;
  wire ffA;
  wire ffB;
  wire prevA;

  LUT3 #(
    .INIT(8'hE8)) 
    FF_i_1
       (.I0(FF),
        .I1(ffA),
        .I2(ffB),
        .O(FF_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    FF_reg
       (.C(Clk),
        .CE(1'b1),
        .D(FF_i_1_n_0),
        .Q(FF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    RotL_i_1
       (.I0(FF),
        .I1(ffB),
        .I2(ffA),
        .I3(prevA),
        .O(RotL0));
  FDRE #(
    .INIT(1'b0)) 
    RotL_reg
       (.C(Clk),
        .CE(1'b1),
        .D(RotL0),
        .Q(RotL),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    RotR_i_1
       (.I0(prevA),
        .I1(FF),
        .I2(ffB),
        .I3(ffA),
        .O(RotR0));
  FDRE #(
    .INIT(1'b0)) 
    RotR_reg
       (.C(Clk),
        .CE(1'b1),
        .D(RotR0),
        .Q(RotR),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ffA_reg
       (.C(Clk),
        .CE(1'b1),
        .D(ROT_A),
        .Q(ffA),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ffB_reg
       (.C(Clk),
        .CE(1'b1),
        .D(ROT_B),
        .Q(ffB),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    prevA_reg
       (.C(Clk),
        .CE(1'b1),
        .D(ffA),
        .Q(prevA),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "RotaryEnc_wrap" *) 
module design_1_RotaryEnc_0_0_RotaryEnc_wrap
   (RotL,
    RotR,
    ROT_A,
    ROT_B,
    Clk);
  output RotL;
  output RotR;
  input ROT_A;
  input ROT_B;
  input Clk;

  wire Clk;
  wire ROT_A;
  wire ROT_B;
  wire RotL;
  wire RotR;

  design_1_RotaryEnc_0_0_RotaryEnc i_wrap
       (.Clk(Clk),
        .ROT_A(ROT_A),
        .ROT_B(ROT_B),
        .RotL(RotL),
        .RotR(RotR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
