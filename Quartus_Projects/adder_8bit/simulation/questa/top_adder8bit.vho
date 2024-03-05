-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "02/15/2024 07:53:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_adder8bit IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END top_adder8bit;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_adder8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \UUT|INSTANCE1|INSTANCE1|SUM~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE1|INSTANCE3|SUM~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE1|INSTANCE4|SUM~combout\ : std_logic;
SIGNAL \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE1|SUM~combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE2|SUM~combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE3|SUM~combout\ : std_logic;
SIGNAL \binary_to_bcd_1~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE4|SUM~combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE4|Cout~0_combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE4|Cout~1_combout\ : std_logic;
SIGNAL \UUT|INSTANCE2|INSTANCE4|Cout~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~101_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~102_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~71_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~72_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~73_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~74_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~107_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~108_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[47]~78_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[46]~79_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~115_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~114_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~80_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[58]~82_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[57]~83_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[56]~84_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[55]~85_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~123_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~122_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[63]~93_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[63]~94_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[70]~124_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[70]~86_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[69]~87_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[69]~125_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[68]~126_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[68]~88_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[67]~89_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[67]~127_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[66]~128_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[66]~90_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~15_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~17_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~76_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~75_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[70]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[69]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[68]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[67]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[80]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[79]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~46_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~89_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~76_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~91_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~77_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~78_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~79_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~80_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~92_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[35]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[35]~85_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \binary_to_bcd_1~2_combout\ : std_logic;
SIGNAL \binary_to_bcd_1~1_combout\ : std_logic;
SIGNAL \binary_to_bcd_1~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \binary_to_bcd_1~4_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \binary_to_bcd_1~5_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux48~0_combout\ <= NOT \Mux48~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[10]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[11]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[12]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[13]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[14]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[15]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[16]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[17]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE1|INSTANCE1|SUM~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE1|INSTANCE3|SUM~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE1|INSTANCE4|SUM~combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE2|INSTANCE1|SUM~combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE2|INSTANCE2|SUM~combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE2|INSTANCE3|SUM~combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE2|INSTANCE4|SUM~combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|INSTANCE2|INSTANCE4|Cout~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux48~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_to_bcd_1~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X108_Y72_N0
\UUT|INSTANCE1|INSTANCE1|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE1|INSTANCE1|SUM~0_combout\ = \SW[10]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \UUT|INSTANCE1|INSTANCE1|SUM~0_combout\);

-- Location: LCCOMB_X101_Y16_N2
\UUT|INSTANCE1|INSTANCE2|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\ = \SW[11]~input_o\ $ (\SW[1]~input_o\ $ (((\SW[10]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\);

-- Location: LCCOMB_X101_Y16_N28
\UUT|INSTANCE1|INSTANCE2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ = (\SW[11]~input_o\ & ((\SW[1]~input_o\) # ((\SW[10]~input_o\ & \SW[0]~input_o\)))) # (!\SW[11]~input_o\ & (\SW[10]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\);

-- Location: LCCOMB_X102_Y19_N18
\UUT|INSTANCE1|INSTANCE3|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE1|INSTANCE3|SUM~0_combout\ = \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[2]~input_o\ $ (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \UUT|INSTANCE1|INSTANCE3|SUM~0_combout\);

-- Location: LCCOMB_X102_Y19_N20
\UUT|INSTANCE1|INSTANCE3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ = (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ & ((\SW[2]~input_o\) # (\SW[12]~input_o\))) # (!\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ & (\SW[2]~input_o\ & \SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\);

-- Location: LCCOMB_X101_Y19_N8
\UUT|INSTANCE1|INSTANCE4|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE1|INSTANCE4|SUM~combout\ = \SW[13]~input_o\ $ (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \UUT|INSTANCE1|INSTANCE4|SUM~combout\);

-- Location: LCCOMB_X101_Y19_N10
\UUT|INSTANCE1|INSTANCE4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ = (\SW[13]~input_o\ & ((\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\) # (\SW[3]~input_o\))) # (!\SW[13]~input_o\ & (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\);

-- Location: LCCOMB_X101_Y19_N20
\UUT|INSTANCE2|INSTANCE1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE1|SUM~combout\ = \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ $ (\SW[14]~input_o\ $ (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE1|SUM~combout\);

-- Location: LCCOMB_X101_Y19_N30
\UUT|INSTANCE2|INSTANCE1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ = (\UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ & ((\SW[14]~input_o\) # (\SW[4]~input_o\))) # (!\UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ & (\SW[14]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\);

-- Location: LCCOMB_X101_Y19_N0
\UUT|INSTANCE2|INSTANCE2|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE2|SUM~combout\ = \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ $ (\SW[15]~input_o\ $ (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE2|SUM~combout\);

-- Location: LCCOMB_X102_Y18_N16
\UUT|INSTANCE2|INSTANCE2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ = (\SW[15]~input_o\ & ((\UUT|INSTANCE2|INSTANCE1|Cout~0_combout\) # (\SW[5]~input_o\))) # (!\SW[15]~input_o\ & (\UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\);

-- Location: LCCOMB_X102_Y18_N2
\UUT|INSTANCE2|INSTANCE3|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE3|SUM~combout\ = \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ $ (\SW[6]~input_o\ $ (\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE3|SUM~combout\);

-- Location: LCCOMB_X102_Y18_N20
\binary_to_bcd_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binary_to_bcd_1~0_combout\ = (\UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ & (!\SW[6]~input_o\ & !\SW[16]~input_o\)) # (!\UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ & ((!\SW[16]~input_o\) # (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \binary_to_bcd_1~0_combout\);

-- Location: LCCOMB_X105_Y18_N16
\UUT|INSTANCE2|INSTANCE4|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE4|SUM~combout\ = \binary_to_bcd_1~0_combout\ $ (\SW[7]~input_o\ $ (!\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE4|SUM~combout\);

-- Location: LCCOMB_X105_Y18_N18
\UUT|INSTANCE2|INSTANCE4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE4|Cout~0_combout\ = (\binary_to_bcd_1~0_combout\ & (\SW[7]~input_o\ & \SW[17]~input_o\)) # (!\binary_to_bcd_1~0_combout\ & ((\SW[7]~input_o\) # (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE4|Cout~0_combout\);

-- Location: LCCOMB_X105_Y18_N12
\UUT|INSTANCE2|INSTANCE4|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE4|Cout~1_combout\ = (!\binary_to_bcd_1~0_combout\ & ((\SW[7]~input_o\) # (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE4|Cout~1_combout\);

-- Location: LCCOMB_X105_Y18_N22
\UUT|INSTANCE2|INSTANCE4|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UUT|INSTANCE2|INSTANCE4|Cout~2_combout\ = (\SW[7]~input_o\ & \SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \UUT|INSTANCE2|INSTANCE4|Cout~2_combout\);

-- Location: LCCOMB_X106_Y18_N0
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \UUT|INSTANCE2|INSTANCE3|SUM~combout\ $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\UUT|INSTANCE2|INSTANCE3|SUM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE3|SUM~combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y18_N2
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\UUT|INSTANCE2|INSTANCE4|SUM~combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\UUT|INSTANCE2|INSTANCE4|SUM~combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\UUT|INSTANCE2|INSTANCE4|SUM~combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE4|SUM~combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y18_N4
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE4|Cout~1_combout\,
	datab => \UUT|INSTANCE2|INSTANCE4|Cout~2_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y18_N6
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X105_Y18_N2
\Mod1|auto_generated|divider|divider|StageOut[30]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\binary_to_bcd_1~0_combout\ & (\SW[7]~input_o\ & \SW[17]~input_o\)) # (!\binary_to_bcd_1~0_combout\ & 
-- ((\SW[7]~input_o\) # (\SW[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\);

-- Location: LCCOMB_X105_Y18_N24
\Mod1|auto_generated|divider|divider|StageOut[30]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~68_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~68_combout\);

-- Location: LCCOMB_X105_Y18_N8
\Mod1|auto_generated|divider|divider|StageOut[29]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\binary_to_bcd_1~0_combout\ $ (\SW[7]~input_o\ $ (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\);

-- Location: LCCOMB_X105_Y18_N10
\Mod1|auto_generated|divider|divider|StageOut[29]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~69_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~69_combout\);

-- Location: LCCOMB_X102_Y18_N6
\Mod1|auto_generated|divider|divider|StageOut[28]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X102_Y18_N22
\Mod1|auto_generated|divider|divider|StageOut[28]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ $ (\SW[6]~input_o\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\);

-- Location: LCCOMB_X102_Y18_N8
\Mod1|auto_generated|divider|divider|StageOut[27]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~101_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\SW[15]~input_o\ $ (\UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \SW[15]~input_o\,
	datac => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~101_combout\);

-- Location: LCCOMB_X102_Y18_N10
\Mod1|auto_generated|divider|divider|StageOut[27]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~102_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\SW[15]~input_o\ $ (\UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \SW[15]~input_o\,
	datac => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~102_combout\);

-- Location: LCCOMB_X101_Y18_N18
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[27]~101_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[27]~102_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[27]~101_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[27]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~101_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~102_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X101_Y18_N20
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[28]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[28]~70_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X101_Y18_N22
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~69_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~69_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[29]~69_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X101_Y18_N24
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~68_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[30]~68_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[30]~68_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~68_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X101_Y18_N26
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X105_Y18_N26
\Mod1|auto_generated|divider|divider|StageOut[40]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[30]~131_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\);

-- Location: LCCOMB_X101_Y18_N0
\Mod1|auto_generated|divider|divider|StageOut[40]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~71_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~71_combout\);

-- Location: LCCOMB_X99_Y18_N24
\Mod1|auto_generated|divider|divider|StageOut[39]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~72_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~72_combout\);

-- Location: LCCOMB_X105_Y18_N20
\Mod1|auto_generated|divider|divider|StageOut[39]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[29]~99_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\);

-- Location: LCCOMB_X100_Y18_N24
\Mod1|auto_generated|divider|divider|StageOut[38]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~73_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~73_combout\);

-- Location: LCCOMB_X101_Y18_N2
\Mod1|auto_generated|divider|divider|StageOut[38]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~100_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\);

-- Location: LCCOMB_X99_Y18_N26
\Mod1|auto_generated|divider|divider|StageOut[37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~74_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~74_combout\);

-- Location: LCCOMB_X101_Y19_N12
\Mod1|auto_generated|divider|divider|StageOut[37]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ $ (\SW[15]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\);

-- Location: LCCOMB_X101_Y19_N14
\Mod1|auto_generated|divider|divider|StageOut[36]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~107_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ $ (\SW[14]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~107_combout\);

-- Location: LCCOMB_X101_Y19_N24
\Mod1|auto_generated|divider|divider|StageOut[36]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~108_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ $ (\SW[14]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~108_combout\);

-- Location: LCCOMB_X101_Y18_N6
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[36]~107_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[36]~108_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[36]~107_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[36]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~107_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~108_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X101_Y18_N8
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[37]~74_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[37]~74_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[37]~74_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[37]~74_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X101_Y18_N10
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[38]~73_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[38]~73_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[38]~73_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~73_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X101_Y18_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[39]~72_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[39]~72_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[39]~72_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[39]~72_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X101_Y18_N14
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[40]~71_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[40]~71_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[40]~71_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~71_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X101_Y18_N16
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X101_Y18_N4
\Mod1|auto_generated|divider|divider|StageOut[50]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[40]~103_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\);

-- Location: LCCOMB_X100_Y18_N26
\Mod1|auto_generated|divider|divider|StageOut[50]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\);

-- Location: LCCOMB_X100_Y18_N28
\Mod1|auto_generated|divider|divider|StageOut[49]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\);

-- Location: LCCOMB_X101_Y18_N28
\Mod1|auto_generated|divider|divider|StageOut[49]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[39]~104_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\);

-- Location: LCCOMB_X100_Y18_N6
\Mod1|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X100_Y18_N0
\Mod1|auto_generated|divider|divider|StageOut[48]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~105_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\);

-- Location: LCCOMB_X101_Y18_N30
\Mod1|auto_generated|divider|divider|StageOut[47]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[37]~106_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\);

-- Location: LCCOMB_X100_Y18_N30
\Mod1|auto_generated|divider|divider|StageOut[47]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[47]~78_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[47]~78_combout\);

-- Location: LCCOMB_X100_Y19_N16
\Mod1|auto_generated|divider|divider|StageOut[46]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[46]~79_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[46]~79_combout\);

-- Location: LCCOMB_X101_Y19_N2
\Mod1|auto_generated|divider|divider|StageOut[46]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ $ (\SW[14]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\);

-- Location: LCCOMB_X100_Y20_N20
\Mod1|auto_generated|divider|divider|StageOut[45]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~115_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\SW[13]~input_o\ $ (\SW[3]~input_o\ $ (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \SW[3]~input_o\,
	datad => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~115_combout\);

-- Location: LCCOMB_X100_Y20_N10
\Mod1|auto_generated|divider|divider|StageOut[45]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~114_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\SW[13]~input_o\ $ (\SW[3]~input_o\ $ (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \SW[3]~input_o\,
	datad => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~114_combout\);

-- Location: LCCOMB_X100_Y18_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[45]~115_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[45]~114_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[45]~115_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[45]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[45]~115_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~114_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X100_Y18_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[46]~79_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[46]~79_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[46]~79_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[46]~79_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X100_Y18_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[47]~78_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[47]~78_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[47]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[47]~78_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X100_Y18_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X100_Y18_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X100_Y18_N18
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X100_Y18_N20
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X101_Y19_N4
\Mod1|auto_generated|divider|divider|StageOut[60]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[50]~109_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\);

-- Location: LCCOMB_X100_Y20_N24
\Mod1|auto_generated|divider|divider|StageOut[60]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~80_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~80_combout\);

-- Location: LCCOMB_X100_Y18_N2
\Mod1|auto_generated|divider|divider|StageOut[59]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[49]~110_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\);

-- Location: LCCOMB_X100_Y20_N18
\Mod1|auto_generated|divider|divider|StageOut[59]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\);

-- Location: LCCOMB_X100_Y18_N4
\Mod1|auto_generated|divider|divider|StageOut[58]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[48]~111_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\);

-- Location: LCCOMB_X100_Y20_N28
\Mod1|auto_generated|divider|divider|StageOut[58]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[58]~82_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[58]~82_combout\);

-- Location: LCCOMB_X101_Y20_N0
\Mod1|auto_generated|divider|divider|StageOut[57]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[57]~83_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[57]~83_combout\);

-- Location: LCCOMB_X100_Y18_N22
\Mod1|auto_generated|divider|divider|StageOut[57]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[47]~112_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\);

-- Location: LCCOMB_X100_Y20_N6
\Mod1|auto_generated|divider|divider|StageOut[56]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[56]~84_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[56]~84_combout\);

-- Location: LCCOMB_X100_Y20_N22
\Mod1|auto_generated|divider|divider|StageOut[56]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[46]~113_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\);

-- Location: LCCOMB_X100_Y20_N8
\Mod1|auto_generated|divider|divider|StageOut[55]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[3]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\);

-- Location: LCCOMB_X100_Y20_N16
\Mod1|auto_generated|divider|divider|StageOut[55]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[55]~85_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[55]~85_combout\);

-- Location: LCCOMB_X101_Y16_N30
\Mod1|auto_generated|divider|divider|StageOut[54]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~123_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\SW[12]~input_o\ $ (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~123_combout\);

-- Location: LCCOMB_X101_Y16_N12
\Mod1|auto_generated|divider|divider|StageOut[54]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~122_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\SW[12]~input_o\ $ (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~122_combout\);

-- Location: LCCOMB_X101_Y20_N8
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[54]~123_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[54]~122_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[54]~123_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[54]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[54]~123_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[54]~122_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X101_Y20_N10
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[55]~85_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[55]~85_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[55]~85_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[55]~85_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X101_Y20_N12
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[56]~84_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[56]~84_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[56]~84_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[56]~84_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X101_Y20_N14
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[57]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[57]~83_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[57]~83_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[57]~83_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X101_Y20_N16
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[58]~82_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[58]~82_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[58]~82_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~82_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X101_Y20_N18
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X101_Y20_N20
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[60]~80_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[60]~80_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[60]~80_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[60]~80_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X101_Y20_N22
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X102_Y20_N26
\Mod1|auto_generated|divider|divider|StageOut[63]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[63]~93_combout\ = (\UUT|INSTANCE1|INSTANCE2|SUM~0_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[63]~93_combout\);

-- Location: LCCOMB_X102_Y20_N28
\Mod1|auto_generated|divider|divider|StageOut[63]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[63]~94_combout\ = (\UUT|INSTANCE1|INSTANCE2|SUM~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[63]~94_combout\);

-- Location: LCCOMB_X102_Y20_N8
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[63]~93_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[63]~94_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[63]~93_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[63]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[63]~93_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[63]~94_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~3\);

-- Location: LCCOMB_X100_Y20_N26
\Mod1|auto_generated|divider|divider|StageOut[70]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[70]~124_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[60]~116_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[70]~124_combout\);

-- Location: LCCOMB_X102_Y20_N0
\Mod1|auto_generated|divider|divider|StageOut[70]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[70]~86_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[70]~86_combout\);

-- Location: LCCOMB_X101_Y20_N26
\Mod1|auto_generated|divider|divider|StageOut[69]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[69]~87_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[69]~87_combout\);

-- Location: LCCOMB_X100_Y20_N4
\Mod1|auto_generated|divider|divider|StageOut[69]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[69]~125_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[59]~117_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[69]~125_combout\);

-- Location: LCCOMB_X100_Y20_N30
\Mod1|auto_generated|divider|divider|StageOut[68]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[68]~126_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~118_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[68]~126_combout\);

-- Location: LCCOMB_X101_Y20_N4
\Mod1|auto_generated|divider|divider|StageOut[68]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[68]~88_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[68]~88_combout\);

-- Location: LCCOMB_X101_Y20_N30
\Mod1|auto_generated|divider|divider|StageOut[67]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[67]~89_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[67]~89_combout\);

-- Location: LCCOMB_X101_Y20_N6
\Mod1|auto_generated|divider|divider|StageOut[67]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[67]~127_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[57]~119_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[67]~127_combout\);

-- Location: LCCOMB_X100_Y20_N0
\Mod1|auto_generated|divider|divider|StageOut[66]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[66]~128_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[56]~120_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[66]~128_combout\);

-- Location: LCCOMB_X101_Y20_N24
\Mod1|auto_generated|divider|divider|StageOut[66]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[66]~90_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[66]~90_combout\);

-- Location: LCCOMB_X101_Y20_N2
\Mod1|auto_generated|divider|divider|StageOut[65]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\);

-- Location: LCCOMB_X100_Y20_N2
\Mod1|auto_generated|divider|divider|StageOut[65]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[55]~121_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\);

-- Location: LCCOMB_X102_Y20_N30
\Mod1|auto_generated|divider|divider|StageOut[64]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[12]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datab => \SW[12]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\);

-- Location: LCCOMB_X101_Y20_N28
\Mod1|auto_generated|divider|divider|StageOut[64]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\);

-- Location: LCCOMB_X102_Y20_N10
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ & (!\Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~5\);

-- Location: LCCOMB_X102_Y20_N12
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ & ((((\Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ & ((\Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~7\);

-- Location: LCCOMB_X102_Y20_N14
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[66]~128_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[66]~90_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[66]~128_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[66]~90_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~7\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\);

-- Location: LCCOMB_X102_Y20_N16
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~11_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[67]~89_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[67]~127_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[67]~89_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[67]~127_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~11_cout\);

-- Location: LCCOMB_X102_Y20_N18
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[68]~126_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[68]~88_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[68]~126_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[68]~88_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~11_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\);

-- Location: LCCOMB_X102_Y20_N20
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~15_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[69]~87_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[69]~125_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[69]~87_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[69]~125_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~15_cout\);

-- Location: LCCOMB_X102_Y20_N22
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~17_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[70]~124_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[70]~86_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[70]~124_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[70]~86_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~15_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~17_cout\);

-- Location: LCCOMB_X102_Y20_N24
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~17_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\);

-- Location: LCCOMB_X102_Y20_N6
\Mod1|auto_generated|divider|divider|StageOut[73]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\UUT|INSTANCE1|INSTANCE2|SUM~0_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\);

-- Location: LCCOMB_X102_Y20_N2
\Mod1|auto_generated|divider|divider|StageOut[74]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[64]~92_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[64]~130_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\);

-- Location: LCCOMB_X102_Y20_N4
\Mod1|auto_generated|divider|divider|StageOut[75]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[65]~91_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[65]~129_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\);

-- Location: LCCOMB_X111_Y52_N24
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ = \SW[10]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\);

-- Location: LCCOMB_X111_Y52_N10
\Mod1|auto_generated|divider|divider|StageOut[72]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\SW[10]~input_o\ $ (((\SW[0]~input_o\))))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datad => \SW[0]~input_o\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\);

-- Location: LCCOMB_X111_Y52_N20
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & ((!\Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X111_Y52_N22
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ & 
-- \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X111_Y52_N16
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\) # ((!\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X111_Y52_N18
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ & 
-- \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ $ 
-- (\Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X111_Y52_N12
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X111_Y52_N14
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X111_Y52_N0
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\ $ 
-- (\Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[74]~97_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[72]~95_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X106_Y18_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \UUT|INSTANCE2|INSTANCE1|SUM~combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\UUT|INSTANCE2|INSTANCE1|SUM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE1|SUM~combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X106_Y18_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\UUT|INSTANCE2|INSTANCE2|SUM~combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\UUT|INSTANCE2|INSTANCE2|SUM~combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\UUT|INSTANCE2|INSTANCE2|SUM~combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UUT|INSTANCE2|INSTANCE2|SUM~combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X106_Y18_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\UUT|INSTANCE2|INSTANCE3|SUM~combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\UUT|INSTANCE2|INSTANCE3|SUM~combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\UUT|INSTANCE2|INSTANCE3|SUM~combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE3|SUM~combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X106_Y18_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\UUT|INSTANCE2|INSTANCE4|SUM~combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\UUT|INSTANCE2|INSTANCE4|SUM~combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\UUT|INSTANCE2|INSTANCE4|SUM~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE4|SUM~combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X106_Y18_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE4|Cout~1_combout\,
	datab => \UUT|INSTANCE2|INSTANCE4|Cout~2_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X106_Y18_N30
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X105_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[60]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\binary_to_bcd_1~0_combout\ & (\SW[7]~input_o\ & \SW[17]~input_o\)) # (!\binary_to_bcd_1~0_combout\ & 
-- ((\SW[7]~input_o\) # (\SW[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\);

-- Location: LCCOMB_X105_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[60]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\);

-- Location: LCCOMB_X105_Y20_N0
\Mod0|auto_generated|divider|divider|StageOut[59]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~49_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~49_combout\);

-- Location: LCCOMB_X105_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[59]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\binary_to_bcd_1~0_combout\ $ (\SW[7]~input_o\ $ (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\);

-- Location: LCCOMB_X102_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[58]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[6]~input_o\ $ (\UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \SW[16]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\);

-- Location: LCCOMB_X105_Y20_N2
\Mod0|auto_generated|divider|divider|StageOut[58]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~50_combout\);

-- Location: LCCOMB_X105_Y20_N4
\Mod0|auto_generated|divider|divider|StageOut[57]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~51_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~51_combout\);

-- Location: LCCOMB_X101_Y19_N6
\Mod0|auto_generated|divider|divider|StageOut[57]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\UUT|INSTANCE2|INSTANCE1|Cout~0_combout\ $ (\SW[15]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\);

-- Location: LCCOMB_X101_Y19_N16
\Mod0|auto_generated|divider|divider|StageOut[56]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\UUT|INSTANCE1|INSTANCE4|Cout~0_combout\ $ (\SW[14]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\);

-- Location: LCCOMB_X105_Y20_N14
\Mod0|auto_generated|divider|divider|StageOut[56]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\);

-- Location: LCCOMB_X102_Y19_N22
\Mod0|auto_generated|divider|divider|StageOut[55]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~76_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[13]~input_o\ $ (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \SW[3]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~76_combout\);

-- Location: LCCOMB_X102_Y19_N4
\Mod0|auto_generated|divider|divider|StageOut[55]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~75_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[13]~input_o\ $ (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \SW[3]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~75_combout\);

-- Location: LCCOMB_X105_Y20_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[55]~76_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[55]~75_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[55]~76_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[55]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[55]~76_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[55]~75_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X105_Y20_N20
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X105_Y20_N22
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[57]~51_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~51_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[57]~51_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X105_Y20_N24
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~50_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[58]~50_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[58]~50_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X105_Y20_N26
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[59]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[59]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[59]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X105_Y20_N28
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~48_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X105_Y20_N30
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X105_Y20_N16
\Mod0|auto_generated|divider|divider|StageOut[70]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\);

-- Location: LCCOMB_X109_Y20_N2
\Mod0|auto_generated|divider|divider|StageOut[70]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[70]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[70]~53_combout\);

-- Location: LCCOMB_X105_Y20_N10
\Mod0|auto_generated|divider|divider|StageOut[69]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~71_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\);

-- Location: LCCOMB_X106_Y20_N0
\Mod0|auto_generated|divider|divider|StageOut[69]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[69]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[69]~54_combout\);

-- Location: LCCOMB_X105_Y20_N12
\Mod0|auto_generated|divider|divider|StageOut[68]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[58]~72_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\);

-- Location: LCCOMB_X106_Y20_N26
\Mod0|auto_generated|divider|divider|StageOut[68]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[68]~55_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[68]~55_combout\);

-- Location: LCCOMB_X106_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[67]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[67]~56_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[67]~56_combout\);

-- Location: LCCOMB_X105_Y20_N6
\Mod0|auto_generated|divider|divider|StageOut[67]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~73_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\);

-- Location: LCCOMB_X105_Y20_N8
\Mod0|auto_generated|divider|divider|StageOut[66]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~74_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\);

-- Location: LCCOMB_X106_Y20_N6
\Mod0|auto_generated|divider|divider|StageOut[66]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~57_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~57_combout\);

-- Location: LCCOMB_X109_Y20_N0
\Mod0|auto_generated|divider|divider|StageOut[65]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[13]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\);

-- Location: LCCOMB_X109_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[65]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~58_combout\);

-- Location: LCCOMB_X102_Y19_N2
\Mod0|auto_generated|divider|divider|StageOut[54]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[2]~input_o\ $ (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\);

-- Location: LCCOMB_X102_Y19_N0
\Mod0|auto_generated|divider|divider|StageOut[54]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[2]~input_o\ $ (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\);

-- Location: LCCOMB_X102_Y19_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X105_Y19_N22
\Mod0|auto_generated|divider|divider|StageOut[64]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~59_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~59_combout\);

-- Location: LCCOMB_X107_Y17_N4
\Mod0|auto_generated|divider|divider|StageOut[64]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\SW[12]~input_o\ $ (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\);

-- Location: LCCOMB_X106_Y20_N10
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[64]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[64]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[64]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X106_Y20_N12
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[65]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[65]~58_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[65]~58_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[65]~58_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X106_Y20_N14
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[66]~57_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[66]~57_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[66]~57_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[66]~57_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X106_Y20_N16
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[67]~56_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[67]~56_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[67]~56_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[67]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X106_Y20_N18
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[68]~55_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[68]~55_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[68]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[68]~55_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X106_Y20_N20
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[69]~54_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[69]~54_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[69]~54_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[69]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X106_Y20_N22
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[70]~53_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[70]~53_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[70]~53_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[70]~53_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\);

-- Location: LCCOMB_X106_Y20_N24
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X107_Y20_N8
\Mod0|auto_generated|divider|divider|StageOut[80]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[80]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[80]~60_combout\);

-- Location: LCCOMB_X109_Y20_N26
\Mod0|auto_generated|divider|divider|StageOut[80]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[70]~77_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\);

-- Location: LCCOMB_X106_Y20_N8
\Mod0|auto_generated|divider|divider|StageOut[79]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[69]~78_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\);

-- Location: LCCOMB_X107_Y20_N26
\Mod0|auto_generated|divider|divider|StageOut[79]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[79]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[79]~61_combout\);

-- Location: LCCOMB_X106_Y20_N2
\Mod0|auto_generated|divider|divider|StageOut[78]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[68]~79_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\);

-- Location: LCCOMB_X107_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[78]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~62_combout\);

-- Location: LCCOMB_X107_Y20_N12
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[78]~62_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[78]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[78]~62_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X107_Y20_N14
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[79]~61_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[79]~61_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[79]~61_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[79]~61_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X107_Y20_N16
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[80]~60_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[80]~60_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[80]~60_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[80]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X107_Y20_N18
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X107_Y20_N20
\Div1|auto_generated|divider|divider|StageOut[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[79]~87_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~67_combout\);

-- Location: LCCOMB_X107_Y20_N10
\Div1|auto_generated|divider|divider|StageOut[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[80]~86_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~66_combout\);

-- Location: LCCOMB_X107_Y20_N22
\Div1|auto_generated|divider|divider|StageOut[18]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~46_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~46_combout\);

-- Location: LCCOMB_X107_Y20_N0
\Div1|auto_generated|divider|divider|StageOut[17]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~47_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~47_combout\);

-- Location: LCCOMB_X108_Y20_N26
\Div1|auto_generated|divider|divider|StageOut[16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~48_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~48_combout\);

-- Location: LCCOMB_X107_Y20_N6
\Div1|auto_generated|divider|divider|StageOut[16]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~68_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[78]~88_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~68_combout\);

-- Location: LCCOMB_X106_Y20_N4
\Mod0|auto_generated|divider|divider|StageOut[77]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~89_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[67]~80_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~89_combout\);

-- Location: LCCOMB_X108_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[77]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~63_combout\);

-- Location: LCCOMB_X108_Y20_N8
\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[77]~89_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[77]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[77]~89_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[77]~63_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X108_Y20_N30
\Div1|auto_generated|divider|divider|StageOut[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~49_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~49_combout\);

-- Location: LCCOMB_X108_Y20_N2
\Div1|auto_generated|divider|divider|StageOut[15]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~69_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[77]~89_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[77]~89_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~69_combout\);

-- Location: LCCOMB_X108_Y20_N10
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~49_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~69_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~49_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~49_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~69_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X108_Y20_N12
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~48_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~68_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~48_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~68_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~48_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~68_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~48_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~68_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X108_Y20_N14
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~47_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~67_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~47_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~67_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~47_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~47_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~67_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X108_Y20_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~66_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~46_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~46_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y20_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y20_N24
\Div1|auto_generated|divider|divider|StageOut[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~67_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~67_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~70_combout\);

-- Location: LCCOMB_X108_Y20_N0
\Div1|auto_generated|divider|divider|StageOut[23]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~50_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~50_combout\);

-- Location: LCCOMB_X107_Y20_N2
\Div1|auto_generated|divider|divider|StageOut[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~68_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~68_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~71_combout\);

-- Location: LCCOMB_X108_Y20_N20
\Div1|auto_generated|divider|divider|StageOut[22]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~51_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~51_combout\);

-- Location: LCCOMB_X108_Y20_N22
\Div1|auto_generated|divider|divider|StageOut[21]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~52_combout\);

-- Location: LCCOMB_X108_Y20_N4
\Div1|auto_generated|divider|divider|StageOut[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~72_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~69_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~69_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~72_combout\);

-- Location: LCCOMB_X106_Y20_N30
\Mod0|auto_generated|divider|divider|StageOut[76]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~90_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[66]~81_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~90_combout\);

-- Location: LCCOMB_X107_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~73_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~90_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[76]~90_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~73_combout\);

-- Location: LCCOMB_X107_Y19_N10
\Mod0|auto_generated|divider|divider|StageOut[76]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~64_combout\);

-- Location: LCCOMB_X107_Y19_N24
\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[76]~90_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[76]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[76]~90_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[76]~64_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X108_Y22_N8
\Div1|auto_generated|divider|divider|StageOut[20]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~53_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~53_combout\);

-- Location: LCCOMB_X108_Y22_N22
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~73_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~53_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~73_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~53_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X108_Y22_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~52_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~72_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~72_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~72_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~52_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~72_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X108_Y22_N26
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~71_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~51_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~71_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~51_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~71_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~71_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~51_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X108_Y22_N28
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~70_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~50_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~70_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y22_N30
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y20_N4
\Div1|auto_generated|divider|divider|StageOut[28]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~74_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~71_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~71_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~74_combout\);

-- Location: LCCOMB_X108_Y22_N2
\Div1|auto_generated|divider|divider|StageOut[28]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~54_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~54_combout\);

-- Location: LCCOMB_X108_Y22_N4
\Div1|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X108_Y20_N6
\Div1|auto_generated|divider|divider|StageOut[27]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~75_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~72_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[21]~72_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~75_combout\);

-- Location: LCCOMB_X108_Y22_N6
\Div1|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X108_Y22_N0
\Div1|auto_generated|divider|divider|StageOut[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~76_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[20]~73_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[20]~73_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~76_combout\);

-- Location: LCCOMB_X109_Y20_N12
\Mod0|auto_generated|divider|divider|StageOut[75]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~91_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[65]~82_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~91_combout\);

-- Location: LCCOMB_X109_Y20_N14
\Div1|auto_generated|divider|divider|StageOut[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~77_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[75]~91_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[75]~91_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~77_combout\);

-- Location: LCCOMB_X109_Y20_N6
\Mod0|auto_generated|divider|divider|StageOut[75]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~65_combout\);

-- Location: LCCOMB_X109_Y20_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[75]~65_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[75]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[75]~65_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[75]~91_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X109_Y22_N8
\Div1|auto_generated|divider|divider|StageOut[25]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~57_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~57_combout\);

-- Location: LCCOMB_X108_Y22_N10
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~77_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~57_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~77_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~77_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~57_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X108_Y22_N12
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~76_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~76_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~76_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~76_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X108_Y22_N14
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~75_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~75_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~75_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X108_Y22_N16
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~74_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~54_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y22_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y22_N20
\Div1|auto_generated|divider|divider|StageOut[33]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~78_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~75_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~75_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~78_combout\);

-- Location: LCCOMB_X107_Y22_N0
\Div1|auto_generated|divider|divider|StageOut[33]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~58_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~58_combout\);

-- Location: LCCOMB_X107_Y22_N20
\Div1|auto_generated|divider|divider|StageOut[32]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~79_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~76_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[26]~76_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~79_combout\);

-- Location: LCCOMB_X107_Y22_N2
\Div1|auto_generated|divider|divider|StageOut[32]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~59_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~59_combout\);

-- Location: LCCOMB_X109_Y22_N4
\Div1|auto_generated|divider|divider|StageOut[31]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~80_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[25]~77_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[25]~77_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~80_combout\);

-- Location: LCCOMB_X106_Y22_N26
\Div1|auto_generated|divider|divider|StageOut[31]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~60_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~60_combout\);

-- Location: LCCOMB_X105_Y19_N6
\Mod0|auto_generated|divider|divider|StageOut[74]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~92_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[64]~83_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~92_combout\);

-- Location: LCCOMB_X105_Y19_N8
\Mod0|auto_generated|divider|divider|StageOut[74]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~66_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~66_combout\);

-- Location: LCCOMB_X105_Y19_N24
\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[74]~92_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[74]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[74]~92_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[74]~66_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X105_Y19_N2
\Div1|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X105_Y19_N16
\Div1|auto_generated|divider|divider|StageOut[30]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[74]~92_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[74]~92_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X106_Y22_N0
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X106_Y22_N2
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[31]~80_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[31]~60_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~80_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[31]~60_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~80_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~60_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~80_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X106_Y22_N4
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[32]~79_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~59_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[32]~79_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~59_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~79_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~79_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X106_Y22_N6
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~78_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~58_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~78_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~58_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y22_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y22_N6
\Div1|auto_generated|divider|divider|StageOut[38]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~79_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~79_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X106_Y22_N28
\Div1|auto_generated|divider|divider|StageOut[38]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~62_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~62_combout\);

-- Location: LCCOMB_X106_Y22_N12
\Div1|auto_generated|divider|divider|StageOut[37]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[31]~80_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~80_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X106_Y22_N14
\Div1|auto_generated|divider|divider|StageOut[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~63_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X106_Y22_N30
\Div1|auto_generated|divider|divider|StageOut[36]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[30]~81_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X106_Y22_N10
\Div1|auto_generated|divider|divider|StageOut[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~64_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: LCCOMB_X105_Y19_N12
\Mod0|auto_generated|divider|divider|StageOut[73]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~67_combout\ = (\UUT|INSTANCE1|INSTANCE2|SUM~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~67_combout\);

-- Location: LCCOMB_X105_Y19_N30
\Mod0|auto_generated|divider|divider|StageOut[63]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~68_combout\);

-- Location: LCCOMB_X105_Y19_N0
\Mod0|auto_generated|divider|divider|StageOut[63]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~69_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~69_combout\);

-- Location: LCCOMB_X105_Y19_N18
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[63]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[63]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[63]~68_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~69_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X105_Y19_N10
\Mod0|auto_generated|divider|divider|StageOut[73]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~70_combout\);

-- Location: LCCOMB_X105_Y19_N28
\Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[73]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[73]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[73]~67_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[73]~70_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\);

-- Location: LCCOMB_X105_Y19_N4
\Div1|auto_generated|divider|divider|StageOut[35]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[35]~65_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[35]~65_combout\);

-- Location: LCCOMB_X105_Y19_N26
\Div1|auto_generated|divider|divider|StageOut[35]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[35]~85_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & 
-- ((\UUT|INSTANCE1|INSTANCE2|SUM~0_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \UUT|INSTANCE1|INSTANCE2|SUM~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[35]~85_combout\);

-- Location: LCCOMB_X106_Y22_N16
\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[35]~65_combout\) # (\Div1|auto_generated|divider|divider|StageOut[35]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[35]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[35]~85_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\);

-- Location: LCCOMB_X106_Y22_N18
\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[36]~64_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\);

-- Location: LCCOMB_X106_Y22_N20
\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\);

-- Location: LCCOMB_X106_Y22_N22
\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[38]~62_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y22_N24
\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y22_N6
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\) # (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X108_Y20_N24
\binary_to_bcd_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \binary_to_bcd_1~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \binary_to_bcd_1~2_combout\);

-- Location: LCCOMB_X105_Y18_N28
\binary_to_bcd_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \binary_to_bcd_1~1_combout\ = (!\SW[7]~input_o\ & !\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \binary_to_bcd_1~1_combout\);

-- Location: LCCOMB_X109_Y22_N26
\binary_to_bcd_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \binary_to_bcd_1~3_combout\ = (\binary_to_bcd_1~2_combout\ & (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\binary_to_bcd_1~1_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_to_bcd_1~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \binary_to_bcd_1~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \binary_to_bcd_1~3_combout\);

-- Location: LCCOMB_X101_Y19_N18
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!\UUT|INSTANCE1|INSTANCE4|SUM~combout\ & (!\UUT|INSTANCE2|INSTANCE1|SUM~combout\ & !\UUT|INSTANCE1|INSTANCE3|SUM~0_combout\))) # (!\UUT|INSTANCE2|INSTANCE2|SUM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE4|SUM~combout\,
	datab => \UUT|INSTANCE2|INSTANCE2|SUM~combout\,
	datac => \UUT|INSTANCE2|INSTANCE1|SUM~combout\,
	datad => \UUT|INSTANCE1|INSTANCE3|SUM~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y22_N20
\binary_to_bcd_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \binary_to_bcd_1~4_combout\ = (\binary_to_bcd_1~0_combout\ & (\binary_to_bcd_1~3_combout\ & ((\LessThan0~0_combout\) # (!\UUT|INSTANCE2|INSTANCE3|SUM~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE3|SUM~combout\,
	datab => \binary_to_bcd_1~0_combout\,
	datac => \binary_to_bcd_1~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \binary_to_bcd_1~4_combout\);

-- Location: LCCOMB_X109_Y22_N0
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\binary_to_bcd_1~4_combout\) # (!\Mux41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datad => \binary_to_bcd_1~4_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X109_Y22_N18
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X109_Y22_N28
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Mux40~0_combout\) # (\binary_to_bcd_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux40~0_combout\,
	datad => \binary_to_bcd_1~4_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X109_Y22_N30
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ((\binary_to_bcd_1~4_combout\) # ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \binary_to_bcd_1~4_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X109_Y22_N24
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X109_Y22_N2
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\Mux38~0_combout\) # (\binary_to_bcd_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux38~0_combout\,
	datad => \binary_to_bcd_1~4_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X109_Y22_N12
\binary_to_bcd_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \binary_to_bcd_1~5_combout\ = \binary_to_bcd_1~4_combout\ $ (((\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \binary_to_bcd_1~4_combout\,
	combout => \binary_to_bcd_1~5_combout\);

-- Location: LCCOMB_X109_Y22_N22
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\binary_to_bcd_1~4_combout\) # ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ 
-- (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \binary_to_bcd_1~4_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X109_Y22_N16
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ 
-- (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X109_Y22_N10
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\) # (\binary_to_bcd_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux35~0_combout\,
	datad => \binary_to_bcd_1~4_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X106_Y18_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \UUT|INSTANCE2|INSTANCE1|SUM~combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\UUT|INSTANCE2|INSTANCE1|SUM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE1|SUM~combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X106_Y18_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\UUT|INSTANCE2|INSTANCE2|SUM~combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\UUT|INSTANCE2|INSTANCE2|SUM~combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\UUT|INSTANCE2|INSTANCE2|SUM~combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UUT|INSTANCE2|INSTANCE2|SUM~combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X106_Y18_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\UUT|INSTANCE2|INSTANCE3|SUM~combout\ & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\UUT|INSTANCE2|INSTANCE3|SUM~combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\UUT|INSTANCE2|INSTANCE3|SUM~combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE3|SUM~combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X106_Y18_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\UUT|INSTANCE2|INSTANCE4|SUM~combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\UUT|INSTANCE2|INSTANCE4|SUM~combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\UUT|INSTANCE2|INSTANCE4|SUM~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE4|SUM~combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X106_Y18_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((\UUT|INSTANCE2|INSTANCE4|Cout~1_combout\) # (\UUT|INSTANCE2|INSTANCE4|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE2|INSTANCE4|Cout~1_combout\,
	datab => \UUT|INSTANCE2|INSTANCE4|Cout~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X106_Y18_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X105_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\binary_to_bcd_1~0_combout\ $ (\SW[7]~input_o\ $ (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~43_combout\);

-- Location: LCCOMB_X105_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[54]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\binary_to_bcd_1~0_combout\ & (\SW[7]~input_o\ & \SW[17]~input_o\)) # (!\binary_to_bcd_1~0_combout\ & 
-- ((\SW[7]~input_o\) # (\SW[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \binary_to_bcd_1~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~57_combout\);

-- Location: LCCOMB_X107_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[54]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~32_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~32_combout\);

-- Location: LCCOMB_X107_Y18_N2
\Div0|auto_generated|divider|divider|StageOut[53]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~33_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~33_combout\);

-- Location: LCCOMB_X102_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[6]~input_o\ $ (\UUT|INSTANCE2|INSTANCE2|Cout~0_combout\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \UUT|INSTANCE2|INSTANCE2|Cout~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \SW[16]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X107_Y18_N28
\Div0|auto_generated|divider|divider|StageOut[52]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~34_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~34_combout\);

-- Location: LCCOMB_X107_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[51]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~35_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~35_combout\);

-- Location: LCCOMB_X101_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[51]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~45_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[5]~input_o\ $ (\SW[15]~input_o\ $ (\UUT|INSTANCE2|INSTANCE1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \UUT|INSTANCE2|INSTANCE1|Cout~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~45_combout\);

-- Location: LCCOMB_X107_Y18_N8
\Div0|auto_generated|divider|divider|StageOut[50]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~36_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~36_combout\);

-- Location: LCCOMB_X101_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[50]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~46_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[4]~input_o\ $ (\SW[14]~input_o\ $ (\UUT|INSTANCE1|INSTANCE4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \SW[4]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \UUT|INSTANCE1|INSTANCE4|Cout~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~46_combout\);

-- Location: LCCOMB_X102_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~48_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[13]~input_o\ $ (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \SW[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~48_combout\);

-- Location: LCCOMB_X102_Y19_N12
\Div0|auto_generated|divider|divider|StageOut[49]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\SW[13]~input_o\ $ (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \SW[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~47_combout\);

-- Location: LCCOMB_X107_Y18_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[49]~48_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~47_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~48_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~48_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~47_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X107_Y18_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[50]~36_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[50]~46_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~36_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[50]~46_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~36_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~46_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~36_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~46_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X107_Y18_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[51]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[51]~45_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~35_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[51]~45_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~35_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[51]~45_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~45_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X107_Y18_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[52]~44_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~44_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~34_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~34_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[52]~44_combout\ & !\Div0|auto_generated|divider|divider|StageOut[52]~34_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~34_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X107_Y18_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~33_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~33_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~33_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X107_Y18_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~57_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~32_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~32_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X107_Y18_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X107_Y18_N10
\Div0|auto_generated|divider|divider|StageOut[62]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~49_combout\);

-- Location: LCCOMB_X107_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[62]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~37_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~37_combout\);

-- Location: LCCOMB_X107_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[61]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~50_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~44_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~50_combout\);

-- Location: LCCOMB_X107_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[61]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~38_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~38_combout\);

-- Location: LCCOMB_X107_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[60]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~39_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~39_combout\);

-- Location: LCCOMB_X107_Y18_N12
\Div0|auto_generated|divider|divider|StageOut[60]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~51_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~45_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~45_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~51_combout\);

-- Location: LCCOMB_X107_Y17_N6
\Div0|auto_generated|divider|divider|StageOut[59]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~40_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~40_combout\);

-- Location: LCCOMB_X107_Y18_N6
\Div0|auto_generated|divider|divider|StageOut[59]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~52_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[50]~46_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~46_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~52_combout\);

-- Location: LCCOMB_X109_Y20_N16
\Div0|auto_generated|divider|divider|StageOut[58]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~53_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\UUT|INSTANCE1|INSTANCE3|Cout~0_combout\ $ (\SW[13]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|INSTANCE1|INSTANCE3|Cout~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~53_combout\);

-- Location: LCCOMB_X107_Y17_N8
\Div0|auto_generated|divider|divider|StageOut[58]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~41_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~41_combout\);

-- Location: LCCOMB_X101_Y16_N16
\Div0|auto_generated|divider|divider|StageOut[48]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~55_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[12]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~55_combout\);

-- Location: LCCOMB_X101_Y16_N26
\Div0|auto_generated|divider|divider|StageOut[48]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~56_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[12]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~56_combout\);

-- Location: LCCOMB_X101_Y16_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[48]~55_combout\) # (\Div0|auto_generated|divider|divider|StageOut[48]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[48]~55_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[48]~56_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X107_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[57]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~42_combout\);

-- Location: LCCOMB_X107_Y17_N14
\Div0|auto_generated|divider|divider|StageOut[57]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~54_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\SW[12]~input_o\ $ (\UUT|INSTANCE1|INSTANCE2|Cout~0_combout\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \UUT|INSTANCE1|INSTANCE2|Cout~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~54_combout\);

-- Location: LCCOMB_X107_Y17_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[57]~42_combout\) # (\Div0|auto_generated|divider|divider|StageOut[57]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~42_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~54_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\);

-- Location: LCCOMB_X107_Y17_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[58]~53_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[58]~41_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[58]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~41_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\);

-- Location: LCCOMB_X107_Y17_N22
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[59]~40_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[59]~52_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[59]~40_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\);

-- Location: LCCOMB_X107_Y17_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[60]~39_combout\ & !\Div0|auto_generated|divider|divider|StageOut[60]~51_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[60]~51_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\);

-- Location: LCCOMB_X107_Y17_N26
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[61]~50_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[61]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[61]~38_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\);

-- Location: LCCOMB_X107_Y17_N28
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[62]~49_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[62]~37_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[62]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[62]~37_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X107_Y17_N30
\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X114_Y17_N0
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X114_Y17_N2
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X114_Y17_N20
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X114_Y17_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X114_Y17_N18
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X114_Y17_N12
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\) # (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X102_Y19_N14
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\SW[0]~input_o\ & ((\SW[3]~input_o\) # (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[3]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X102_Y19_N24
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X102_Y19_N26
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X102_Y19_N28
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X102_Y19_N6
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X102_Y19_N8
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\SW[3]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[2]~input_o\))))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X102_Y19_N10
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\SW[3]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X102_Y18_N24
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\SW[4]~input_o\ & ((\SW[7]~input_o\) # (\SW[5]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\) # (\SW[7]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X102_Y18_N18
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\SW[5]~input_o\ & (!\SW[7]~input_o\ & ((\SW[4]~input_o\) # (!\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[4]~input_o\ & (\SW[7]~input_o\ $ (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X102_Y18_N4
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\SW[5]~input_o\ & (!\SW[7]~input_o\ & ((\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (!\SW[7]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X102_Y18_N14
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X102_Y18_N0
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\SW[7]~input_o\ & (\SW[6]~input_o\ & ((\SW[5]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X102_Y18_N26
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\SW[5]~input_o\ & ((\SW[4]~input_o\ & (\SW[7]~input_o\)) # (!\SW[4]~input_o\ & ((\SW[6]~input_o\))))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ & (\SW[7]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X102_Y18_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\SW[7]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[7]~input_o\ & (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X101_Y16_N22
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\SW[10]~input_o\ & ((\SW[13]~input_o\) # (\SW[11]~input_o\ $ (\SW[12]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\) # (\SW[12]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X101_Y16_N8
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\SW[10]~input_o\ & (\SW[13]~input_o\ $ (((\SW[11]~input_o\) # (!\SW[12]~input_o\))))) # (!\SW[10]~input_o\ & (\SW[11]~input_o\ & (!\SW[12]~input_o\ & !\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X101_Y16_N10
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\SW[11]~input_o\ & (\SW[10]~input_o\ & ((!\SW[13]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((!\SW[13]~input_o\))) # (!\SW[12]~input_o\ & (\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X101_Y16_N20
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\ & (\SW[12]~input_o\)) # (!\SW[10]~input_o\ & (!\SW[12]~input_o\ & \SW[13]~input_o\)))) # (!\SW[11]~input_o\ & (!\SW[13]~input_o\ & (\SW[10]~input_o\ $ (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X101_Y16_N14
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & ((\SW[11]~input_o\) # (!\SW[10]~input_o\)))) # (!\SW[12]~input_o\ & (!\SW[10]~input_o\ & (\SW[11]~input_o\ & !\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X101_Y16_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\ & ((\SW[13]~input_o\))) # (!\SW[10]~input_o\ & (\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (\SW[12]~input_o\ & (\SW[10]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X101_Y16_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\SW[12]~input_o\ & (!\SW[11]~input_o\ & (\SW[10]~input_o\ $ (!\SW[13]~input_o\)))) # (!\SW[12]~input_o\ & (\SW[10]~input_o\ & (\SW[11]~input_o\ $ (!\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X68_Y1_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\SW[14]~input_o\ & ((\SW[17]~input_o\) # (\SW[16]~input_o\ $ (\SW[15]~input_o\)))) # (!\SW[14]~input_o\ & ((\SW[15]~input_o\) # (\SW[16]~input_o\ $ (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X68_Y1_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SW[16]~input_o\ & (\SW[14]~input_o\ & (\SW[15]~input_o\ $ (\SW[17]~input_o\)))) # (!\SW[16]~input_o\ & (!\SW[17]~input_o\ & ((\SW[14]~input_o\) # (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X68_Y1_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SW[15]~input_o\ & (((\SW[14]~input_o\ & !\SW[17]~input_o\)))) # (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((!\SW[17]~input_o\))) # (!\SW[16]~input_o\ & (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X68_Y1_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\SW[14]~input_o\)) # (!\SW[16]~input_o\ & (!\SW[14]~input_o\ & \SW[17]~input_o\)))) # (!\SW[15]~input_o\ & (!\SW[17]~input_o\ & (\SW[16]~input_o\ $ (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X68_Y1_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SW[16]~input_o\ & (\SW[17]~input_o\ & ((\SW[15]~input_o\) # (!\SW[14]~input_o\)))) # (!\SW[16]~input_o\ & (!\SW[14]~input_o\ & (\SW[15]~input_o\ & !\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X68_Y1_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SW[15]~input_o\ & ((\SW[14]~input_o\ & ((\SW[17]~input_o\))) # (!\SW[14]~input_o\ & (\SW[16]~input_o\)))) # (!\SW[15]~input_o\ & (\SW[16]~input_o\ & (\SW[14]~input_o\ $ (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X68_Y1_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\ & (\SW[14]~input_o\ $ (!\SW[17]~input_o\)))) # (!\SW[16]~input_o\ & (\SW[14]~input_o\ & (\SW[15]~input_o\ $ (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;
END structure;


