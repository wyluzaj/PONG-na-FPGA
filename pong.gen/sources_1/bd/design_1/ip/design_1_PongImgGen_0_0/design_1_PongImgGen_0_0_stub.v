// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Apr 11 00:38:23 2026
// Host        : dell16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/XnxPrj/pong/pong.gen/sources_1/bd/design_1/ip/design_1_PongImgGen_0_0/design_1_PongImgGen_0_0_stub.v
// Design      : design_1_PongImgGen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_PongImgGen_0_0,PongImgGen,{}" *) (* core_generation_info = "design_1_PongImgGen_0_0,PongImgGen,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=PongImgGen,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "PongImgGen,Vivado 2025.2" *) 
module design_1_PongImgGen_0_0(Clk, ResetN, GameReset, MoveLeft, MoveRight, DE, 
  PosX, PosY, R, G, B)
/* synthesis syn_black_box black_box_pad_pin="ResetN,GameReset,MoveLeft,MoveRight,DE,PosX[9:0],PosY[9:0],R[7:0],G[7:0],B[7:0]" */
/* synthesis syn_force_seq_prim="Clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_mode = "slave Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET ResetN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_Clk_25MHz, INSERT_VIP 0" *) input Clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ResetN RST" *) (* x_interface_mode = "slave ResetN" *) (* x_interface_parameter = "XIL_INTERFACENAME ResetN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ResetN;
  input GameReset;
  input MoveLeft;
  input MoveRight;
  input DE;
  input [9:0]PosX;
  input [9:0]PosY;
  output [7:0]R;
  output [7:0]G;
  output [7:0]B;
endmodule
