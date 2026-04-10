--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Sat Apr 11 00:57:35 2026
--Host        : dell16 running 64-bit major release  (build 9200)
--Command     : generate_target bd_pong_wrapper.bd
--Design      : bd_pong_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_pong_wrapper is
end bd_pong_wrapper;

architecture STRUCTURE of bd_pong_wrapper is
  component bd_pong is
  end component bd_pong;
begin
bd_pong_i: component bd_pong
 ;
end STRUCTURE;
