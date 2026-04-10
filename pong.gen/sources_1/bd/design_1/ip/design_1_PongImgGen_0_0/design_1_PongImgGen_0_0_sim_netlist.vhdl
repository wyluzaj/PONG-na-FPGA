-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Apr 11 00:38:23 2026
-- Host        : dell16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/XnxPrj/pong/pong.gen/sources_1/bd/design_1/ip/design_1_PongImgGen_0_0/design_1_PongImgGen_0_0_sim_netlist.vhdl
-- Design      : design_1_PongImgGen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PongImgGen_0_0_freq_divider is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PongImgGen_0_0_freq_divider : entity is "freq_divider";
end design_1_PongImgGen_0_0_freq_divider;

architecture STRUCTURE of design_1_PongImgGen_0_0_freq_divider is
  signal counter : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal \counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \counter[18]_i_2_n_0\ : STD_LOGIC;
  signal \counter[18]_i_3_n_0\ : STD_LOGIC;
  signal \counter[18]_i_4_n_0\ : STD_LOGIC;
  signal \counter[18]_i_5_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal \NLW_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_counter0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
begin
counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => counter(0),
      CI_TOP => '0',
      CO(7) => counter0_carry_n_0,
      CO(6) => counter0_carry_n_1,
      CO(5) => counter0_carry_n_2,
      CO(4) => counter0_carry_n_3,
      CO(3) => counter0_carry_n_4,
      CO(2) => counter0_carry_n_5,
      CO(1) => counter0_carry_n_6,
      CO(0) => counter0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(8 downto 1),
      S(7 downto 0) => counter(8 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \counter0_carry__0_n_0\,
      CO(6) => \counter0_carry__0_n_1\,
      CO(5) => \counter0_carry__0_n_2\,
      CO(4) => \counter0_carry__0_n_3\,
      CO(3) => \counter0_carry__0_n_4\,
      CO(2) => \counter0_carry__0_n_5\,
      CO(1) => \counter0_carry__0_n_6\,
      CO(0) => \counter0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(16 downto 9),
      S(7 downto 0) => counter(16 downto 9)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_counter0_carry__1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \counter0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_counter0_carry__1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => data0(18 downto 17),
      S(7 downto 2) => B"000000",
      S(1 downto 0) => counter(18 downto 17)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_0(0)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \counter[18]_i_2_n_0\,
      I1 => \counter[18]_i_3_n_0\,
      I2 => counter(0),
      I3 => counter(17),
      I4 => counter(18),
      I5 => \counter[18]_i_4_n_0\,
      O => \counter[18]_i_1_n_0\
    );
\counter[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(4),
      I3 => counter(3),
      O => \counter[18]_i_2_n_0\
    );
\counter[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(14),
      I1 => counter(13),
      I2 => counter(16),
      I3 => counter(15),
      O => \counter[18]_i_3_n_0\
    );
\counter[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => counter(7),
      I1 => counter(8),
      I2 => counter(5),
      I3 => counter(6),
      I4 => \counter[18]_i_5_n_0\,
      O => \counter[18]_i_4_n_0\
    );
\counter[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter(9),
      I1 => counter(10),
      I2 => counter(12),
      I3 => counter(11),
      O => \counter[18]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(0),
      Q => counter(0),
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(10),
      Q => counter(10),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(11),
      Q => counter(11),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(12),
      Q => counter(12),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(13),
      Q => counter(13),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(14),
      Q => counter(14),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(15),
      Q => counter(15),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(16),
      Q => counter(16),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(17),
      Q => counter(17),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(18),
      Q => counter(18),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(1),
      Q => counter(1),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(2),
      Q => counter(2),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(3),
      Q => counter(3),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(4),
      Q => counter(4),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(5),
      Q => counter(5),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(6),
      Q => counter(6),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(7),
      Q => counter(7),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(8),
      Q => counter(8),
      R => \counter[18]_i_1_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => data0(9),
      Q => counter(9),
      R => \counter[18]_i_1_n_0\
    );
tick_out_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \counter[18]_i_1_n_0\,
      Q => E(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PongImgGen_0_0_pong_core is
  port (
    S : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \paddle_x_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \PosX[9]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \ball_y_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \ball_x_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \paddle_x_reg_reg[0]_1\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \PosX[9]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    R3_carry_i_1_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \PosX[9]_1\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \PosY[9]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \PosY[9]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    G : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk : in STD_LOGIC;
    MoveLeft : in STD_LOGIC;
    PosX : in STD_LOGIC_VECTOR ( 9 downto 0 );
    PosY : in STD_LOGIC_VECTOR ( 9 downto 0 );
    GameReset : in STD_LOGIC;
    MoveRight : in STD_LOGIC;
    DE : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \B[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \B[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \B[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \B[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \B[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PongImgGen_0_0_pong_core : entity is "pong_core";
end design_1_PongImgGen_0_0_pong_core;

architecture STRUCTURE of design_1_PongImgGen_0_0_pong_core is
  signal \^b\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal G4_carry_i_13_n_0 : STD_LOGIC;
  signal G4_carry_i_14_n_0 : STD_LOGIC;
  signal G4_carry_i_15_n_0 : STD_LOGIC;
  signal G4_carry_i_16_n_0 : STD_LOGIC;
  signal G4_carry_i_17_n_0 : STD_LOGIC;
  signal G4_carry_i_18_n_0 : STD_LOGIC;
  signal G4_carry_i_19_n_0 : STD_LOGIC;
  signal G4_carry_i_1_n_1 : STD_LOGIC;
  signal G4_carry_i_1_n_2 : STD_LOGIC;
  signal G4_carry_i_1_n_3 : STD_LOGIC;
  signal G4_carry_i_1_n_4 : STD_LOGIC;
  signal G4_carry_i_1_n_5 : STD_LOGIC;
  signal G4_carry_i_1_n_6 : STD_LOGIC;
  signal G4_carry_i_1_n_7 : STD_LOGIC;
  signal G4_carry_i_20_n_0 : STD_LOGIC;
  signal \G[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \G[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \G[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \G[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \G[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \G[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal R1_carry_i_11_n_7 : STD_LOGIC;
  signal R1_carry_i_12_n_0 : STD_LOGIC;
  signal R1_carry_i_12_n_1 : STD_LOGIC;
  signal R1_carry_i_12_n_2 : STD_LOGIC;
  signal R1_carry_i_12_n_3 : STD_LOGIC;
  signal R1_carry_i_12_n_4 : STD_LOGIC;
  signal R1_carry_i_12_n_5 : STD_LOGIC;
  signal R1_carry_i_12_n_6 : STD_LOGIC;
  signal R1_carry_i_12_n_7 : STD_LOGIC;
  signal R1_carry_i_13_n_0 : STD_LOGIC;
  signal R1_carry_i_14_n_0 : STD_LOGIC;
  signal R1_carry_i_15_n_0 : STD_LOGIC;
  signal R1_carry_i_16_n_0 : STD_LOGIC;
  signal R1_carry_i_17_n_0 : STD_LOGIC;
  signal R1_carry_i_18_n_0 : STD_LOGIC;
  signal R1_carry_i_19_n_0 : STD_LOGIC;
  signal R1_carry_i_20_n_0 : STD_LOGIC;
  signal R1_carry_i_21_n_0 : STD_LOGIC;
  signal R1_carry_i_22_n_0 : STD_LOGIC;
  signal R2_carry_i_11_n_0 : STD_LOGIC;
  signal R2_carry_i_12_n_0 : STD_LOGIC;
  signal R2_carry_i_13_n_0 : STD_LOGIC;
  signal R2_carry_i_14_n_0 : STD_LOGIC;
  signal R3_carry_i_13_n_0 : STD_LOGIC;
  signal R3_carry_i_14_n_0 : STD_LOGIC;
  signal R3_carry_i_15_n_0 : STD_LOGIC;
  signal R3_carry_i_16_n_0 : STD_LOGIC;
  signal R3_carry_i_17_n_0 : STD_LOGIC;
  signal R3_carry_i_18_n_0 : STD_LOGIC;
  signal R3_carry_i_19_n_0 : STD_LOGIC;
  signal R3_carry_i_1_n_3 : STD_LOGIC;
  signal R3_carry_i_1_n_4 : STD_LOGIC;
  signal R3_carry_i_1_n_5 : STD_LOGIC;
  signal R3_carry_i_1_n_6 : STD_LOGIC;
  signal R3_carry_i_1_n_7 : STD_LOGIC;
  signal ball_bottom : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ball_right : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal ball_x_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal ball_x_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal ball_x_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal ball_x_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal ball_x_reg0_carry_i_5_n_0 : STD_LOGIC;
  signal ball_x_reg0_carry_i_6_n_0 : STD_LOGIC;
  signal ball_x_reg0_carry_n_4 : STD_LOGIC;
  signal ball_x_reg0_carry_n_5 : STD_LOGIC;
  signal ball_x_reg0_carry_n_6 : STD_LOGIC;
  signal ball_x_reg0_carry_n_7 : STD_LOGIC;
  signal \ball_x_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal ball_x_reg_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^ball_x_reg_reg[0]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \ball_y_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \ball_y_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \ball_y_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal ball_y_reg_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dx : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \dx[1]_i_1_n_0\ : STD_LOGIC;
  signal \dx[1]_i_2_n_0\ : STD_LOGIC;
  signal \dx[1]_i_3_n_0\ : STD_LOGIC;
  signal \dx[1]_i_4_n_0\ : STD_LOGIC;
  signal dy : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \dy[1]_i_2_n_0\ : STD_LOGIC;
  signal \dy[1]_i_3_n_0\ : STD_LOGIC;
  signal \dy[1]_i_4_n_0\ : STD_LOGIC;
  signal \dy[1]_i_5_n_0\ : STD_LOGIC;
  signal \dy[1]_i_6_n_0\ : STD_LOGIC;
  signal \dy[1]_i_7_n_0\ : STD_LOGIC;
  signal \dy_reg_n_0_[1]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_14__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_15__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__2_n_0\ : STD_LOGIC;
  signal new_dy2 : STD_LOGIC;
  signal new_dy21_in : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \new_dy2_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \new_dy2_inferred__2/i__carry_n_5\ : STD_LOGIC;
  signal \new_dy2_inferred__2/i__carry_n_6\ : STD_LOGIC;
  signal \new_dy2_inferred__2/i__carry_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal pad_right : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal paddle_x_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \paddle_x_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \paddle_x_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \^paddle_x_reg_reg[0]_1\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal paddle_x_s : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_R1_carry_i_11_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_R1_carry_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_R3_carry_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_R3_carry_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_ball_x_reg0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_ball_x_reg0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_new_dy2_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_new_dy2_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_new_dy2_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_new_dy2_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_new_dy2_inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_new_dy2_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \G[0]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \G[0]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \G[0]_INST_0_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \G[0]_INST_0_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \G[5]_INST_0_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of R2_carry_i_11 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of R2_carry_i_12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of R2_carry_i_13 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of R2_carry_i_14 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ball_x_reg0_carry : label is 35;
  attribute SOFT_HLUTNM of \ball_x_reg[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ball_y_reg[2]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ball_y_reg[2]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i__carry_i_11__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i__carry_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i__carry_i_12__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i__carry_i_13\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i__carry_i_13__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i__carry_i_13__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i__carry_i_14\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i__carry_i_14__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i__carry_i_14__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i__carry_i_15__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i__carry_i_16__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i__carry_i_17\ : label is "soft_lutpair11";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \new_dy2_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \new_dy2_inferred__1/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \new_dy2_inferred__1/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \new_dy2_inferred__2/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of \paddle_x_reg[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \paddle_x_reg[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \paddle_x_reg[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \paddle_x_reg[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \paddle_x_reg[5]_i_3\ : label is "soft_lutpair4";
begin
  B(1 downto 0) <= \^b\(1 downto 0);
  \ball_x_reg_reg[0]_0\(5 downto 0) <= \^ball_x_reg_reg[0]_0\(5 downto 0);
  \paddle_x_reg_reg[0]_1\(5 downto 0) <= \^paddle_x_reg_reg[0]_1\(5 downto 0);
\B[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => DE,
      I1 => CO(0),
      I2 => \B[0]\(0),
      I3 => \B[0]_0\(0),
      I4 => \B[0]_1\(0),
      O => \^b\(0)
    );
\B[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBABAAAA"
    )
        port map (
      I0 => \^b\(0),
      I1 => \G[5]_INST_0_i_2_n_0\,
      I2 => \G[0]_INST_0_i_1_n_0\,
      I3 => PosY(0),
      I4 => PosY(4),
      I5 => \G[0]_INST_0_i_2_n_0\,
      O => \^b\(1)
    );
G4_carry_i_1: unisim.vcomponents.CARRY8
     port map (
      CI => paddle_x_s(0),
      CI_TOP => '0',
      CO(7) => \^paddle_x_reg_reg[0]_1\(5),
      CO(6) => G4_carry_i_1_n_1,
      CO(5) => G4_carry_i_1_n_2,
      CO(4) => G4_carry_i_1_n_3,
      CO(3) => G4_carry_i_1_n_4,
      CO(2) => G4_carry_i_1_n_5,
      CO(1) => G4_carry_i_1_n_6,
      CO(0) => G4_carry_i_1_n_7,
      DI(7 downto 1) => B"0001110",
      DI(0) => paddle_x_s(1),
      O(7 downto 0) => pad_right(9 downto 2),
      S(7) => G4_carry_i_13_n_0,
      S(6) => G4_carry_i_14_n_0,
      S(5) => G4_carry_i_15_n_0,
      S(4) => G4_carry_i_16_n_0,
      S(3) => G4_carry_i_17_n_0,
      S(2) => G4_carry_i_18_n_0,
      S(1) => G4_carry_i_19_n_0,
      S(0) => G4_carry_i_20_n_0
    );
G4_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pad_right(5),
      I1 => PosX(5),
      I2 => pad_right(4),
      I3 => PosX(4),
      O => \paddle_x_reg_reg[0]_0\(2)
    );
G4_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pad_right(3),
      I1 => PosX(3),
      I2 => pad_right(2),
      I3 => PosX(2),
      O => \paddle_x_reg_reg[0]_0\(1)
    );
G4_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => PosX(1),
      I1 => paddle_x_s(0),
      I2 => PosX(0),
      O => \paddle_x_reg_reg[0]_0\(0)
    );
G4_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => paddle_x_s(4),
      I1 => paddle_x_s(3),
      I2 => paddle_x_s(2),
      I3 => paddle_x_s(5),
      O => G4_carry_i_13_n_0
    );
G4_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05FFA800"
    )
        port map (
      I0 => paddle_x_s(3),
      I1 => paddle_x_s(1),
      I2 => paddle_x_s(2),
      I3 => paddle_x_s(4),
      I4 => paddle_x_s(5),
      O => G4_carry_i_14_n_0
    );
G4_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11113737ECC88888"
    )
        port map (
      I0 => paddle_x_s(5),
      I1 => paddle_x_s(3),
      I2 => paddle_x_s(1),
      I3 => paddle_x_s(0),
      I4 => paddle_x_s(2),
      I5 => paddle_x_s(4),
      O => G4_carry_i_15_n_0
    );
G4_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6369633969396999"
    )
        port map (
      I0 => paddle_x_s(3),
      I1 => paddle_x_s(5),
      I2 => paddle_x_s(2),
      I3 => paddle_x_s(4),
      I4 => paddle_x_s(0),
      I5 => paddle_x_s(1),
      O => G4_carry_i_16_n_0
    );
G4_carry_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66393999"
    )
        port map (
      I0 => paddle_x_s(2),
      I1 => paddle_x_s(4),
      I2 => paddle_x_s(0),
      I3 => paddle_x_s(1),
      I4 => paddle_x_s(3),
      O => G4_carry_i_17_n_0
    );
G4_carry_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => paddle_x_s(1),
      I1 => paddle_x_s(3),
      I2 => paddle_x_s(0),
      I3 => paddle_x_s(2),
      O => G4_carry_i_18_n_0
    );
G4_carry_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => paddle_x_s(0),
      I1 => paddle_x_s(2),
      O => G4_carry_i_19_n_0
    );
G4_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosX(9),
      I1 => pad_right(9),
      I2 => pad_right(8),
      I3 => PosX(8),
      O => \^paddle_x_reg_reg[0]_1\(4)
    );
G4_carry_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => paddle_x_s(1),
      O => G4_carry_i_20_n_0
    );
G4_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosX(7),
      I1 => pad_right(7),
      I2 => pad_right(6),
      I3 => PosX(6),
      O => \^paddle_x_reg_reg[0]_1\(3)
    );
G4_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosX(5),
      I1 => pad_right(5),
      I2 => pad_right(4),
      I3 => PosX(4),
      O => \^paddle_x_reg_reg[0]_1\(2)
    );
G4_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosX(3),
      I1 => pad_right(3),
      I2 => pad_right(2),
      I3 => PosX(2),
      O => \^paddle_x_reg_reg[0]_1\(1)
    );
G4_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => PosX(0),
      I1 => paddle_x_s(0),
      I2 => PosX(1),
      O => \^paddle_x_reg_reg[0]_1\(0)
    );
G4_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^paddle_x_reg_reg[0]_1\(5),
      O => \paddle_x_reg_reg[0]_0\(5)
    );
G4_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pad_right(9),
      I1 => PosX(9),
      I2 => pad_right(8),
      I3 => PosX(8),
      O => \paddle_x_reg_reg[0]_0\(4)
    );
G4_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pad_right(7),
      I1 => PosX(7),
      I2 => pad_right(6),
      I3 => PosX(6),
      O => \paddle_x_reg_reg[0]_0\(3)
    );
\G[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008AAAAAAAAAA"
    )
        port map (
      I0 => DE,
      I1 => \G[0]_INST_0_i_1_n_0\,
      I2 => PosY(0),
      I3 => PosY(4),
      I4 => \G[0]_INST_0_i_2_n_0\,
      I5 => \G[0]_INST_0_i_3_n_0\,
      O => G(1)
    );
\G[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => PosY(1),
      I1 => PosY(3),
      I2 => PosY(2),
      O => \G[0]_INST_0_i_1_n_0\
    );
\G[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \G[0]_INST_0_i_4_n_0\,
      I1 => \B[7]\(0),
      I2 => PosY(9),
      I3 => \B[7]_0\(0),
      I4 => PosY(5),
      I5 => \G[0]_INST_0_i_5_n_0\,
      O => \G[0]_INST_0_i_2_n_0\
    );
\G[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \B[0]_1\(0),
      I1 => \B[0]_0\(0),
      I2 => \B[0]\(0),
      I3 => CO(0),
      O => \G[0]_INST_0_i_3_n_0\
    );
\G[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => PosY(2),
      I1 => PosY(3),
      I2 => PosY(1),
      I3 => PosY(5),
      I4 => PosY(4),
      O => \G[0]_INST_0_i_4_n_0\
    );
\G[0]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => PosY(8),
      I1 => PosY(7),
      I2 => PosY(6),
      O => \G[0]_INST_0_i_5_n_0\
    );
\G[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5700FFFF"
    )
        port map (
      I0 => \G[0]_INST_0_i_3_n_0\,
      I1 => \G[0]_INST_0_i_2_n_0\,
      I2 => \G[5]_INST_0_i_1_n_0\,
      I3 => DE,
      I4 => \G[5]_INST_0_i_2_n_0\,
      O => G(0)
    );
\G[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => PosY(4),
      I1 => PosY(0),
      I2 => PosY(1),
      I3 => PosY(3),
      I4 => PosY(2),
      O => \G[5]_INST_0_i_1_n_0\
    );
\G[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => \G[5]_INST_0_i_3_n_0\,
      I1 => PosY(9),
      I2 => \G[5]_INST_0_i_4_n_0\,
      I3 => \G[5]_INST_0_i_5_n_0\,
      I4 => DE,
      O => \G[5]_INST_0_i_2_n_0\
    );
\G[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888888888888"
    )
        port map (
      I0 => \G[0]_INST_0_i_5_n_0\,
      I1 => PosY(5),
      I2 => PosY(4),
      I3 => PosY(1),
      I4 => PosY(3),
      I5 => PosY(2),
      O => \G[5]_INST_0_i_3_n_0\
    );
\G[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010001"
    )
        port map (
      I0 => \G[5]_INST_0_i_6_n_0\,
      I1 => PosX(9),
      I2 => PosX(1),
      I3 => PosX(6),
      I4 => \G[5]_INST_0_i_7_n_0\,
      I5 => \G[0]_INST_0_i_4_n_0\,
      O => \G[5]_INST_0_i_4_n_0\
    );
\G[5]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => PosX(9),
      I1 => PosX(7),
      I2 => PosX(8),
      I3 => \G[5]_INST_0_i_8_n_0\,
      O => \G[5]_INST_0_i_5_n_0\
    );
\G[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PosX(4),
      I1 => PosX(5),
      I2 => PosX(2),
      I3 => PosX(3),
      I4 => PosX(8),
      I5 => PosX(7),
      O => \G[5]_INST_0_i_6_n_0\
    );
\G[5]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => PosY(6),
      I1 => PosY(8),
      I2 => PosY(7),
      O => \G[5]_INST_0_i_7_n_0\
    );
\G[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => PosX(6),
      I1 => PosX(5),
      I2 => PosX(1),
      I3 => PosX(4),
      I4 => PosX(2),
      I5 => PosX(3),
      O => \G[5]_INST_0_i_8_n_0\
    );
R1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosY(9),
      I1 => R1_carry_i_11_n_7,
      I2 => ball_bottom(8),
      I3 => PosY(8),
      O => \PosY[9]_0\(4)
    );
R1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ball_bottom(1),
      I1 => PosY(1),
      I2 => ball_bottom(0),
      I3 => PosY(0),
      O => \PosY[9]\(0)
    );
R1_carry_i_11: unisim.vcomponents.CARRY8
     port map (
      CI => R1_carry_i_12_n_0,
      CI_TOP => '0',
      CO(7 downto 1) => NLW_R1_carry_i_11_CO_UNCONNECTED(7 downto 1),
      CO(0) => R1_carry_i_11_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => NLW_R1_carry_i_11_O_UNCONNECTED(7 downto 1),
      O(0) => ball_bottom(8),
      S(7 downto 1) => B"0000000",
      S(0) => R1_carry_i_13_n_0
    );
R1_carry_i_12: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => R1_carry_i_12_n_0,
      CO(6) => R1_carry_i_12_n_1,
      CO(5) => R1_carry_i_12_n_2,
      CO(4) => R1_carry_i_12_n_3,
      CO(3) => R1_carry_i_12_n_4,
      CO(2) => R1_carry_i_12_n_5,
      CO(1) => R1_carry_i_12_n_6,
      CO(0) => R1_carry_i_12_n_7,
      DI(7 downto 3) => B"00001",
      DI(2) => R1_carry_i_14_n_0,
      DI(1) => R1_carry_i_15_n_0,
      DI(0) => '0',
      O(7 downto 0) => ball_bottom(7 downto 0),
      S(7) => R1_carry_i_16_n_0,
      S(6) => R1_carry_i_17_n_0,
      S(5) => R1_carry_i_18_n_0,
      S(4) => R1_carry_i_19_n_0,
      S(3) => R1_carry_i_20_n_0,
      S(2) => R1_carry_i_21_n_0,
      S(1) => R1_carry_i_22_n_0,
      S(0) => ball_y_reg_reg(0)
    );
R1_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ball_y_reg_reg(2),
      I1 => ball_y_reg_reg(3),
      I2 => ball_y_reg_reg(1),
      I3 => ball_y_reg_reg(4),
      O => R1_carry_i_13_n_0
    );
R1_carry_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => ball_y_reg_reg(2),
      I1 => ball_y_reg_reg(1),
      I2 => ball_y_reg_reg(0),
      O => R1_carry_i_14_n_0
    );
R1_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ball_y_reg_reg(1),
      I1 => ball_y_reg_reg(0),
      O => R1_carry_i_15_n_0
    );
R1_carry_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F40A"
    )
        port map (
      I0 => ball_y_reg_reg(4),
      I1 => ball_y_reg_reg(0),
      I2 => ball_y_reg_reg(1),
      I3 => ball_y_reg_reg(3),
      I4 => ball_y_reg_reg(2),
      O => R1_carry_i_16_n_0
    );
R1_carry_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3C3F0C2"
    )
        port map (
      I0 => ball_y_reg_reg(3),
      I1 => ball_y_reg_reg(1),
      I2 => ball_y_reg_reg(2),
      I3 => ball_y_reg_reg(0),
      I4 => ball_y_reg_reg(4),
      O => R1_carry_i_17_n_0
    );
R1_carry_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44BB44BA"
    )
        port map (
      I0 => ball_y_reg_reg(4),
      I1 => ball_y_reg_reg(0),
      I2 => ball_y_reg_reg(2),
      I3 => ball_y_reg_reg(1),
      I4 => ball_y_reg_reg(3),
      O => R1_carry_i_18_n_0
    );
R1_carry_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA55AB54"
    )
        port map (
      I0 => ball_y_reg_reg(0),
      I1 => ball_y_reg_reg(2),
      I2 => ball_y_reg_reg(3),
      I3 => ball_y_reg_reg(4),
      I4 => ball_y_reg_reg(1),
      O => R1_carry_i_19_n_0
    );
R1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosY(7),
      I1 => ball_bottom(7),
      I2 => ball_bottom(6),
      I3 => PosY(6),
      O => \PosY[9]_0\(3)
    );
R1_carry_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => ball_y_reg_reg(3),
      I1 => ball_y_reg_reg(1),
      I2 => ball_y_reg_reg(2),
      I3 => ball_y_reg_reg(0),
      O => R1_carry_i_20_n_0
    );
R1_carry_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => ball_y_reg_reg(0),
      I1 => ball_y_reg_reg(1),
      I2 => ball_y_reg_reg(2),
      O => R1_carry_i_21_n_0
    );
R1_carry_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ball_y_reg_reg(0),
      I1 => ball_y_reg_reg(1),
      O => R1_carry_i_22_n_0
    );
R1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosY(5),
      I1 => ball_bottom(5),
      I2 => ball_bottom(4),
      I3 => PosY(4),
      O => \PosY[9]_0\(2)
    );
R1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosY(3),
      I1 => ball_bottom(3),
      I2 => ball_bottom(2),
      I3 => PosY(2),
      O => \PosY[9]_0\(1)
    );
R1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => PosY(1),
      I1 => ball_bottom(1),
      I2 => ball_bottom(0),
      I3 => PosY(0),
      O => \PosY[9]_0\(0)
    );
R1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R1_carry_i_11_n_7,
      I1 => PosY(9),
      I2 => ball_bottom(8),
      I3 => PosY(8),
      O => \PosY[9]\(4)
    );
R1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ball_bottom(7),
      I1 => PosY(7),
      I2 => ball_bottom(6),
      I3 => PosY(6),
      O => \PosY[9]\(3)
    );
R1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ball_bottom(5),
      I1 => PosY(5),
      I2 => ball_bottom(4),
      I3 => PosY(4),
      O => \PosY[9]\(2)
    );
R1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ball_bottom(3),
      I1 => PosY(3),
      I2 => ball_bottom(2),
      I3 => PosY(2),
      O => \PosY[9]\(1)
    );
R2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FFFFFF0000"
    )
        port map (
      I0 => ball_y_reg_reg(2),
      I1 => ball_y_reg_reg(3),
      I2 => ball_y_reg_reg(1),
      I3 => ball_y_reg_reg(4),
      I4 => PosY(9),
      I5 => PosY(8),
      O => DI(4)
    );
R2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => PosY(1),
      I1 => ball_y_reg_reg(1),
      I2 => PosY(0),
      I3 => ball_y_reg_reg(0),
      O => \ball_y_reg_reg[2]_0\(0)
    );
R2_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4400DDCD"
    )
        port map (
      I0 => ball_y_reg_reg(3),
      I1 => ball_y_reg_reg(1),
      I2 => ball_y_reg_reg(2),
      I3 => ball_y_reg_reg(0),
      I4 => ball_y_reg_reg(4),
      O => R2_carry_i_11_n_0
    );
R2_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B288"
    )
        port map (
      I0 => ball_y_reg_reg(1),
      I1 => ball_y_reg_reg(4),
      I2 => ball_y_reg_reg(3),
      I3 => ball_y_reg_reg(0),
      O => R2_carry_i_12_n_0
    );
R2_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44BB44BA"
    )
        port map (
      I0 => ball_y_reg_reg(4),
      I1 => ball_y_reg_reg(0),
      I2 => ball_y_reg_reg(2),
      I3 => ball_y_reg_reg(1),
      I4 => ball_y_reg_reg(3),
      O => R2_carry_i_13_n_0
    );
R2_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA55AB54"
    )
        port map (
      I0 => ball_y_reg_reg(0),
      I1 => ball_y_reg_reg(2),
      I2 => ball_y_reg_reg(3),
      I3 => ball_y_reg_reg(4),
      I4 => ball_y_reg_reg(1),
      O => R2_carry_i_14_n_0
    );
R2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B2B2BB822222228"
    )
        port map (
      I0 => PosY(7),
      I1 => ball_y_reg_reg(3),
      I2 => ball_y_reg_reg(2),
      I3 => R2_carry_i_11_n_0,
      I4 => R2_carry_i_12_n_0,
      I5 => PosY(6),
      O => DI(3)
    );
R2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => PosY(5),
      I1 => R2_carry_i_13_n_0,
      I2 => PosY(4),
      I3 => R2_carry_i_14_n_0,
      O => DI(2)
    );
R2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE88E88B88888882"
    )
        port map (
      I0 => PosY(3),
      I1 => ball_y_reg_reg(3),
      I2 => ball_y_reg_reg(1),
      I3 => ball_y_reg_reg(2),
      I4 => ball_y_reg_reg(0),
      I5 => PosY(2),
      O => DI(1)
    );
R2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B190"
    )
        port map (
      I0 => ball_y_reg_reg(1),
      I1 => ball_y_reg_reg(0),
      I2 => PosY(1),
      I3 => PosY(0),
      O => DI(0)
    );
R2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE00000001FF"
    )
        port map (
      I0 => ball_y_reg_reg(2),
      I1 => ball_y_reg_reg(3),
      I2 => ball_y_reg_reg(1),
      I3 => ball_y_reg_reg(4),
      I4 => PosY(9),
      I5 => PosY(8),
      O => \ball_y_reg_reg[2]_0\(4)
    );
R2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990000600099990"
    )
        port map (
      I0 => ball_y_reg_reg(3),
      I1 => PosY(7),
      I2 => R2_carry_i_12_n_0,
      I3 => R2_carry_i_11_n_0,
      I4 => ball_y_reg_reg(2),
      I5 => PosY(6),
      O => \ball_y_reg_reg[2]_0\(3)
    );
R2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R2_carry_i_13_n_0,
      I1 => PosY(5),
      I2 => R2_carry_i_14_n_0,
      I3 => PosY(4),
      O => \ball_y_reg_reg[2]_0\(2)
    );
R2_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015A685A680001"
    )
        port map (
      I0 => PosY(2),
      I1 => ball_y_reg_reg(0),
      I2 => ball_y_reg_reg(2),
      I3 => ball_y_reg_reg(1),
      I4 => ball_y_reg_reg(3),
      I5 => PosY(3),
      O => \ball_y_reg_reg[2]_0\(1)
    );
R3_carry_i_1: unisim.vcomponents.CARRY8
     port map (
      CI => R3_carry_i_13_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => NLW_R3_carry_i_1_CO_UNCONNECTED(7 downto 6),
      CO(5) => \^ball_x_reg_reg[0]_0\(5),
      CO(4) => R3_carry_i_1_n_3,
      CO(3) => R3_carry_i_1_n_4,
      CO(2) => R3_carry_i_1_n_5,
      CO(1) => R3_carry_i_1_n_6,
      CO(0) => R3_carry_i_1_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => NLW_R3_carry_i_1_O_UNCONNECTED(7 downto 6),
      O(5 downto 0) => ball_right(9 downto 4),
      S(7 downto 6) => B"00",
      S(5) => R3_carry_i_14_n_0,
      S(4) => R3_carry_i_15_n_0,
      S(3) => R3_carry_i_16_n_0,
      S(2) => R3_carry_i_17_n_0,
      S(1) => R3_carry_i_18_n_0,
      S(0) => R3_carry_i_19_n_0
    );
R3_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => PosX(5),
      I1 => ball_right(5),
      I2 => PosX(4),
      I3 => ball_right(4),
      O => R3_carry_i_1_0(2)
    );
R3_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96000096"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      I1 => ball_x_reg_reg(2),
      I2 => PosX(3),
      I3 => PosX(2),
      I4 => ball_x_reg_reg(1),
      O => R3_carry_i_1_0(1)
    );
R3_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => PosX(0),
      I1 => PosX(1),
      I2 => ball_x_reg_reg(0),
      O => R3_carry_i_1_0(0)
    );
R3_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      I1 => ball_x_reg_reg(2),
      O => R3_carry_i_13_n_0
    );
R3_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(3),
      I2 => ball_x_reg_reg(2),
      I3 => ball_x_reg_reg(5),
      O => R3_carry_i_14_n_0
    );
R3_carry_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FFC800"
    )
        port map (
      I0 => ball_x_reg_reg(2),
      I1 => ball_x_reg_reg(3),
      I2 => ball_x_reg_reg(1),
      I3 => ball_x_reg_reg(4),
      I4 => ball_x_reg_reg(5),
      O => R3_carry_i_15_n_0
    );
R3_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07170717E8E0E0A0"
    )
        port map (
      I0 => ball_x_reg_reg(5),
      I1 => ball_x_reg_reg(2),
      I2 => ball_x_reg_reg(3),
      I3 => ball_x_reg_reg(1),
      I4 => ball_x_reg_reg(0),
      I5 => ball_x_reg_reg(4),
      O => R3_carry_i_16_n_0
    );
R3_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAE815175777A888"
    )
        port map (
      I0 => ball_x_reg_reg(2),
      I1 => ball_x_reg_reg(4),
      I2 => ball_x_reg_reg(1),
      I3 => ball_x_reg_reg(0),
      I4 => ball_x_reg_reg(5),
      I5 => ball_x_reg_reg(3),
      O => R3_carry_i_17_n_0
    );
R3_carry_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E83F17C0"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      I1 => ball_x_reg_reg(1),
      I2 => ball_x_reg_reg(3),
      I3 => ball_x_reg_reg(2),
      I4 => ball_x_reg_reg(4),
      O => R3_carry_i_18_n_0
    );
R3_carry_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => ball_x_reg_reg(2),
      I1 => ball_x_reg_reg(0),
      I2 => ball_x_reg_reg(1),
      I3 => ball_x_reg_reg(3),
      O => R3_carry_i_19_n_0
    );
R3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ball_right(9),
      I1 => PosX(9),
      I2 => ball_right(8),
      I3 => PosX(8),
      O => \^ball_x_reg_reg[0]_0\(4)
    );
R3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ball_right(7),
      I1 => PosX(7),
      I2 => ball_right(6),
      I3 => PosX(6),
      O => \^ball_x_reg_reg[0]_0\(3)
    );
R3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => ball_right(5),
      I1 => PosX(5),
      I2 => ball_right(4),
      I3 => PosX(4),
      O => \^ball_x_reg_reg[0]_0\(2)
    );
R3_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F04044F"
    )
        port map (
      I0 => PosX(2),
      I1 => ball_x_reg_reg(1),
      I2 => PosX(3),
      I3 => ball_x_reg_reg(2),
      I4 => ball_x_reg_reg(0),
      O => \^ball_x_reg_reg[0]_0\(1)
    );
R3_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => PosX(0),
      I1 => PosX(1),
      I2 => ball_x_reg_reg(0),
      O => \^ball_x_reg_reg[0]_0\(0)
    );
R3_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ball_x_reg_reg[0]_0\(5),
      O => R3_carry_i_1_0(5)
    );
R3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => PosX(9),
      I1 => ball_right(9),
      I2 => PosX(8),
      I3 => ball_right(8),
      O => R3_carry_i_1_0(4)
    );
R3_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => PosX(7),
      I1 => ball_right(7),
      I2 => PosX(6),
      I3 => ball_right(6),
      O => R3_carry_i_1_0(3)
    );
ball_x_reg0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => ball_x_reg_reg(0),
      CI_TOP => '0',
      CO(7 downto 4) => NLW_ball_x_reg0_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => ball_x_reg0_carry_n_4,
      CO(2) => ball_x_reg0_carry_n_5,
      CO(1) => ball_x_reg0_carry_n_6,
      CO(0) => ball_x_reg0_carry_n_7,
      DI(7 downto 4) => B"0000",
      DI(3 downto 2) => ball_x_reg_reg(3 downto 2),
      DI(1) => ball_x_reg0_carry_i_1_n_0,
      DI(0) => \dx[1]_i_1_n_0\,
      O(7 downto 5) => NLW_ball_x_reg0_carry_O_UNCONNECTED(7 downto 5),
      O(4 downto 0) => \p_0_in__0\(5 downto 1),
      S(7 downto 5) => B"000",
      S(4) => ball_x_reg0_carry_i_2_n_0,
      S(3) => ball_x_reg0_carry_i_3_n_0,
      S(2) => ball_x_reg0_carry_i_4_n_0,
      S(1) => ball_x_reg0_carry_i_5_n_0,
      S(0) => ball_x_reg0_carry_i_6_n_0
    );
ball_x_reg0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ball_x_reg_reg(2),
      O => ball_x_reg0_carry_i_1_n_0
    );
ball_x_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      O => ball_x_reg0_carry_i_2_n_0
    );
ball_x_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ball_x_reg_reg(3),
      I1 => ball_x_reg_reg(4),
      O => ball_x_reg0_carry_i_3_n_0
    );
ball_x_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ball_x_reg_reg(2),
      I1 => ball_x_reg_reg(3),
      O => ball_x_reg0_carry_i_4_n_0
    );
ball_x_reg0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17017F01E8FE80FE"
    )
        port map (
      I0 => \dx[1]_i_2_n_0\,
      I1 => ball_x_reg_reg(5),
      I2 => ball_x_reg_reg(4),
      I3 => \dx[1]_i_3_n_0\,
      I4 => \dx[1]_i_4_n_0\,
      I5 => ball_x_reg_reg(2),
      O => ball_x_reg0_carry_i_5_n_0
    );
ball_x_reg0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17017F01E8FE80FE"
    )
        port map (
      I0 => \dx[1]_i_2_n_0\,
      I1 => ball_x_reg_reg(5),
      I2 => ball_x_reg_reg(4),
      I3 => \dx[1]_i_3_n_0\,
      I4 => \dx[1]_i_4_n_0\,
      I5 => ball_x_reg_reg(1),
      O => ball_x_reg0_carry_i_6_n_0
    );
\ball_x_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      O => \ball_x_reg[0]_i_1_n_0\
    );
\ball_x_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \ball_x_reg[0]_i_1_n_0\,
      Q => ball_x_reg_reg(0),
      R => dy(0)
    );
\ball_x_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => ball_x_reg_reg(1),
      R => dy(0)
    );
\ball_x_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => ball_x_reg_reg(2),
      R => dy(0)
    );
\ball_x_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => ball_x_reg_reg(3),
      R => dy(0)
    );
\ball_x_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \p_0_in__0\(4),
      Q => ball_x_reg_reg(4),
      R => dy(0)
    );
\ball_x_reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \p_0_in__0\(5),
      Q => ball_x_reg_reg(5),
      S => dy(0)
    );
\ball_y_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ball_y_reg_reg(0),
      O => \ball_y_reg[0]_i_1_n_0\
    );
\ball_y_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0075FF8AFF8A0075"
    )
        port map (
      I0 => \dy[1]_i_7_n_0\,
      I1 => \dy[1]_i_6_n_0\,
      I2 => \dy[1]_i_5_n_0\,
      I3 => \dy[1]_i_3_n_0\,
      I4 => ball_y_reg_reg(0),
      I5 => ball_y_reg_reg(1),
      O => p_0_in(1)
    );
\ball_y_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBCCCBCB34333434"
    )
        port map (
      I0 => ball_y_reg_reg(0),
      I1 => \ball_y_reg[2]_i_2_n_0\,
      I2 => \dy[1]_i_3_n_0\,
      I3 => \ball_y_reg[2]_i_3_n_0\,
      I4 => \dy[1]_i_7_n_0\,
      I5 => ball_y_reg_reg(2),
      O => p_0_in(2)
    );
\ball_y_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => ball_y_reg_reg(0),
      I1 => \dy_reg_n_0_[1]\,
      I2 => ball_y_reg_reg(1),
      O => \ball_y_reg[2]_i_2_n_0\
    );
\ball_y_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \dy[1]_i_5_n_0\,
      I1 => ball_y_reg_reg(2),
      I2 => new_dy21_in,
      I3 => ball_y_reg_reg(0),
      I4 => new_dy2,
      I5 => \ball_y_reg[2]_i_4_n_0\,
      O => \ball_y_reg[2]_i_3_n_0\
    );
\ball_y_reg[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ball_y_reg_reg(1),
      I1 => \dy_reg_n_0_[1]\,
      O => \ball_y_reg[2]_i_4_n_0\
    );
\ball_y_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FD02BF40FD00"
    )
        port map (
      I0 => \dy_reg_n_0_[1]\,
      I1 => ball_y_reg_reg(0),
      I2 => ball_y_reg_reg(1),
      I3 => ball_y_reg_reg(3),
      I4 => ball_y_reg_reg(2),
      I5 => ball_y_reg_reg(4),
      O => p_0_in(3)
    );
\ball_y_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAA2"
    )
        port map (
      I0 => ball_y_reg_reg(4),
      I1 => \dy_reg_n_0_[1]\,
      I2 => ball_y_reg_reg(0),
      I3 => ball_y_reg_reg(1),
      I4 => ball_y_reg_reg(2),
      I5 => ball_y_reg_reg(3),
      O => p_0_in(4)
    );
\ball_y_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \ball_y_reg[0]_i_1_n_0\,
      Q => ball_y_reg_reg(0),
      R => dy(0)
    );
\ball_y_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => p_0_in(1),
      Q => ball_y_reg_reg(1),
      R => dy(0)
    );
\ball_y_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => p_0_in(2),
      Q => ball_y_reg_reg(2),
      R => dy(0)
    );
\ball_y_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => p_0_in(3),
      Q => ball_y_reg_reg(3),
      R => dy(0)
    );
\ball_y_reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => p_0_in(4),
      Q => ball_y_reg_reg(4),
      S => dy(0)
    );
\dx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FE80FE"
    )
        port map (
      I0 => \dx[1]_i_2_n_0\,
      I1 => ball_x_reg_reg(5),
      I2 => ball_x_reg_reg(4),
      I3 => \dx[1]_i_3_n_0\,
      I4 => \dx[1]_i_4_n_0\,
      O => \dx[1]_i_1_n_0\
    );
\dx[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7555555555555551"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => dx(1),
      I2 => ball_x_reg_reg(1),
      I3 => ball_x_reg_reg(0),
      I4 => ball_x_reg_reg(2),
      I5 => ball_x_reg_reg(3),
      O => \dx[1]_i_2_n_0\
    );
\dx[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFFF"
    )
        port map (
      I0 => ball_x_reg_reg(3),
      I1 => ball_x_reg_reg(2),
      I2 => ball_x_reg_reg(0),
      I3 => ball_x_reg_reg(1),
      I4 => ball_x_reg_reg(4),
      I5 => dx(1),
      O => \dx[1]_i_3_n_0\
    );
\dx[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF80FF00FF00"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(2),
      I2 => ball_x_reg_reg(1),
      I3 => dx(1),
      I4 => ball_x_reg_reg(0),
      I5 => ball_x_reg_reg(3),
      O => \dx[1]_i_4_n_0\
    );
\dx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \dx[1]_i_1_n_0\,
      Q => dx(1),
      R => dy(0)
    );
\dy[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => GameReset,
      I1 => \dy[1]_i_3_n_0\,
      I2 => E(0),
      I3 => \dy[1]_i_4_n_0\,
      O => dy(0)
    );
\dy[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => \dy[1]_i_3_n_0\,
      I1 => \dy[1]_i_5_n_0\,
      I2 => \dy[1]_i_6_n_0\,
      I3 => \dy[1]_i_7_n_0\,
      O => \dy[1]_i_2_n_0\
    );
\dy[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => ball_y_reg_reg(1),
      I1 => ball_y_reg_reg(0),
      I2 => \dy_reg_n_0_[1]\,
      I3 => ball_y_reg_reg(2),
      I4 => ball_y_reg_reg(3),
      I5 => ball_y_reg_reg(4),
      O => \dy[1]_i_3_n_0\
    );
\dy[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000100"
    )
        port map (
      I0 => ball_y_reg_reg(2),
      I1 => ball_y_reg_reg(0),
      I2 => ball_y_reg_reg(1),
      I3 => \dy_reg_n_0_[1]\,
      I4 => ball_y_reg_reg(3),
      I5 => ball_y_reg_reg(4),
      O => \dy[1]_i_4_n_0\
    );
\dy[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FD0000000000"
    )
        port map (
      I0 => \dy_reg_n_0_[1]\,
      I1 => ball_y_reg_reg(0),
      I2 => ball_y_reg_reg(1),
      I3 => ball_y_reg_reg(3),
      I4 => ball_y_reg_reg(2),
      I5 => ball_y_reg_reg(4),
      O => \dy[1]_i_5_n_0\
    );
\dy[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \dy_reg_n_0_[1]\,
      I1 => ball_y_reg_reg(1),
      I2 => new_dy2,
      I3 => ball_y_reg_reg(0),
      I4 => new_dy21_in,
      I5 => ball_y_reg_reg(2),
      O => \dy[1]_i_6_n_0\
    );
\dy[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF01FF00FF"
    )
        port map (
      I0 => ball_y_reg_reg(4),
      I1 => ball_y_reg_reg(2),
      I2 => ball_y_reg_reg(1),
      I3 => \dy_reg_n_0_[1]\,
      I4 => ball_y_reg_reg(0),
      I5 => ball_y_reg_reg(3),
      O => \dy[1]_i_7_n_0\
    );
\dy_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => E(0),
      D => \dy[1]_i_2_n_0\,
      Q => \dy_reg_n_0_[1]\,
      S => dy(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABB82A28"
    )
        port map (
      I0 => PosX(9),
      I1 => ball_x_reg_reg(5),
      I2 => \i__carry_i_11__0_n_0\,
      I3 => ball_x_reg_reg(4),
      I4 => PosX(8),
      O => \PosX[9]_0\(4)
    );
\i__carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0909099060606009"
    )
        port map (
      I0 => paddle_x_s(5),
      I1 => \i__carry_i_14_n_0\,
      I2 => paddle_x_s(4),
      I3 => paddle_x_s(3),
      I4 => paddle_x_s(2),
      I5 => \i__carry_i_15__0_n_0\,
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => PosX(0),
      I1 => PosX(1),
      I2 => ball_x_reg_reg(0),
      O => S(0)
    );
\i__carry_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => PosX(0),
      I1 => PosX(1),
      I2 => paddle_x_s(0),
      O => \PosX[9]\(0)
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8124"
    )
        port map (
      I0 => \i__carry_i_17_n_0\,
      I1 => \i__carry_i_16__0_n_0\,
      I2 => paddle_x_s(2),
      I3 => paddle_x_s(3),
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC00C8FF"
    )
        port map (
      I0 => ball_x_reg_reg(1),
      I1 => ball_x_reg_reg(3),
      I2 => ball_x_reg_reg(2),
      I3 => ball_x_reg_reg(4),
      I4 => ball_x_reg_reg(5),
      O => \i__carry_i_11__0_n_0\
    );
\i__carry_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => paddle_x_s(4),
      I1 => paddle_x_s(3),
      I2 => paddle_x_s(2),
      I3 => paddle_x_s(5),
      O => \i__carry_i_11__1_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8C000"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      I1 => ball_x_reg_reg(1),
      I2 => ball_x_reg_reg(3),
      I3 => ball_x_reg_reg(4),
      I4 => ball_x_reg_reg(2),
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42242442"
    )
        port map (
      I0 => paddle_x_s(0),
      I1 => ball_x_reg_reg(0),
      I2 => paddle_x_s(1),
      I3 => dx(1),
      I4 => ball_x_reg_reg(1),
      O => \i__carry_i_12__0_n_0\
    );
\i__carry_i_12__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05FFA800"
    )
        port map (
      I0 => paddle_x_s(3),
      I1 => paddle_x_s(1),
      I2 => paddle_x_s(2),
      I3 => paddle_x_s(4),
      I4 => paddle_x_s(5),
      O => \i__carry_i_12__1_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11575777"
    )
        port map (
      I0 => paddle_x_s(2),
      I1 => paddle_x_s(4),
      I2 => paddle_x_s(0),
      I3 => paddle_x_s(1),
      I4 => paddle_x_s(3),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry_i_13__0_n_0\
    );
\i__carry_i_13__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E83F17C0"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      I1 => ball_x_reg_reg(1),
      I2 => ball_x_reg_reg(3),
      I3 => ball_x_reg_reg(2),
      I4 => ball_x_reg_reg(4),
      O => \i__carry_i_13__1_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dx[1]_i_2_n_0\,
      I1 => ball_x_reg_reg(5),
      I2 => ball_x_reg_reg(4),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => ball_x_reg_reg(2),
      I1 => ball_x_reg_reg(0),
      I2 => ball_x_reg_reg(1),
      I3 => ball_x_reg_reg(3),
      O => \i__carry_i_14__0_n_0\
    );
\i__carry_i_14__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8177788"
    )
        port map (
      I0 => paddle_x_s(3),
      I1 => paddle_x_s(1),
      I2 => paddle_x_s(0),
      I3 => paddle_x_s(4),
      I4 => paddle_x_s(2),
      O => \i__carry_i_14__1_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966669669969696"
    )
        port map (
      I0 => PosX(5),
      I1 => ball_x_reg_reg(4),
      I2 => ball_x_reg_reg(2),
      I3 => ball_x_reg_reg(3),
      I4 => ball_x_reg_reg(1),
      I5 => ball_x_reg_reg(0),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(2),
      I2 => ball_x_reg_reg(1),
      I3 => dx(1),
      I4 => ball_x_reg_reg(0),
      I5 => ball_x_reg_reg(3),
      O => \i__carry_i_15__0_n_0\
    );
\i__carry_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => paddle_x_s(2),
      I1 => paddle_x_s(0),
      I2 => paddle_x_s(3),
      I3 => paddle_x_s(1),
      O => \i__carry_i_15__1_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69695A965A969696"
    )
        port map (
      I0 => PosX(5),
      I1 => paddle_x_s(2),
      I2 => paddle_x_s(4),
      I3 => paddle_x_s(0),
      I4 => paddle_x_s(1),
      I5 => paddle_x_s(3),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAA9A"
    )
        port map (
      I0 => ball_x_reg_reg(3),
      I1 => ball_x_reg_reg(2),
      I2 => dx(1),
      I3 => ball_x_reg_reg(1),
      I4 => ball_x_reg_reg(0),
      O => \i__carry_i_16__0_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5695"
    )
        port map (
      I0 => ball_x_reg_reg(2),
      I1 => ball_x_reg_reg(0),
      I2 => ball_x_reg_reg(1),
      I3 => dx(1),
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \dx[1]_i_2_n_0\,
      I1 => ball_x_reg_reg(5),
      I2 => ball_x_reg_reg(4),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => PosX(9),
      I1 => \i__carry_i_11__1_n_0\,
      I2 => PosX(8),
      I3 => \i__carry_i_12__1_n_0\,
      O => \PosX[9]_1\(4)
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800000"
    )
        port map (
      I0 => paddle_x_s(5),
      I1 => paddle_x_s(4),
      I2 => paddle_x_s(3),
      I3 => paddle_x_s(2),
      I4 => \i__carry_i_13__0_n_0\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => \dx[1]_i_2_n_0\,
      I2 => ball_x_reg_reg(5),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EE2E22B88828222"
    )
        port map (
      I0 => PosX(7),
      I1 => ball_x_reg_reg(4),
      I2 => \i__carry_i_12_n_0\,
      I3 => ball_x_reg_reg(3),
      I4 => ball_x_reg_reg(5),
      I5 => PosX(6),
      O => \PosX[9]_0\(3)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E82E2EB288282822"
    )
        port map (
      I0 => PosX(7),
      I1 => paddle_x_s(4),
      I2 => \i__carry_i_13_n_0\,
      I3 => paddle_x_s(3),
      I4 => paddle_x_s(5),
      I5 => PosX(6),
      O => \PosX[9]_1\(3)
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11154440333D5554"
    )
        port map (
      I0 => \i__carry_i_14_n_0\,
      I1 => paddle_x_s(4),
      I2 => paddle_x_s(3),
      I3 => paddle_x_s(2),
      I4 => paddle_x_s(5),
      I5 => \i__carry_i_15__0_n_0\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => paddle_x_s(5),
      I1 => \i__carry_i_14_n_0\,
      I2 => \i__carry_i_15__0_n_0\,
      I3 => paddle_x_s(4),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => PosX(5),
      I1 => \i__carry_i_13__1_n_0\,
      I2 => PosX(4),
      I3 => \i__carry_i_14__0_n_0\,
      O => \PosX[9]_0\(2)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => PosX(5),
      I1 => \i__carry_i_14__1_n_0\,
      I2 => PosX(4),
      I3 => \i__carry_i_15__1_n_0\,
      O => \PosX[9]_1\(2)
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2271"
    )
        port map (
      I0 => paddle_x_s(3),
      I1 => \i__carry_i_16__0_n_0\,
      I2 => \i__carry_i_17_n_0\,
      I3 => paddle_x_s(2),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => paddle_x_s(2),
      I1 => \i__carry_i_17_n_0\,
      I2 => paddle_x_s(3),
      I3 => \i__carry_i_16__0_n_0\,
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8282EB82"
    )
        port map (
      I0 => PosX(3),
      I1 => ball_x_reg_reg(2),
      I2 => ball_x_reg_reg(0),
      I3 => PosX(2),
      I4 => ball_x_reg_reg(1),
      O => \PosX[9]_0\(1)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8282EB82"
    )
        port map (
      I0 => PosX(3),
      I1 => paddle_x_s(2),
      I2 => paddle_x_s(0),
      I3 => PosX(2),
      I4 => paddle_x_s(1),
      O => \PosX[9]_1\(1)
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D13130D"
    )
        port map (
      I0 => paddle_x_s(0),
      I1 => ball_x_reg_reg(0),
      I2 => paddle_x_s(1),
      I3 => dx(1),
      I4 => ball_x_reg_reg(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0C8C8B0"
    )
        port map (
      I0 => paddle_x_s(0),
      I1 => ball_x_reg_reg(0),
      I2 => paddle_x_s(1),
      I3 => dx(1),
      I4 => ball_x_reg_reg(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      I1 => PosX(1),
      I2 => PosX(0),
      O => \PosX[9]_0\(0)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => paddle_x_s(0),
      I1 => PosX(1),
      I2 => PosX(0),
      O => \PosX[9]_1\(0)
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11428814"
    )
        port map (
      I0 => PosX(9),
      I1 => \i__carry_i_11__0_n_0\,
      I2 => ball_x_reg_reg(4),
      I3 => ball_x_reg_reg(5),
      I4 => PosX(8),
      O => S(4)
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_11__1_n_0\,
      I1 => PosX(9),
      I2 => \i__carry_i_12__1_n_0\,
      I3 => PosX(8),
      O => \PosX[9]\(4)
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \i__carry_i_14_n_0\,
      I1 => paddle_x_s(5),
      I2 => \i__carry_i_15__0_n_0\,
      I3 => paddle_x_s(4),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6009099006606009"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => PosX(7),
      I2 => \i__carry_i_12_n_0\,
      I3 => ball_x_reg_reg(5),
      I4 => ball_x_reg_reg(3),
      I5 => PosX(6),
      O => S(3)
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0690900960060690"
    )
        port map (
      I0 => paddle_x_s(4),
      I1 => PosX(7),
      I2 => \i__carry_i_13_n_0\,
      I3 => paddle_x_s(5),
      I4 => paddle_x_s(3),
      I5 => PosX(6),
      O => \PosX[9]\(3)
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8882288822288222"
    )
        port map (
      I0 => \i__carry_i_9__2_n_0\,
      I1 => ball_x_reg_reg(2),
      I2 => ball_x_reg_reg(0),
      I3 => ball_x_reg_reg(1),
      I4 => dx(1),
      I5 => paddle_x_s(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4015154015404015"
    )
        port map (
      I0 => \i__carry_i_15_n_0\,
      I1 => ball_x_reg_reg(2),
      I2 => ball_x_reg_reg(0),
      I3 => ball_x_reg_reg(1),
      I4 => ball_x_reg_reg(3),
      I5 => PosX(4),
      O => S(2)
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4015154015404015"
    )
        port map (
      I0 => \i__carry_i_16_n_0\,
      I1 => paddle_x_s(2),
      I2 => paddle_x_s(0),
      I3 => paddle_x_s(3),
      I4 => paddle_x_s(1),
      I5 => PosX(4),
      O => \PosX[9]\(2)
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42242442"
    )
        port map (
      I0 => paddle_x_s(0),
      I1 => ball_x_reg_reg(0),
      I2 => paddle_x_s(1),
      I3 => dx(1),
      I4 => ball_x_reg_reg(1),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ball_x_reg_reg(4),
      I1 => ball_x_reg_reg(5),
      I2 => \dx[1]_i_2_n_0\,
      O => \i__carry_i_8__2_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69000069"
    )
        port map (
      I0 => ball_x_reg_reg(0),
      I1 => ball_x_reg_reg(2),
      I2 => PosX(3),
      I3 => PosX(2),
      I4 => ball_x_reg_reg(1),
      O => S(1)
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69000069"
    )
        port map (
      I0 => paddle_x_s(0),
      I1 => paddle_x_s(2),
      I2 => PosX(3),
      I3 => PosX(2),
      I4 => paddle_x_s(1),
      O => \PosX[9]\(1)
    );
\i__carry_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0001FFF1FFF0000"
    )
        port map (
      I0 => paddle_x_s(2),
      I1 => paddle_x_s(3),
      I2 => paddle_x_s(4),
      I3 => paddle_x_s(5),
      I4 => \i__carry_i_18_n_0\,
      I5 => ball_x_reg_reg(5),
      O => \i__carry_i_9__1_n_0\
    );
\i__carry_i_9__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AA9AA55955655"
    )
        port map (
      I0 => paddle_x_s(3),
      I1 => ball_x_reg_reg(0),
      I2 => ball_x_reg_reg(1),
      I3 => dx(1),
      I4 => ball_x_reg_reg(2),
      I5 => ball_x_reg_reg(3),
      O => \i__carry_i_9__2_n_0\
    );
\new_dy2_inferred__1/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \new_dy2_inferred__1/i__carry_n_0\,
      CO(6) => \new_dy2_inferred__1/i__carry_n_1\,
      CO(5) => \new_dy2_inferred__1/i__carry_n_2\,
      CO(4) => \new_dy2_inferred__1/i__carry_n_3\,
      CO(3) => \new_dy2_inferred__1/i__carry_n_4\,
      CO(2) => \new_dy2_inferred__1/i__carry_n_5\,
      CO(1) => \new_dy2_inferred__1/i__carry_n_6\,
      CO(0) => \new_dy2_inferred__1/i__carry_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(7 downto 0) => \NLW_new_dy2_inferred__1/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_5__2_n_0\,
      S(6) => \i__carry_i_6__2_n_0\,
      S(5) => \i__carry_i_7__2_n_0\,
      S(4) => \i__carry_i_8__2_n_0\,
      S(3) => \i__carry_i_9__1_n_0\,
      S(2) => \i__carry_i_10_n_0\,
      S(1) => \i__carry_i_11_n_0\,
      S(0) => \i__carry_i_12__0_n_0\
    );
\new_dy2_inferred__1/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \new_dy2_inferred__1/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \new_dy2_inferred__1/i__carry__0_n_0\,
      CO(6) => \new_dy2_inferred__1/i__carry__0_n_1\,
      CO(5) => \new_dy2_inferred__1/i__carry__0_n_2\,
      CO(4) => \new_dy2_inferred__1/i__carry__0_n_3\,
      CO(3) => \new_dy2_inferred__1/i__carry__0_n_4\,
      CO(2) => \new_dy2_inferred__1/i__carry__0_n_5\,
      CO(1) => \new_dy2_inferred__1/i__carry__0_n_6\,
      CO(0) => \new_dy2_inferred__1/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_new_dy2_inferred__1/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry__0_i_1_n_0\,
      S(6) => \i__carry__0_i_2_n_0\,
      S(5) => \i__carry__0_i_3_n_0\,
      S(4) => \i__carry__0_i_4_n_0\,
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\new_dy2_inferred__1/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \new_dy2_inferred__1/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_new_dy2_inferred__1/i__carry__1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => new_dy2,
      DI(7 downto 1) => B"0000000",
      DI(0) => \i__carry__1_i_1_n_0\,
      O(7 downto 0) => \NLW_new_dy2_inferred__1/i__carry__1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 1) => B"0000000",
      S(0) => \i__carry__1_i_2_n_0\
    );
\new_dy2_inferred__2/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_new_dy2_inferred__2/i__carry_CO_UNCONNECTED\(7 downto 4),
      CO(3) => new_dy21_in,
      CO(2) => \new_dy2_inferred__2/i__carry_n_5\,
      CO(1) => \new_dy2_inferred__2/i__carry_n_6\,
      CO(0) => \new_dy2_inferred__2/i__carry_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(7 downto 0) => \NLW_new_dy2_inferred__2/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\paddle_x_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => paddle_x_s(0),
      O => pad_right(1)
    );
\paddle_x_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA55555555AAA8"
    )
        port map (
      I0 => MoveLeft,
      I1 => paddle_x_s(4),
      I2 => paddle_x_s(2),
      I3 => \paddle_x_reg[2]_i_2_n_0\,
      I4 => paddle_x_s(1),
      I5 => paddle_x_s(0),
      O => \paddle_x_reg[1]_i_1_n_0\
    );
\paddle_x_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A5F0F0F0F05A58"
    )
        port map (
      I0 => MoveLeft,
      I1 => paddle_x_s(4),
      I2 => paddle_x_s(2),
      I3 => \paddle_x_reg[2]_i_2_n_0\,
      I4 => paddle_x_s(0),
      I5 => paddle_x_s(1),
      O => \paddle_x_reg[2]_i_1_n_0\
    );
\paddle_x_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => paddle_x_s(3),
      I1 => paddle_x_s(5),
      O => \paddle_x_reg[2]_i_2_n_0\
    );
\paddle_x_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \paddle_x_reg[5]_i_5_n_0\,
      I1 => paddle_x_s(3),
      I2 => paddle_x_s(2),
      O => \paddle_x_reg[3]_i_1_n_0\
    );
\paddle_x_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \paddle_x_reg[5]_i_5_n_0\,
      I1 => paddle_x_s(2),
      I2 => paddle_x_s(4),
      I3 => paddle_x_s(3),
      O => \paddle_x_reg[4]_i_1_n_0\
    );
\paddle_x_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => E(0),
      I1 => MoveRight,
      I2 => \paddle_x_reg[5]_i_3_n_0\,
      I3 => \paddle_x_reg[5]_i_4_n_0\,
      O => paddle_x_reg(0)
    );
\paddle_x_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => paddle_x_s(2),
      I1 => \paddle_x_reg[5]_i_5_n_0\,
      I2 => paddle_x_s(3),
      I3 => paddle_x_s(5),
      I4 => paddle_x_s(4),
      O => \paddle_x_reg[5]_i_2_n_0\
    );
\paddle_x_reg[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => paddle_x_s(2),
      I1 => paddle_x_s(3),
      I2 => paddle_x_s(4),
      I3 => paddle_x_s(5),
      O => \paddle_x_reg[5]_i_3_n_0\
    );
\paddle_x_reg[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => paddle_x_s(1),
      I1 => paddle_x_s(0),
      I2 => \paddle_x_reg[2]_i_2_n_0\,
      I3 => paddle_x_s(2),
      I4 => paddle_x_s(4),
      I5 => MoveLeft,
      O => \paddle_x_reg[5]_i_4_n_0\
    );
\paddle_x_reg[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F0F0F0F0F0507"
    )
        port map (
      I0 => MoveLeft,
      I1 => paddle_x_s(4),
      I2 => paddle_x_s(2),
      I3 => \paddle_x_reg[2]_i_2_n_0\,
      I4 => paddle_x_s(0),
      I5 => paddle_x_s(1),
      O => \paddle_x_reg[5]_i_5_n_0\
    );
\paddle_x_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => paddle_x_reg(0),
      D => pad_right(1),
      Q => paddle_x_s(0),
      R => GameReset
    );
\paddle_x_reg_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => paddle_x_reg(0),
      D => \paddle_x_reg[1]_i_1_n_0\,
      Q => paddle_x_s(1),
      S => GameReset
    );
\paddle_x_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => paddle_x_reg(0),
      D => \paddle_x_reg[2]_i_1_n_0\,
      Q => paddle_x_s(2),
      R => GameReset
    );
\paddle_x_reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => paddle_x_reg(0),
      D => \paddle_x_reg[3]_i_1_n_0\,
      Q => paddle_x_s(3),
      S => GameReset
    );
\paddle_x_reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => paddle_x_reg(0),
      D => \paddle_x_reg[4]_i_1_n_0\,
      Q => paddle_x_s(4),
      S => GameReset
    );
\paddle_x_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => paddle_x_reg(0),
      D => \paddle_x_reg[5]_i_2_n_0\,
      Q => paddle_x_s(5),
      R => GameReset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PongImgGen_0_0_PongImgGen is
  port (
    G : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MoveLeft : in STD_LOGIC;
    PosX : in STD_LOGIC_VECTOR ( 9 downto 0 );
    PosY : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Clk : in STD_LOGIC;
    GameReset : in STD_LOGIC;
    MoveRight : in STD_LOGIC;
    DE : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PongImgGen_0_0_PongImgGen : entity is "PongImgGen";
end design_1_PongImgGen_0_0_PongImgGen;

architecture STRUCTURE of design_1_PongImgGen_0_0_PongImgGen is
  signal G4_carry_n_2 : STD_LOGIC;
  signal G4_carry_n_3 : STD_LOGIC;
  signal G4_carry_n_4 : STD_LOGIC;
  signal G4_carry_n_5 : STD_LOGIC;
  signal G4_carry_n_6 : STD_LOGIC;
  signal G4_carry_n_7 : STD_LOGIC;
  signal \G4_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \G4_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \G4_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \G4_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \G4_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal R1_carry_n_3 : STD_LOGIC;
  signal R1_carry_n_4 : STD_LOGIC;
  signal R1_carry_n_5 : STD_LOGIC;
  signal R1_carry_n_6 : STD_LOGIC;
  signal R1_carry_n_7 : STD_LOGIC;
  signal R2_carry_n_3 : STD_LOGIC;
  signal R2_carry_n_4 : STD_LOGIC;
  signal R2_carry_n_5 : STD_LOGIC;
  signal R2_carry_n_6 : STD_LOGIC;
  signal R2_carry_n_7 : STD_LOGIC;
  signal R3_carry_n_2 : STD_LOGIC;
  signal R3_carry_n_3 : STD_LOGIC;
  signal R3_carry_n_4 : STD_LOGIC;
  signal R3_carry_n_5 : STD_LOGIC;
  signal R3_carry_n_6 : STD_LOGIC;
  signal R3_carry_n_7 : STD_LOGIC;
  signal \R3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \R3_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \R3_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \R3_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \R3_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal game_tick : STD_LOGIC;
  signal u_pong_n_0 : STD_LOGIC;
  signal u_pong_n_1 : STD_LOGIC;
  signal u_pong_n_10 : STD_LOGIC;
  signal u_pong_n_11 : STD_LOGIC;
  signal u_pong_n_12 : STD_LOGIC;
  signal u_pong_n_13 : STD_LOGIC;
  signal u_pong_n_14 : STD_LOGIC;
  signal u_pong_n_15 : STD_LOGIC;
  signal u_pong_n_16 : STD_LOGIC;
  signal u_pong_n_17 : STD_LOGIC;
  signal u_pong_n_18 : STD_LOGIC;
  signal u_pong_n_19 : STD_LOGIC;
  signal u_pong_n_2 : STD_LOGIC;
  signal u_pong_n_20 : STD_LOGIC;
  signal u_pong_n_21 : STD_LOGIC;
  signal u_pong_n_22 : STD_LOGIC;
  signal u_pong_n_23 : STD_LOGIC;
  signal u_pong_n_24 : STD_LOGIC;
  signal u_pong_n_25 : STD_LOGIC;
  signal u_pong_n_26 : STD_LOGIC;
  signal u_pong_n_27 : STD_LOGIC;
  signal u_pong_n_28 : STD_LOGIC;
  signal u_pong_n_29 : STD_LOGIC;
  signal u_pong_n_3 : STD_LOGIC;
  signal u_pong_n_30 : STD_LOGIC;
  signal u_pong_n_31 : STD_LOGIC;
  signal u_pong_n_32 : STD_LOGIC;
  signal u_pong_n_33 : STD_LOGIC;
  signal u_pong_n_34 : STD_LOGIC;
  signal u_pong_n_35 : STD_LOGIC;
  signal u_pong_n_36 : STD_LOGIC;
  signal u_pong_n_37 : STD_LOGIC;
  signal u_pong_n_38 : STD_LOGIC;
  signal u_pong_n_39 : STD_LOGIC;
  signal u_pong_n_4 : STD_LOGIC;
  signal u_pong_n_40 : STD_LOGIC;
  signal u_pong_n_41 : STD_LOGIC;
  signal u_pong_n_42 : STD_LOGIC;
  signal u_pong_n_43 : STD_LOGIC;
  signal u_pong_n_44 : STD_LOGIC;
  signal u_pong_n_45 : STD_LOGIC;
  signal u_pong_n_46 : STD_LOGIC;
  signal u_pong_n_47 : STD_LOGIC;
  signal u_pong_n_48 : STD_LOGIC;
  signal u_pong_n_49 : STD_LOGIC;
  signal u_pong_n_5 : STD_LOGIC;
  signal u_pong_n_50 : STD_LOGIC;
  signal u_pong_n_51 : STD_LOGIC;
  signal u_pong_n_52 : STD_LOGIC;
  signal u_pong_n_53 : STD_LOGIC;
  signal u_pong_n_54 : STD_LOGIC;
  signal u_pong_n_55 : STD_LOGIC;
  signal u_pong_n_56 : STD_LOGIC;
  signal u_pong_n_57 : STD_LOGIC;
  signal u_pong_n_58 : STD_LOGIC;
  signal u_pong_n_59 : STD_LOGIC;
  signal u_pong_n_6 : STD_LOGIC;
  signal u_pong_n_60 : STD_LOGIC;
  signal u_pong_n_61 : STD_LOGIC;
  signal u_pong_n_62 : STD_LOGIC;
  signal u_pong_n_63 : STD_LOGIC;
  signal u_pong_n_7 : STD_LOGIC;
  signal u_pong_n_8 : STD_LOGIC;
  signal u_pong_n_9 : STD_LOGIC;
  signal NLW_G4_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_G4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_G4_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_G4_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_R1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_R1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_R2_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_R2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_R3_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_R3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_R3_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_R3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
G4_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_G4_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => G4_carry_n_2,
      CO(4) => G4_carry_n_3,
      CO(3) => G4_carry_n_4,
      CO(2) => G4_carry_n_5,
      CO(1) => G4_carry_n_6,
      CO(0) => G4_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => u_pong_n_32,
      DI(4) => u_pong_n_33,
      DI(3) => u_pong_n_34,
      DI(2) => u_pong_n_35,
      DI(1) => u_pong_n_36,
      DI(0) => u_pong_n_37,
      O(7 downto 0) => NLW_G4_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => u_pong_n_5,
      S(4) => u_pong_n_6,
      S(3) => u_pong_n_7,
      S(2) => u_pong_n_8,
      S(1) => u_pong_n_9,
      S(0) => u_pong_n_10
    );
\G4_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_G4_inferred__0/i__carry_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \G4_inferred__0/i__carry_n_3\,
      CO(3) => \G4_inferred__0/i__carry_n_4\,
      CO(2) => \G4_inferred__0/i__carry_n_5\,
      CO(1) => \G4_inferred__0/i__carry_n_6\,
      CO(0) => \G4_inferred__0/i__carry_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => u_pong_n_49,
      DI(3) => u_pong_n_50,
      DI(2) => u_pong_n_51,
      DI(1) => u_pong_n_52,
      DI(0) => u_pong_n_53,
      O(7 downto 0) => \NLW_G4_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => u_pong_n_11,
      S(3) => u_pong_n_12,
      S(2) => u_pong_n_13,
      S(1) => u_pong_n_14,
      S(0) => u_pong_n_15
    );
R1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => NLW_R1_carry_CO_UNCONNECTED(7 downto 5),
      CO(4) => R1_carry_n_3,
      CO(3) => R1_carry_n_4,
      CO(2) => R1_carry_n_5,
      CO(1) => R1_carry_n_6,
      CO(0) => R1_carry_n_7,
      DI(7 downto 5) => B"000",
      DI(4) => u_pong_n_59,
      DI(3) => u_pong_n_60,
      DI(2) => u_pong_n_61,
      DI(1) => u_pong_n_62,
      DI(0) => u_pong_n_63,
      O(7 downto 0) => NLW_R1_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => u_pong_n_54,
      S(3) => u_pong_n_55,
      S(2) => u_pong_n_56,
      S(1) => u_pong_n_57,
      S(0) => u_pong_n_58
    );
R2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => NLW_R2_carry_CO_UNCONNECTED(7 downto 5),
      CO(4) => R2_carry_n_3,
      CO(3) => R2_carry_n_4,
      CO(2) => R2_carry_n_5,
      CO(1) => R2_carry_n_6,
      CO(0) => R2_carry_n_7,
      DI(7 downto 5) => B"000",
      DI(4) => u_pong_n_16,
      DI(3) => u_pong_n_17,
      DI(2) => u_pong_n_18,
      DI(1) => u_pong_n_19,
      DI(0) => u_pong_n_20,
      O(7 downto 0) => NLW_R2_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => u_pong_n_21,
      S(3) => u_pong_n_22,
      S(2) => u_pong_n_23,
      S(1) => u_pong_n_24,
      S(0) => u_pong_n_25
    );
R3_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_R3_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => R3_carry_n_2,
      CO(4) => R3_carry_n_3,
      CO(3) => R3_carry_n_4,
      CO(2) => R3_carry_n_5,
      CO(1) => R3_carry_n_6,
      CO(0) => R3_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => u_pong_n_26,
      DI(4) => u_pong_n_27,
      DI(3) => u_pong_n_28,
      DI(2) => u_pong_n_29,
      DI(1) => u_pong_n_30,
      DI(0) => u_pong_n_31,
      O(7 downto 0) => NLW_R3_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => u_pong_n_43,
      S(4) => u_pong_n_44,
      S(3) => u_pong_n_45,
      S(2) => u_pong_n_46,
      S(1) => u_pong_n_47,
      S(0) => u_pong_n_48
    );
\R3_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_R3_inferred__0/i__carry_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \R3_inferred__0/i__carry_n_3\,
      CO(3) => \R3_inferred__0/i__carry_n_4\,
      CO(2) => \R3_inferred__0/i__carry_n_5\,
      CO(1) => \R3_inferred__0/i__carry_n_6\,
      CO(0) => \R3_inferred__0/i__carry_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => u_pong_n_38,
      DI(3) => u_pong_n_39,
      DI(2) => u_pong_n_40,
      DI(1) => u_pong_n_41,
      DI(0) => u_pong_n_42,
      O(7 downto 0) => \NLW_R3_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => u_pong_n_0,
      S(3) => u_pong_n_1,
      S(2) => u_pong_n_2,
      S(1) => u_pong_n_3,
      S(0) => u_pong_n_4
    );
u_div: entity work.design_1_PongImgGen_0_0_freq_divider
     port map (
      Clk => Clk,
      E(0) => game_tick
    );
u_pong: entity work.design_1_PongImgGen_0_0_pong_core
     port map (
      B(1 downto 0) => B(1 downto 0),
      \B[0]\(0) => \R3_inferred__0/i__carry_n_3\,
      \B[0]_0\(0) => R2_carry_n_3,
      \B[0]_1\(0) => R1_carry_n_3,
      \B[7]\(0) => G4_carry_n_2,
      \B[7]_0\(0) => \G4_inferred__0/i__carry_n_3\,
      CO(0) => R3_carry_n_2,
      Clk => Clk,
      DE => DE,
      DI(4) => u_pong_n_16,
      DI(3) => u_pong_n_17,
      DI(2) => u_pong_n_18,
      DI(1) => u_pong_n_19,
      DI(0) => u_pong_n_20,
      E(0) => game_tick,
      G(1 downto 0) => G(1 downto 0),
      GameReset => GameReset,
      MoveLeft => MoveLeft,
      MoveRight => MoveRight,
      PosX(9 downto 0) => PosX(9 downto 0),
      \PosX[9]\(4) => u_pong_n_11,
      \PosX[9]\(3) => u_pong_n_12,
      \PosX[9]\(2) => u_pong_n_13,
      \PosX[9]\(1) => u_pong_n_14,
      \PosX[9]\(0) => u_pong_n_15,
      \PosX[9]_0\(4) => u_pong_n_38,
      \PosX[9]_0\(3) => u_pong_n_39,
      \PosX[9]_0\(2) => u_pong_n_40,
      \PosX[9]_0\(1) => u_pong_n_41,
      \PosX[9]_0\(0) => u_pong_n_42,
      \PosX[9]_1\(4) => u_pong_n_49,
      \PosX[9]_1\(3) => u_pong_n_50,
      \PosX[9]_1\(2) => u_pong_n_51,
      \PosX[9]_1\(1) => u_pong_n_52,
      \PosX[9]_1\(0) => u_pong_n_53,
      PosY(9 downto 0) => PosY(9 downto 0),
      \PosY[9]\(4) => u_pong_n_54,
      \PosY[9]\(3) => u_pong_n_55,
      \PosY[9]\(2) => u_pong_n_56,
      \PosY[9]\(1) => u_pong_n_57,
      \PosY[9]\(0) => u_pong_n_58,
      \PosY[9]_0\(4) => u_pong_n_59,
      \PosY[9]_0\(3) => u_pong_n_60,
      \PosY[9]_0\(2) => u_pong_n_61,
      \PosY[9]_0\(1) => u_pong_n_62,
      \PosY[9]_0\(0) => u_pong_n_63,
      R3_carry_i_1_0(5) => u_pong_n_43,
      R3_carry_i_1_0(4) => u_pong_n_44,
      R3_carry_i_1_0(3) => u_pong_n_45,
      R3_carry_i_1_0(2) => u_pong_n_46,
      R3_carry_i_1_0(1) => u_pong_n_47,
      R3_carry_i_1_0(0) => u_pong_n_48,
      S(4) => u_pong_n_0,
      S(3) => u_pong_n_1,
      S(2) => u_pong_n_2,
      S(1) => u_pong_n_3,
      S(0) => u_pong_n_4,
      \ball_x_reg_reg[0]_0\(5) => u_pong_n_26,
      \ball_x_reg_reg[0]_0\(4) => u_pong_n_27,
      \ball_x_reg_reg[0]_0\(3) => u_pong_n_28,
      \ball_x_reg_reg[0]_0\(2) => u_pong_n_29,
      \ball_x_reg_reg[0]_0\(1) => u_pong_n_30,
      \ball_x_reg_reg[0]_0\(0) => u_pong_n_31,
      \ball_y_reg_reg[2]_0\(4) => u_pong_n_21,
      \ball_y_reg_reg[2]_0\(3) => u_pong_n_22,
      \ball_y_reg_reg[2]_0\(2) => u_pong_n_23,
      \ball_y_reg_reg[2]_0\(1) => u_pong_n_24,
      \ball_y_reg_reg[2]_0\(0) => u_pong_n_25,
      \paddle_x_reg_reg[0]_0\(5) => u_pong_n_5,
      \paddle_x_reg_reg[0]_0\(4) => u_pong_n_6,
      \paddle_x_reg_reg[0]_0\(3) => u_pong_n_7,
      \paddle_x_reg_reg[0]_0\(2) => u_pong_n_8,
      \paddle_x_reg_reg[0]_0\(1) => u_pong_n_9,
      \paddle_x_reg_reg[0]_0\(0) => u_pong_n_10,
      \paddle_x_reg_reg[0]_1\(5) => u_pong_n_32,
      \paddle_x_reg_reg[0]_1\(4) => u_pong_n_33,
      \paddle_x_reg_reg[0]_1\(3) => u_pong_n_34,
      \paddle_x_reg_reg[0]_1\(2) => u_pong_n_35,
      \paddle_x_reg_reg[0]_1\(1) => u_pong_n_36,
      \paddle_x_reg_reg[0]_1\(0) => u_pong_n_37
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PongImgGen_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PongImgGen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PongImgGen_0_0 : entity is "design_1_PongImgGen_0_0,PongImgGen,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_PongImgGen_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_PongImgGen_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_PongImgGen_0_0 : entity is "PongImgGen,Vivado 2025.2";
end design_1_PongImgGen_0_0;

architecture STRUCTURE of design_1_PongImgGen_0_0 is
  signal \^b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^g\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk : signal is "slave Clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET ResetN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_Clk_25MHz, INSERT_VIP 0";
  attribute x_interface_info of ResetN : signal is "xilinx.com:signal:reset:1.0 ResetN RST";
  attribute x_interface_mode of ResetN : signal is "slave ResetN";
  attribute x_interface_parameter of ResetN : signal is "XIL_INTERFACENAME ResetN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  B(7) <= \^b\(7);
  B(6) <= \^b\(0);
  B(5) <= \^b\(0);
  B(4) <= \^b\(0);
  B(3) <= \^b\(0);
  B(2) <= \^b\(0);
  B(1) <= \^b\(0);
  B(0) <= \^b\(0);
  G(7) <= \^g\(7);
  G(6) <= \^g\(7);
  G(5) <= \^g\(5);
  G(4) <= \^g\(7);
  G(3) <= \^g\(7);
  G(2) <= \^g\(7);
  G(1) <= \^g\(7);
  G(0) <= \^g\(7);
  R(7) <= \^b\(0);
  R(6) <= \^b\(0);
  R(5) <= \^b\(0);
  R(4) <= \^b\(0);
  R(3) <= \^b\(0);
  R(2) <= \^b\(0);
  R(1) <= \^b\(0);
  R(0) <= \^b\(0);
U0: entity work.design_1_PongImgGen_0_0_PongImgGen
     port map (
      B(1) => \^b\(7),
      B(0) => \^b\(0),
      Clk => Clk,
      DE => DE,
      G(1) => \^g\(7),
      G(0) => \^g\(5),
      GameReset => GameReset,
      MoveLeft => MoveLeft,
      MoveRight => MoveRight,
      PosX(9 downto 0) => PosX(9 downto 0),
      PosY(9 downto 0) => PosY(9 downto 0)
    );
end STRUCTURE;
