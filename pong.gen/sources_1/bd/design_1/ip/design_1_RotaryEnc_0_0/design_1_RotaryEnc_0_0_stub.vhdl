-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr 10 23:57:58 2026
-- Host        : dell16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/XnxPrj/pong/pong.gen/sources_1/bd/design_1/ip/design_1_RotaryEnc_0_0/design_1_RotaryEnc_0_0_stub.vhdl
-- Design      : design_1_RotaryEnc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_RotaryEnc_0_0 is
  Port ( 
    ROT_A : in STD_LOGIC;
    ROT_B : in STD_LOGIC;
    Clk : in STD_LOGIC;
    RotL : out STD_LOGIC;
    RotR : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_RotaryEnc_0_0 : entity is "design_1_RotaryEnc_0_0,RotaryEnc_wrap,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_RotaryEnc_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_RotaryEnc_0_0 : entity is "package_project";
end design_1_RotaryEnc_0_0;

architecture stub of design_1_RotaryEnc_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ROT_A,ROT_B,Clk,RotL,RotR";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "RotaryEnc_wrap,Vivado 2025.2";
begin
end;
