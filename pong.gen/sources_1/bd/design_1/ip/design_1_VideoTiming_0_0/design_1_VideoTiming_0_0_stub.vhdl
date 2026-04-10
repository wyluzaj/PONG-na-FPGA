-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Apr 11 00:38:23 2026
-- Host        : dell16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/XnxPrj/pong/pong.gen/sources_1/bd/design_1/ip/design_1_VideoTiming_0_0/design_1_VideoTiming_0_0_stub.vhdl
-- Design      : design_1_VideoTiming_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_VideoTiming_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    ResetN : in STD_LOGIC;
    DE : out STD_LOGIC;
    HSync : out STD_LOGIC;
    VSync : out STD_LOGIC;
    PosX : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PosY : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_VideoTiming_0_0 : entity is "design_1_VideoTiming_0_0,VideoTiming,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of design_1_VideoTiming_0_0 : entity is "design_1_VideoTiming_0_0,VideoTiming,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VideoTiming,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_VideoTiming_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_VideoTiming_0_0 : entity is "module_ref";
end design_1_VideoTiming_0_0;

architecture stub of design_1_VideoTiming_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Clk,ResetN,DE,HSync,VSync,PosX[9:0],PosY[9:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk : signal is "slave Clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET ResetN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_Clk_25MHz, INSERT_VIP 0";
  attribute x_interface_info of ResetN : signal is "xilinx.com:signal:reset:1.0 ResetN RST";
  attribute x_interface_mode of ResetN : signal is "slave ResetN";
  attribute x_interface_parameter of ResetN : signal is "XIL_INTERFACENAME ResetN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "VideoTiming,Vivado 2025.2";
begin
end;
