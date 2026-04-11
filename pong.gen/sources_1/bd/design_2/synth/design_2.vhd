--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Sat Apr 11 14:44:46 2026
--Host        : dell16 running 64-bit major release  (build 9200)
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  port (
    HDMI_CK_N : out STD_LOGIC;
    HDMI_CK_P : out STD_LOGIC;
    HDMI_D0_N : out STD_LOGIC;
    HDMI_D0_P : out STD_LOGIC;
    HDMI_D1_N : out STD_LOGIC;
    HDMI_D1_P : out STD_LOGIC;
    HDMI_D2_N : out STD_LOGIC;
    HDMI_D2_P : out STD_LOGIC;
    PL_USER_PB_0 : in STD_LOGIC;
    ROT_A : in STD_LOGIC;
    ROT_B : in STD_LOGIC;
    clk_100mhz_clk_n : in STD_LOGIC;
    clk_100mhz_clk_p : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_PongImgGen_0_0 is
  port (
    Clk : in STD_LOGIC;
    ResetN : in STD_LOGIC;
    GameReset : in STD_LOGIC;
    MoveLeft : in STD_LOGIC;
    MoveRight : in STD_LOGIC;
    DE : in STD_LOGIC;
    PosX : in STD_LOGIC_VECTOR ( 9 downto 0 );
    PosY : in STD_LOGIC_VECTOR ( 9 downto 0 );
    R : out STD_LOGIC_VECTOR ( 7 downto 0 );
    G : out STD_LOGIC_VECTOR ( 7 downto 0 );
    B : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2_PongImgGen_0_0;
  component design_2_VideoTiming_0_0 is
  port (
    Clk : in STD_LOGIC;
    ResetN : in STD_LOGIC;
    DE : out STD_LOGIC;
    HSync : out STD_LOGIC;
    VSync : out STD_LOGIC;
    PosX : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PosY : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component design_2_VideoTiming_0_0;
  component design_2_RotaryEnc_0_0 is
  port (
    ROT_A : in STD_LOGIC;
    ROT_B : in STD_LOGIC;
    Clk : in STD_LOGIC;
    RotL : out STD_LOGIC;
    RotR : out STD_LOGIC
  );
  end component design_2_RotaryEnc_0_0;
  component design_2_HDMI_TX_0_0 is
  port (
    pxClk : in STD_LOGIC;
    pxClkX5 : in STD_LOGIC;
    ResetN : in STD_LOGIC;
    DE : in STD_LOGIC;
    HSync : in STD_LOGIC;
    VSync : in STD_LOGIC;
    R : in STD_LOGIC_VECTOR ( 7 downto 0 );
    G : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    HDMI_D0_P : out STD_LOGIC;
    HDMI_D0_N : out STD_LOGIC;
    HDMI_D1_P : out STD_LOGIC;
    HDMI_D1_N : out STD_LOGIC;
    HDMI_D2_P : out STD_LOGIC;
    HDMI_D2_N : out STD_LOGIC;
    HDMI_CK_P : out STD_LOGIC;
    HDMI_CK_N : out STD_LOGIC
  );
  end component design_2_HDMI_TX_0_0;
  component design_2_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    Clk_25MHz : out STD_LOGIC;
    Clk_125MHz : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_2_clk_wiz_0_0;
  signal Net : STD_LOGIC;
  signal PongImgGen_0_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PongImgGen_0_G : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PongImgGen_0_R : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RotaryEnc_0_RotL : STD_LOGIC;
  signal RotaryEnc_0_RotR : STD_LOGIC;
  signal VideoTiming_0_HSync : STD_LOGIC;
  signal VideoTiming_0_PosX : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal VideoTiming_0_PosY : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal VideoTiming_0_VSync : STD_LOGIC;
  signal clk_wiz_0_Clk_125MHz : STD_LOGIC;
  signal clk_wiz_0_Clk_25MHz : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100mhz_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 clk_100mhz CLK_N";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk_100mhz_clk_n : signal is "Slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100mhz_clk_n : signal is "XIL_INTERFACENAME clk_100mhz, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of clk_100mhz_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 clk_100mhz CLK_P";
begin
HDMI_TX_0: component design_2_HDMI_TX_0_0
     port map (
      B(7 downto 0) => PongImgGen_0_B(7 downto 0),
      DE => Net,
      G(7 downto 0) => PongImgGen_0_G(7 downto 0),
      HDMI_CK_N => HDMI_CK_N,
      HDMI_CK_P => HDMI_CK_P,
      HDMI_D0_N => HDMI_D0_N,
      HDMI_D0_P => HDMI_D0_P,
      HDMI_D1_N => HDMI_D1_N,
      HDMI_D1_P => HDMI_D1_P,
      HDMI_D2_N => HDMI_D2_N,
      HDMI_D2_P => HDMI_D2_P,
      HSync => VideoTiming_0_HSync,
      R(7 downto 0) => PongImgGen_0_R(7 downto 0),
      ResetN => clk_wiz_0_locked,
      VSync => VideoTiming_0_VSync,
      pxClk => clk_wiz_0_Clk_25MHz,
      pxClkX5 => clk_wiz_0_Clk_125MHz
    );
PongImgGen_0: component design_2_PongImgGen_0_0
     port map (
      B(7 downto 0) => PongImgGen_0_B(7 downto 0),
      Clk => clk_wiz_0_Clk_25MHz,
      DE => Net,
      G(7 downto 0) => PongImgGen_0_G(7 downto 0),
      GameReset => PL_USER_PB_0,
      MoveLeft => RotaryEnc_0_RotL,
      MoveRight => RotaryEnc_0_RotR,
      PosX(9 downto 0) => VideoTiming_0_PosX(9 downto 0),
      PosY(9 downto 0) => VideoTiming_0_PosY(9 downto 0),
      R(7 downto 0) => PongImgGen_0_R(7 downto 0),
      ResetN => clk_wiz_0_locked
    );
RotaryEnc_0: component design_2_RotaryEnc_0_0
     port map (
      Clk => clk_wiz_0_Clk_25MHz,
      ROT_A => ROT_A,
      ROT_B => ROT_B,
      RotL => RotaryEnc_0_RotL,
      RotR => RotaryEnc_0_RotR
    );
VideoTiming_0: component design_2_VideoTiming_0_0
     port map (
      Clk => clk_wiz_0_Clk_25MHz,
      DE => Net,
      HSync => VideoTiming_0_HSync,
      PosX(9 downto 0) => VideoTiming_0_PosX(9 downto 0),
      PosY(9 downto 0) => VideoTiming_0_PosY(9 downto 0),
      ResetN => clk_wiz_0_locked,
      VSync => VideoTiming_0_VSync
    );
clk_wiz_0: component design_2_clk_wiz_0_0
     port map (
      Clk_125MHz => clk_wiz_0_Clk_125MHz,
      Clk_25MHz => clk_wiz_0_Clk_25MHz,
      clk_in1_n => clk_100mhz_clk_n,
      clk_in1_p => clk_100mhz_clk_p,
      locked => clk_wiz_0_locked,
      reset => '0'
    );
end STRUCTURE;
