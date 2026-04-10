// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Apr 11 00:38:23 2026
// Host        : dell16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/XnxPrj/pong/pong.gen/sources_1/bd/design_1/ip/design_1_PongImgGen_0_0/design_1_PongImgGen_0_0_sim_netlist.v
// Design      : design_1_PongImgGen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PongImgGen_0_0,PongImgGen,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PongImgGen,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_PongImgGen_0_0
   (Clk,
    ResetN,
    GameReset,
    MoveLeft,
    MoveRight,
    DE,
    PosX,
    PosY,
    R,
    G,
    B);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_mode = "slave Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET ResetN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_Clk_25MHz, INSERT_VIP 0" *) input Clk;
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

  wire [7:0]\^B ;
  wire Clk;
  wire DE;
  wire [7:5]\^G ;
  wire GameReset;
  wire MoveLeft;
  wire MoveRight;
  wire [9:0]PosX;
  wire [9:0]PosY;

  assign B[7] = \^B [7];
  assign B[6] = \^B [0];
  assign B[5] = \^B [0];
  assign B[4] = \^B [0];
  assign B[3] = \^B [0];
  assign B[2] = \^B [0];
  assign B[1] = \^B [0];
  assign B[0] = \^B [0];
  assign G[7] = \^G [7];
  assign G[6] = \^G [7];
  assign G[5] = \^G [5];
  assign G[4] = \^G [7];
  assign G[3] = \^G [7];
  assign G[2] = \^G [7];
  assign G[1] = \^G [7];
  assign G[0] = \^G [7];
  assign R[7] = \^B [0];
  assign R[6] = \^B [0];
  assign R[5] = \^B [0];
  assign R[4] = \^B [0];
  assign R[3] = \^B [0];
  assign R[2] = \^B [0];
  assign R[1] = \^B [0];
  assign R[0] = \^B [0];
  design_1_PongImgGen_0_0_PongImgGen U0
       (.B({\^B [7],\^B [0]}),
        .Clk(Clk),
        .DE(DE),
        .G({\^G [7],\^G [5]}),
        .GameReset(GameReset),
        .MoveLeft(MoveLeft),
        .MoveRight(MoveRight),
        .PosX(PosX),
        .PosY(PosY));
endmodule

(* ORIG_REF_NAME = "PongImgGen" *) 
module design_1_PongImgGen_0_0_PongImgGen
   (G,
    B,
    MoveLeft,
    PosX,
    PosY,
    Clk,
    GameReset,
    MoveRight,
    DE);
  output [1:0]G;
  output [1:0]B;
  input MoveLeft;
  input [9:0]PosX;
  input [9:0]PosY;
  input Clk;
  input GameReset;
  input MoveRight;
  input DE;

  wire [1:0]B;
  wire Clk;
  wire DE;
  wire [1:0]G;
  wire G4_carry_n_2;
  wire G4_carry_n_3;
  wire G4_carry_n_4;
  wire G4_carry_n_5;
  wire G4_carry_n_6;
  wire G4_carry_n_7;
  wire \G4_inferred__0/i__carry_n_3 ;
  wire \G4_inferred__0/i__carry_n_4 ;
  wire \G4_inferred__0/i__carry_n_5 ;
  wire \G4_inferred__0/i__carry_n_6 ;
  wire \G4_inferred__0/i__carry_n_7 ;
  wire GameReset;
  wire MoveLeft;
  wire MoveRight;
  wire [9:0]PosX;
  wire [9:0]PosY;
  wire R1_carry_n_3;
  wire R1_carry_n_4;
  wire R1_carry_n_5;
  wire R1_carry_n_6;
  wire R1_carry_n_7;
  wire R2_carry_n_3;
  wire R2_carry_n_4;
  wire R2_carry_n_5;
  wire R2_carry_n_6;
  wire R2_carry_n_7;
  wire R3_carry_n_2;
  wire R3_carry_n_3;
  wire R3_carry_n_4;
  wire R3_carry_n_5;
  wire R3_carry_n_6;
  wire R3_carry_n_7;
  wire \R3_inferred__0/i__carry_n_3 ;
  wire \R3_inferred__0/i__carry_n_4 ;
  wire \R3_inferred__0/i__carry_n_5 ;
  wire \R3_inferred__0/i__carry_n_6 ;
  wire \R3_inferred__0/i__carry_n_7 ;
  wire game_tick;
  wire u_pong_n_0;
  wire u_pong_n_1;
  wire u_pong_n_10;
  wire u_pong_n_11;
  wire u_pong_n_12;
  wire u_pong_n_13;
  wire u_pong_n_14;
  wire u_pong_n_15;
  wire u_pong_n_16;
  wire u_pong_n_17;
  wire u_pong_n_18;
  wire u_pong_n_19;
  wire u_pong_n_2;
  wire u_pong_n_20;
  wire u_pong_n_21;
  wire u_pong_n_22;
  wire u_pong_n_23;
  wire u_pong_n_24;
  wire u_pong_n_25;
  wire u_pong_n_26;
  wire u_pong_n_27;
  wire u_pong_n_28;
  wire u_pong_n_29;
  wire u_pong_n_3;
  wire u_pong_n_30;
  wire u_pong_n_31;
  wire u_pong_n_32;
  wire u_pong_n_33;
  wire u_pong_n_34;
  wire u_pong_n_35;
  wire u_pong_n_36;
  wire u_pong_n_37;
  wire u_pong_n_38;
  wire u_pong_n_39;
  wire u_pong_n_4;
  wire u_pong_n_40;
  wire u_pong_n_41;
  wire u_pong_n_42;
  wire u_pong_n_43;
  wire u_pong_n_44;
  wire u_pong_n_45;
  wire u_pong_n_46;
  wire u_pong_n_47;
  wire u_pong_n_48;
  wire u_pong_n_49;
  wire u_pong_n_5;
  wire u_pong_n_50;
  wire u_pong_n_51;
  wire u_pong_n_52;
  wire u_pong_n_53;
  wire u_pong_n_54;
  wire u_pong_n_55;
  wire u_pong_n_56;
  wire u_pong_n_57;
  wire u_pong_n_58;
  wire u_pong_n_59;
  wire u_pong_n_6;
  wire u_pong_n_60;
  wire u_pong_n_61;
  wire u_pong_n_62;
  wire u_pong_n_63;
  wire u_pong_n_7;
  wire u_pong_n_8;
  wire u_pong_n_9;
  wire [7:6]NLW_G4_carry_CO_UNCONNECTED;
  wire [7:0]NLW_G4_carry_O_UNCONNECTED;
  wire [7:5]\NLW_G4_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_G4_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:5]NLW_R1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_R1_carry_O_UNCONNECTED;
  wire [7:5]NLW_R2_carry_CO_UNCONNECTED;
  wire [7:0]NLW_R2_carry_O_UNCONNECTED;
  wire [7:6]NLW_R3_carry_CO_UNCONNECTED;
  wire [7:0]NLW_R3_carry_O_UNCONNECTED;
  wire [7:5]\NLW_R3_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_R3_inferred__0/i__carry_O_UNCONNECTED ;

  CARRY8 G4_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_G4_carry_CO_UNCONNECTED[7:6],G4_carry_n_2,G4_carry_n_3,G4_carry_n_4,G4_carry_n_5,G4_carry_n_6,G4_carry_n_7}),
        .DI({1'b0,1'b0,u_pong_n_32,u_pong_n_33,u_pong_n_34,u_pong_n_35,u_pong_n_36,u_pong_n_37}),
        .O(NLW_G4_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,u_pong_n_5,u_pong_n_6,u_pong_n_7,u_pong_n_8,u_pong_n_9,u_pong_n_10}));
  CARRY8 \G4_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_G4_inferred__0/i__carry_CO_UNCONNECTED [7:5],\G4_inferred__0/i__carry_n_3 ,\G4_inferred__0/i__carry_n_4 ,\G4_inferred__0/i__carry_n_5 ,\G4_inferred__0/i__carry_n_6 ,\G4_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,u_pong_n_49,u_pong_n_50,u_pong_n_51,u_pong_n_52,u_pong_n_53}),
        .O(\NLW_G4_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,u_pong_n_11,u_pong_n_12,u_pong_n_13,u_pong_n_14,u_pong_n_15}));
  CARRY8 R1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_R1_carry_CO_UNCONNECTED[7:5],R1_carry_n_3,R1_carry_n_4,R1_carry_n_5,R1_carry_n_6,R1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,u_pong_n_59,u_pong_n_60,u_pong_n_61,u_pong_n_62,u_pong_n_63}),
        .O(NLW_R1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,u_pong_n_54,u_pong_n_55,u_pong_n_56,u_pong_n_57,u_pong_n_58}));
  CARRY8 R2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_R2_carry_CO_UNCONNECTED[7:5],R2_carry_n_3,R2_carry_n_4,R2_carry_n_5,R2_carry_n_6,R2_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,u_pong_n_16,u_pong_n_17,u_pong_n_18,u_pong_n_19,u_pong_n_20}),
        .O(NLW_R2_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,u_pong_n_21,u_pong_n_22,u_pong_n_23,u_pong_n_24,u_pong_n_25}));
  CARRY8 R3_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_R3_carry_CO_UNCONNECTED[7:6],R3_carry_n_2,R3_carry_n_3,R3_carry_n_4,R3_carry_n_5,R3_carry_n_6,R3_carry_n_7}),
        .DI({1'b0,1'b0,u_pong_n_26,u_pong_n_27,u_pong_n_28,u_pong_n_29,u_pong_n_30,u_pong_n_31}),
        .O(NLW_R3_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,u_pong_n_43,u_pong_n_44,u_pong_n_45,u_pong_n_46,u_pong_n_47,u_pong_n_48}));
  CARRY8 \R3_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_R3_inferred__0/i__carry_CO_UNCONNECTED [7:5],\R3_inferred__0/i__carry_n_3 ,\R3_inferred__0/i__carry_n_4 ,\R3_inferred__0/i__carry_n_5 ,\R3_inferred__0/i__carry_n_6 ,\R3_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,u_pong_n_38,u_pong_n_39,u_pong_n_40,u_pong_n_41,u_pong_n_42}),
        .O(\NLW_R3_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,u_pong_n_0,u_pong_n_1,u_pong_n_2,u_pong_n_3,u_pong_n_4}));
  design_1_PongImgGen_0_0_freq_divider u_div
       (.Clk(Clk),
        .E(game_tick));
  design_1_PongImgGen_0_0_pong_core u_pong
       (.B(B),
        .\B[0] (\R3_inferred__0/i__carry_n_3 ),
        .\B[0]_0 (R2_carry_n_3),
        .\B[0]_1 (R1_carry_n_3),
        .\B[7] (G4_carry_n_2),
        .\B[7]_0 (\G4_inferred__0/i__carry_n_3 ),
        .CO(R3_carry_n_2),
        .Clk(Clk),
        .DE(DE),
        .DI({u_pong_n_16,u_pong_n_17,u_pong_n_18,u_pong_n_19,u_pong_n_20}),
        .E(game_tick),
        .G(G),
        .GameReset(GameReset),
        .MoveLeft(MoveLeft),
        .MoveRight(MoveRight),
        .PosX(PosX),
        .\PosX[9] ({u_pong_n_11,u_pong_n_12,u_pong_n_13,u_pong_n_14,u_pong_n_15}),
        .\PosX[9]_0 ({u_pong_n_38,u_pong_n_39,u_pong_n_40,u_pong_n_41,u_pong_n_42}),
        .\PosX[9]_1 ({u_pong_n_49,u_pong_n_50,u_pong_n_51,u_pong_n_52,u_pong_n_53}),
        .PosY(PosY),
        .\PosY[9] ({u_pong_n_54,u_pong_n_55,u_pong_n_56,u_pong_n_57,u_pong_n_58}),
        .\PosY[9]_0 ({u_pong_n_59,u_pong_n_60,u_pong_n_61,u_pong_n_62,u_pong_n_63}),
        .R3_carry_i_1_0({u_pong_n_43,u_pong_n_44,u_pong_n_45,u_pong_n_46,u_pong_n_47,u_pong_n_48}),
        .S({u_pong_n_0,u_pong_n_1,u_pong_n_2,u_pong_n_3,u_pong_n_4}),
        .\ball_x_reg_reg[0]_0 ({u_pong_n_26,u_pong_n_27,u_pong_n_28,u_pong_n_29,u_pong_n_30,u_pong_n_31}),
        .\ball_y_reg_reg[2]_0 ({u_pong_n_21,u_pong_n_22,u_pong_n_23,u_pong_n_24,u_pong_n_25}),
        .\paddle_x_reg_reg[0]_0 ({u_pong_n_5,u_pong_n_6,u_pong_n_7,u_pong_n_8,u_pong_n_9,u_pong_n_10}),
        .\paddle_x_reg_reg[0]_1 ({u_pong_n_32,u_pong_n_33,u_pong_n_34,u_pong_n_35,u_pong_n_36,u_pong_n_37}));
endmodule

(* ORIG_REF_NAME = "freq_divider" *) 
module design_1_PongImgGen_0_0_freq_divider
   (E,
    Clk);
  output [0:0]E;
  input Clk;

  wire Clk;
  wire [0:0]E;
  wire [18:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[18]_i_1_n_0 ;
  wire \counter[18]_i_2_n_0 ;
  wire \counter[18]_i_3_n_0 ;
  wire \counter[18]_i_4_n_0 ;
  wire \counter[18]_i_5_n_0 ;
  wire [0:0]counter_0;
  wire [18:1]data0;
  wire [7:1]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [7:2]NLW_counter0_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry
       (.CI(counter[0]),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(counter[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(counter[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0_carry__1_CO_UNCONNECTED[7:1],counter0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__1_O_UNCONNECTED[7:2],data0[18:17]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter[18:17]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \counter[18]_i_1 
       (.I0(\counter[18]_i_2_n_0 ),
        .I1(\counter[18]_i_3_n_0 ),
        .I2(counter[0]),
        .I3(counter[17]),
        .I4(counter[18]),
        .I5(\counter[18]_i_4_n_0 ),
        .O(\counter[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter[18]_i_2 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(\counter[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[18]_i_3 
       (.I0(counter[14]),
        .I1(counter[13]),
        .I2(counter[16]),
        .I3(counter[15]),
        .O(\counter[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \counter[18]_i_4 
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(counter[5]),
        .I3(counter[6]),
        .I4(\counter[18]_i_5_n_0 ),
        .O(\counter[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter[18]_i_5 
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(counter[12]),
        .I3(counter[11]),
        .O(\counter[18]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(counter[10]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(counter[11]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(counter[12]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(counter[13]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(counter[14]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(counter[15]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(counter[16]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(counter[17]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(counter[18]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(counter[1]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(counter[2]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(counter[3]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(counter[4]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(counter[5]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(counter[6]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(counter[7]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(counter[8]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(counter[9]),
        .R(\counter[18]_i_1_n_0 ));
  FDRE tick_out_reg
       (.C(Clk),
        .CE(1'b1),
        .D(\counter[18]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pong_core" *) 
module design_1_PongImgGen_0_0_pong_core
   (S,
    \paddle_x_reg_reg[0]_0 ,
    \PosX[9] ,
    DI,
    \ball_y_reg_reg[2]_0 ,
    \ball_x_reg_reg[0]_0 ,
    \paddle_x_reg_reg[0]_1 ,
    \PosX[9]_0 ,
    R3_carry_i_1_0,
    \PosX[9]_1 ,
    \PosY[9] ,
    \PosY[9]_0 ,
    G,
    B,
    E,
    Clk,
    MoveLeft,
    PosX,
    PosY,
    GameReset,
    MoveRight,
    DE,
    CO,
    \B[0] ,
    \B[0]_0 ,
    \B[0]_1 ,
    \B[7] ,
    \B[7]_0 );
  output [4:0]S;
  output [5:0]\paddle_x_reg_reg[0]_0 ;
  output [4:0]\PosX[9] ;
  output [4:0]DI;
  output [4:0]\ball_y_reg_reg[2]_0 ;
  output [5:0]\ball_x_reg_reg[0]_0 ;
  output [5:0]\paddle_x_reg_reg[0]_1 ;
  output [4:0]\PosX[9]_0 ;
  output [5:0]R3_carry_i_1_0;
  output [4:0]\PosX[9]_1 ;
  output [4:0]\PosY[9] ;
  output [4:0]\PosY[9]_0 ;
  output [1:0]G;
  output [1:0]B;
  input [0:0]E;
  input Clk;
  input MoveLeft;
  input [9:0]PosX;
  input [9:0]PosY;
  input GameReset;
  input MoveRight;
  input DE;
  input [0:0]CO;
  input [0:0]\B[0] ;
  input [0:0]\B[0]_0 ;
  input [0:0]\B[0]_1 ;
  input [0:0]\B[7] ;
  input [0:0]\B[7]_0 ;

  wire [1:0]B;
  wire [0:0]\B[0] ;
  wire [0:0]\B[0]_0 ;
  wire [0:0]\B[0]_1 ;
  wire [0:0]\B[7] ;
  wire [0:0]\B[7]_0 ;
  wire [0:0]CO;
  wire Clk;
  wire DE;
  wire [4:0]DI;
  wire [0:0]E;
  wire [1:0]G;
  wire G4_carry_i_13_n_0;
  wire G4_carry_i_14_n_0;
  wire G4_carry_i_15_n_0;
  wire G4_carry_i_16_n_0;
  wire G4_carry_i_17_n_0;
  wire G4_carry_i_18_n_0;
  wire G4_carry_i_19_n_0;
  wire G4_carry_i_1_n_1;
  wire G4_carry_i_1_n_2;
  wire G4_carry_i_1_n_3;
  wire G4_carry_i_1_n_4;
  wire G4_carry_i_1_n_5;
  wire G4_carry_i_1_n_6;
  wire G4_carry_i_1_n_7;
  wire G4_carry_i_20_n_0;
  wire \G[0]_INST_0_i_1_n_0 ;
  wire \G[0]_INST_0_i_2_n_0 ;
  wire \G[0]_INST_0_i_3_n_0 ;
  wire \G[0]_INST_0_i_4_n_0 ;
  wire \G[0]_INST_0_i_5_n_0 ;
  wire \G[5]_INST_0_i_1_n_0 ;
  wire \G[5]_INST_0_i_2_n_0 ;
  wire \G[5]_INST_0_i_3_n_0 ;
  wire \G[5]_INST_0_i_4_n_0 ;
  wire \G[5]_INST_0_i_5_n_0 ;
  wire \G[5]_INST_0_i_6_n_0 ;
  wire \G[5]_INST_0_i_7_n_0 ;
  wire \G[5]_INST_0_i_8_n_0 ;
  wire GameReset;
  wire MoveLeft;
  wire MoveRight;
  wire [9:0]PosX;
  wire [4:0]\PosX[9] ;
  wire [4:0]\PosX[9]_0 ;
  wire [4:0]\PosX[9]_1 ;
  wire [9:0]PosY;
  wire [4:0]\PosY[9] ;
  wire [4:0]\PosY[9]_0 ;
  wire R1_carry_i_11_n_7;
  wire R1_carry_i_12_n_0;
  wire R1_carry_i_12_n_1;
  wire R1_carry_i_12_n_2;
  wire R1_carry_i_12_n_3;
  wire R1_carry_i_12_n_4;
  wire R1_carry_i_12_n_5;
  wire R1_carry_i_12_n_6;
  wire R1_carry_i_12_n_7;
  wire R1_carry_i_13_n_0;
  wire R1_carry_i_14_n_0;
  wire R1_carry_i_15_n_0;
  wire R1_carry_i_16_n_0;
  wire R1_carry_i_17_n_0;
  wire R1_carry_i_18_n_0;
  wire R1_carry_i_19_n_0;
  wire R1_carry_i_20_n_0;
  wire R1_carry_i_21_n_0;
  wire R1_carry_i_22_n_0;
  wire R2_carry_i_11_n_0;
  wire R2_carry_i_12_n_0;
  wire R2_carry_i_13_n_0;
  wire R2_carry_i_14_n_0;
  wire R3_carry_i_13_n_0;
  wire R3_carry_i_14_n_0;
  wire R3_carry_i_15_n_0;
  wire R3_carry_i_16_n_0;
  wire R3_carry_i_17_n_0;
  wire R3_carry_i_18_n_0;
  wire R3_carry_i_19_n_0;
  wire [5:0]R3_carry_i_1_0;
  wire R3_carry_i_1_n_3;
  wire R3_carry_i_1_n_4;
  wire R3_carry_i_1_n_5;
  wire R3_carry_i_1_n_6;
  wire R3_carry_i_1_n_7;
  wire [4:0]S;
  wire [8:0]ball_bottom;
  wire [9:4]ball_right;
  wire ball_x_reg0_carry_i_1_n_0;
  wire ball_x_reg0_carry_i_2_n_0;
  wire ball_x_reg0_carry_i_3_n_0;
  wire ball_x_reg0_carry_i_4_n_0;
  wire ball_x_reg0_carry_i_5_n_0;
  wire ball_x_reg0_carry_i_6_n_0;
  wire ball_x_reg0_carry_n_4;
  wire ball_x_reg0_carry_n_5;
  wire ball_x_reg0_carry_n_6;
  wire ball_x_reg0_carry_n_7;
  wire \ball_x_reg[0]_i_1_n_0 ;
  wire [5:0]ball_x_reg_reg;
  wire [5:0]\ball_x_reg_reg[0]_0 ;
  wire \ball_y_reg[0]_i_1_n_0 ;
  wire \ball_y_reg[2]_i_2_n_0 ;
  wire \ball_y_reg[2]_i_3_n_0 ;
  wire \ball_y_reg[2]_i_4_n_0 ;
  wire [4:0]ball_y_reg_reg;
  wire [4:0]\ball_y_reg_reg[2]_0 ;
  wire [1:1]dx;
  wire \dx[1]_i_1_n_0 ;
  wire \dx[1]_i_2_n_0 ;
  wire \dx[1]_i_3_n_0 ;
  wire \dx[1]_i_4_n_0 ;
  wire [0:0]dy;
  wire \dy[1]_i_2_n_0 ;
  wire \dy[1]_i_3_n_0 ;
  wire \dy[1]_i_4_n_0 ;
  wire \dy[1]_i_5_n_0 ;
  wire \dy[1]_i_6_n_0 ;
  wire \dy[1]_i_7_n_0 ;
  wire \dy_reg_n_0_[1] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11__0_n_0;
  wire i__carry_i_11__1_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12__0_n_0;
  wire i__carry_i_12__1_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13__0_n_0;
  wire i__carry_i_13__1_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14__0_n_0;
  wire i__carry_i_14__1_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15__0_n_0;
  wire i__carry_i_15__1_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16__0_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire i__carry_i_9__1_n_0;
  wire i__carry_i_9__2_n_0;
  wire new_dy2;
  wire new_dy21_in;
  wire \new_dy2_inferred__1/i__carry__0_n_0 ;
  wire \new_dy2_inferred__1/i__carry__0_n_1 ;
  wire \new_dy2_inferred__1/i__carry__0_n_2 ;
  wire \new_dy2_inferred__1/i__carry__0_n_3 ;
  wire \new_dy2_inferred__1/i__carry__0_n_4 ;
  wire \new_dy2_inferred__1/i__carry__0_n_5 ;
  wire \new_dy2_inferred__1/i__carry__0_n_6 ;
  wire \new_dy2_inferred__1/i__carry__0_n_7 ;
  wire \new_dy2_inferred__1/i__carry_n_0 ;
  wire \new_dy2_inferred__1/i__carry_n_1 ;
  wire \new_dy2_inferred__1/i__carry_n_2 ;
  wire \new_dy2_inferred__1/i__carry_n_3 ;
  wire \new_dy2_inferred__1/i__carry_n_4 ;
  wire \new_dy2_inferred__1/i__carry_n_5 ;
  wire \new_dy2_inferred__1/i__carry_n_6 ;
  wire \new_dy2_inferred__1/i__carry_n_7 ;
  wire \new_dy2_inferred__2/i__carry_n_5 ;
  wire \new_dy2_inferred__2/i__carry_n_6 ;
  wire \new_dy2_inferred__2/i__carry_n_7 ;
  wire [4:1]p_0_in;
  wire [5:1]p_0_in__0;
  wire [9:1]pad_right;
  wire [0:0]paddle_x_reg;
  wire \paddle_x_reg[1]_i_1_n_0 ;
  wire \paddle_x_reg[2]_i_1_n_0 ;
  wire \paddle_x_reg[2]_i_2_n_0 ;
  wire \paddle_x_reg[3]_i_1_n_0 ;
  wire \paddle_x_reg[4]_i_1_n_0 ;
  wire \paddle_x_reg[5]_i_2_n_0 ;
  wire \paddle_x_reg[5]_i_3_n_0 ;
  wire \paddle_x_reg[5]_i_4_n_0 ;
  wire \paddle_x_reg[5]_i_5_n_0 ;
  wire [5:0]\paddle_x_reg_reg[0]_0 ;
  wire [5:0]\paddle_x_reg_reg[0]_1 ;
  wire [5:0]paddle_x_s;
  wire [7:1]NLW_R1_carry_i_11_CO_UNCONNECTED;
  wire [7:1]NLW_R1_carry_i_11_O_UNCONNECTED;
  wire [7:6]NLW_R3_carry_i_1_CO_UNCONNECTED;
  wire [7:6]NLW_R3_carry_i_1_O_UNCONNECTED;
  wire [7:4]NLW_ball_x_reg0_carry_CO_UNCONNECTED;
  wire [7:5]NLW_ball_x_reg0_carry_O_UNCONNECTED;
  wire [7:0]\NLW_new_dy2_inferred__1/i__carry_O_UNCONNECTED ;
  wire [7:0]\NLW_new_dy2_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [7:1]\NLW_new_dy2_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [7:0]\NLW_new_dy2_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [7:4]\NLW_new_dy2_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_new_dy2_inferred__2/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \B[0]_INST_0 
       (.I0(DE),
        .I1(CO),
        .I2(\B[0] ),
        .I3(\B[0]_0 ),
        .I4(\B[0]_1 ),
        .O(B[0]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBABAAAA)) 
    \B[7]_INST_0 
       (.I0(B[0]),
        .I1(\G[5]_INST_0_i_2_n_0 ),
        .I2(\G[0]_INST_0_i_1_n_0 ),
        .I3(PosY[0]),
        .I4(PosY[4]),
        .I5(\G[0]_INST_0_i_2_n_0 ),
        .O(B[1]));
  CARRY8 G4_carry_i_1
       (.CI(paddle_x_s[0]),
        .CI_TOP(1'b0),
        .CO({\paddle_x_reg_reg[0]_1 [5],G4_carry_i_1_n_1,G4_carry_i_1_n_2,G4_carry_i_1_n_3,G4_carry_i_1_n_4,G4_carry_i_1_n_5,G4_carry_i_1_n_6,G4_carry_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,paddle_x_s[1]}),
        .O(pad_right[9:2]),
        .S({G4_carry_i_13_n_0,G4_carry_i_14_n_0,G4_carry_i_15_n_0,G4_carry_i_16_n_0,G4_carry_i_17_n_0,G4_carry_i_18_n_0,G4_carry_i_19_n_0,G4_carry_i_20_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    G4_carry_i_10
       (.I0(pad_right[5]),
        .I1(PosX[5]),
        .I2(pad_right[4]),
        .I3(PosX[4]),
        .O(\paddle_x_reg_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    G4_carry_i_11
       (.I0(pad_right[3]),
        .I1(PosX[3]),
        .I2(pad_right[2]),
        .I3(PosX[2]),
        .O(\paddle_x_reg_reg[0]_0 [1]));
  LUT3 #(
    .INIT(8'h60)) 
    G4_carry_i_12
       (.I0(PosX[1]),
        .I1(paddle_x_s[0]),
        .I2(PosX[0]),
        .O(\paddle_x_reg_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'hA800)) 
    G4_carry_i_13
       (.I0(paddle_x_s[4]),
        .I1(paddle_x_s[3]),
        .I2(paddle_x_s[2]),
        .I3(paddle_x_s[5]),
        .O(G4_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'h05FFA800)) 
    G4_carry_i_14
       (.I0(paddle_x_s[3]),
        .I1(paddle_x_s[1]),
        .I2(paddle_x_s[2]),
        .I3(paddle_x_s[4]),
        .I4(paddle_x_s[5]),
        .O(G4_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h11113737ECC88888)) 
    G4_carry_i_15
       (.I0(paddle_x_s[5]),
        .I1(paddle_x_s[3]),
        .I2(paddle_x_s[1]),
        .I3(paddle_x_s[0]),
        .I4(paddle_x_s[2]),
        .I5(paddle_x_s[4]),
        .O(G4_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h6369633969396999)) 
    G4_carry_i_16
       (.I0(paddle_x_s[3]),
        .I1(paddle_x_s[5]),
        .I2(paddle_x_s[2]),
        .I3(paddle_x_s[4]),
        .I4(paddle_x_s[0]),
        .I5(paddle_x_s[1]),
        .O(G4_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'h66393999)) 
    G4_carry_i_17
       (.I0(paddle_x_s[2]),
        .I1(paddle_x_s[4]),
        .I2(paddle_x_s[0]),
        .I3(paddle_x_s[1]),
        .I4(paddle_x_s[3]),
        .O(G4_carry_i_17_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    G4_carry_i_18
       (.I0(paddle_x_s[1]),
        .I1(paddle_x_s[3]),
        .I2(paddle_x_s[0]),
        .I3(paddle_x_s[2]),
        .O(G4_carry_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    G4_carry_i_19
       (.I0(paddle_x_s[0]),
        .I1(paddle_x_s[2]),
        .O(G4_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    G4_carry_i_2
       (.I0(PosX[9]),
        .I1(pad_right[9]),
        .I2(pad_right[8]),
        .I3(PosX[8]),
        .O(\paddle_x_reg_reg[0]_1 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    G4_carry_i_20
       (.I0(paddle_x_s[1]),
        .O(G4_carry_i_20_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    G4_carry_i_3
       (.I0(PosX[7]),
        .I1(pad_right[7]),
        .I2(pad_right[6]),
        .I3(PosX[6]),
        .O(\paddle_x_reg_reg[0]_1 [3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    G4_carry_i_4
       (.I0(PosX[5]),
        .I1(pad_right[5]),
        .I2(pad_right[4]),
        .I3(PosX[4]),
        .O(\paddle_x_reg_reg[0]_1 [2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    G4_carry_i_5
       (.I0(PosX[3]),
        .I1(pad_right[3]),
        .I2(pad_right[2]),
        .I3(PosX[2]),
        .O(\paddle_x_reg_reg[0]_1 [1]));
  LUT3 #(
    .INIT(8'h17)) 
    G4_carry_i_6
       (.I0(PosX[0]),
        .I1(paddle_x_s[0]),
        .I2(PosX[1]),
        .O(\paddle_x_reg_reg[0]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    G4_carry_i_7
       (.I0(\paddle_x_reg_reg[0]_1 [5]),
        .O(\paddle_x_reg_reg[0]_0 [5]));
  LUT4 #(
    .INIT(16'h9009)) 
    G4_carry_i_8
       (.I0(pad_right[9]),
        .I1(PosX[9]),
        .I2(pad_right[8]),
        .I3(PosX[8]),
        .O(\paddle_x_reg_reg[0]_0 [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    G4_carry_i_9
       (.I0(pad_right[7]),
        .I1(PosX[7]),
        .I2(pad_right[6]),
        .I3(PosX[6]),
        .O(\paddle_x_reg_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h000008AAAAAAAAAA)) 
    \G[0]_INST_0 
       (.I0(DE),
        .I1(\G[0]_INST_0_i_1_n_0 ),
        .I2(PosY[0]),
        .I3(PosY[4]),
        .I4(\G[0]_INST_0_i_2_n_0 ),
        .I5(\G[0]_INST_0_i_3_n_0 ),
        .O(G[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \G[0]_INST_0_i_1 
       (.I0(PosY[1]),
        .I1(PosY[3]),
        .I2(PosY[2]),
        .O(\G[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \G[0]_INST_0_i_2 
       (.I0(\G[0]_INST_0_i_4_n_0 ),
        .I1(\B[7] ),
        .I2(PosY[9]),
        .I3(\B[7]_0 ),
        .I4(PosY[5]),
        .I5(\G[0]_INST_0_i_5_n_0 ),
        .O(\G[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \G[0]_INST_0_i_3 
       (.I0(\B[0]_1 ),
        .I1(\B[0]_0 ),
        .I2(\B[0] ),
        .I3(CO),
        .O(\G[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \G[0]_INST_0_i_4 
       (.I0(PosY[2]),
        .I1(PosY[3]),
        .I2(PosY[1]),
        .I3(PosY[5]),
        .I4(PosY[4]),
        .O(\G[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \G[0]_INST_0_i_5 
       (.I0(PosY[8]),
        .I1(PosY[7]),
        .I2(PosY[6]),
        .O(\G[0]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5700FFFF)) 
    \G[5]_INST_0 
       (.I0(\G[0]_INST_0_i_3_n_0 ),
        .I1(\G[0]_INST_0_i_2_n_0 ),
        .I2(\G[5]_INST_0_i_1_n_0 ),
        .I3(DE),
        .I4(\G[5]_INST_0_i_2_n_0 ),
        .O(G[0]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \G[5]_INST_0_i_1 
       (.I0(PosY[4]),
        .I1(PosY[0]),
        .I2(PosY[1]),
        .I3(PosY[3]),
        .I4(PosY[2]),
        .O(\G[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \G[5]_INST_0_i_2 
       (.I0(\G[5]_INST_0_i_3_n_0 ),
        .I1(PosY[9]),
        .I2(\G[5]_INST_0_i_4_n_0 ),
        .I3(\G[5]_INST_0_i_5_n_0 ),
        .I4(DE),
        .O(\G[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA888888888888888)) 
    \G[5]_INST_0_i_3 
       (.I0(\G[0]_INST_0_i_5_n_0 ),
        .I1(PosY[5]),
        .I2(PosY[4]),
        .I3(PosY[1]),
        .I4(PosY[3]),
        .I5(PosY[2]),
        .O(\G[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \G[5]_INST_0_i_4 
       (.I0(\G[5]_INST_0_i_6_n_0 ),
        .I1(PosX[9]),
        .I2(PosX[1]),
        .I3(PosX[6]),
        .I4(\G[5]_INST_0_i_7_n_0 ),
        .I5(\G[0]_INST_0_i_4_n_0 ),
        .O(\G[5]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5557)) 
    \G[5]_INST_0_i_5 
       (.I0(PosX[9]),
        .I1(PosX[7]),
        .I2(PosX[8]),
        .I3(\G[5]_INST_0_i_8_n_0 ),
        .O(\G[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \G[5]_INST_0_i_6 
       (.I0(PosX[4]),
        .I1(PosX[5]),
        .I2(PosX[2]),
        .I3(PosX[3]),
        .I4(PosX[8]),
        .I5(PosX[7]),
        .O(\G[5]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \G[5]_INST_0_i_7 
       (.I0(PosY[6]),
        .I1(PosY[8]),
        .I2(PosY[7]),
        .O(\G[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \G[5]_INST_0_i_8 
       (.I0(PosX[6]),
        .I1(PosX[5]),
        .I2(PosX[1]),
        .I3(PosX[4]),
        .I4(PosX[2]),
        .I5(PosX[3]),
        .O(\G[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    R1_carry_i_1
       (.I0(PosY[9]),
        .I1(R1_carry_i_11_n_7),
        .I2(ball_bottom[8]),
        .I3(PosY[8]),
        .O(\PosY[9]_0 [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    R1_carry_i_10
       (.I0(ball_bottom[1]),
        .I1(PosY[1]),
        .I2(ball_bottom[0]),
        .I3(PosY[0]),
        .O(\PosY[9] [0]));
  CARRY8 R1_carry_i_11
       (.CI(R1_carry_i_12_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_R1_carry_i_11_CO_UNCONNECTED[7:1],R1_carry_i_11_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_R1_carry_i_11_O_UNCONNECTED[7:1],ball_bottom[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,R1_carry_i_13_n_0}));
  CARRY8 R1_carry_i_12
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({R1_carry_i_12_n_0,R1_carry_i_12_n_1,R1_carry_i_12_n_2,R1_carry_i_12_n_3,R1_carry_i_12_n_4,R1_carry_i_12_n_5,R1_carry_i_12_n_6,R1_carry_i_12_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b1,R1_carry_i_14_n_0,R1_carry_i_15_n_0,1'b0}),
        .O(ball_bottom[7:0]),
        .S({R1_carry_i_16_n_0,R1_carry_i_17_n_0,R1_carry_i_18_n_0,R1_carry_i_19_n_0,R1_carry_i_20_n_0,R1_carry_i_21_n_0,R1_carry_i_22_n_0,ball_y_reg_reg[0]}));
  LUT4 #(
    .INIT(16'hFE00)) 
    R1_carry_i_13
       (.I0(ball_y_reg_reg[2]),
        .I1(ball_y_reg_reg[3]),
        .I2(ball_y_reg_reg[1]),
        .I3(ball_y_reg_reg[4]),
        .O(R1_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    R1_carry_i_14
       (.I0(ball_y_reg_reg[2]),
        .I1(ball_y_reg_reg[1]),
        .I2(ball_y_reg_reg[0]),
        .O(R1_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    R1_carry_i_15
       (.I0(ball_y_reg_reg[1]),
        .I1(ball_y_reg_reg[0]),
        .O(R1_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'hFF00F40A)) 
    R1_carry_i_16
       (.I0(ball_y_reg_reg[4]),
        .I1(ball_y_reg_reg[0]),
        .I2(ball_y_reg_reg[1]),
        .I3(ball_y_reg_reg[3]),
        .I4(ball_y_reg_reg[2]),
        .O(R1_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'hC3C3F0C2)) 
    R1_carry_i_17
       (.I0(ball_y_reg_reg[3]),
        .I1(ball_y_reg_reg[1]),
        .I2(ball_y_reg_reg[2]),
        .I3(ball_y_reg_reg[0]),
        .I4(ball_y_reg_reg[4]),
        .O(R1_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'h44BB44BA)) 
    R1_carry_i_18
       (.I0(ball_y_reg_reg[4]),
        .I1(ball_y_reg_reg[0]),
        .I2(ball_y_reg_reg[2]),
        .I3(ball_y_reg_reg[1]),
        .I4(ball_y_reg_reg[3]),
        .O(R1_carry_i_18_n_0));
  LUT5 #(
    .INIT(32'hAA55AB54)) 
    R1_carry_i_19
       (.I0(ball_y_reg_reg[0]),
        .I1(ball_y_reg_reg[2]),
        .I2(ball_y_reg_reg[3]),
        .I3(ball_y_reg_reg[4]),
        .I4(ball_y_reg_reg[1]),
        .O(R1_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    R1_carry_i_2
       (.I0(PosY[7]),
        .I1(ball_bottom[7]),
        .I2(ball_bottom[6]),
        .I3(PosY[6]),
        .O(\PosY[9]_0 [3]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    R1_carry_i_20
       (.I0(ball_y_reg_reg[3]),
        .I1(ball_y_reg_reg[1]),
        .I2(ball_y_reg_reg[2]),
        .I3(ball_y_reg_reg[0]),
        .O(R1_carry_i_20_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    R1_carry_i_21
       (.I0(ball_y_reg_reg[0]),
        .I1(ball_y_reg_reg[1]),
        .I2(ball_y_reg_reg[2]),
        .O(R1_carry_i_21_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R1_carry_i_22
       (.I0(ball_y_reg_reg[0]),
        .I1(ball_y_reg_reg[1]),
        .O(R1_carry_i_22_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    R1_carry_i_3
       (.I0(PosY[5]),
        .I1(ball_bottom[5]),
        .I2(ball_bottom[4]),
        .I3(PosY[4]),
        .O(\PosY[9]_0 [2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    R1_carry_i_4
       (.I0(PosY[3]),
        .I1(ball_bottom[3]),
        .I2(ball_bottom[2]),
        .I3(PosY[2]),
        .O(\PosY[9]_0 [1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    R1_carry_i_5
       (.I0(PosY[1]),
        .I1(ball_bottom[1]),
        .I2(ball_bottom[0]),
        .I3(PosY[0]),
        .O(\PosY[9]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    R1_carry_i_6
       (.I0(R1_carry_i_11_n_7),
        .I1(PosY[9]),
        .I2(ball_bottom[8]),
        .I3(PosY[8]),
        .O(\PosY[9] [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    R1_carry_i_7
       (.I0(ball_bottom[7]),
        .I1(PosY[7]),
        .I2(ball_bottom[6]),
        .I3(PosY[6]),
        .O(\PosY[9] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    R1_carry_i_8
       (.I0(ball_bottom[5]),
        .I1(PosY[5]),
        .I2(ball_bottom[4]),
        .I3(PosY[4]),
        .O(\PosY[9] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    R1_carry_i_9
       (.I0(ball_bottom[3]),
        .I1(PosY[3]),
        .I2(ball_bottom[2]),
        .I3(PosY[2]),
        .O(\PosY[9] [1]));
  LUT6 #(
    .INIT(64'hFFFF01FFFFFF0000)) 
    R2_carry_i_1
       (.I0(ball_y_reg_reg[2]),
        .I1(ball_y_reg_reg[3]),
        .I2(ball_y_reg_reg[1]),
        .I3(ball_y_reg_reg[4]),
        .I4(PosY[9]),
        .I5(PosY[8]),
        .O(DI[4]));
  LUT4 #(
    .INIT(16'h6009)) 
    R2_carry_i_10
       (.I0(PosY[1]),
        .I1(ball_y_reg_reg[1]),
        .I2(PosY[0]),
        .I3(ball_y_reg_reg[0]),
        .O(\ball_y_reg_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h4400DDCD)) 
    R2_carry_i_11
       (.I0(ball_y_reg_reg[3]),
        .I1(ball_y_reg_reg[1]),
        .I2(ball_y_reg_reg[2]),
        .I3(ball_y_reg_reg[0]),
        .I4(ball_y_reg_reg[4]),
        .O(R2_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB288)) 
    R2_carry_i_12
       (.I0(ball_y_reg_reg[1]),
        .I1(ball_y_reg_reg[4]),
        .I2(ball_y_reg_reg[3]),
        .I3(ball_y_reg_reg[0]),
        .O(R2_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44BB44BA)) 
    R2_carry_i_13
       (.I0(ball_y_reg_reg[4]),
        .I1(ball_y_reg_reg[0]),
        .I2(ball_y_reg_reg[2]),
        .I3(ball_y_reg_reg[1]),
        .I4(ball_y_reg_reg[3]),
        .O(R2_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA55AB54)) 
    R2_carry_i_14
       (.I0(ball_y_reg_reg[0]),
        .I1(ball_y_reg_reg[2]),
        .I2(ball_y_reg_reg[3]),
        .I3(ball_y_reg_reg[4]),
        .I4(ball_y_reg_reg[1]),
        .O(R2_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h2B2B2BB822222228)) 
    R2_carry_i_2
       (.I0(PosY[7]),
        .I1(ball_y_reg_reg[3]),
        .I2(ball_y_reg_reg[2]),
        .I3(R2_carry_i_11_n_0),
        .I4(R2_carry_i_12_n_0),
        .I5(PosY[6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    R2_carry_i_3
       (.I0(PosY[5]),
        .I1(R2_carry_i_13_n_0),
        .I2(PosY[4]),
        .I3(R2_carry_i_14_n_0),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hEE88E88B88888882)) 
    R2_carry_i_4
       (.I0(PosY[3]),
        .I1(ball_y_reg_reg[3]),
        .I2(ball_y_reg_reg[1]),
        .I3(ball_y_reg_reg[2]),
        .I4(ball_y_reg_reg[0]),
        .I5(PosY[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'hB190)) 
    R2_carry_i_5
       (.I0(ball_y_reg_reg[1]),
        .I1(ball_y_reg_reg[0]),
        .I2(PosY[1]),
        .I3(PosY[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h0000FE00000001FF)) 
    R2_carry_i_6
       (.I0(ball_y_reg_reg[2]),
        .I1(ball_y_reg_reg[3]),
        .I2(ball_y_reg_reg[1]),
        .I3(ball_y_reg_reg[4]),
        .I4(PosY[9]),
        .I5(PosY[8]),
        .O(\ball_y_reg_reg[2]_0 [4]));
  LUT6 #(
    .INIT(64'h9990000600099990)) 
    R2_carry_i_7
       (.I0(ball_y_reg_reg[3]),
        .I1(PosY[7]),
        .I2(R2_carry_i_12_n_0),
        .I3(R2_carry_i_11_n_0),
        .I4(ball_y_reg_reg[2]),
        .I5(PosY[6]),
        .O(\ball_y_reg_reg[2]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    R2_carry_i_8
       (.I0(R2_carry_i_13_n_0),
        .I1(PosY[5]),
        .I2(R2_carry_i_14_n_0),
        .I3(PosY[4]),
        .O(\ball_y_reg_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'h00015A685A680001)) 
    R2_carry_i_9
       (.I0(PosY[2]),
        .I1(ball_y_reg_reg[0]),
        .I2(ball_y_reg_reg[2]),
        .I3(ball_y_reg_reg[1]),
        .I4(ball_y_reg_reg[3]),
        .I5(PosY[3]),
        .O(\ball_y_reg_reg[2]_0 [1]));
  CARRY8 R3_carry_i_1
       (.CI(R3_carry_i_13_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_R3_carry_i_1_CO_UNCONNECTED[7:6],\ball_x_reg_reg[0]_0 [5],R3_carry_i_1_n_3,R3_carry_i_1_n_4,R3_carry_i_1_n_5,R3_carry_i_1_n_6,R3_carry_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_R3_carry_i_1_O_UNCONNECTED[7:6],ball_right}),
        .S({1'b0,1'b0,R3_carry_i_14_n_0,R3_carry_i_15_n_0,R3_carry_i_16_n_0,R3_carry_i_17_n_0,R3_carry_i_18_n_0,R3_carry_i_19_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    R3_carry_i_10
       (.I0(PosX[5]),
        .I1(ball_right[5]),
        .I2(PosX[4]),
        .I3(ball_right[4]),
        .O(R3_carry_i_1_0[2]));
  LUT5 #(
    .INIT(32'h96000096)) 
    R3_carry_i_11
       (.I0(ball_x_reg_reg[0]),
        .I1(ball_x_reg_reg[2]),
        .I2(PosX[3]),
        .I3(PosX[2]),
        .I4(ball_x_reg_reg[1]),
        .O(R3_carry_i_1_0[1]));
  LUT3 #(
    .INIT(8'h82)) 
    R3_carry_i_12
       (.I0(PosX[0]),
        .I1(PosX[1]),
        .I2(ball_x_reg_reg[0]),
        .O(R3_carry_i_1_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    R3_carry_i_13
       (.I0(ball_x_reg_reg[0]),
        .I1(ball_x_reg_reg[2]),
        .O(R3_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    R3_carry_i_14
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[3]),
        .I2(ball_x_reg_reg[2]),
        .I3(ball_x_reg_reg[5]),
        .O(R3_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'h11FFC800)) 
    R3_carry_i_15
       (.I0(ball_x_reg_reg[2]),
        .I1(ball_x_reg_reg[3]),
        .I2(ball_x_reg_reg[1]),
        .I3(ball_x_reg_reg[4]),
        .I4(ball_x_reg_reg[5]),
        .O(R3_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h07170717E8E0E0A0)) 
    R3_carry_i_16
       (.I0(ball_x_reg_reg[5]),
        .I1(ball_x_reg_reg[2]),
        .I2(ball_x_reg_reg[3]),
        .I3(ball_x_reg_reg[1]),
        .I4(ball_x_reg_reg[0]),
        .I5(ball_x_reg_reg[4]),
        .O(R3_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hEAE815175777A888)) 
    R3_carry_i_17
       (.I0(ball_x_reg_reg[2]),
        .I1(ball_x_reg_reg[4]),
        .I2(ball_x_reg_reg[1]),
        .I3(ball_x_reg_reg[0]),
        .I4(ball_x_reg_reg[5]),
        .I5(ball_x_reg_reg[3]),
        .O(R3_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'hE83F17C0)) 
    R3_carry_i_18
       (.I0(ball_x_reg_reg[0]),
        .I1(ball_x_reg_reg[1]),
        .I2(ball_x_reg_reg[3]),
        .I3(ball_x_reg_reg[2]),
        .I4(ball_x_reg_reg[4]),
        .O(R3_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    R3_carry_i_19
       (.I0(ball_x_reg_reg[2]),
        .I1(ball_x_reg_reg[0]),
        .I2(ball_x_reg_reg[1]),
        .I3(ball_x_reg_reg[3]),
        .O(R3_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    R3_carry_i_2
       (.I0(ball_right[9]),
        .I1(PosX[9]),
        .I2(ball_right[8]),
        .I3(PosX[8]),
        .O(\ball_x_reg_reg[0]_0 [4]));
  LUT4 #(
    .INIT(16'h22B2)) 
    R3_carry_i_3
       (.I0(ball_right[7]),
        .I1(PosX[7]),
        .I2(ball_right[6]),
        .I3(PosX[6]),
        .O(\ball_x_reg_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    R3_carry_i_4
       (.I0(ball_right[5]),
        .I1(PosX[5]),
        .I2(ball_right[4]),
        .I3(PosX[4]),
        .O(\ball_x_reg_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'h4F04044F)) 
    R3_carry_i_5
       (.I0(PosX[2]),
        .I1(ball_x_reg_reg[1]),
        .I2(PosX[3]),
        .I3(ball_x_reg_reg[2]),
        .I4(ball_x_reg_reg[0]),
        .O(\ball_x_reg_reg[0]_0 [1]));
  LUT3 #(
    .INIT(8'h71)) 
    R3_carry_i_6
       (.I0(PosX[0]),
        .I1(PosX[1]),
        .I2(ball_x_reg_reg[0]),
        .O(\ball_x_reg_reg[0]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    R3_carry_i_7
       (.I0(\ball_x_reg_reg[0]_0 [5]),
        .O(R3_carry_i_1_0[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    R3_carry_i_8
       (.I0(PosX[9]),
        .I1(ball_right[9]),
        .I2(PosX[8]),
        .I3(ball_right[8]),
        .O(R3_carry_i_1_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    R3_carry_i_9
       (.I0(PosX[7]),
        .I1(ball_right[7]),
        .I2(PosX[6]),
        .I3(ball_right[6]),
        .O(R3_carry_i_1_0[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ball_x_reg0_carry
       (.CI(ball_x_reg_reg[0]),
        .CI_TOP(1'b0),
        .CO({NLW_ball_x_reg0_carry_CO_UNCONNECTED[7:4],ball_x_reg0_carry_n_4,ball_x_reg0_carry_n_5,ball_x_reg0_carry_n_6,ball_x_reg0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,ball_x_reg_reg[3:2],ball_x_reg0_carry_i_1_n_0,\dx[1]_i_1_n_0 }),
        .O({NLW_ball_x_reg0_carry_O_UNCONNECTED[7:5],p_0_in__0}),
        .S({1'b0,1'b0,1'b0,ball_x_reg0_carry_i_2_n_0,ball_x_reg0_carry_i_3_n_0,ball_x_reg0_carry_i_4_n_0,ball_x_reg0_carry_i_5_n_0,ball_x_reg0_carry_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ball_x_reg0_carry_i_1
       (.I0(ball_x_reg_reg[2]),
        .O(ball_x_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ball_x_reg0_carry_i_2
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .O(ball_x_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ball_x_reg0_carry_i_3
       (.I0(ball_x_reg_reg[3]),
        .I1(ball_x_reg_reg[4]),
        .O(ball_x_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ball_x_reg0_carry_i_4
       (.I0(ball_x_reg_reg[2]),
        .I1(ball_x_reg_reg[3]),
        .O(ball_x_reg0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h17017F01E8FE80FE)) 
    ball_x_reg0_carry_i_5
       (.I0(\dx[1]_i_2_n_0 ),
        .I1(ball_x_reg_reg[5]),
        .I2(ball_x_reg_reg[4]),
        .I3(\dx[1]_i_3_n_0 ),
        .I4(\dx[1]_i_4_n_0 ),
        .I5(ball_x_reg_reg[2]),
        .O(ball_x_reg0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h17017F01E8FE80FE)) 
    ball_x_reg0_carry_i_6
       (.I0(\dx[1]_i_2_n_0 ),
        .I1(ball_x_reg_reg[5]),
        .I2(ball_x_reg_reg[4]),
        .I3(\dx[1]_i_3_n_0 ),
        .I4(\dx[1]_i_4_n_0 ),
        .I5(ball_x_reg_reg[1]),
        .O(ball_x_reg0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ball_x_reg[0]_i_1 
       (.I0(ball_x_reg_reg[0]),
        .O(\ball_x_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg_reg[0] 
       (.C(Clk),
        .CE(E),
        .D(\ball_x_reg[0]_i_1_n_0 ),
        .Q(ball_x_reg_reg[0]),
        .R(dy));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg_reg[1] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(ball_x_reg_reg[1]),
        .R(dy));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg_reg[2] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(ball_x_reg_reg[2]),
        .R(dy));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg_reg[3] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(ball_x_reg_reg[3]),
        .R(dy));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg_reg[4] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(ball_x_reg_reg[4]),
        .R(dy));
  FDSE #(
    .INIT(1'b1)) 
    \ball_x_reg_reg[5] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in__0[5]),
        .Q(ball_x_reg_reg[5]),
        .S(dy));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_y_reg[0]_i_1 
       (.I0(ball_y_reg_reg[0]),
        .O(\ball_y_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0075FF8AFF8A0075)) 
    \ball_y_reg[1]_i_1 
       (.I0(\dy[1]_i_7_n_0 ),
        .I1(\dy[1]_i_6_n_0 ),
        .I2(\dy[1]_i_5_n_0 ),
        .I3(\dy[1]_i_3_n_0 ),
        .I4(ball_y_reg_reg[0]),
        .I5(ball_y_reg_reg[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hCBCCCBCB34333434)) 
    \ball_y_reg[2]_i_1 
       (.I0(ball_y_reg_reg[0]),
        .I1(\ball_y_reg[2]_i_2_n_0 ),
        .I2(\dy[1]_i_3_n_0 ),
        .I3(\ball_y_reg[2]_i_3_n_0 ),
        .I4(\dy[1]_i_7_n_0 ),
        .I5(ball_y_reg_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \ball_y_reg[2]_i_2 
       (.I0(ball_y_reg_reg[0]),
        .I1(\dy_reg_n_0_[1] ),
        .I2(ball_y_reg_reg[1]),
        .O(\ball_y_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \ball_y_reg[2]_i_3 
       (.I0(\dy[1]_i_5_n_0 ),
        .I1(ball_y_reg_reg[2]),
        .I2(new_dy21_in),
        .I3(ball_y_reg_reg[0]),
        .I4(new_dy2),
        .I5(\ball_y_reg[2]_i_4_n_0 ),
        .O(\ball_y_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_reg[2]_i_4 
       (.I0(ball_y_reg_reg[1]),
        .I1(\dy_reg_n_0_[1] ),
        .O(\ball_y_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF40FD02BF40FD00)) 
    \ball_y_reg[3]_i_1 
       (.I0(\dy_reg_n_0_[1] ),
        .I1(ball_y_reg_reg[0]),
        .I2(ball_y_reg_reg[1]),
        .I3(ball_y_reg_reg[3]),
        .I4(ball_y_reg_reg[2]),
        .I5(ball_y_reg_reg[4]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA2)) 
    \ball_y_reg[4]_i_1 
       (.I0(ball_y_reg_reg[4]),
        .I1(\dy_reg_n_0_[1] ),
        .I2(ball_y_reg_reg[0]),
        .I3(ball_y_reg_reg[1]),
        .I4(ball_y_reg_reg[2]),
        .I5(ball_y_reg_reg[3]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_reg_reg[0] 
       (.C(Clk),
        .CE(E),
        .D(\ball_y_reg[0]_i_1_n_0 ),
        .Q(ball_y_reg_reg[0]),
        .R(dy));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_reg_reg[1] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(ball_y_reg_reg[1]),
        .R(dy));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_reg_reg[2] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(ball_y_reg_reg[2]),
        .R(dy));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_reg_reg[3] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(ball_y_reg_reg[3]),
        .R(dy));
  FDSE #(
    .INIT(1'b1)) 
    \ball_y_reg_reg[4] 
       (.C(Clk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(ball_y_reg_reg[4]),
        .S(dy));
  LUT5 #(
    .INIT(32'hE8FE80FE)) 
    \dx[1]_i_1 
       (.I0(\dx[1]_i_2_n_0 ),
        .I1(ball_x_reg_reg[5]),
        .I2(ball_x_reg_reg[4]),
        .I3(\dx[1]_i_3_n_0 ),
        .I4(\dx[1]_i_4_n_0 ),
        .O(\dx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7555555555555551)) 
    \dx[1]_i_2 
       (.I0(ball_x_reg_reg[4]),
        .I1(dx),
        .I2(ball_x_reg_reg[1]),
        .I3(ball_x_reg_reg[0]),
        .I4(ball_x_reg_reg[2]),
        .I5(ball_x_reg_reg[3]),
        .O(\dx[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \dx[1]_i_3 
       (.I0(ball_x_reg_reg[3]),
        .I1(ball_x_reg_reg[2]),
        .I2(ball_x_reg_reg[0]),
        .I3(ball_x_reg_reg[1]),
        .I4(ball_x_reg_reg[4]),
        .I5(dx),
        .O(\dx[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF80FF00FF00)) 
    \dx[1]_i_4 
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[2]),
        .I2(ball_x_reg_reg[1]),
        .I3(dx),
        .I4(ball_x_reg_reg[0]),
        .I5(ball_x_reg_reg[3]),
        .O(\dx[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dx_reg[1] 
       (.C(Clk),
        .CE(E),
        .D(\dx[1]_i_1_n_0 ),
        .Q(dx),
        .R(dy));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \dy[1]_i_1 
       (.I0(GameReset),
        .I1(\dy[1]_i_3_n_0 ),
        .I2(E),
        .I3(\dy[1]_i_4_n_0 ),
        .O(dy));
  LUT4 #(
    .INIT(16'h0455)) 
    \dy[1]_i_2 
       (.I0(\dy[1]_i_3_n_0 ),
        .I1(\dy[1]_i_5_n_0 ),
        .I2(\dy[1]_i_6_n_0 ),
        .I3(\dy[1]_i_7_n_0 ),
        .O(\dy[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \dy[1]_i_3 
       (.I0(ball_y_reg_reg[1]),
        .I1(ball_y_reg_reg[0]),
        .I2(\dy_reg_n_0_[1] ),
        .I3(ball_y_reg_reg[2]),
        .I4(ball_y_reg_reg[3]),
        .I5(ball_y_reg_reg[4]),
        .O(\dy[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000000100)) 
    \dy[1]_i_4 
       (.I0(ball_y_reg_reg[2]),
        .I1(ball_y_reg_reg[0]),
        .I2(ball_y_reg_reg[1]),
        .I3(\dy_reg_n_0_[1] ),
        .I4(ball_y_reg_reg[3]),
        .I5(ball_y_reg_reg[4]),
        .O(\dy[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF40FD0000000000)) 
    \dy[1]_i_5 
       (.I0(\dy_reg_n_0_[1] ),
        .I1(ball_y_reg_reg[0]),
        .I2(ball_y_reg_reg[1]),
        .I3(ball_y_reg_reg[3]),
        .I4(ball_y_reg_reg[2]),
        .I5(ball_y_reg_reg[4]),
        .O(\dy[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFFFFFFFFFFFF)) 
    \dy[1]_i_6 
       (.I0(\dy_reg_n_0_[1] ),
        .I1(ball_y_reg_reg[1]),
        .I2(new_dy2),
        .I3(ball_y_reg_reg[0]),
        .I4(new_dy21_in),
        .I5(ball_y_reg_reg[2]),
        .O(\dy[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF01FF00FF)) 
    \dy[1]_i_7 
       (.I0(ball_y_reg_reg[4]),
        .I1(ball_y_reg_reg[2]),
        .I2(ball_y_reg_reg[1]),
        .I3(\dy_reg_n_0_[1] ),
        .I4(ball_y_reg_reg[0]),
        .I5(ball_y_reg_reg[3]),
        .O(\dy[1]_i_7_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \dy_reg[1] 
       (.C(Clk),
        .CE(E),
        .D(\dy[1]_i_2_n_0 ),
        .Q(\dy_reg_n_0_[1] ),
        .S(dy));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_1
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_2
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_3
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_4
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_5
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_6
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_7
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_8
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_1
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__1_i_2
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hABB82A28)) 
    i__carry_i_1
       (.I0(PosX[9]),
        .I1(ball_x_reg_reg[5]),
        .I2(i__carry_i_11__0_n_0),
        .I3(ball_x_reg_reg[4]),
        .I4(PosX[8]),
        .O(\PosX[9]_0 [4]));
  LUT6 #(
    .INIT(64'h0909099060606009)) 
    i__carry_i_10
       (.I0(paddle_x_s[5]),
        .I1(i__carry_i_14_n_0),
        .I2(paddle_x_s[4]),
        .I3(paddle_x_s[3]),
        .I4(paddle_x_s[2]),
        .I5(i__carry_i_15__0_n_0),
        .O(i__carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_10__0
       (.I0(PosX[0]),
        .I1(PosX[1]),
        .I2(ball_x_reg_reg[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_10__1
       (.I0(PosX[0]),
        .I1(PosX[1]),
        .I2(paddle_x_s[0]),
        .O(\PosX[9] [0]));
  LUT4 #(
    .INIT(16'h8124)) 
    i__carry_i_11
       (.I0(i__carry_i_17_n_0),
        .I1(i__carry_i_16__0_n_0),
        .I2(paddle_x_s[2]),
        .I3(paddle_x_s[3]),
        .O(i__carry_i_11_n_0));
  LUT5 #(
    .INIT(32'hFC00C8FF)) 
    i__carry_i_11__0
       (.I0(ball_x_reg_reg[1]),
        .I1(ball_x_reg_reg[3]),
        .I2(ball_x_reg_reg[2]),
        .I3(ball_x_reg_reg[4]),
        .I4(ball_x_reg_reg[5]),
        .O(i__carry_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    i__carry_i_11__1
       (.I0(paddle_x_s[4]),
        .I1(paddle_x_s[3]),
        .I2(paddle_x_s[2]),
        .I3(paddle_x_s[5]),
        .O(i__carry_i_11__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE8C000)) 
    i__carry_i_12
       (.I0(ball_x_reg_reg[0]),
        .I1(ball_x_reg_reg[1]),
        .I2(ball_x_reg_reg[3]),
        .I3(ball_x_reg_reg[4]),
        .I4(ball_x_reg_reg[2]),
        .O(i__carry_i_12_n_0));
  LUT5 #(
    .INIT(32'h42242442)) 
    i__carry_i_12__0
       (.I0(paddle_x_s[0]),
        .I1(ball_x_reg_reg[0]),
        .I2(paddle_x_s[1]),
        .I3(dx),
        .I4(ball_x_reg_reg[1]),
        .O(i__carry_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h05FFA800)) 
    i__carry_i_12__1
       (.I0(paddle_x_s[3]),
        .I1(paddle_x_s[1]),
        .I2(paddle_x_s[2]),
        .I3(paddle_x_s[4]),
        .I4(paddle_x_s[5]),
        .O(i__carry_i_12__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h11575777)) 
    i__carry_i_13
       (.I0(paddle_x_s[2]),
        .I1(paddle_x_s[4]),
        .I2(paddle_x_s[0]),
        .I3(paddle_x_s[1]),
        .I4(paddle_x_s[3]),
        .O(i__carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    i__carry_i_13__0
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE83F17C0)) 
    i__carry_i_13__1
       (.I0(ball_x_reg_reg[0]),
        .I1(ball_x_reg_reg[1]),
        .I2(ball_x_reg_reg[3]),
        .I3(ball_x_reg_reg[2]),
        .I4(ball_x_reg_reg[4]),
        .O(i__carry_i_13__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_14
       (.I0(\dx[1]_i_2_n_0 ),
        .I1(ball_x_reg_reg[5]),
        .I2(ball_x_reg_reg[4]),
        .O(i__carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry_i_14__0
       (.I0(ball_x_reg_reg[2]),
        .I1(ball_x_reg_reg[0]),
        .I2(ball_x_reg_reg[1]),
        .I3(ball_x_reg_reg[3]),
        .O(i__carry_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE8177788)) 
    i__carry_i_14__1
       (.I0(paddle_x_s[3]),
        .I1(paddle_x_s[1]),
        .I2(paddle_x_s[0]),
        .I3(paddle_x_s[4]),
        .I4(paddle_x_s[2]),
        .O(i__carry_i_14__1_n_0));
  LUT6 #(
    .INIT(64'h6966669669969696)) 
    i__carry_i_15
       (.I0(PosX[5]),
        .I1(ball_x_reg_reg[4]),
        .I2(ball_x_reg_reg[2]),
        .I3(ball_x_reg_reg[3]),
        .I4(ball_x_reg_reg[1]),
        .I5(ball_x_reg_reg[0]),
        .O(i__carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAA9AA)) 
    i__carry_i_15__0
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[2]),
        .I2(ball_x_reg_reg[1]),
        .I3(dx),
        .I4(ball_x_reg_reg[0]),
        .I5(ball_x_reg_reg[3]),
        .O(i__carry_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry_i_15__1
       (.I0(paddle_x_s[2]),
        .I1(paddle_x_s[0]),
        .I2(paddle_x_s[3]),
        .I3(paddle_x_s[1]),
        .O(i__carry_i_15__1_n_0));
  LUT6 #(
    .INIT(64'h69695A965A969696)) 
    i__carry_i_16
       (.I0(PosX[5]),
        .I1(paddle_x_s[2]),
        .I2(paddle_x_s[4]),
        .I3(paddle_x_s[0]),
        .I4(paddle_x_s[1]),
        .I5(paddle_x_s[3]),
        .O(i__carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA6AAAA9A)) 
    i__carry_i_16__0
       (.I0(ball_x_reg_reg[3]),
        .I1(ball_x_reg_reg[2]),
        .I2(dx),
        .I3(ball_x_reg_reg[1]),
        .I4(ball_x_reg_reg[0]),
        .O(i__carry_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5695)) 
    i__carry_i_17
       (.I0(ball_x_reg_reg[2]),
        .I1(ball_x_reg_reg[0]),
        .I2(ball_x_reg_reg[1]),
        .I3(dx),
        .O(i__carry_i_17_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    i__carry_i_18
       (.I0(\dx[1]_i_2_n_0 ),
        .I1(ball_x_reg_reg[5]),
        .I2(ball_x_reg_reg[4]),
        .O(i__carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(PosX[9]),
        .I1(i__carry_i_11__1_n_0),
        .I2(PosX[8]),
        .I3(i__carry_i_12__1_n_0),
        .O(\PosX[9]_1 [4]));
  LUT5 #(
    .INIT(32'h88800000)) 
    i__carry_i_1__1
       (.I0(paddle_x_s[5]),
        .I1(paddle_x_s[4]),
        .I2(paddle_x_s[3]),
        .I3(paddle_x_s[2]),
        .I4(i__carry_i_13__0_n_0),
        .O(i__carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_1__2
       (.I0(ball_x_reg_reg[4]),
        .I1(\dx[1]_i_2_n_0 ),
        .I2(ball_x_reg_reg[5]),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h8EE2E22B88828222)) 
    i__carry_i_2
       (.I0(PosX[7]),
        .I1(ball_x_reg_reg[4]),
        .I2(i__carry_i_12_n_0),
        .I3(ball_x_reg_reg[3]),
        .I4(ball_x_reg_reg[5]),
        .I5(PosX[6]),
        .O(\PosX[9]_0 [3]));
  LUT6 #(
    .INIT(64'hE82E2EB288282822)) 
    i__carry_i_2__0
       (.I0(PosX[7]),
        .I1(paddle_x_s[4]),
        .I2(i__carry_i_13_n_0),
        .I3(paddle_x_s[3]),
        .I4(paddle_x_s[5]),
        .I5(PosX[6]),
        .O(\PosX[9]_1 [3]));
  LUT6 #(
    .INIT(64'h11154440333D5554)) 
    i__carry_i_2__1
       (.I0(i__carry_i_14_n_0),
        .I1(paddle_x_s[4]),
        .I2(paddle_x_s[3]),
        .I3(paddle_x_s[2]),
        .I4(paddle_x_s[5]),
        .I5(i__carry_i_15__0_n_0),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__2
       (.I0(paddle_x_s[5]),
        .I1(i__carry_i_14_n_0),
        .I2(i__carry_i_15__0_n_0),
        .I3(paddle_x_s[4]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(PosX[5]),
        .I1(i__carry_i_13__1_n_0),
        .I2(PosX[4]),
        .I3(i__carry_i_14__0_n_0),
        .O(\PosX[9]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(PosX[5]),
        .I1(i__carry_i_14__1_n_0),
        .I2(PosX[4]),
        .I3(i__carry_i_15__1_n_0),
        .O(\PosX[9]_1 [2]));
  LUT4 #(
    .INIT(16'h2271)) 
    i__carry_i_3__1
       (.I0(paddle_x_s[3]),
        .I1(i__carry_i_16__0_n_0),
        .I2(i__carry_i_17_n_0),
        .I3(paddle_x_s[2]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h1F01)) 
    i__carry_i_3__2
       (.I0(paddle_x_s[2]),
        .I1(i__carry_i_17_n_0),
        .I2(paddle_x_s[3]),
        .I3(i__carry_i_16__0_n_0),
        .O(i__carry_i_3__2_n_0));
  LUT5 #(
    .INIT(32'h8282EB82)) 
    i__carry_i_4
       (.I0(PosX[3]),
        .I1(ball_x_reg_reg[2]),
        .I2(ball_x_reg_reg[0]),
        .I3(PosX[2]),
        .I4(ball_x_reg_reg[1]),
        .O(\PosX[9]_0 [1]));
  LUT5 #(
    .INIT(32'h8282EB82)) 
    i__carry_i_4__0
       (.I0(PosX[3]),
        .I1(paddle_x_s[2]),
        .I2(paddle_x_s[0]),
        .I3(PosX[2]),
        .I4(paddle_x_s[1]),
        .O(\PosX[9]_1 [1]));
  LUT5 #(
    .INIT(32'h0D13130D)) 
    i__carry_i_4__1
       (.I0(paddle_x_s[0]),
        .I1(ball_x_reg_reg[0]),
        .I2(paddle_x_s[1]),
        .I3(dx),
        .I4(ball_x_reg_reg[1]),
        .O(i__carry_i_4__1_n_0));
  LUT5 #(
    .INIT(32'hB0C8C8B0)) 
    i__carry_i_4__2
       (.I0(paddle_x_s[0]),
        .I1(ball_x_reg_reg[0]),
        .I2(paddle_x_s[1]),
        .I3(dx),
        .I4(ball_x_reg_reg[1]),
        .O(i__carry_i_4__2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i__carry_i_5
       (.I0(ball_x_reg_reg[0]),
        .I1(PosX[1]),
        .I2(PosX[0]),
        .O(\PosX[9]_0 [0]));
  LUT3 #(
    .INIT(8'hD4)) 
    i__carry_i_5__0
       (.I0(paddle_x_s[0]),
        .I1(PosX[1]),
        .I2(PosX[0]),
        .O(\PosX[9]_1 [0]));
  LUT3 #(
    .INIT(8'h7E)) 
    i__carry_i_5__1
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry_i_5__1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry_i_5__2
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry_i_5__2_n_0));
  LUT5 #(
    .INIT(32'h11428814)) 
    i__carry_i_6
       (.I0(PosX[9]),
        .I1(i__carry_i_11__0_n_0),
        .I2(ball_x_reg_reg[4]),
        .I3(ball_x_reg_reg[5]),
        .I4(PosX[8]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(i__carry_i_11__1_n_0),
        .I1(PosX[9]),
        .I2(i__carry_i_12__1_n_0),
        .I3(PosX[8]),
        .O(\PosX[9] [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(i__carry_i_14_n_0),
        .I1(paddle_x_s[5]),
        .I2(i__carry_i_15__0_n_0),
        .I3(paddle_x_s[4]),
        .O(i__carry_i_6__1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry_i_6__2
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry_i_6__2_n_0));
  LUT6 #(
    .INIT(64'h6009099006606009)) 
    i__carry_i_7
       (.I0(ball_x_reg_reg[4]),
        .I1(PosX[7]),
        .I2(i__carry_i_12_n_0),
        .I3(ball_x_reg_reg[5]),
        .I4(ball_x_reg_reg[3]),
        .I5(PosX[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0690900960060690)) 
    i__carry_i_7__0
       (.I0(paddle_x_s[4]),
        .I1(PosX[7]),
        .I2(i__carry_i_13_n_0),
        .I3(paddle_x_s[5]),
        .I4(paddle_x_s[3]),
        .I5(PosX[6]),
        .O(\PosX[9] [3]));
  LUT6 #(
    .INIT(64'h8882288822288222)) 
    i__carry_i_7__1
       (.I0(i__carry_i_9__2_n_0),
        .I1(ball_x_reg_reg[2]),
        .I2(ball_x_reg_reg[0]),
        .I3(ball_x_reg_reg[1]),
        .I4(dx),
        .I5(paddle_x_s[2]),
        .O(i__carry_i_7__1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry_i_7__2
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry_i_7__2_n_0));
  LUT6 #(
    .INIT(64'h4015154015404015)) 
    i__carry_i_8
       (.I0(i__carry_i_15_n_0),
        .I1(ball_x_reg_reg[2]),
        .I2(ball_x_reg_reg[0]),
        .I3(ball_x_reg_reg[1]),
        .I4(ball_x_reg_reg[3]),
        .I5(PosX[4]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h4015154015404015)) 
    i__carry_i_8__0
       (.I0(i__carry_i_16_n_0),
        .I1(paddle_x_s[2]),
        .I2(paddle_x_s[0]),
        .I3(paddle_x_s[3]),
        .I4(paddle_x_s[1]),
        .I5(PosX[4]),
        .O(\PosX[9] [2]));
  LUT5 #(
    .INIT(32'h42242442)) 
    i__carry_i_8__1
       (.I0(paddle_x_s[0]),
        .I1(ball_x_reg_reg[0]),
        .I2(paddle_x_s[1]),
        .I3(dx),
        .I4(ball_x_reg_reg[1]),
        .O(i__carry_i_8__1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry_i_8__2
       (.I0(ball_x_reg_reg[4]),
        .I1(ball_x_reg_reg[5]),
        .I2(\dx[1]_i_2_n_0 ),
        .O(i__carry_i_8__2_n_0));
  LUT5 #(
    .INIT(32'h69000069)) 
    i__carry_i_9
       (.I0(ball_x_reg_reg[0]),
        .I1(ball_x_reg_reg[2]),
        .I2(PosX[3]),
        .I3(PosX[2]),
        .I4(ball_x_reg_reg[1]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h69000069)) 
    i__carry_i_9__0
       (.I0(paddle_x_s[0]),
        .I1(paddle_x_s[2]),
        .I2(PosX[3]),
        .I3(PosX[2]),
        .I4(paddle_x_s[1]),
        .O(\PosX[9] [1]));
  LUT6 #(
    .INIT(64'hE0001FFF1FFF0000)) 
    i__carry_i_9__1
       (.I0(paddle_x_s[2]),
        .I1(paddle_x_s[3]),
        .I2(paddle_x_s[4]),
        .I3(paddle_x_s[5]),
        .I4(i__carry_i_18_n_0),
        .I5(ball_x_reg_reg[5]),
        .O(i__carry_i_9__1_n_0));
  LUT6 #(
    .INIT(64'hAA6AA9AA55955655)) 
    i__carry_i_9__2
       (.I0(paddle_x_s[3]),
        .I1(ball_x_reg_reg[0]),
        .I2(ball_x_reg_reg[1]),
        .I3(dx),
        .I4(ball_x_reg_reg[2]),
        .I5(ball_x_reg_reg[3]),
        .O(i__carry_i_9__2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \new_dy2_inferred__1/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\new_dy2_inferred__1/i__carry_n_0 ,\new_dy2_inferred__1/i__carry_n_1 ,\new_dy2_inferred__1/i__carry_n_2 ,\new_dy2_inferred__1/i__carry_n_3 ,\new_dy2_inferred__1/i__carry_n_4 ,\new_dy2_inferred__1/i__carry_n_5 ,\new_dy2_inferred__1/i__carry_n_6 ,\new_dy2_inferred__1/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_new_dy2_inferred__1/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0,i__carry_i_9__1_n_0,i__carry_i_10_n_0,i__carry_i_11_n_0,i__carry_i_12__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \new_dy2_inferred__1/i__carry__0 
       (.CI(\new_dy2_inferred__1/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\new_dy2_inferred__1/i__carry__0_n_0 ,\new_dy2_inferred__1/i__carry__0_n_1 ,\new_dy2_inferred__1/i__carry__0_n_2 ,\new_dy2_inferred__1/i__carry__0_n_3 ,\new_dy2_inferred__1/i__carry__0_n_4 ,\new_dy2_inferred__1/i__carry__0_n_5 ,\new_dy2_inferred__1/i__carry__0_n_6 ,\new_dy2_inferred__1/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_new_dy2_inferred__1/i__carry__0_O_UNCONNECTED [7:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \new_dy2_inferred__1/i__carry__1 
       (.CI(\new_dy2_inferred__1/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_new_dy2_inferred__1/i__carry__1_CO_UNCONNECTED [7:1],new_dy2}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i__carry__1_i_1_n_0}),
        .O(\NLW_new_dy2_inferred__1/i__carry__1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i__carry__1_i_2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \new_dy2_inferred__2/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_new_dy2_inferred__2/i__carry_CO_UNCONNECTED [7:4],new_dy21_in,\new_dy2_inferred__2/i__carry_n_5 ,\new_dy2_inferred__2/i__carry_n_6 ,\new_dy2_inferred__2/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_new_dy2_inferred__2/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \paddle_x_reg[0]_i_1 
       (.I0(paddle_x_s[0]),
        .O(pad_right[1]));
  LUT6 #(
    .INIT(64'hAAAA55555555AAA8)) 
    \paddle_x_reg[1]_i_1 
       (.I0(MoveLeft),
        .I1(paddle_x_s[4]),
        .I2(paddle_x_s[2]),
        .I3(\paddle_x_reg[2]_i_2_n_0 ),
        .I4(paddle_x_s[1]),
        .I5(paddle_x_s[0]),
        .O(\paddle_x_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA5A5F0F0F0F05A58)) 
    \paddle_x_reg[2]_i_1 
       (.I0(MoveLeft),
        .I1(paddle_x_s[4]),
        .I2(paddle_x_s[2]),
        .I3(\paddle_x_reg[2]_i_2_n_0 ),
        .I4(paddle_x_s[0]),
        .I5(paddle_x_s[1]),
        .O(\paddle_x_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \paddle_x_reg[2]_i_2 
       (.I0(paddle_x_s[3]),
        .I1(paddle_x_s[5]),
        .O(\paddle_x_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \paddle_x_reg[3]_i_1 
       (.I0(\paddle_x_reg[5]_i_5_n_0 ),
        .I1(paddle_x_s[3]),
        .I2(paddle_x_s[2]),
        .O(\paddle_x_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \paddle_x_reg[4]_i_1 
       (.I0(\paddle_x_reg[5]_i_5_n_0 ),
        .I1(paddle_x_s[2]),
        .I2(paddle_x_s[4]),
        .I3(paddle_x_s[3]),
        .O(\paddle_x_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \paddle_x_reg[5]_i_1 
       (.I0(E),
        .I1(MoveRight),
        .I2(\paddle_x_reg[5]_i_3_n_0 ),
        .I3(\paddle_x_reg[5]_i_4_n_0 ),
        .O(paddle_x_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \paddle_x_reg[5]_i_2 
       (.I0(paddle_x_s[2]),
        .I1(\paddle_x_reg[5]_i_5_n_0 ),
        .I2(paddle_x_s[3]),
        .I3(paddle_x_s[5]),
        .I4(paddle_x_s[4]),
        .O(\paddle_x_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \paddle_x_reg[5]_i_3 
       (.I0(paddle_x_s[2]),
        .I1(paddle_x_s[3]),
        .I2(paddle_x_s[4]),
        .I3(paddle_x_s[5]),
        .O(\paddle_x_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \paddle_x_reg[5]_i_4 
       (.I0(paddle_x_s[1]),
        .I1(paddle_x_s[0]),
        .I2(\paddle_x_reg[2]_i_2_n_0 ),
        .I3(paddle_x_s[2]),
        .I4(paddle_x_s[4]),
        .I5(MoveLeft),
        .O(\paddle_x_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F0F0F0F0F0507)) 
    \paddle_x_reg[5]_i_5 
       (.I0(MoveLeft),
        .I1(paddle_x_s[4]),
        .I2(paddle_x_s[2]),
        .I3(\paddle_x_reg[2]_i_2_n_0 ),
        .I4(paddle_x_s[0]),
        .I5(paddle_x_s[1]),
        .O(\paddle_x_reg[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_x_reg_reg[0] 
       (.C(Clk),
        .CE(paddle_x_reg),
        .D(pad_right[1]),
        .Q(paddle_x_s[0]),
        .R(GameReset));
  FDSE #(
    .INIT(1'b1)) 
    \paddle_x_reg_reg[1] 
       (.C(Clk),
        .CE(paddle_x_reg),
        .D(\paddle_x_reg[1]_i_1_n_0 ),
        .Q(paddle_x_s[1]),
        .S(GameReset));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_x_reg_reg[2] 
       (.C(Clk),
        .CE(paddle_x_reg),
        .D(\paddle_x_reg[2]_i_1_n_0 ),
        .Q(paddle_x_s[2]),
        .R(GameReset));
  FDSE #(
    .INIT(1'b1)) 
    \paddle_x_reg_reg[3] 
       (.C(Clk),
        .CE(paddle_x_reg),
        .D(\paddle_x_reg[3]_i_1_n_0 ),
        .Q(paddle_x_s[3]),
        .S(GameReset));
  FDSE #(
    .INIT(1'b1)) 
    \paddle_x_reg_reg[4] 
       (.C(Clk),
        .CE(paddle_x_reg),
        .D(\paddle_x_reg[4]_i_1_n_0 ),
        .Q(paddle_x_s[4]),
        .S(GameReset));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_x_reg_reg[5] 
       (.C(Clk),
        .CE(paddle_x_reg),
        .D(\paddle_x_reg[5]_i_2_n_0 ),
        .Q(paddle_x_s[5]),
        .R(GameReset));
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
