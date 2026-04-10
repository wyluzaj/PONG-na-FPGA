--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Sat Apr 11 00:39:50 2026
--Host        : dell16 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    HDMI_CK_N_0 : out STD_LOGIC;
    HDMI_CK_P_0 : out STD_LOGIC;
    HDMI_D0_N_0 : out STD_LOGIC;
    HDMI_D0_P_0 : out STD_LOGIC;
    HDMI_D1_N_0 : out STD_LOGIC;
    HDMI_D1_P_0 : out STD_LOGIC;
    HDMI_D2_N_0 : out STD_LOGIC;
    HDMI_D2_P_0 : out STD_LOGIC;
    PL_USER_PB_0_0 : in STD_LOGIC;
    ROT_A_0 : in STD_LOGIC;
    ROT_B_0 : in STD_LOGIC;
    clk_100mhz_clk_n : in STD_LOGIC;
    clk_100mhz_clk_p : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ROT_A_0 : in STD_LOGIC;
    ROT_B_0 : in STD_LOGIC;
    PL_USER_PB_0_0 : in STD_LOGIC;
    clk_100mhz_clk_n : in STD_LOGIC;
    clk_100mhz_clk_p : in STD_LOGIC;
    HDMI_D0_P_0 : out STD_LOGIC;
    HDMI_D0_N_0 : out STD_LOGIC;
    HDMI_D1_P_0 : out STD_LOGIC;
    HDMI_D1_N_0 : out STD_LOGIC;
    HDMI_D2_P_0 : out STD_LOGIC;
    HDMI_D2_N_0 : out STD_LOGIC;
    HDMI_CK_P_0 : out STD_LOGIC;
    HDMI_CK_N_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      HDMI_CK_N_0 => HDMI_CK_N_0,
      HDMI_CK_P_0 => HDMI_CK_P_0,
      HDMI_D0_N_0 => HDMI_D0_N_0,
      HDMI_D0_P_0 => HDMI_D0_P_0,
      HDMI_D1_N_0 => HDMI_D1_N_0,
      HDMI_D1_P_0 => HDMI_D1_P_0,
      HDMI_D2_N_0 => HDMI_D2_N_0,
      HDMI_D2_P_0 => HDMI_D2_P_0,
      PL_USER_PB_0_0 => PL_USER_PB_0_0,
      ROT_A_0 => ROT_A_0,
      ROT_B_0 => ROT_B_0,
      clk_100mhz_clk_n => clk_100mhz_clk_n,
      clk_100mhz_clk_p => clk_100mhz_clk_p
    );
end STRUCTURE;
