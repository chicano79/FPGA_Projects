--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon Mar 18 10:17:51 2024
--Host        : DESKTOP-7RQ9HLB running 64-bit major release  (build 9200)
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
    A_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    B_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK_0 : in STD_LOGIC;
    S_0 : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    A_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    B_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK_0 : in STD_LOGIC;
    S_0 : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      A_0(6 downto 0) => A_0(6 downto 0),
      B_0(6 downto 0) => B_0(6 downto 0),
      CLK_0 => CLK_0,
      S_0(6 downto 0) => S_0(6 downto 0)
    );
end STRUCTURE;
