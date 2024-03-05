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

-- DATE "03/05/2024 13:05:30"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eight_digit_counter IS
    PORT (
	clk_50MHz : IN std_logic;
	SEG : BUFFER std_logic_vector(0 TO 55)
	);
END eight_digit_counter;

-- Design Ports Information
-- SEG[55]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[54]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[53]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[52]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[51]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[50]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[49]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[48]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[47]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[46]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[45]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[44]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[43]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[42]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[41]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[40]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[39]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[38]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[37]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[36]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[35]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[34]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[33]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[32]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[31]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[30]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[29]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[28]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[27]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[26]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[25]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[24]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[23]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[22]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[21]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[20]	=>  Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[19]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[18]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[17]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[16]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[15]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[14]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[13]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[12]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[11]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[10]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[9]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[8]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[7]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF eight_digit_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_SEG : std_logic_vector(0 TO 55);
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:0:gen2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:2:gen2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:1:gen2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:3:gen2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:5:gen2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:6:gen2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:4:gen2|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1KHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG[55]~output_o\ : std_logic;
SIGNAL \SEG[54]~output_o\ : std_logic;
SIGNAL \SEG[53]~output_o\ : std_logic;
SIGNAL \SEG[52]~output_o\ : std_logic;
SIGNAL \SEG[51]~output_o\ : std_logic;
SIGNAL \SEG[50]~output_o\ : std_logic;
SIGNAL \SEG[49]~output_o\ : std_logic;
SIGNAL \SEG[48]~output_o\ : std_logic;
SIGNAL \SEG[47]~output_o\ : std_logic;
SIGNAL \SEG[46]~output_o\ : std_logic;
SIGNAL \SEG[45]~output_o\ : std_logic;
SIGNAL \SEG[44]~output_o\ : std_logic;
SIGNAL \SEG[43]~output_o\ : std_logic;
SIGNAL \SEG[42]~output_o\ : std_logic;
SIGNAL \SEG[41]~output_o\ : std_logic;
SIGNAL \SEG[40]~output_o\ : std_logic;
SIGNAL \SEG[39]~output_o\ : std_logic;
SIGNAL \SEG[38]~output_o\ : std_logic;
SIGNAL \SEG[37]~output_o\ : std_logic;
SIGNAL \SEG[36]~output_o\ : std_logic;
SIGNAL \SEG[35]~output_o\ : std_logic;
SIGNAL \SEG[34]~output_o\ : std_logic;
SIGNAL \SEG[33]~output_o\ : std_logic;
SIGNAL \SEG[32]~output_o\ : std_logic;
SIGNAL \SEG[31]~output_o\ : std_logic;
SIGNAL \SEG[30]~output_o\ : std_logic;
SIGNAL \SEG[29]~output_o\ : std_logic;
SIGNAL \SEG[28]~output_o\ : std_logic;
SIGNAL \SEG[27]~output_o\ : std_logic;
SIGNAL \SEG[26]~output_o\ : std_logic;
SIGNAL \SEG[25]~output_o\ : std_logic;
SIGNAL \SEG[24]~output_o\ : std_logic;
SIGNAL \SEG[23]~output_o\ : std_logic;
SIGNAL \SEG[22]~output_o\ : std_logic;
SIGNAL \SEG[21]~output_o\ : std_logic;
SIGNAL \SEG[20]~output_o\ : std_logic;
SIGNAL \SEG[19]~output_o\ : std_logic;
SIGNAL \SEG[18]~output_o\ : std_logic;
SIGNAL \SEG[17]~output_o\ : std_logic;
SIGNAL \SEG[16]~output_o\ : std_logic;
SIGNAL \SEG[15]~output_o\ : std_logic;
SIGNAL \SEG[14]~output_o\ : std_logic;
SIGNAL \SEG[13]~output_o\ : std_logic;
SIGNAL \SEG[12]~output_o\ : std_logic;
SIGNAL \SEG[11]~output_o\ : std_logic;
SIGNAL \SEG[10]~output_o\ : std_logic;
SIGNAL \SEG[9]~output_o\ : std_logic;
SIGNAL \SEG[8]~output_o\ : std_logic;
SIGNAL \SEG[7]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[0]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[0]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[0]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[1]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[1]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[1]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[2]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[2]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[2]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[3]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[3]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[3]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[4]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[4]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[4]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[5]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[5]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[5]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[6]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[6]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[6]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[7]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[7]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[7]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[8]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[8]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[8]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[9]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[9]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[9]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[10]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[10]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[10]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[11]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[11]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[11]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[12]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[12]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[12]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[13]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[13]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[13]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[14]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[14]~q\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[14]~2\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[15]~1_combout\ : std_logic;
SIGNAL \clk_1KHZ_PROC:counter[15]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \clk_1KHz~feeder_combout\ : std_logic;
SIGNAL \clk_1KHz~q\ : std_logic;
SIGNAL \clk_1KHz~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:0:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:0:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:0:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:0:gen2|LessThan0~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|clk_out~q\ : std_logic;
SIGNAL \gen1:0:gen2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:1:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:1:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:1:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:1:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|LessThan0~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|clk_out~q\ : std_logic;
SIGNAL \gen1:1:gen2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:2:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:2:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:2:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:2:gen2|LessThan0~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|clk_out~q\ : std_logic;
SIGNAL \gen1:2:gen2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:3:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:3:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:3:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:3:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|LessThan0~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|clk_out~q\ : std_logic;
SIGNAL \gen1:3:gen2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:4:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:4:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:4:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:4:gen2|LessThan0~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|clk_out~q\ : std_logic;
SIGNAL \gen1:4:gen2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:5:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:5:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:5:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:5:gen2|LessThan0~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|clk_out~q\ : std_logic;
SIGNAL \gen1:5:gen2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:6:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:6:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:6:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:6:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|LessThan0~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|clk_out~q\ : std_logic;
SIGNAL \gen1:6:gen2|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \gen1:7:gen2|bcdcounter~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|bcdcounter~1_combout\ : std_logic;
SIGNAL \gen1:7:gen2|bcdcounter~3_combout\ : std_logic;
SIGNAL \gen1:7:gen2|bcdcounter~2_combout\ : std_logic;
SIGNAL \gen1:7:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|Mux6~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|Mux5~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|Mux4~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|Mux3~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|Mux2~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|Mux1~0_combout\ : std_logic;
SIGNAL \gen1:0:gen2|Mux0~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:2:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:6:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:1:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:5:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:0:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:4:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:3:gen2|bcdcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen1:0:gen2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \gen1:1:gen2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \gen1:2:gen2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \gen1:3:gen2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \gen1:4:gen2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \gen1:5:gen2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \gen1:6:gen2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \gen1:7:gen2|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHz <= clk_50MHz;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);

\gen1:0:gen2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen1:0:gen2|clk_out~q\);

\gen1:2:gen2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen1:2:gen2|clk_out~q\);

\gen1:1:gen2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen1:1:gen2|clk_out~q\);

\gen1:3:gen2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen1:3:gen2|clk_out~q\);

\gen1:5:gen2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen1:5:gen2|clk_out~q\);

\gen1:6:gen2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen1:6:gen2|clk_out~q\);

\gen1:4:gen2|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen1:4:gen2|clk_out~q\);

\clk_1KHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1KHz~q\);
\gen1:0:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:0:gen2|Mux6~0_combout\;
\gen1:1:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:1:gen2|Mux6~0_combout\;
\gen1:2:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:2:gen2|Mux6~0_combout\;
\gen1:3:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:3:gen2|Mux6~0_combout\;
\gen1:4:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:4:gen2|Mux6~0_combout\;
\gen1:5:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:5:gen2|Mux6~0_combout\;
\gen1:6:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:6:gen2|Mux6~0_combout\;
\gen1:7:gen2|ALT_INV_Mux6~0_combout\ <= NOT \gen1:7:gen2|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N23
\SEG[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:7:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[55]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\SEG[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:7:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[54]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\SEG[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:7:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[53]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\SEG[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:7:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[52]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\SEG[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:7:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[51]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\SEG[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:7:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[50]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\SEG[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:7:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[49]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\SEG[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:6:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[48]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\SEG[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:6:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[47]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\SEG[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:6:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[46]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\SEG[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:6:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[45]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\SEG[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:6:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[44]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\SEG[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:6:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[43]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\SEG[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:6:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[42]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\SEG[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:5:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[41]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\SEG[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:5:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[40]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\SEG[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:5:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[39]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\SEG[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:5:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[38]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\SEG[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:5:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[37]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\SEG[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:5:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[36]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\SEG[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:5:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[35]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\SEG[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:4:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[34]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\SEG[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:4:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[33]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\SEG[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:4:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[32]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\SEG[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:4:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[31]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\SEG[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:4:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[30]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\SEG[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:4:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[29]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\SEG[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:4:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[28]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\SEG[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:3:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[27]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\SEG[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:3:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[26]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\SEG[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:3:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[25]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\SEG[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:3:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[24]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\SEG[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:3:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[23]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\SEG[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:3:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[22]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\SEG[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:3:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[21]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\SEG[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:2:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[20]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\SEG[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:2:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[19]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\SEG[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:2:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[18]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\SEG[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:2:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[17]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\SEG[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:2:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[16]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\SEG[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:2:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[15]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\SEG[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:2:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[14]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\SEG[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:1:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[13]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\SEG[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:1:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[12]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\SEG[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:1:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[11]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\SEG[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:1:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[10]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\SEG[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:1:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\SEG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:1:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[8]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\SEG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:1:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[7]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\SEG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:0:gen2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\SEG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:0:gen2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\SEG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:0:gen2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\SEG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:0:gen2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\SEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:0:gen2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\SEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:0:gen2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\SEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1:0:gen2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G4
\clk_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y11_N0
\clk_1KHZ_PROC:counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[0]~1_combout\ = \clk_1KHZ_PROC:counter[0]~q\ $ (VCC)
-- \clk_1KHZ_PROC:counter[0]~2\ = CARRY(\clk_1KHZ_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[0]~q\,
	datad => VCC,
	combout => \clk_1KHZ_PROC:counter[0]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[0]~2\);

-- Location: FF_X55_Y11_N1
\clk_1KHZ_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[0]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[0]~q\);

-- Location: LCCOMB_X55_Y11_N2
\clk_1KHZ_PROC:counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[1]~1_combout\ = (\clk_1KHZ_PROC:counter[1]~q\ & (!\clk_1KHZ_PROC:counter[0]~2\)) # (!\clk_1KHZ_PROC:counter[1]~q\ & ((\clk_1KHZ_PROC:counter[0]~2\) # (GND)))
-- \clk_1KHZ_PROC:counter[1]~2\ = CARRY((!\clk_1KHZ_PROC:counter[0]~2\) # (!\clk_1KHZ_PROC:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[1]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[0]~2\,
	combout => \clk_1KHZ_PROC:counter[1]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[1]~2\);

-- Location: FF_X55_Y11_N3
\clk_1KHZ_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[1]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[1]~q\);

-- Location: LCCOMB_X55_Y11_N4
\clk_1KHZ_PROC:counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[2]~1_combout\ = (\clk_1KHZ_PROC:counter[2]~q\ & (\clk_1KHZ_PROC:counter[1]~2\ $ (GND))) # (!\clk_1KHZ_PROC:counter[2]~q\ & (!\clk_1KHZ_PROC:counter[1]~2\ & VCC))
-- \clk_1KHZ_PROC:counter[2]~2\ = CARRY((\clk_1KHZ_PROC:counter[2]~q\ & !\clk_1KHZ_PROC:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[2]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[1]~2\,
	combout => \clk_1KHZ_PROC:counter[2]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[2]~2\);

-- Location: FF_X55_Y11_N5
\clk_1KHZ_PROC:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[2]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[2]~q\);

-- Location: LCCOMB_X55_Y11_N6
\clk_1KHZ_PROC:counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[3]~1_combout\ = (\clk_1KHZ_PROC:counter[3]~q\ & (!\clk_1KHZ_PROC:counter[2]~2\)) # (!\clk_1KHZ_PROC:counter[3]~q\ & ((\clk_1KHZ_PROC:counter[2]~2\) # (GND)))
-- \clk_1KHZ_PROC:counter[3]~2\ = CARRY((!\clk_1KHZ_PROC:counter[2]~2\) # (!\clk_1KHZ_PROC:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[3]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[2]~2\,
	combout => \clk_1KHZ_PROC:counter[3]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[3]~2\);

-- Location: FF_X55_Y11_N7
\clk_1KHZ_PROC:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[3]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[3]~q\);

-- Location: LCCOMB_X55_Y11_N8
\clk_1KHZ_PROC:counter[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[4]~1_combout\ = (\clk_1KHZ_PROC:counter[4]~q\ & (\clk_1KHZ_PROC:counter[3]~2\ $ (GND))) # (!\clk_1KHZ_PROC:counter[4]~q\ & (!\clk_1KHZ_PROC:counter[3]~2\ & VCC))
-- \clk_1KHZ_PROC:counter[4]~2\ = CARRY((\clk_1KHZ_PROC:counter[4]~q\ & !\clk_1KHZ_PROC:counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[4]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[3]~2\,
	combout => \clk_1KHZ_PROC:counter[4]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[4]~2\);

-- Location: FF_X55_Y11_N9
\clk_1KHZ_PROC:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[4]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[4]~q\);

-- Location: LCCOMB_X55_Y11_N10
\clk_1KHZ_PROC:counter[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[5]~1_combout\ = (\clk_1KHZ_PROC:counter[5]~q\ & (!\clk_1KHZ_PROC:counter[4]~2\)) # (!\clk_1KHZ_PROC:counter[5]~q\ & ((\clk_1KHZ_PROC:counter[4]~2\) # (GND)))
-- \clk_1KHZ_PROC:counter[5]~2\ = CARRY((!\clk_1KHZ_PROC:counter[4]~2\) # (!\clk_1KHZ_PROC:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[5]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[4]~2\,
	combout => \clk_1KHZ_PROC:counter[5]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[5]~2\);

-- Location: FF_X56_Y11_N5
\clk_1KHZ_PROC:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \clk_1KHZ_PROC:counter[5]~1_combout\,
	sclr => \LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[5]~q\);

-- Location: LCCOMB_X55_Y11_N12
\clk_1KHZ_PROC:counter[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[6]~1_combout\ = (\clk_1KHZ_PROC:counter[6]~q\ & (\clk_1KHZ_PROC:counter[5]~2\ $ (GND))) # (!\clk_1KHZ_PROC:counter[6]~q\ & (!\clk_1KHZ_PROC:counter[5]~2\ & VCC))
-- \clk_1KHZ_PROC:counter[6]~2\ = CARRY((\clk_1KHZ_PROC:counter[6]~q\ & !\clk_1KHZ_PROC:counter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[6]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[5]~2\,
	combout => \clk_1KHZ_PROC:counter[6]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[6]~2\);

-- Location: FF_X56_Y11_N31
\clk_1KHZ_PROC:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \clk_1KHZ_PROC:counter[6]~1_combout\,
	sclr => \LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[6]~q\);

-- Location: LCCOMB_X55_Y11_N14
\clk_1KHZ_PROC:counter[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[7]~1_combout\ = (\clk_1KHZ_PROC:counter[7]~q\ & (!\clk_1KHZ_PROC:counter[6]~2\)) # (!\clk_1KHZ_PROC:counter[7]~q\ & ((\clk_1KHZ_PROC:counter[6]~2\) # (GND)))
-- \clk_1KHZ_PROC:counter[7]~2\ = CARRY((!\clk_1KHZ_PROC:counter[6]~2\) # (!\clk_1KHZ_PROC:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[7]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[6]~2\,
	combout => \clk_1KHZ_PROC:counter[7]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[7]~2\);

-- Location: FF_X55_Y11_N15
\clk_1KHZ_PROC:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[7]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[7]~q\);

-- Location: LCCOMB_X55_Y11_N16
\clk_1KHZ_PROC:counter[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[8]~1_combout\ = (\clk_1KHZ_PROC:counter[8]~q\ & (\clk_1KHZ_PROC:counter[7]~2\ $ (GND))) # (!\clk_1KHZ_PROC:counter[8]~q\ & (!\clk_1KHZ_PROC:counter[7]~2\ & VCC))
-- \clk_1KHZ_PROC:counter[8]~2\ = CARRY((\clk_1KHZ_PROC:counter[8]~q\ & !\clk_1KHZ_PROC:counter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[8]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[7]~2\,
	combout => \clk_1KHZ_PROC:counter[8]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[8]~2\);

-- Location: FF_X55_Y11_N17
\clk_1KHZ_PROC:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[8]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[8]~q\);

-- Location: LCCOMB_X55_Y11_N18
\clk_1KHZ_PROC:counter[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[9]~1_combout\ = (\clk_1KHZ_PROC:counter[9]~q\ & (!\clk_1KHZ_PROC:counter[8]~2\)) # (!\clk_1KHZ_PROC:counter[9]~q\ & ((\clk_1KHZ_PROC:counter[8]~2\) # (GND)))
-- \clk_1KHZ_PROC:counter[9]~2\ = CARRY((!\clk_1KHZ_PROC:counter[8]~2\) # (!\clk_1KHZ_PROC:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[9]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[8]~2\,
	combout => \clk_1KHZ_PROC:counter[9]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[9]~2\);

-- Location: FF_X55_Y11_N19
\clk_1KHZ_PROC:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[9]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[9]~q\);

-- Location: LCCOMB_X55_Y11_N20
\clk_1KHZ_PROC:counter[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[10]~1_combout\ = (\clk_1KHZ_PROC:counter[10]~q\ & (\clk_1KHZ_PROC:counter[9]~2\ $ (GND))) # (!\clk_1KHZ_PROC:counter[10]~q\ & (!\clk_1KHZ_PROC:counter[9]~2\ & VCC))
-- \clk_1KHZ_PROC:counter[10]~2\ = CARRY((\clk_1KHZ_PROC:counter[10]~q\ & !\clk_1KHZ_PROC:counter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[10]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[9]~2\,
	combout => \clk_1KHZ_PROC:counter[10]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[10]~2\);

-- Location: FF_X55_Y11_N21
\clk_1KHZ_PROC:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[10]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[10]~q\);

-- Location: LCCOMB_X55_Y11_N22
\clk_1KHZ_PROC:counter[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[11]~1_combout\ = (\clk_1KHZ_PROC:counter[11]~q\ & (!\clk_1KHZ_PROC:counter[10]~2\)) # (!\clk_1KHZ_PROC:counter[11]~q\ & ((\clk_1KHZ_PROC:counter[10]~2\) # (GND)))
-- \clk_1KHZ_PROC:counter[11]~2\ = CARRY((!\clk_1KHZ_PROC:counter[10]~2\) # (!\clk_1KHZ_PROC:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[11]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[10]~2\,
	combout => \clk_1KHZ_PROC:counter[11]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[11]~2\);

-- Location: FF_X55_Y11_N23
\clk_1KHZ_PROC:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[11]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[11]~q\);

-- Location: LCCOMB_X55_Y11_N24
\clk_1KHZ_PROC:counter[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[12]~1_combout\ = (\clk_1KHZ_PROC:counter[12]~q\ & (\clk_1KHZ_PROC:counter[11]~2\ $ (GND))) # (!\clk_1KHZ_PROC:counter[12]~q\ & (!\clk_1KHZ_PROC:counter[11]~2\ & VCC))
-- \clk_1KHZ_PROC:counter[12]~2\ = CARRY((\clk_1KHZ_PROC:counter[12]~q\ & !\clk_1KHZ_PROC:counter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[12]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[11]~2\,
	combout => \clk_1KHZ_PROC:counter[12]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[12]~2\);

-- Location: FF_X55_Y11_N25
\clk_1KHZ_PROC:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[12]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[12]~q\);

-- Location: LCCOMB_X55_Y11_N26
\clk_1KHZ_PROC:counter[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[13]~1_combout\ = (\clk_1KHZ_PROC:counter[13]~q\ & (!\clk_1KHZ_PROC:counter[12]~2\)) # (!\clk_1KHZ_PROC:counter[13]~q\ & ((\clk_1KHZ_PROC:counter[12]~2\) # (GND)))
-- \clk_1KHZ_PROC:counter[13]~2\ = CARRY((!\clk_1KHZ_PROC:counter[12]~2\) # (!\clk_1KHZ_PROC:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[13]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[12]~2\,
	combout => \clk_1KHZ_PROC:counter[13]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[13]~2\);

-- Location: FF_X55_Y11_N27
\clk_1KHZ_PROC:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[13]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[13]~q\);

-- Location: LCCOMB_X55_Y11_N28
\clk_1KHZ_PROC:counter[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[14]~1_combout\ = (\clk_1KHZ_PROC:counter[14]~q\ & (\clk_1KHZ_PROC:counter[13]~2\ $ (GND))) # (!\clk_1KHZ_PROC:counter[14]~q\ & (!\clk_1KHZ_PROC:counter[13]~2\ & VCC))
-- \clk_1KHZ_PROC:counter[14]~2\ = CARRY((\clk_1KHZ_PROC:counter[14]~q\ & !\clk_1KHZ_PROC:counter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[14]~q\,
	datad => VCC,
	cin => \clk_1KHZ_PROC:counter[13]~2\,
	combout => \clk_1KHZ_PROC:counter[14]~1_combout\,
	cout => \clk_1KHZ_PROC:counter[14]~2\);

-- Location: FF_X55_Y11_N29
\clk_1KHZ_PROC:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[14]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[14]~q\);

-- Location: LCCOMB_X55_Y11_N30
\clk_1KHZ_PROC:counter[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHZ_PROC:counter[15]~1_combout\ = \clk_1KHZ_PROC:counter[15]~q\ $ (\clk_1KHZ_PROC:counter[14]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[15]~q\,
	cin => \clk_1KHZ_PROC:counter[14]~2\,
	combout => \clk_1KHZ_PROC:counter[15]~1_combout\);

-- Location: FF_X55_Y11_N31
\clk_1KHZ_PROC:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHZ_PROC:counter[15]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHZ_PROC:counter[15]~q\);

-- Location: LCCOMB_X56_Y11_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\clk_1KHZ_PROC:counter[13]~q\ & (!\clk_1KHZ_PROC:counter[11]~q\ & (!\clk_1KHZ_PROC:counter[10]~q\ & !\clk_1KHZ_PROC:counter[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[13]~q\,
	datab => \clk_1KHZ_PROC:counter[11]~q\,
	datac => \clk_1KHZ_PROC:counter[10]~q\,
	datad => \clk_1KHZ_PROC:counter[12]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y11_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\clk_1KHZ_PROC:counter[6]~q\ & ((\clk_1KHZ_PROC:counter[5]~q\) # (\clk_1KHZ_PROC:counter[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1KHZ_PROC:counter[5]~q\,
	datac => \clk_1KHZ_PROC:counter[6]~q\,
	datad => \clk_1KHZ_PROC:counter[4]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y11_N18
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\clk_1KHZ_PROC:counter[9]~q\ & (\clk_1KHZ_PROC:counter[8]~q\ & ((\clk_1KHZ_PROC:counter[7]~q\) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[7]~q\,
	datab => \clk_1KHZ_PROC:counter[9]~q\,
	datac => \clk_1KHZ_PROC:counter[8]~q\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y11_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\clk_1KHZ_PROC:counter[14]~q\ & (\clk_1KHZ_PROC:counter[15]~q\ & ((\LessThan0~2_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1KHZ_PROC:counter[14]~q\,
	datab => \clk_1KHZ_PROC:counter[15]~q\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y11_N10
\clk_1KHz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1KHz~feeder_combout\ = \LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	combout => \clk_1KHz~feeder_combout\);

-- Location: FF_X56_Y11_N11
clk_1KHz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_1KHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1KHz~q\);

-- Location: CLKCTRL_G17
\clk_1KHz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1KHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1KHz~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y51_N16
\gen1:0:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|bcdcounter~0_combout\ = (!\gen1:0:gen2|bcdcounter\(0) & (((!\gen1:0:gen2|bcdcounter\(2) & !\gen1:0:gen2|bcdcounter\(1))) # (!\gen1:0:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(2),
	datab => \gen1:0:gen2|bcdcounter\(3),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(1),
	combout => \gen1:0:gen2|bcdcounter~0_combout\);

-- Location: FF_X114_Y51_N17
\gen1:0:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1KHz~clkctrl_outclk\,
	d => \gen1:0:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:0:gen2|bcdcounter\(0));

-- Location: LCCOMB_X114_Y51_N24
\gen1:0:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|bcdcounter~2_combout\ = (!\gen1:0:gen2|bcdcounter\(3) & (\gen1:0:gen2|bcdcounter\(2) $ (((\gen1:0:gen2|bcdcounter\(1) & \gen1:0:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(3),
	datab => \gen1:0:gen2|bcdcounter\(1),
	datac => \gen1:0:gen2|bcdcounter\(2),
	datad => \gen1:0:gen2|bcdcounter\(0),
	combout => \gen1:0:gen2|bcdcounter~2_combout\);

-- Location: FF_X114_Y51_N25
\gen1:0:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1KHz~clkctrl_outclk\,
	d => \gen1:0:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:0:gen2|bcdcounter\(2));

-- Location: LCCOMB_X114_Y51_N18
\gen1:0:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|bcdcounter~3_combout\ = (\gen1:0:gen2|bcdcounter\(2) & (\gen1:0:gen2|bcdcounter\(1) & (!\gen1:0:gen2|bcdcounter\(3) & \gen1:0:gen2|bcdcounter\(0)))) # (!\gen1:0:gen2|bcdcounter\(2) & (!\gen1:0:gen2|bcdcounter\(1) & 
-- (\gen1:0:gen2|bcdcounter\(3) & !\gen1:0:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(2),
	datab => \gen1:0:gen2|bcdcounter\(1),
	datac => \gen1:0:gen2|bcdcounter\(3),
	datad => \gen1:0:gen2|bcdcounter\(0),
	combout => \gen1:0:gen2|bcdcounter~3_combout\);

-- Location: FF_X114_Y51_N19
\gen1:0:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1KHz~clkctrl_outclk\,
	d => \gen1:0:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:0:gen2|bcdcounter\(3));

-- Location: LCCOMB_X114_Y51_N28
\gen1:0:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|bcdcounter~1_combout\ = (!\gen1:0:gen2|bcdcounter\(3) & (\gen1:0:gen2|bcdcounter\(1) $ (\gen1:0:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1:0:gen2|bcdcounter\(3),
	datac => \gen1:0:gen2|bcdcounter\(1),
	datad => \gen1:0:gen2|bcdcounter\(0),
	combout => \gen1:0:gen2|bcdcounter~1_combout\);

-- Location: FF_X114_Y51_N29
\gen1:0:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1KHz~clkctrl_outclk\,
	d => \gen1:0:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:0:gen2|bcdcounter\(1));

-- Location: LCCOMB_X114_Y51_N12
\gen1:0:gen2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|LessThan0~0_combout\ = (\gen1:0:gen2|bcdcounter\(3) & ((\gen1:0:gen2|bcdcounter\(1)) # ((\gen1:0:gen2|bcdcounter\(0)) # (\gen1:0:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(0),
	datac => \gen1:0:gen2|bcdcounter\(3),
	datad => \gen1:0:gen2|bcdcounter\(2),
	combout => \gen1:0:gen2|LessThan0~0_combout\);

-- Location: FF_X114_Y51_N13
\gen1:0:gen2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1KHz~clkctrl_outclk\,
	d => \gen1:0:gen2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:0:gen2|clk_out~q\);

-- Location: CLKCTRL_G5
\gen1:0:gen2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen1:0:gen2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen1:0:gen2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N28
\gen1:1:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|bcdcounter~1_combout\ = (!\gen1:1:gen2|bcdcounter\(3) & (\gen1:1:gen2|bcdcounter\(1) $ (\gen1:1:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1:1:gen2|bcdcounter\(3),
	datac => \gen1:1:gen2|bcdcounter\(1),
	datad => \gen1:1:gen2|bcdcounter\(0),
	combout => \gen1:1:gen2|bcdcounter~1_combout\);

-- Location: FF_X114_Y37_N29
\gen1:1:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:0:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:1:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:1:gen2|bcdcounter\(1));

-- Location: LCCOMB_X114_Y37_N16
\gen1:1:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|bcdcounter~3_combout\ = (\gen1:1:gen2|bcdcounter\(0) & (\gen1:1:gen2|bcdcounter\(2) & (!\gen1:1:gen2|bcdcounter\(3) & \gen1:1:gen2|bcdcounter\(1)))) # (!\gen1:1:gen2|bcdcounter\(0) & (!\gen1:1:gen2|bcdcounter\(2) & 
-- (\gen1:1:gen2|bcdcounter\(3) & !\gen1:1:gen2|bcdcounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(0),
	datab => \gen1:1:gen2|bcdcounter\(2),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|bcdcounter~3_combout\);

-- Location: FF_X114_Y37_N17
\gen1:1:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:0:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:1:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:1:gen2|bcdcounter\(3));

-- Location: LCCOMB_X114_Y37_N24
\gen1:1:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|bcdcounter~2_combout\ = (!\gen1:1:gen2|bcdcounter\(3) & (\gen1:1:gen2|bcdcounter\(2) $ (((\gen1:1:gen2|bcdcounter\(0) & \gen1:1:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(0),
	datab => \gen1:1:gen2|bcdcounter\(3),
	datac => \gen1:1:gen2|bcdcounter\(2),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|bcdcounter~2_combout\);

-- Location: FF_X114_Y37_N25
\gen1:1:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:0:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:1:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:1:gen2|bcdcounter\(2));

-- Location: LCCOMB_X114_Y37_N10
\gen1:1:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|bcdcounter~0_combout\ = (!\gen1:1:gen2|bcdcounter\(0) & (((!\gen1:1:gen2|bcdcounter\(2) & !\gen1:1:gen2|bcdcounter\(1))) # (!\gen1:1:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(3),
	datac => \gen1:1:gen2|bcdcounter\(0),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|bcdcounter~0_combout\);

-- Location: FF_X114_Y37_N11
\gen1:1:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:0:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:1:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:1:gen2|bcdcounter\(0));

-- Location: LCCOMB_X114_Y37_N22
\gen1:1:gen2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|LessThan0~0_combout\ = (\gen1:1:gen2|bcdcounter\(3) & ((\gen1:1:gen2|bcdcounter\(0)) # ((\gen1:1:gen2|bcdcounter\(1)) # (\gen1:1:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(0),
	datab => \gen1:1:gen2|bcdcounter\(1),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(2),
	combout => \gen1:1:gen2|LessThan0~0_combout\);

-- Location: FF_X114_Y37_N23
\gen1:1:gen2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:0:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:1:gen2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:1:gen2|clk_out~q\);

-- Location: CLKCTRL_G7
\gen1:1:gen2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen1:1:gen2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen1:1:gen2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y21_N20
\gen1:2:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|bcdcounter~1_combout\ = (!\gen1:2:gen2|bcdcounter\(3) & (\gen1:2:gen2|bcdcounter\(1) $ (\gen1:2:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datac => \gen1:2:gen2|bcdcounter\(1),
	datad => \gen1:2:gen2|bcdcounter\(0),
	combout => \gen1:2:gen2|bcdcounter~1_combout\);

-- Location: FF_X114_Y21_N21
\gen1:2:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:1:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:2:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:2:gen2|bcdcounter\(1));

-- Location: LCCOMB_X114_Y21_N18
\gen1:2:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|bcdcounter~0_combout\ = (!\gen1:2:gen2|bcdcounter\(0) & (((!\gen1:2:gen2|bcdcounter\(1) & !\gen1:2:gen2|bcdcounter\(2))) # (!\gen1:2:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(1),
	datac => \gen1:2:gen2|bcdcounter\(0),
	datad => \gen1:2:gen2|bcdcounter\(2),
	combout => \gen1:2:gen2|bcdcounter~0_combout\);

-- Location: FF_X114_Y21_N19
\gen1:2:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:1:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:2:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:2:gen2|bcdcounter\(0));

-- Location: LCCOMB_X114_Y21_N22
\gen1:2:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|bcdcounter~3_combout\ = (\gen1:2:gen2|bcdcounter\(2) & (\gen1:2:gen2|bcdcounter\(0) & (!\gen1:2:gen2|bcdcounter\(3) & \gen1:2:gen2|bcdcounter\(1)))) # (!\gen1:2:gen2|bcdcounter\(2) & (!\gen1:2:gen2|bcdcounter\(0) & 
-- (\gen1:2:gen2|bcdcounter\(3) & !\gen1:2:gen2|bcdcounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(2),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(3),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|bcdcounter~3_combout\);

-- Location: FF_X114_Y21_N23
\gen1:2:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:1:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:2:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:2:gen2|bcdcounter\(3));

-- Location: LCCOMB_X114_Y21_N10
\gen1:2:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|bcdcounter~2_combout\ = (!\gen1:2:gen2|bcdcounter\(3) & (\gen1:2:gen2|bcdcounter\(2) $ (((\gen1:2:gen2|bcdcounter\(0) & \gen1:2:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|bcdcounter~2_combout\);

-- Location: FF_X114_Y21_N11
\gen1:2:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:1:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:2:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:2:gen2|bcdcounter\(2));

-- Location: LCCOMB_X114_Y21_N6
\gen1:2:gen2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|LessThan0~0_combout\ = (\gen1:2:gen2|bcdcounter\(3) & ((\gen1:2:gen2|bcdcounter\(2)) # ((\gen1:2:gen2|bcdcounter\(1)) # (\gen1:2:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(2),
	datab => \gen1:2:gen2|bcdcounter\(1),
	datac => \gen1:2:gen2|bcdcounter\(3),
	datad => \gen1:2:gen2|bcdcounter\(0),
	combout => \gen1:2:gen2|LessThan0~0_combout\);

-- Location: FF_X114_Y21_N7
\gen1:2:gen2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:1:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:2:gen2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:2:gen2|clk_out~q\);

-- Location: CLKCTRL_G8
\gen1:2:gen2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen1:2:gen2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen1:2:gen2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y33_N16
\gen1:3:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|bcdcounter~2_combout\ = (!\gen1:3:gen2|bcdcounter\(3) & (\gen1:3:gen2|bcdcounter\(2) $ (((\gen1:3:gen2|bcdcounter\(1) & \gen1:3:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|bcdcounter~2_combout\);

-- Location: FF_X114_Y33_N17
\gen1:3:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:2:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:3:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:3:gen2|bcdcounter\(2));

-- Location: LCCOMB_X114_Y33_N24
\gen1:3:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|bcdcounter~3_combout\ = (\gen1:3:gen2|bcdcounter\(1) & (\gen1:3:gen2|bcdcounter\(2) & (!\gen1:3:gen2|bcdcounter\(3) & \gen1:3:gen2|bcdcounter\(0)))) # (!\gen1:3:gen2|bcdcounter\(1) & (!\gen1:3:gen2|bcdcounter\(2) & 
-- (\gen1:3:gen2|bcdcounter\(3) & !\gen1:3:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(2),
	datac => \gen1:3:gen2|bcdcounter\(3),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|bcdcounter~3_combout\);

-- Location: FF_X114_Y33_N25
\gen1:3:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:2:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:3:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:3:gen2|bcdcounter\(3));

-- Location: LCCOMB_X114_Y33_N26
\gen1:3:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|bcdcounter~1_combout\ = (!\gen1:3:gen2|bcdcounter\(3) & (\gen1:3:gen2|bcdcounter\(1) $ (\gen1:3:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(1),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|bcdcounter~1_combout\);

-- Location: FF_X114_Y33_N27
\gen1:3:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:2:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:3:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:3:gen2|bcdcounter\(1));

-- Location: LCCOMB_X114_Y33_N12
\gen1:3:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|bcdcounter~0_combout\ = (!\gen1:3:gen2|bcdcounter\(0) & (((!\gen1:3:gen2|bcdcounter\(1) & !\gen1:3:gen2|bcdcounter\(2))) # (!\gen1:3:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(0),
	datad => \gen1:3:gen2|bcdcounter\(2),
	combout => \gen1:3:gen2|bcdcounter~0_combout\);

-- Location: FF_X114_Y33_N13
\gen1:3:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:2:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:3:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:3:gen2|bcdcounter\(0));

-- Location: LCCOMB_X114_Y33_N8
\gen1:3:gen2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|LessThan0~0_combout\ = (\gen1:3:gen2|bcdcounter\(3) & ((\gen1:3:gen2|bcdcounter\(0)) # ((\gen1:3:gen2|bcdcounter\(1)) # (\gen1:3:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(0),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(1),
	datad => \gen1:3:gen2|bcdcounter\(2),
	combout => \gen1:3:gen2|LessThan0~0_combout\);

-- Location: FF_X114_Y33_N9
\gen1:3:gen2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:2:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:3:gen2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:3:gen2|clk_out~q\);

-- Location: CLKCTRL_G6
\gen1:3:gen2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen1:3:gen2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen1:3:gen2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X79_Y1_N28
\gen1:4:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|bcdcounter~0_combout\ = (!\gen1:4:gen2|bcdcounter\(0) & (((!\gen1:4:gen2|bcdcounter\(1) & !\gen1:4:gen2|bcdcounter\(2))) # (!\gen1:4:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(3),
	datab => \gen1:4:gen2|bcdcounter\(1),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(2),
	combout => \gen1:4:gen2|bcdcounter~0_combout\);

-- Location: FF_X79_Y1_N29
\gen1:4:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:3:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:4:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:4:gen2|bcdcounter\(0));

-- Location: LCCOMB_X79_Y1_N24
\gen1:4:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|bcdcounter~1_combout\ = (!\gen1:4:gen2|bcdcounter\(3) & (\gen1:4:gen2|bcdcounter\(1) $ (\gen1:4:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(1),
	datad => \gen1:4:gen2|bcdcounter\(0),
	combout => \gen1:4:gen2|bcdcounter~1_combout\);

-- Location: FF_X79_Y1_N25
\gen1:4:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:3:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:4:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:4:gen2|bcdcounter\(1));

-- Location: LCCOMB_X79_Y1_N2
\gen1:4:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|bcdcounter~3_combout\ = (\gen1:4:gen2|bcdcounter\(2) & (\gen1:4:gen2|bcdcounter\(1) & (!\gen1:4:gen2|bcdcounter\(3) & \gen1:4:gen2|bcdcounter\(0)))) # (!\gen1:4:gen2|bcdcounter\(2) & (!\gen1:4:gen2|bcdcounter\(1) & 
-- (\gen1:4:gen2|bcdcounter\(3) & !\gen1:4:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(1),
	datac => \gen1:4:gen2|bcdcounter\(3),
	datad => \gen1:4:gen2|bcdcounter\(0),
	combout => \gen1:4:gen2|bcdcounter~3_combout\);

-- Location: FF_X79_Y1_N3
\gen1:4:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:3:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:4:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:4:gen2|bcdcounter\(3));

-- Location: LCCOMB_X79_Y1_N10
\gen1:4:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|bcdcounter~2_combout\ = (!\gen1:4:gen2|bcdcounter\(3) & (\gen1:4:gen2|bcdcounter\(2) $ (((\gen1:4:gen2|bcdcounter\(0) & \gen1:4:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(3),
	datab => \gen1:4:gen2|bcdcounter\(0),
	datac => \gen1:4:gen2|bcdcounter\(2),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|bcdcounter~2_combout\);

-- Location: FF_X79_Y1_N11
\gen1:4:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:3:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:4:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:4:gen2|bcdcounter\(2));

-- Location: LCCOMB_X79_Y1_N6
\gen1:4:gen2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|LessThan0~0_combout\ = (\gen1:4:gen2|bcdcounter\(3) & ((\gen1:4:gen2|bcdcounter\(2)) # ((\gen1:4:gen2|bcdcounter\(1)) # (\gen1:4:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(1),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(3),
	combout => \gen1:4:gen2|LessThan0~0_combout\);

-- Location: FF_X79_Y1_N7
\gen1:4:gen2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:3:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:4:gen2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:4:gen2|clk_out~q\);

-- Location: CLKCTRL_G16
\gen1:4:gen2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen1:4:gen2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen1:4:gen2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X74_Y1_N16
\gen1:5:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|bcdcounter~0_combout\ = (!\gen1:5:gen2|bcdcounter\(0) & (((!\gen1:5:gen2|bcdcounter\(1) & !\gen1:5:gen2|bcdcounter\(2))) # (!\gen1:5:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(1),
	datab => \gen1:5:gen2|bcdcounter\(3),
	datac => \gen1:5:gen2|bcdcounter\(0),
	datad => \gen1:5:gen2|bcdcounter\(2),
	combout => \gen1:5:gen2|bcdcounter~0_combout\);

-- Location: FF_X74_Y1_N17
\gen1:5:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:4:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:5:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:5:gen2|bcdcounter\(0));

-- Location: LCCOMB_X74_Y1_N20
\gen1:5:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|bcdcounter~2_combout\ = (!\gen1:5:gen2|bcdcounter\(3) & (\gen1:5:gen2|bcdcounter\(2) $ (((\gen1:5:gen2|bcdcounter\(1) & \gen1:5:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(1),
	datab => \gen1:5:gen2|bcdcounter\(3),
	datac => \gen1:5:gen2|bcdcounter\(2),
	datad => \gen1:5:gen2|bcdcounter\(0),
	combout => \gen1:5:gen2|bcdcounter~2_combout\);

-- Location: FF_X74_Y1_N21
\gen1:5:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:4:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:5:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:5:gen2|bcdcounter\(2));

-- Location: LCCOMB_X74_Y1_N24
\gen1:5:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|bcdcounter~3_combout\ = (\gen1:5:gen2|bcdcounter\(1) & (\gen1:5:gen2|bcdcounter\(2) & (!\gen1:5:gen2|bcdcounter\(3) & \gen1:5:gen2|bcdcounter\(0)))) # (!\gen1:5:gen2|bcdcounter\(1) & (!\gen1:5:gen2|bcdcounter\(2) & 
-- (\gen1:5:gen2|bcdcounter\(3) & !\gen1:5:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(1),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(0),
	combout => \gen1:5:gen2|bcdcounter~3_combout\);

-- Location: FF_X74_Y1_N25
\gen1:5:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:4:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:5:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:5:gen2|bcdcounter\(3));

-- Location: LCCOMB_X74_Y1_N10
\gen1:5:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|bcdcounter~1_combout\ = (!\gen1:5:gen2|bcdcounter\(3) & (\gen1:5:gen2|bcdcounter\(1) $ (\gen1:5:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1:5:gen2|bcdcounter\(3),
	datac => \gen1:5:gen2|bcdcounter\(1),
	datad => \gen1:5:gen2|bcdcounter\(0),
	combout => \gen1:5:gen2|bcdcounter~1_combout\);

-- Location: FF_X74_Y1_N11
\gen1:5:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:4:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:5:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:5:gen2|bcdcounter\(1));

-- Location: LCCOMB_X74_Y1_N8
\gen1:5:gen2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|LessThan0~0_combout\ = (\gen1:5:gen2|bcdcounter\(3) & ((\gen1:5:gen2|bcdcounter\(1)) # ((\gen1:5:gen2|bcdcounter\(0)) # (\gen1:5:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(1),
	datab => \gen1:5:gen2|bcdcounter\(0),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(2),
	combout => \gen1:5:gen2|LessThan0~0_combout\);

-- Location: FF_X74_Y1_N9
\gen1:5:gen2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:4:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:5:gen2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:5:gen2|clk_out~q\);

-- Location: CLKCTRL_G18
\gen1:5:gen2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen1:5:gen2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen1:5:gen2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y1_N16
\gen1:6:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|bcdcounter~1_combout\ = (!\gen1:6:gen2|bcdcounter\(3) & (\gen1:6:gen2|bcdcounter\(1) $ (\gen1:6:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|bcdcounter~1_combout\);

-- Location: FF_X59_Y1_N17
\gen1:6:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:5:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:6:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:6:gen2|bcdcounter\(1));

-- Location: LCCOMB_X59_Y1_N18
\gen1:6:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|bcdcounter~2_combout\ = (!\gen1:6:gen2|bcdcounter\(3) & (\gen1:6:gen2|bcdcounter\(2) $ (((\gen1:6:gen2|bcdcounter\(1) & \gen1:6:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(3),
	datab => \gen1:6:gen2|bcdcounter\(1),
	datac => \gen1:6:gen2|bcdcounter\(2),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|bcdcounter~2_combout\);

-- Location: FF_X59_Y1_N19
\gen1:6:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:5:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:6:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:6:gen2|bcdcounter\(2));

-- Location: LCCOMB_X59_Y1_N26
\gen1:6:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|bcdcounter~3_combout\ = (\gen1:6:gen2|bcdcounter\(0) & (\gen1:6:gen2|bcdcounter\(2) & (!\gen1:6:gen2|bcdcounter\(3) & \gen1:6:gen2|bcdcounter\(1)))) # (!\gen1:6:gen2|bcdcounter\(0) & (!\gen1:6:gen2|bcdcounter\(2) & 
-- (\gen1:6:gen2|bcdcounter\(3) & !\gen1:6:gen2|bcdcounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(0),
	datab => \gen1:6:gen2|bcdcounter\(2),
	datac => \gen1:6:gen2|bcdcounter\(3),
	datad => \gen1:6:gen2|bcdcounter\(1),
	combout => \gen1:6:gen2|bcdcounter~3_combout\);

-- Location: FF_X59_Y1_N27
\gen1:6:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:5:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:6:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:6:gen2|bcdcounter\(3));

-- Location: LCCOMB_X59_Y1_N10
\gen1:6:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|bcdcounter~0_combout\ = (!\gen1:6:gen2|bcdcounter\(0) & (((!\gen1:6:gen2|bcdcounter\(1) & !\gen1:6:gen2|bcdcounter\(2))) # (!\gen1:6:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(3),
	datab => \gen1:6:gen2|bcdcounter\(1),
	datac => \gen1:6:gen2|bcdcounter\(0),
	datad => \gen1:6:gen2|bcdcounter\(2),
	combout => \gen1:6:gen2|bcdcounter~0_combout\);

-- Location: FF_X59_Y1_N11
\gen1:6:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:5:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:6:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:6:gen2|bcdcounter\(0));

-- Location: LCCOMB_X59_Y1_N12
\gen1:6:gen2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|LessThan0~0_combout\ = (\gen1:6:gen2|bcdcounter\(3) & ((\gen1:6:gen2|bcdcounter\(0)) # ((\gen1:6:gen2|bcdcounter\(1)) # (\gen1:6:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(0),
	datab => \gen1:6:gen2|bcdcounter\(1),
	datac => \gen1:6:gen2|bcdcounter\(3),
	datad => \gen1:6:gen2|bcdcounter\(2),
	combout => \gen1:6:gen2|LessThan0~0_combout\);

-- Location: FF_X59_Y1_N13
\gen1:6:gen2|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:5:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:6:gen2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:6:gen2|clk_out~q\);

-- Location: CLKCTRL_G15
\gen1:6:gen2|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen1:6:gen2|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen1:6:gen2|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y1_N20
\gen1:7:gen2|bcdcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|bcdcounter~0_combout\ = (!\gen1:7:gen2|bcdcounter\(0) & (((!\gen1:7:gen2|bcdcounter\(1) & !\gen1:7:gen2|bcdcounter\(2))) # (!\gen1:7:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(3),
	datab => \gen1:7:gen2|bcdcounter\(1),
	datac => \gen1:7:gen2|bcdcounter\(0),
	datad => \gen1:7:gen2|bcdcounter\(2),
	combout => \gen1:7:gen2|bcdcounter~0_combout\);

-- Location: FF_X67_Y1_N21
\gen1:7:gen2|bcdcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:6:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:7:gen2|bcdcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:7:gen2|bcdcounter\(0));

-- Location: LCCOMB_X67_Y1_N18
\gen1:7:gen2|bcdcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|bcdcounter~1_combout\ = (!\gen1:7:gen2|bcdcounter\(3) & (\gen1:7:gen2|bcdcounter\(1) $ (\gen1:7:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(3),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(0),
	combout => \gen1:7:gen2|bcdcounter~1_combout\);

-- Location: FF_X67_Y1_N19
\gen1:7:gen2|bcdcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:6:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:7:gen2|bcdcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:7:gen2|bcdcounter\(1));

-- Location: LCCOMB_X67_Y1_N30
\gen1:7:gen2|bcdcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|bcdcounter~3_combout\ = (\gen1:7:gen2|bcdcounter\(2) & (\gen1:7:gen2|bcdcounter\(1) & (!\gen1:7:gen2|bcdcounter\(3) & \gen1:7:gen2|bcdcounter\(0)))) # (!\gen1:7:gen2|bcdcounter\(2) & (!\gen1:7:gen2|bcdcounter\(1) & 
-- (\gen1:7:gen2|bcdcounter\(3) & !\gen1:7:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(1),
	datac => \gen1:7:gen2|bcdcounter\(3),
	datad => \gen1:7:gen2|bcdcounter\(0),
	combout => \gen1:7:gen2|bcdcounter~3_combout\);

-- Location: FF_X67_Y1_N31
\gen1:7:gen2|bcdcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:6:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:7:gen2|bcdcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:7:gen2|bcdcounter\(3));

-- Location: LCCOMB_X67_Y1_N12
\gen1:7:gen2|bcdcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|bcdcounter~2_combout\ = (!\gen1:7:gen2|bcdcounter\(3) & (\gen1:7:gen2|bcdcounter\(2) $ (((\gen1:7:gen2|bcdcounter\(0) & \gen1:7:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(3),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(2),
	datad => \gen1:7:gen2|bcdcounter\(1),
	combout => \gen1:7:gen2|bcdcounter~2_combout\);

-- Location: FF_X67_Y1_N13
\gen1:7:gen2|bcdcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen1:6:gen2|clk_out~clkctrl_outclk\,
	d => \gen1:7:gen2|bcdcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1:7:gen2|bcdcounter\(2));

-- Location: LCCOMB_X67_Y1_N4
\gen1:7:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|Mux6~0_combout\ = (\gen1:7:gen2|bcdcounter\(2) & (!\gen1:7:gen2|bcdcounter\(3) & ((!\gen1:7:gen2|bcdcounter\(1)) # (!\gen1:7:gen2|bcdcounter\(0))))) # (!\gen1:7:gen2|bcdcounter\(2) & ((\gen1:7:gen2|bcdcounter\(1) $ 
-- (\gen1:7:gen2|bcdcounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(3),
	combout => \gen1:7:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y1_N14
\gen1:7:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|Mux5~0_combout\ = (!\gen1:7:gen2|bcdcounter\(3) & ((\gen1:7:gen2|bcdcounter\(2) & (\gen1:7:gen2|bcdcounter\(0) & \gen1:7:gen2|bcdcounter\(1))) # (!\gen1:7:gen2|bcdcounter\(2) & ((\gen1:7:gen2|bcdcounter\(0)) # 
-- (\gen1:7:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(3),
	combout => \gen1:7:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y1_N24
\gen1:7:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|Mux4~0_combout\ = (\gen1:7:gen2|bcdcounter\(1) & (((\gen1:7:gen2|bcdcounter\(0) & !\gen1:7:gen2|bcdcounter\(3))))) # (!\gen1:7:gen2|bcdcounter\(1) & ((\gen1:7:gen2|bcdcounter\(2) & ((!\gen1:7:gen2|bcdcounter\(3)))) # 
-- (!\gen1:7:gen2|bcdcounter\(2) & (\gen1:7:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(3),
	combout => \gen1:7:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y1_N22
\gen1:7:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|Mux3~0_combout\ = (!\gen1:7:gen2|bcdcounter\(3) & ((\gen1:7:gen2|bcdcounter\(2) & (\gen1:7:gen2|bcdcounter\(0) $ (!\gen1:7:gen2|bcdcounter\(1)))) # (!\gen1:7:gen2|bcdcounter\(2) & (\gen1:7:gen2|bcdcounter\(0) & 
-- !\gen1:7:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(3),
	combout => \gen1:7:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y1_N16
\gen1:7:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|Mux2~0_combout\ = (!\gen1:7:gen2|bcdcounter\(2) & (!\gen1:7:gen2|bcdcounter\(0) & (\gen1:7:gen2|bcdcounter\(1) & !\gen1:7:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(3),
	combout => \gen1:7:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y1_N26
\gen1:7:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|Mux1~0_combout\ = (\gen1:7:gen2|bcdcounter\(2) & (!\gen1:7:gen2|bcdcounter\(3) & (\gen1:7:gen2|bcdcounter\(0) $ (\gen1:7:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(3),
	combout => \gen1:7:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y1_N28
\gen1:7:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:7:gen2|Mux0~0_combout\ = (!\gen1:7:gen2|bcdcounter\(1) & (!\gen1:7:gen2|bcdcounter\(3) & (\gen1:7:gen2|bcdcounter\(2) $ (\gen1:7:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:7:gen2|bcdcounter\(2),
	datab => \gen1:7:gen2|bcdcounter\(0),
	datac => \gen1:7:gen2|bcdcounter\(1),
	datad => \gen1:7:gen2|bcdcounter\(3),
	combout => \gen1:7:gen2|Mux0~0_combout\);

-- Location: LCCOMB_X59_Y1_N14
\gen1:6:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|Mux6~0_combout\ = (\gen1:6:gen2|bcdcounter\(2) & (!\gen1:6:gen2|bcdcounter\(3) & ((!\gen1:6:gen2|bcdcounter\(0)) # (!\gen1:6:gen2|bcdcounter\(1))))) # (!\gen1:6:gen2|bcdcounter\(2) & (\gen1:6:gen2|bcdcounter\(3) $ 
-- ((\gen1:6:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(2),
	datab => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y1_N22
\gen1:6:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|Mux5~0_combout\ = (!\gen1:6:gen2|bcdcounter\(3) & ((\gen1:6:gen2|bcdcounter\(2) & (\gen1:6:gen2|bcdcounter\(1) & \gen1:6:gen2|bcdcounter\(0))) # (!\gen1:6:gen2|bcdcounter\(2) & ((\gen1:6:gen2|bcdcounter\(1)) # 
-- (\gen1:6:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(2),
	datab => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y1_N20
\gen1:6:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|Mux4~0_combout\ = (\gen1:6:gen2|bcdcounter\(1) & (((!\gen1:6:gen2|bcdcounter\(3) & \gen1:6:gen2|bcdcounter\(0))))) # (!\gen1:6:gen2|bcdcounter\(1) & ((\gen1:6:gen2|bcdcounter\(2) & (!\gen1:6:gen2|bcdcounter\(3))) # 
-- (!\gen1:6:gen2|bcdcounter\(2) & ((\gen1:6:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(2),
	datab => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y1_N8
\gen1:6:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|Mux3~0_combout\ = (!\gen1:6:gen2|bcdcounter\(3) & ((\gen1:6:gen2|bcdcounter\(2) & (\gen1:6:gen2|bcdcounter\(1) $ (!\gen1:6:gen2|bcdcounter\(0)))) # (!\gen1:6:gen2|bcdcounter\(2) & (!\gen1:6:gen2|bcdcounter\(1) & 
-- \gen1:6:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(2),
	datab => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y1_N28
\gen1:6:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|Mux2~0_combout\ = (!\gen1:6:gen2|bcdcounter\(2) & (!\gen1:6:gen2|bcdcounter\(3) & (\gen1:6:gen2|bcdcounter\(1) & !\gen1:6:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(2),
	datab => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y1_N24
\gen1:6:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|Mux1~0_combout\ = (\gen1:6:gen2|bcdcounter\(2) & (!\gen1:6:gen2|bcdcounter\(3) & (\gen1:6:gen2|bcdcounter\(1) $ (\gen1:6:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(2),
	datab => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y1_N30
\gen1:6:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:6:gen2|Mux0~0_combout\ = (!\gen1:6:gen2|bcdcounter\(3) & (!\gen1:6:gen2|bcdcounter\(1) & (\gen1:6:gen2|bcdcounter\(2) $ (\gen1:6:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:6:gen2|bcdcounter\(2),
	datab => \gen1:6:gen2|bcdcounter\(3),
	datac => \gen1:6:gen2|bcdcounter\(1),
	datad => \gen1:6:gen2|bcdcounter\(0),
	combout => \gen1:6:gen2|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y1_N28
\gen1:5:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|Mux6~0_combout\ = (\gen1:5:gen2|bcdcounter\(2) & (!\gen1:5:gen2|bcdcounter\(3) & ((!\gen1:5:gen2|bcdcounter\(1)) # (!\gen1:5:gen2|bcdcounter\(0))))) # (!\gen1:5:gen2|bcdcounter\(2) & ((\gen1:5:gen2|bcdcounter\(3) $ 
-- (\gen1:5:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(0),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(1),
	combout => \gen1:5:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y1_N26
\gen1:5:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|Mux5~0_combout\ = (!\gen1:5:gen2|bcdcounter\(3) & ((\gen1:5:gen2|bcdcounter\(0) & ((\gen1:5:gen2|bcdcounter\(1)) # (!\gen1:5:gen2|bcdcounter\(2)))) # (!\gen1:5:gen2|bcdcounter\(0) & (!\gen1:5:gen2|bcdcounter\(2) & 
-- \gen1:5:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(0),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(1),
	combout => \gen1:5:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y1_N22
\gen1:5:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|Mux4~0_combout\ = (\gen1:5:gen2|bcdcounter\(1) & (\gen1:5:gen2|bcdcounter\(0) & ((!\gen1:5:gen2|bcdcounter\(3))))) # (!\gen1:5:gen2|bcdcounter\(1) & ((\gen1:5:gen2|bcdcounter\(2) & ((!\gen1:5:gen2|bcdcounter\(3)))) # 
-- (!\gen1:5:gen2|bcdcounter\(2) & (\gen1:5:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(0),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(1),
	combout => \gen1:5:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y1_N30
\gen1:5:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|Mux3~0_combout\ = (!\gen1:5:gen2|bcdcounter\(3) & ((\gen1:5:gen2|bcdcounter\(0) & (\gen1:5:gen2|bcdcounter\(2) $ (!\gen1:5:gen2|bcdcounter\(1)))) # (!\gen1:5:gen2|bcdcounter\(0) & (\gen1:5:gen2|bcdcounter\(2) & 
-- !\gen1:5:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(0),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(1),
	combout => \gen1:5:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y1_N14
\gen1:5:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|Mux2~0_combout\ = (!\gen1:5:gen2|bcdcounter\(0) & (!\gen1:5:gen2|bcdcounter\(2) & (!\gen1:5:gen2|bcdcounter\(3) & \gen1:5:gen2|bcdcounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(0),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(1),
	combout => \gen1:5:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y1_N12
\gen1:5:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|Mux1~0_combout\ = (\gen1:5:gen2|bcdcounter\(2) & (!\gen1:5:gen2|bcdcounter\(3) & (\gen1:5:gen2|bcdcounter\(0) $ (\gen1:5:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(0),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(1),
	combout => \gen1:5:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y1_N18
\gen1:5:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:5:gen2|Mux0~0_combout\ = (!\gen1:5:gen2|bcdcounter\(3) & (!\gen1:5:gen2|bcdcounter\(1) & (\gen1:5:gen2|bcdcounter\(0) $ (\gen1:5:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:5:gen2|bcdcounter\(0),
	datab => \gen1:5:gen2|bcdcounter\(2),
	datac => \gen1:5:gen2|bcdcounter\(3),
	datad => \gen1:5:gen2|bcdcounter\(1),
	combout => \gen1:5:gen2|Mux0~0_combout\);

-- Location: LCCOMB_X79_Y1_N20
\gen1:4:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|Mux6~0_combout\ = (\gen1:4:gen2|bcdcounter\(2) & (!\gen1:4:gen2|bcdcounter\(3) & ((!\gen1:4:gen2|bcdcounter\(1)) # (!\gen1:4:gen2|bcdcounter\(0))))) # (!\gen1:4:gen2|bcdcounter\(2) & (\gen1:4:gen2|bcdcounter\(3) $ 
-- (((\gen1:4:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X79_Y1_N18
\gen1:4:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|Mux5~0_combout\ = (!\gen1:4:gen2|bcdcounter\(3) & ((\gen1:4:gen2|bcdcounter\(2) & (\gen1:4:gen2|bcdcounter\(0) & \gen1:4:gen2|bcdcounter\(1))) # (!\gen1:4:gen2|bcdcounter\(2) & ((\gen1:4:gen2|bcdcounter\(0)) # 
-- (\gen1:4:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X79_Y1_N12
\gen1:4:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|Mux4~0_combout\ = (\gen1:4:gen2|bcdcounter\(1) & (((!\gen1:4:gen2|bcdcounter\(3) & \gen1:4:gen2|bcdcounter\(0))))) # (!\gen1:4:gen2|bcdcounter\(1) & ((\gen1:4:gen2|bcdcounter\(2) & (!\gen1:4:gen2|bcdcounter\(3))) # 
-- (!\gen1:4:gen2|bcdcounter\(2) & ((\gen1:4:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y1_N14
\gen1:4:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|Mux3~0_combout\ = (!\gen1:4:gen2|bcdcounter\(3) & ((\gen1:4:gen2|bcdcounter\(2) & (\gen1:4:gen2|bcdcounter\(0) $ (!\gen1:4:gen2|bcdcounter\(1)))) # (!\gen1:4:gen2|bcdcounter\(2) & (\gen1:4:gen2|bcdcounter\(0) & 
-- !\gen1:4:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X79_Y1_N16
\gen1:4:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|Mux2~0_combout\ = (!\gen1:4:gen2|bcdcounter\(2) & (!\gen1:4:gen2|bcdcounter\(3) & (!\gen1:4:gen2|bcdcounter\(0) & \gen1:4:gen2|bcdcounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X79_Y1_N30
\gen1:4:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|Mux1~0_combout\ = (\gen1:4:gen2|bcdcounter\(2) & (!\gen1:4:gen2|bcdcounter\(3) & (\gen1:4:gen2|bcdcounter\(0) $ (\gen1:4:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y1_N26
\gen1:4:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:4:gen2|Mux0~0_combout\ = (!\gen1:4:gen2|bcdcounter\(3) & (!\gen1:4:gen2|bcdcounter\(1) & (\gen1:4:gen2|bcdcounter\(2) $ (\gen1:4:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:4:gen2|bcdcounter\(2),
	datab => \gen1:4:gen2|bcdcounter\(3),
	datac => \gen1:4:gen2|bcdcounter\(0),
	datad => \gen1:4:gen2|bcdcounter\(1),
	combout => \gen1:4:gen2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y33_N22
\gen1:3:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|Mux6~0_combout\ = (\gen1:3:gen2|bcdcounter\(1) & (!\gen1:3:gen2|bcdcounter\(3) & ((!\gen1:3:gen2|bcdcounter\(0)) # (!\gen1:3:gen2|bcdcounter\(2))))) # (!\gen1:3:gen2|bcdcounter\(1) & (\gen1:3:gen2|bcdcounter\(3) $ 
-- ((\gen1:3:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y33_N30
\gen1:3:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|Mux5~0_combout\ = (!\gen1:3:gen2|bcdcounter\(3) & ((\gen1:3:gen2|bcdcounter\(1) & ((\gen1:3:gen2|bcdcounter\(0)) # (!\gen1:3:gen2|bcdcounter\(2)))) # (!\gen1:3:gen2|bcdcounter\(1) & (!\gen1:3:gen2|bcdcounter\(2) & 
-- \gen1:3:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y33_N28
\gen1:3:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|Mux4~0_combout\ = (\gen1:3:gen2|bcdcounter\(1) & (!\gen1:3:gen2|bcdcounter\(3) & ((\gen1:3:gen2|bcdcounter\(0))))) # (!\gen1:3:gen2|bcdcounter\(1) & ((\gen1:3:gen2|bcdcounter\(2) & (!\gen1:3:gen2|bcdcounter\(3))) # 
-- (!\gen1:3:gen2|bcdcounter\(2) & ((\gen1:3:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y33_N18
\gen1:3:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|Mux3~0_combout\ = (!\gen1:3:gen2|bcdcounter\(3) & ((\gen1:3:gen2|bcdcounter\(1) & (\gen1:3:gen2|bcdcounter\(2) & \gen1:3:gen2|bcdcounter\(0))) # (!\gen1:3:gen2|bcdcounter\(1) & (\gen1:3:gen2|bcdcounter\(2) $ (\gen1:3:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y33_N14
\gen1:3:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|Mux2~0_combout\ = (\gen1:3:gen2|bcdcounter\(1) & (!\gen1:3:gen2|bcdcounter\(3) & (!\gen1:3:gen2|bcdcounter\(2) & !\gen1:3:gen2|bcdcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y33_N10
\gen1:3:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|Mux1~0_combout\ = (!\gen1:3:gen2|bcdcounter\(3) & (\gen1:3:gen2|bcdcounter\(2) & (\gen1:3:gen2|bcdcounter\(1) $ (\gen1:3:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y33_N20
\gen1:3:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:3:gen2|Mux0~0_combout\ = (!\gen1:3:gen2|bcdcounter\(1) & (!\gen1:3:gen2|bcdcounter\(3) & (\gen1:3:gen2|bcdcounter\(2) $ (\gen1:3:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:3:gen2|bcdcounter\(1),
	datab => \gen1:3:gen2|bcdcounter\(3),
	datac => \gen1:3:gen2|bcdcounter\(2),
	datad => \gen1:3:gen2|bcdcounter\(0),
	combout => \gen1:3:gen2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y21_N16
\gen1:2:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|Mux6~0_combout\ = (\gen1:2:gen2|bcdcounter\(2) & (!\gen1:2:gen2|bcdcounter\(3) & ((!\gen1:2:gen2|bcdcounter\(1)) # (!\gen1:2:gen2|bcdcounter\(0))))) # (!\gen1:2:gen2|bcdcounter\(2) & (\gen1:2:gen2|bcdcounter\(3) $ 
-- (((\gen1:2:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y21_N8
\gen1:2:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|Mux5~0_combout\ = (!\gen1:2:gen2|bcdcounter\(3) & ((\gen1:2:gen2|bcdcounter\(0) & ((\gen1:2:gen2|bcdcounter\(1)) # (!\gen1:2:gen2|bcdcounter\(2)))) # (!\gen1:2:gen2|bcdcounter\(0) & (!\gen1:2:gen2|bcdcounter\(2) & 
-- \gen1:2:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y21_N24
\gen1:2:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|Mux4~0_combout\ = (\gen1:2:gen2|bcdcounter\(1) & (!\gen1:2:gen2|bcdcounter\(3) & (\gen1:2:gen2|bcdcounter\(0)))) # (!\gen1:2:gen2|bcdcounter\(1) & ((\gen1:2:gen2|bcdcounter\(2) & (!\gen1:2:gen2|bcdcounter\(3))) # (!\gen1:2:gen2|bcdcounter\(2) 
-- & ((\gen1:2:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y21_N28
\gen1:2:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|Mux3~0_combout\ = (!\gen1:2:gen2|bcdcounter\(3) & ((\gen1:2:gen2|bcdcounter\(0) & (\gen1:2:gen2|bcdcounter\(2) $ (!\gen1:2:gen2|bcdcounter\(1)))) # (!\gen1:2:gen2|bcdcounter\(0) & (\gen1:2:gen2|bcdcounter\(2) & 
-- !\gen1:2:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y21_N14
\gen1:2:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|Mux2~0_combout\ = (!\gen1:2:gen2|bcdcounter\(3) & (!\gen1:2:gen2|bcdcounter\(0) & (!\gen1:2:gen2|bcdcounter\(2) & \gen1:2:gen2|bcdcounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y21_N26
\gen1:2:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|Mux1~0_combout\ = (!\gen1:2:gen2|bcdcounter\(3) & (\gen1:2:gen2|bcdcounter\(2) & (\gen1:2:gen2|bcdcounter\(0) $ (\gen1:2:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y21_N30
\gen1:2:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:2:gen2|Mux0~0_combout\ = (!\gen1:2:gen2|bcdcounter\(3) & (!\gen1:2:gen2|bcdcounter\(1) & (\gen1:2:gen2|bcdcounter\(0) $ (\gen1:2:gen2|bcdcounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:2:gen2|bcdcounter\(3),
	datab => \gen1:2:gen2|bcdcounter\(0),
	datac => \gen1:2:gen2|bcdcounter\(2),
	datad => \gen1:2:gen2|bcdcounter\(1),
	combout => \gen1:2:gen2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y37_N18
\gen1:1:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|Mux6~0_combout\ = (\gen1:1:gen2|bcdcounter\(2) & (!\gen1:1:gen2|bcdcounter\(3) & ((!\gen1:1:gen2|bcdcounter\(1)) # (!\gen1:1:gen2|bcdcounter\(0))))) # (!\gen1:1:gen2|bcdcounter\(2) & ((\gen1:1:gen2|bcdcounter\(3) $ 
-- (\gen1:1:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(0),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y37_N12
\gen1:1:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|Mux5~0_combout\ = (!\gen1:1:gen2|bcdcounter\(3) & ((\gen1:1:gen2|bcdcounter\(2) & (\gen1:1:gen2|bcdcounter\(0) & \gen1:1:gen2|bcdcounter\(1))) # (!\gen1:1:gen2|bcdcounter\(2) & ((\gen1:1:gen2|bcdcounter\(0)) # 
-- (\gen1:1:gen2|bcdcounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(0),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y37_N6
\gen1:1:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|Mux4~0_combout\ = (\gen1:1:gen2|bcdcounter\(1) & (((\gen1:1:gen2|bcdcounter\(0) & !\gen1:1:gen2|bcdcounter\(3))))) # (!\gen1:1:gen2|bcdcounter\(1) & ((\gen1:1:gen2|bcdcounter\(2) & ((!\gen1:1:gen2|bcdcounter\(3)))) # 
-- (!\gen1:1:gen2|bcdcounter\(2) & (\gen1:1:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(0),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y37_N30
\gen1:1:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|Mux3~0_combout\ = (!\gen1:1:gen2|bcdcounter\(3) & ((\gen1:1:gen2|bcdcounter\(2) & (\gen1:1:gen2|bcdcounter\(0) $ (!\gen1:1:gen2|bcdcounter\(1)))) # (!\gen1:1:gen2|bcdcounter\(2) & (\gen1:1:gen2|bcdcounter\(0) & 
-- !\gen1:1:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(0),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y37_N14
\gen1:1:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|Mux2~0_combout\ = (!\gen1:1:gen2|bcdcounter\(2) & (!\gen1:1:gen2|bcdcounter\(0) & (!\gen1:1:gen2|bcdcounter\(3) & \gen1:1:gen2|bcdcounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(0),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y37_N26
\gen1:1:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|Mux1~0_combout\ = (\gen1:1:gen2|bcdcounter\(2) & (!\gen1:1:gen2|bcdcounter\(3) & (\gen1:1:gen2|bcdcounter\(0) $ (\gen1:1:gen2|bcdcounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(0),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y37_N8
\gen1:1:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:1:gen2|Mux0~0_combout\ = (!\gen1:1:gen2|bcdcounter\(3) & (!\gen1:1:gen2|bcdcounter\(1) & (\gen1:1:gen2|bcdcounter\(2) $ (\gen1:1:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:1:gen2|bcdcounter\(2),
	datab => \gen1:1:gen2|bcdcounter\(0),
	datac => \gen1:1:gen2|bcdcounter\(3),
	datad => \gen1:1:gen2|bcdcounter\(1),
	combout => \gen1:1:gen2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y51_N8
\gen1:0:gen2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|Mux6~0_combout\ = (\gen1:0:gen2|bcdcounter\(1) & (!\gen1:0:gen2|bcdcounter\(3) & ((!\gen1:0:gen2|bcdcounter\(0)) # (!\gen1:0:gen2|bcdcounter\(2))))) # (!\gen1:0:gen2|bcdcounter\(1) & (\gen1:0:gen2|bcdcounter\(2) $ 
-- (((\gen1:0:gen2|bcdcounter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(2),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(3),
	combout => \gen1:0:gen2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y51_N14
\gen1:0:gen2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|Mux5~0_combout\ = (!\gen1:0:gen2|bcdcounter\(3) & ((\gen1:0:gen2|bcdcounter\(1) & ((\gen1:0:gen2|bcdcounter\(0)) # (!\gen1:0:gen2|bcdcounter\(2)))) # (!\gen1:0:gen2|bcdcounter\(1) & (!\gen1:0:gen2|bcdcounter\(2) & 
-- \gen1:0:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(2),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(3),
	combout => \gen1:0:gen2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y51_N30
\gen1:0:gen2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|Mux4~0_combout\ = (\gen1:0:gen2|bcdcounter\(1) & (((\gen1:0:gen2|bcdcounter\(0) & !\gen1:0:gen2|bcdcounter\(3))))) # (!\gen1:0:gen2|bcdcounter\(1) & ((\gen1:0:gen2|bcdcounter\(2) & ((!\gen1:0:gen2|bcdcounter\(3)))) # 
-- (!\gen1:0:gen2|bcdcounter\(2) & (\gen1:0:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(2),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(3),
	combout => \gen1:0:gen2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y51_N26
\gen1:0:gen2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|Mux3~0_combout\ = (!\gen1:0:gen2|bcdcounter\(3) & ((\gen1:0:gen2|bcdcounter\(1) & (\gen1:0:gen2|bcdcounter\(2) & \gen1:0:gen2|bcdcounter\(0))) # (!\gen1:0:gen2|bcdcounter\(1) & (\gen1:0:gen2|bcdcounter\(2) $ (\gen1:0:gen2|bcdcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(2),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(3),
	combout => \gen1:0:gen2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y51_N10
\gen1:0:gen2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|Mux2~0_combout\ = (\gen1:0:gen2|bcdcounter\(1) & (!\gen1:0:gen2|bcdcounter\(2) & (!\gen1:0:gen2|bcdcounter\(0) & !\gen1:0:gen2|bcdcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(2),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(3),
	combout => \gen1:0:gen2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y51_N22
\gen1:0:gen2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|Mux1~0_combout\ = (\gen1:0:gen2|bcdcounter\(2) & (!\gen1:0:gen2|bcdcounter\(3) & (\gen1:0:gen2|bcdcounter\(1) $ (\gen1:0:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(2),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(3),
	combout => \gen1:0:gen2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y51_N20
\gen1:0:gen2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1:0:gen2|Mux0~0_combout\ = (!\gen1:0:gen2|bcdcounter\(1) & (!\gen1:0:gen2|bcdcounter\(3) & (\gen1:0:gen2|bcdcounter\(2) $ (\gen1:0:gen2|bcdcounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1:0:gen2|bcdcounter\(1),
	datab => \gen1:0:gen2|bcdcounter\(2),
	datac => \gen1:0:gen2|bcdcounter\(0),
	datad => \gen1:0:gen2|bcdcounter\(3),
	combout => \gen1:0:gen2|Mux0~0_combout\);

ww_SEG(55) <= \SEG[55]~output_o\;

ww_SEG(54) <= \SEG[54]~output_o\;

ww_SEG(53) <= \SEG[53]~output_o\;

ww_SEG(52) <= \SEG[52]~output_o\;

ww_SEG(51) <= \SEG[51]~output_o\;

ww_SEG(50) <= \SEG[50]~output_o\;

ww_SEG(49) <= \SEG[49]~output_o\;

ww_SEG(48) <= \SEG[48]~output_o\;

ww_SEG(47) <= \SEG[47]~output_o\;

ww_SEG(46) <= \SEG[46]~output_o\;

ww_SEG(45) <= \SEG[45]~output_o\;

ww_SEG(44) <= \SEG[44]~output_o\;

ww_SEG(43) <= \SEG[43]~output_o\;

ww_SEG(42) <= \SEG[42]~output_o\;

ww_SEG(41) <= \SEG[41]~output_o\;

ww_SEG(40) <= \SEG[40]~output_o\;

ww_SEG(39) <= \SEG[39]~output_o\;

ww_SEG(38) <= \SEG[38]~output_o\;

ww_SEG(37) <= \SEG[37]~output_o\;

ww_SEG(36) <= \SEG[36]~output_o\;

ww_SEG(35) <= \SEG[35]~output_o\;

ww_SEG(34) <= \SEG[34]~output_o\;

ww_SEG(33) <= \SEG[33]~output_o\;

ww_SEG(32) <= \SEG[32]~output_o\;

ww_SEG(31) <= \SEG[31]~output_o\;

ww_SEG(30) <= \SEG[30]~output_o\;

ww_SEG(29) <= \SEG[29]~output_o\;

ww_SEG(28) <= \SEG[28]~output_o\;

ww_SEG(27) <= \SEG[27]~output_o\;

ww_SEG(26) <= \SEG[26]~output_o\;

ww_SEG(25) <= \SEG[25]~output_o\;

ww_SEG(24) <= \SEG[24]~output_o\;

ww_SEG(23) <= \SEG[23]~output_o\;

ww_SEG(22) <= \SEG[22]~output_o\;

ww_SEG(21) <= \SEG[21]~output_o\;

ww_SEG(20) <= \SEG[20]~output_o\;

ww_SEG(19) <= \SEG[19]~output_o\;

ww_SEG(18) <= \SEG[18]~output_o\;

ww_SEG(17) <= \SEG[17]~output_o\;

ww_SEG(16) <= \SEG[16]~output_o\;

ww_SEG(15) <= \SEG[15]~output_o\;

ww_SEG(14) <= \SEG[14]~output_o\;

ww_SEG(13) <= \SEG[13]~output_o\;

ww_SEG(12) <= \SEG[12]~output_o\;

ww_SEG(11) <= \SEG[11]~output_o\;

ww_SEG(10) <= \SEG[10]~output_o\;

ww_SEG(9) <= \SEG[9]~output_o\;

ww_SEG(8) <= \SEG[8]~output_o\;

ww_SEG(7) <= \SEG[7]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(0) <= \SEG[0]~output_o\;
END structure;


