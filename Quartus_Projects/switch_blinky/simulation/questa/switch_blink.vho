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

-- DATE "03/06/2024 19:22:29"

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
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	switch_blink IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	LED : OUT std_logic_vector(3 DOWNTO 0);
	CLK_50MHz : IN std_logic
	);
END switch_blink;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF switch_blink IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK_50MHz : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \BLOCK_D:count[0]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[0]~q\ : std_logic;
SIGNAL \BLOCK_D:count[0]~2\ : std_logic;
SIGNAL \BLOCK_D:count[1]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[1]~q\ : std_logic;
SIGNAL \BLOCK_D:count[1]~2\ : std_logic;
SIGNAL \BLOCK_D:count[2]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[2]~q\ : std_logic;
SIGNAL \BLOCK_D:count[2]~2\ : std_logic;
SIGNAL \BLOCK_D:count[3]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[3]~q\ : std_logic;
SIGNAL \BLOCK_D:count[3]~2\ : std_logic;
SIGNAL \BLOCK_D:count[4]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[4]~q\ : std_logic;
SIGNAL \BLOCK_D:count[4]~2\ : std_logic;
SIGNAL \BLOCK_D:count[5]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[5]~q\ : std_logic;
SIGNAL \BLOCK_D:count[5]~2\ : std_logic;
SIGNAL \BLOCK_D:count[6]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[6]~q\ : std_logic;
SIGNAL \BLOCK_D:count[6]~2\ : std_logic;
SIGNAL \BLOCK_D:count[7]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[7]~q\ : std_logic;
SIGNAL \BLOCK_D:count[7]~2\ : std_logic;
SIGNAL \BLOCK_D:count[8]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[8]~q\ : std_logic;
SIGNAL \BLOCK_D:count[8]~2\ : std_logic;
SIGNAL \BLOCK_D:count[9]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[9]~q\ : std_logic;
SIGNAL \BLOCK_D:count[9]~2\ : std_logic;
SIGNAL \BLOCK_D:count[10]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[10]~q\ : std_logic;
SIGNAL \BLOCK_D:count[10]~2\ : std_logic;
SIGNAL \BLOCK_D:count[11]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[11]~q\ : std_logic;
SIGNAL \BLOCK_D:count[11]~2\ : std_logic;
SIGNAL \BLOCK_D:count[12]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[12]~q\ : std_logic;
SIGNAL \BLOCK_D:count[12]~2\ : std_logic;
SIGNAL \BLOCK_D:count[13]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[13]~q\ : std_logic;
SIGNAL \BLOCK_D:count[13]~2\ : std_logic;
SIGNAL \BLOCK_D:count[14]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[14]~q\ : std_logic;
SIGNAL \BLOCK_D:count[14]~2\ : std_logic;
SIGNAL \BLOCK_D:count[15]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[15]~q\ : std_logic;
SIGNAL \BLOCK_D:count[15]~2\ : std_logic;
SIGNAL \BLOCK_D:count[16]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[16]~q\ : std_logic;
SIGNAL \BLOCK_D:count[16]~2\ : std_logic;
SIGNAL \BLOCK_D:count[17]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[17]~q\ : std_logic;
SIGNAL \BLOCK_D:count[17]~2\ : std_logic;
SIGNAL \BLOCK_D:count[18]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[18]~q\ : std_logic;
SIGNAL \BLOCK_D:count[18]~2\ : std_logic;
SIGNAL \BLOCK_D:count[19]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[19]~q\ : std_logic;
SIGNAL \BLOCK_D:count[19]~2\ : std_logic;
SIGNAL \BLOCK_D:count[20]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[20]~q\ : std_logic;
SIGNAL \BLOCK_D:count[20]~2\ : std_logic;
SIGNAL \BLOCK_D:count[21]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[21]~q\ : std_logic;
SIGNAL \BLOCK_D:count[21]~2\ : std_logic;
SIGNAL \BLOCK_D:count[22]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[22]~q\ : std_logic;
SIGNAL \BLOCK_D:count[22]~2\ : std_logic;
SIGNAL \BLOCK_D:count[23]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[23]~q\ : std_logic;
SIGNAL \BLOCK_D:count[23]~2\ : std_logic;
SIGNAL \BLOCK_D:count[24]~1_combout\ : std_logic;
SIGNAL \BLOCK_D:count[24]~q\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \sig[4]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \BLOCK_C:count[0]~1_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \BLOCK_C:count[0]~q\ : std_logic;
SIGNAL \BLOCK_C:count[0]~2\ : std_logic;
SIGNAL \BLOCK_C:count[1]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[1]~q\ : std_logic;
SIGNAL \BLOCK_C:count[1]~2\ : std_logic;
SIGNAL \BLOCK_C:count[2]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[2]~q\ : std_logic;
SIGNAL \BLOCK_C:count[2]~2\ : std_logic;
SIGNAL \BLOCK_C:count[3]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[3]~q\ : std_logic;
SIGNAL \BLOCK_C:count[3]~2\ : std_logic;
SIGNAL \BLOCK_C:count[4]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[4]~q\ : std_logic;
SIGNAL \BLOCK_C:count[4]~2\ : std_logic;
SIGNAL \BLOCK_C:count[5]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[5]~q\ : std_logic;
SIGNAL \BLOCK_C:count[5]~2\ : std_logic;
SIGNAL \BLOCK_C:count[6]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[6]~q\ : std_logic;
SIGNAL \BLOCK_C:count[6]~2\ : std_logic;
SIGNAL \BLOCK_C:count[7]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[7]~q\ : std_logic;
SIGNAL \BLOCK_C:count[7]~2\ : std_logic;
SIGNAL \BLOCK_C:count[8]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[8]~q\ : std_logic;
SIGNAL \BLOCK_C:count[8]~2\ : std_logic;
SIGNAL \BLOCK_C:count[9]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[9]~q\ : std_logic;
SIGNAL \BLOCK_C:count[9]~2\ : std_logic;
SIGNAL \BLOCK_C:count[10]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[10]~q\ : std_logic;
SIGNAL \BLOCK_C:count[10]~2\ : std_logic;
SIGNAL \BLOCK_C:count[11]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[11]~q\ : std_logic;
SIGNAL \BLOCK_C:count[11]~2\ : std_logic;
SIGNAL \BLOCK_C:count[12]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[12]~q\ : std_logic;
SIGNAL \BLOCK_C:count[12]~2\ : std_logic;
SIGNAL \BLOCK_C:count[13]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[13]~q\ : std_logic;
SIGNAL \BLOCK_C:count[13]~2\ : std_logic;
SIGNAL \BLOCK_C:count[14]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[14]~q\ : std_logic;
SIGNAL \BLOCK_C:count[14]~2\ : std_logic;
SIGNAL \BLOCK_C:count[15]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[15]~q\ : std_logic;
SIGNAL \BLOCK_C:count[15]~2\ : std_logic;
SIGNAL \BLOCK_C:count[16]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[16]~q\ : std_logic;
SIGNAL \BLOCK_C:count[16]~2\ : std_logic;
SIGNAL \BLOCK_C:count[17]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[17]~q\ : std_logic;
SIGNAL \BLOCK_C:count[17]~2\ : std_logic;
SIGNAL \BLOCK_C:count[18]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[18]~q\ : std_logic;
SIGNAL \BLOCK_C:count[18]~2\ : std_logic;
SIGNAL \BLOCK_C:count[19]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[19]~q\ : std_logic;
SIGNAL \BLOCK_C:count[19]~2\ : std_logic;
SIGNAL \BLOCK_C:count[20]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[20]~q\ : std_logic;
SIGNAL \BLOCK_C:count[20]~2\ : std_logic;
SIGNAL \BLOCK_C:count[21]~1_combout\ : std_logic;
SIGNAL \BLOCK_C:count[21]~q\ : std_logic;
SIGNAL \sig[3]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \LED~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \BLOCK_B:count[0]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[16]~2\ : std_logic;
SIGNAL \BLOCK_B:count[17]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[17]~q\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \BLOCK_B:count[0]~q\ : std_logic;
SIGNAL \BLOCK_B:count[0]~2\ : std_logic;
SIGNAL \BLOCK_B:count[1]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[1]~q\ : std_logic;
SIGNAL \BLOCK_B:count[1]~2\ : std_logic;
SIGNAL \BLOCK_B:count[2]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[2]~q\ : std_logic;
SIGNAL \BLOCK_B:count[2]~2\ : std_logic;
SIGNAL \BLOCK_B:count[3]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[3]~q\ : std_logic;
SIGNAL \BLOCK_B:count[3]~2\ : std_logic;
SIGNAL \BLOCK_B:count[4]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[4]~q\ : std_logic;
SIGNAL \BLOCK_B:count[4]~2\ : std_logic;
SIGNAL \BLOCK_B:count[5]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[5]~q\ : std_logic;
SIGNAL \BLOCK_B:count[5]~2\ : std_logic;
SIGNAL \BLOCK_B:count[6]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[6]~q\ : std_logic;
SIGNAL \BLOCK_B:count[6]~2\ : std_logic;
SIGNAL \BLOCK_B:count[7]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[7]~q\ : std_logic;
SIGNAL \BLOCK_B:count[7]~2\ : std_logic;
SIGNAL \BLOCK_B:count[8]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[8]~q\ : std_logic;
SIGNAL \BLOCK_B:count[8]~2\ : std_logic;
SIGNAL \BLOCK_B:count[9]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[9]~q\ : std_logic;
SIGNAL \BLOCK_B:count[9]~2\ : std_logic;
SIGNAL \BLOCK_B:count[10]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[10]~feeder_combout\ : std_logic;
SIGNAL \BLOCK_B:count[10]~q\ : std_logic;
SIGNAL \BLOCK_B:count[10]~2\ : std_logic;
SIGNAL \BLOCK_B:count[11]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[11]~feeder_combout\ : std_logic;
SIGNAL \BLOCK_B:count[11]~q\ : std_logic;
SIGNAL \BLOCK_B:count[11]~2\ : std_logic;
SIGNAL \BLOCK_B:count[12]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[12]~q\ : std_logic;
SIGNAL \BLOCK_B:count[12]~2\ : std_logic;
SIGNAL \BLOCK_B:count[13]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[13]~q\ : std_logic;
SIGNAL \BLOCK_B:count[13]~2\ : std_logic;
SIGNAL \BLOCK_B:count[14]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[14]~q\ : std_logic;
SIGNAL \BLOCK_B:count[14]~2\ : std_logic;
SIGNAL \BLOCK_B:count[15]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[15]~q\ : std_logic;
SIGNAL \BLOCK_B:count[15]~2\ : std_logic;
SIGNAL \BLOCK_B:count[16]~1_combout\ : std_logic;
SIGNAL \BLOCK_B:count[16]~q\ : std_logic;
SIGNAL \sig[2]~2_combout\ : std_logic;
SIGNAL \LED~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \BLOCK_A:count[0]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[0]~q\ : std_logic;
SIGNAL \BLOCK_A:count[0]~2\ : std_logic;
SIGNAL \BLOCK_A:count[1]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[1]~q\ : std_logic;
SIGNAL \BLOCK_A:count[1]~2\ : std_logic;
SIGNAL \BLOCK_A:count[2]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[2]~q\ : std_logic;
SIGNAL \BLOCK_A:count[2]~2\ : std_logic;
SIGNAL \BLOCK_A:count[3]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[3]~q\ : std_logic;
SIGNAL \BLOCK_A:count[3]~2\ : std_logic;
SIGNAL \BLOCK_A:count[4]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[4]~q\ : std_logic;
SIGNAL \BLOCK_A:count[4]~2\ : std_logic;
SIGNAL \BLOCK_A:count[5]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[5]~q\ : std_logic;
SIGNAL \BLOCK_A:count[5]~2\ : std_logic;
SIGNAL \BLOCK_A:count[6]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[6]~q\ : std_logic;
SIGNAL \BLOCK_A:count[6]~2\ : std_logic;
SIGNAL \BLOCK_A:count[7]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[7]~q\ : std_logic;
SIGNAL \BLOCK_A:count[7]~2\ : std_logic;
SIGNAL \BLOCK_A:count[8]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[8]~q\ : std_logic;
SIGNAL \BLOCK_A:count[8]~2\ : std_logic;
SIGNAL \BLOCK_A:count[9]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[9]~q\ : std_logic;
SIGNAL \BLOCK_A:count[9]~2\ : std_logic;
SIGNAL \BLOCK_A:count[10]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[10]~q\ : std_logic;
SIGNAL \BLOCK_A:count[10]~2\ : std_logic;
SIGNAL \BLOCK_A:count[11]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[11]~q\ : std_logic;
SIGNAL \BLOCK_A:count[11]~2\ : std_logic;
SIGNAL \BLOCK_A:count[12]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[12]~q\ : std_logic;
SIGNAL \BLOCK_A:count[12]~2\ : std_logic;
SIGNAL \BLOCK_A:count[13]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[13]~q\ : std_logic;
SIGNAL \BLOCK_A:count[13]~2\ : std_logic;
SIGNAL \BLOCK_A:count[14]~1_combout\ : std_logic;
SIGNAL \BLOCK_A:count[14]~q\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \sig[1]~3_combout\ : std_logic;
SIGNAL \LED~3_combout\ : std_logic;
SIGNAL sig : std_logic_vector(1 TO 4);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LED <= ww_LED;
ww_CLK_50MHz <= CLK_50MHz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~0_combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~1_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~2_combout\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~3_combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHz,
	o => \CLK_50MHz~input_o\);

-- Location: CLKCTRL_G4
\CLK_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X111_Y68_N8
\BLOCK_D:count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[0]~1_combout\ = \BLOCK_D:count[0]~q\ $ (VCC)
-- \BLOCK_D:count[0]~2\ = CARRY(\BLOCK_D:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[0]~q\,
	datad => VCC,
	combout => \BLOCK_D:count[0]~1_combout\,
	cout => \BLOCK_D:count[0]~2\);

-- Location: FF_X111_Y68_N9
\BLOCK_D:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[0]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[0]~q\);

-- Location: LCCOMB_X111_Y68_N10
\BLOCK_D:count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[1]~1_combout\ = (\BLOCK_D:count[1]~q\ & (!\BLOCK_D:count[0]~2\)) # (!\BLOCK_D:count[1]~q\ & ((\BLOCK_D:count[0]~2\) # (GND)))
-- \BLOCK_D:count[1]~2\ = CARRY((!\BLOCK_D:count[0]~2\) # (!\BLOCK_D:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[1]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[0]~2\,
	combout => \BLOCK_D:count[1]~1_combout\,
	cout => \BLOCK_D:count[1]~2\);

-- Location: FF_X111_Y68_N11
\BLOCK_D:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[1]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[1]~q\);

-- Location: LCCOMB_X111_Y68_N12
\BLOCK_D:count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[2]~1_combout\ = (\BLOCK_D:count[2]~q\ & (\BLOCK_D:count[1]~2\ $ (GND))) # (!\BLOCK_D:count[2]~q\ & (!\BLOCK_D:count[1]~2\ & VCC))
-- \BLOCK_D:count[2]~2\ = CARRY((\BLOCK_D:count[2]~q\ & !\BLOCK_D:count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[2]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[1]~2\,
	combout => \BLOCK_D:count[2]~1_combout\,
	cout => \BLOCK_D:count[2]~2\);

-- Location: FF_X111_Y68_N13
\BLOCK_D:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[2]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[2]~q\);

-- Location: LCCOMB_X111_Y68_N14
\BLOCK_D:count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[3]~1_combout\ = (\BLOCK_D:count[3]~q\ & (!\BLOCK_D:count[2]~2\)) # (!\BLOCK_D:count[3]~q\ & ((\BLOCK_D:count[2]~2\) # (GND)))
-- \BLOCK_D:count[3]~2\ = CARRY((!\BLOCK_D:count[2]~2\) # (!\BLOCK_D:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[3]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[2]~2\,
	combout => \BLOCK_D:count[3]~1_combout\,
	cout => \BLOCK_D:count[3]~2\);

-- Location: FF_X111_Y68_N15
\BLOCK_D:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[3]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[3]~q\);

-- Location: LCCOMB_X111_Y68_N16
\BLOCK_D:count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[4]~1_combout\ = (\BLOCK_D:count[4]~q\ & (\BLOCK_D:count[3]~2\ $ (GND))) # (!\BLOCK_D:count[4]~q\ & (!\BLOCK_D:count[3]~2\ & VCC))
-- \BLOCK_D:count[4]~2\ = CARRY((\BLOCK_D:count[4]~q\ & !\BLOCK_D:count[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[4]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[3]~2\,
	combout => \BLOCK_D:count[4]~1_combout\,
	cout => \BLOCK_D:count[4]~2\);

-- Location: FF_X111_Y68_N17
\BLOCK_D:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[4]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[4]~q\);

-- Location: LCCOMB_X111_Y68_N18
\BLOCK_D:count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[5]~1_combout\ = (\BLOCK_D:count[5]~q\ & (!\BLOCK_D:count[4]~2\)) # (!\BLOCK_D:count[5]~q\ & ((\BLOCK_D:count[4]~2\) # (GND)))
-- \BLOCK_D:count[5]~2\ = CARRY((!\BLOCK_D:count[4]~2\) # (!\BLOCK_D:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[5]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[4]~2\,
	combout => \BLOCK_D:count[5]~1_combout\,
	cout => \BLOCK_D:count[5]~2\);

-- Location: FF_X111_Y68_N19
\BLOCK_D:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[5]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[5]~q\);

-- Location: LCCOMB_X111_Y68_N20
\BLOCK_D:count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[6]~1_combout\ = (\BLOCK_D:count[6]~q\ & (\BLOCK_D:count[5]~2\ $ (GND))) # (!\BLOCK_D:count[6]~q\ & (!\BLOCK_D:count[5]~2\ & VCC))
-- \BLOCK_D:count[6]~2\ = CARRY((\BLOCK_D:count[6]~q\ & !\BLOCK_D:count[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[6]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[5]~2\,
	combout => \BLOCK_D:count[6]~1_combout\,
	cout => \BLOCK_D:count[6]~2\);

-- Location: FF_X111_Y68_N21
\BLOCK_D:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[6]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[6]~q\);

-- Location: LCCOMB_X111_Y68_N22
\BLOCK_D:count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[7]~1_combout\ = (\BLOCK_D:count[7]~q\ & (!\BLOCK_D:count[6]~2\)) # (!\BLOCK_D:count[7]~q\ & ((\BLOCK_D:count[6]~2\) # (GND)))
-- \BLOCK_D:count[7]~2\ = CARRY((!\BLOCK_D:count[6]~2\) # (!\BLOCK_D:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[7]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[6]~2\,
	combout => \BLOCK_D:count[7]~1_combout\,
	cout => \BLOCK_D:count[7]~2\);

-- Location: FF_X111_Y68_N23
\BLOCK_D:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[7]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[7]~q\);

-- Location: LCCOMB_X111_Y68_N24
\BLOCK_D:count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[8]~1_combout\ = (\BLOCK_D:count[8]~q\ & (\BLOCK_D:count[7]~2\ $ (GND))) # (!\BLOCK_D:count[8]~q\ & (!\BLOCK_D:count[7]~2\ & VCC))
-- \BLOCK_D:count[8]~2\ = CARRY((\BLOCK_D:count[8]~q\ & !\BLOCK_D:count[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[8]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[7]~2\,
	combout => \BLOCK_D:count[8]~1_combout\,
	cout => \BLOCK_D:count[8]~2\);

-- Location: FF_X111_Y68_N25
\BLOCK_D:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[8]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[8]~q\);

-- Location: LCCOMB_X111_Y68_N26
\BLOCK_D:count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[9]~1_combout\ = (\BLOCK_D:count[9]~q\ & (!\BLOCK_D:count[8]~2\)) # (!\BLOCK_D:count[9]~q\ & ((\BLOCK_D:count[8]~2\) # (GND)))
-- \BLOCK_D:count[9]~2\ = CARRY((!\BLOCK_D:count[8]~2\) # (!\BLOCK_D:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[9]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[8]~2\,
	combout => \BLOCK_D:count[9]~1_combout\,
	cout => \BLOCK_D:count[9]~2\);

-- Location: FF_X111_Y68_N27
\BLOCK_D:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[9]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[9]~q\);

-- Location: LCCOMB_X111_Y68_N28
\BLOCK_D:count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[10]~1_combout\ = (\BLOCK_D:count[10]~q\ & (\BLOCK_D:count[9]~2\ $ (GND))) # (!\BLOCK_D:count[10]~q\ & (!\BLOCK_D:count[9]~2\ & VCC))
-- \BLOCK_D:count[10]~2\ = CARRY((\BLOCK_D:count[10]~q\ & !\BLOCK_D:count[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[10]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[9]~2\,
	combout => \BLOCK_D:count[10]~1_combout\,
	cout => \BLOCK_D:count[10]~2\);

-- Location: FF_X111_Y68_N29
\BLOCK_D:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[10]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[10]~q\);

-- Location: LCCOMB_X111_Y68_N30
\BLOCK_D:count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[11]~1_combout\ = (\BLOCK_D:count[11]~q\ & (!\BLOCK_D:count[10]~2\)) # (!\BLOCK_D:count[11]~q\ & ((\BLOCK_D:count[10]~2\) # (GND)))
-- \BLOCK_D:count[11]~2\ = CARRY((!\BLOCK_D:count[10]~2\) # (!\BLOCK_D:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[11]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[10]~2\,
	combout => \BLOCK_D:count[11]~1_combout\,
	cout => \BLOCK_D:count[11]~2\);

-- Location: FF_X111_Y68_N31
\BLOCK_D:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[11]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[11]~q\);

-- Location: LCCOMB_X111_Y67_N0
\BLOCK_D:count[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[12]~1_combout\ = (\BLOCK_D:count[12]~q\ & (\BLOCK_D:count[11]~2\ $ (GND))) # (!\BLOCK_D:count[12]~q\ & (!\BLOCK_D:count[11]~2\ & VCC))
-- \BLOCK_D:count[12]~2\ = CARRY((\BLOCK_D:count[12]~q\ & !\BLOCK_D:count[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[12]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[11]~2\,
	combout => \BLOCK_D:count[12]~1_combout\,
	cout => \BLOCK_D:count[12]~2\);

-- Location: FF_X112_Y68_N29
\BLOCK_D:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \BLOCK_D:count[12]~1_combout\,
	sclr => \LessThan3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[12]~q\);

-- Location: LCCOMB_X111_Y67_N2
\BLOCK_D:count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[13]~1_combout\ = (\BLOCK_D:count[13]~q\ & (!\BLOCK_D:count[12]~2\)) # (!\BLOCK_D:count[13]~q\ & ((\BLOCK_D:count[12]~2\) # (GND)))
-- \BLOCK_D:count[13]~2\ = CARRY((!\BLOCK_D:count[12]~2\) # (!\BLOCK_D:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[13]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[12]~2\,
	combout => \BLOCK_D:count[13]~1_combout\,
	cout => \BLOCK_D:count[13]~2\);

-- Location: FF_X111_Y67_N3
\BLOCK_D:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[13]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[13]~q\);

-- Location: LCCOMB_X111_Y67_N4
\BLOCK_D:count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[14]~1_combout\ = (\BLOCK_D:count[14]~q\ & (\BLOCK_D:count[13]~2\ $ (GND))) # (!\BLOCK_D:count[14]~q\ & (!\BLOCK_D:count[13]~2\ & VCC))
-- \BLOCK_D:count[14]~2\ = CARRY((\BLOCK_D:count[14]~q\ & !\BLOCK_D:count[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[14]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[13]~2\,
	combout => \BLOCK_D:count[14]~1_combout\,
	cout => \BLOCK_D:count[14]~2\);

-- Location: FF_X111_Y67_N5
\BLOCK_D:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[14]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[14]~q\);

-- Location: LCCOMB_X111_Y67_N6
\BLOCK_D:count[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[15]~1_combout\ = (\BLOCK_D:count[15]~q\ & (!\BLOCK_D:count[14]~2\)) # (!\BLOCK_D:count[15]~q\ & ((\BLOCK_D:count[14]~2\) # (GND)))
-- \BLOCK_D:count[15]~2\ = CARRY((!\BLOCK_D:count[14]~2\) # (!\BLOCK_D:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[15]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[14]~2\,
	combout => \BLOCK_D:count[15]~1_combout\,
	cout => \BLOCK_D:count[15]~2\);

-- Location: FF_X111_Y67_N7
\BLOCK_D:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[15]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[15]~q\);

-- Location: LCCOMB_X111_Y67_N8
\BLOCK_D:count[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[16]~1_combout\ = (\BLOCK_D:count[16]~q\ & (\BLOCK_D:count[15]~2\ $ (GND))) # (!\BLOCK_D:count[16]~q\ & (!\BLOCK_D:count[15]~2\ & VCC))
-- \BLOCK_D:count[16]~2\ = CARRY((\BLOCK_D:count[16]~q\ & !\BLOCK_D:count[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[16]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[15]~2\,
	combout => \BLOCK_D:count[16]~1_combout\,
	cout => \BLOCK_D:count[16]~2\);

-- Location: FF_X111_Y67_N9
\BLOCK_D:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[16]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[16]~q\);

-- Location: LCCOMB_X111_Y67_N10
\BLOCK_D:count[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[17]~1_combout\ = (\BLOCK_D:count[17]~q\ & (!\BLOCK_D:count[16]~2\)) # (!\BLOCK_D:count[17]~q\ & ((\BLOCK_D:count[16]~2\) # (GND)))
-- \BLOCK_D:count[17]~2\ = CARRY((!\BLOCK_D:count[16]~2\) # (!\BLOCK_D:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[17]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[16]~2\,
	combout => \BLOCK_D:count[17]~1_combout\,
	cout => \BLOCK_D:count[17]~2\);

-- Location: FF_X111_Y67_N11
\BLOCK_D:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[17]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[17]~q\);

-- Location: LCCOMB_X111_Y67_N12
\BLOCK_D:count[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[18]~1_combout\ = (\BLOCK_D:count[18]~q\ & (\BLOCK_D:count[17]~2\ $ (GND))) # (!\BLOCK_D:count[18]~q\ & (!\BLOCK_D:count[17]~2\ & VCC))
-- \BLOCK_D:count[18]~2\ = CARRY((\BLOCK_D:count[18]~q\ & !\BLOCK_D:count[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[18]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[17]~2\,
	combout => \BLOCK_D:count[18]~1_combout\,
	cout => \BLOCK_D:count[18]~2\);

-- Location: FF_X111_Y67_N13
\BLOCK_D:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[18]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[18]~q\);

-- Location: LCCOMB_X111_Y67_N14
\BLOCK_D:count[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[19]~1_combout\ = (\BLOCK_D:count[19]~q\ & (!\BLOCK_D:count[18]~2\)) # (!\BLOCK_D:count[19]~q\ & ((\BLOCK_D:count[18]~2\) # (GND)))
-- \BLOCK_D:count[19]~2\ = CARRY((!\BLOCK_D:count[18]~2\) # (!\BLOCK_D:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[19]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[18]~2\,
	combout => \BLOCK_D:count[19]~1_combout\,
	cout => \BLOCK_D:count[19]~2\);

-- Location: FF_X111_Y67_N15
\BLOCK_D:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[19]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[19]~q\);

-- Location: LCCOMB_X111_Y67_N16
\BLOCK_D:count[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[20]~1_combout\ = (\BLOCK_D:count[20]~q\ & (\BLOCK_D:count[19]~2\ $ (GND))) # (!\BLOCK_D:count[20]~q\ & (!\BLOCK_D:count[19]~2\ & VCC))
-- \BLOCK_D:count[20]~2\ = CARRY((\BLOCK_D:count[20]~q\ & !\BLOCK_D:count[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[20]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[19]~2\,
	combout => \BLOCK_D:count[20]~1_combout\,
	cout => \BLOCK_D:count[20]~2\);

-- Location: FF_X111_Y67_N17
\BLOCK_D:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[20]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[20]~q\);

-- Location: LCCOMB_X111_Y67_N18
\BLOCK_D:count[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[21]~1_combout\ = (\BLOCK_D:count[21]~q\ & (!\BLOCK_D:count[20]~2\)) # (!\BLOCK_D:count[21]~q\ & ((\BLOCK_D:count[20]~2\) # (GND)))
-- \BLOCK_D:count[21]~2\ = CARRY((!\BLOCK_D:count[20]~2\) # (!\BLOCK_D:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[21]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[20]~2\,
	combout => \BLOCK_D:count[21]~1_combout\,
	cout => \BLOCK_D:count[21]~2\);

-- Location: FF_X111_Y67_N19
\BLOCK_D:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[21]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[21]~q\);

-- Location: LCCOMB_X111_Y67_N20
\BLOCK_D:count[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[22]~1_combout\ = (\BLOCK_D:count[22]~q\ & (\BLOCK_D:count[21]~2\ $ (GND))) # (!\BLOCK_D:count[22]~q\ & (!\BLOCK_D:count[21]~2\ & VCC))
-- \BLOCK_D:count[22]~2\ = CARRY((\BLOCK_D:count[22]~q\ & !\BLOCK_D:count[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_D:count[22]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[21]~2\,
	combout => \BLOCK_D:count[22]~1_combout\,
	cout => \BLOCK_D:count[22]~2\);

-- Location: FF_X111_Y67_N21
\BLOCK_D:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[22]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[22]~q\);

-- Location: LCCOMB_X111_Y67_N22
\BLOCK_D:count[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[23]~1_combout\ = (\BLOCK_D:count[23]~q\ & (!\BLOCK_D:count[22]~2\)) # (!\BLOCK_D:count[23]~q\ & ((\BLOCK_D:count[22]~2\) # (GND)))
-- \BLOCK_D:count[23]~2\ = CARRY((!\BLOCK_D:count[22]~2\) # (!\BLOCK_D:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[23]~q\,
	datad => VCC,
	cin => \BLOCK_D:count[22]~2\,
	combout => \BLOCK_D:count[23]~1_combout\,
	cout => \BLOCK_D:count[23]~2\);

-- Location: FF_X111_Y67_N23
\BLOCK_D:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[23]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[23]~q\);

-- Location: LCCOMB_X111_Y67_N24
\BLOCK_D:count[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_D:count[24]~1_combout\ = \BLOCK_D:count[23]~2\ $ (!\BLOCK_D:count[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BLOCK_D:count[24]~q\,
	cin => \BLOCK_D:count[23]~2\,
	combout => \BLOCK_D:count[24]~1_combout\);

-- Location: FF_X111_Y67_N25
\BLOCK_D:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_D:count[24]~1_combout\,
	sclr => \LessThan3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_D:count[24]~q\);

-- Location: LCCOMB_X111_Y68_N2
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!\BLOCK_D:count[7]~q\ & (!\BLOCK_D:count[6]~q\ & (!\BLOCK_D:count[9]~q\ & !\BLOCK_D:count[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[7]~q\,
	datab => \BLOCK_D:count[6]~q\,
	datac => \BLOCK_D:count[9]~q\,
	datad => \BLOCK_D:count[8]~q\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X111_Y67_N26
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\BLOCK_D:count[17]~q\ & (!\BLOCK_D:count[23]~q\ & !\BLOCK_D:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[17]~q\,
	datac => \BLOCK_D:count[23]~q\,
	datad => \BLOCK_D:count[15]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X111_Y68_N0
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (((!\BLOCK_D:count[13]~q\) # (!\BLOCK_D:count[14]~q\)) # (!\BLOCK_D:count[12]~q\)) # (!\BLOCK_D:count[11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[11]~q\,
	datab => \BLOCK_D:count[12]~q\,
	datac => \BLOCK_D:count[14]~q\,
	datad => \BLOCK_D:count[13]~q\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X111_Y68_N4
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (\LessThan3~0_combout\ & ((\LessThan3~1_combout\) # ((!\BLOCK_D:count[10]~q\ & \LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[10]~q\,
	datab => \LessThan3~2_combout\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X111_Y67_N28
\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (((!\BLOCK_D:count[17]~q\ & !\BLOCK_D:count[16]~q\)) # (!\BLOCK_D:count[18]~q\)) # (!\BLOCK_D:count[19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[17]~q\,
	datab => \BLOCK_D:count[16]~q\,
	datac => \BLOCK_D:count[19]~q\,
	datad => \BLOCK_D:count[18]~q\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X111_Y67_N30
\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (((\LessThan3~4_combout\) # (!\BLOCK_D:count[21]~q\)) # (!\BLOCK_D:count[20]~q\)) # (!\BLOCK_D:count[22]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[22]~q\,
	datab => \BLOCK_D:count[20]~q\,
	datac => \BLOCK_D:count[21]~q\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X111_Y68_N6
\LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (\BLOCK_D:count[24]~q\ & (!\LessThan3~3_combout\ & ((\BLOCK_D:count[23]~q\) # (!\LessThan3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_D:count[24]~q\,
	datab => \BLOCK_D:count[23]~q\,
	datac => \LessThan3~3_combout\,
	datad => \LessThan3~5_combout\,
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X112_Y68_N18
\sig[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig[4]~0_combout\ = \LessThan3~6_combout\ $ (sig(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~6_combout\,
	datac => sig(4),
	combout => \sig[4]~0_combout\);

-- Location: FF_X112_Y68_N19
\sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \sig[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig(4));

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

-- Location: LCCOMB_X112_Y68_N0
\LED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (sig(4) & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig(4),
	datad => \SW[0]~input_o\,
	combout => \LED~0_combout\);

-- Location: LCCOMB_X103_Y68_N10
\BLOCK_C:count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[0]~1_combout\ = \BLOCK_C:count[0]~q\ $ (VCC)
-- \BLOCK_C:count[0]~2\ = CARRY(\BLOCK_C:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[0]~q\,
	datad => VCC,
	combout => \BLOCK_C:count[0]~1_combout\,
	cout => \BLOCK_C:count[0]~2\);

-- Location: LCCOMB_X102_Y67_N16
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!\BLOCK_C:count[19]~q\ & (!\BLOCK_C:count[20]~q\ & ((!\BLOCK_C:count[17]~q\) # (!\BLOCK_C:count[18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[19]~q\,
	datab => \BLOCK_C:count[18]~q\,
	datac => \BLOCK_C:count[17]~q\,
	datad => \BLOCK_C:count[20]~q\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X103_Y67_N26
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ((!\BLOCK_C:count[10]~q\ & (!\BLOCK_C:count[12]~q\ & !\BLOCK_C:count[11]~q\))) # (!\BLOCK_C:count[13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[10]~q\,
	datab => \BLOCK_C:count[12]~q\,
	datac => \BLOCK_C:count[13]~q\,
	datad => \BLOCK_C:count[11]~q\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X103_Y67_N30
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\BLOCK_C:count[14]~q\ & (!\BLOCK_C:count[20]~q\ & (!\BLOCK_C:count[15]~q\ & !\BLOCK_C:count[19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[14]~q\,
	datab => \BLOCK_C:count[20]~q\,
	datac => \BLOCK_C:count[15]~q\,
	datad => \BLOCK_C:count[19]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X103_Y68_N4
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!\BLOCK_C:count[6]~q\ & !\BLOCK_C:count[5]~q\)) # (!\BLOCK_C:count[7]~q\)) # (!\BLOCK_C:count[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[6]~q\,
	datab => \BLOCK_C:count[5]~q\,
	datac => \BLOCK_C:count[8]~q\,
	datad => \BLOCK_C:count[7]~q\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X103_Y67_N28
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\BLOCK_C:count[9]~q\ & (!\BLOCK_C:count[11]~q\ & (!\BLOCK_C:count[12]~q\ & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[9]~q\,
	datab => \BLOCK_C:count[11]~q\,
	datac => \BLOCK_C:count[12]~q\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X103_Y67_N24
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!\BLOCK_C:count[16]~q\ & (\LessThan2~0_combout\ & ((\LessThan2~3_combout\) # (\LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => \BLOCK_C:count[16]~q\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X103_Y67_N22
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (\BLOCK_C:count[21]~q\ & (!\LessThan2~5_combout\ & !\LessThan2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[21]~q\,
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: FF_X103_Y68_N11
\BLOCK_C:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[0]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[0]~q\);

-- Location: LCCOMB_X103_Y68_N12
\BLOCK_C:count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[1]~1_combout\ = (\BLOCK_C:count[1]~q\ & (!\BLOCK_C:count[0]~2\)) # (!\BLOCK_C:count[1]~q\ & ((\BLOCK_C:count[0]~2\) # (GND)))
-- \BLOCK_C:count[1]~2\ = CARRY((!\BLOCK_C:count[0]~2\) # (!\BLOCK_C:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[1]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[0]~2\,
	combout => \BLOCK_C:count[1]~1_combout\,
	cout => \BLOCK_C:count[1]~2\);

-- Location: FF_X103_Y68_N13
\BLOCK_C:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[1]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[1]~q\);

-- Location: LCCOMB_X103_Y68_N14
\BLOCK_C:count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[2]~1_combout\ = (\BLOCK_C:count[2]~q\ & (\BLOCK_C:count[1]~2\ $ (GND))) # (!\BLOCK_C:count[2]~q\ & (!\BLOCK_C:count[1]~2\ & VCC))
-- \BLOCK_C:count[2]~2\ = CARRY((\BLOCK_C:count[2]~q\ & !\BLOCK_C:count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[2]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[1]~2\,
	combout => \BLOCK_C:count[2]~1_combout\,
	cout => \BLOCK_C:count[2]~2\);

-- Location: FF_X103_Y68_N15
\BLOCK_C:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[2]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[2]~q\);

-- Location: LCCOMB_X103_Y68_N16
\BLOCK_C:count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[3]~1_combout\ = (\BLOCK_C:count[3]~q\ & (!\BLOCK_C:count[2]~2\)) # (!\BLOCK_C:count[3]~q\ & ((\BLOCK_C:count[2]~2\) # (GND)))
-- \BLOCK_C:count[3]~2\ = CARRY((!\BLOCK_C:count[2]~2\) # (!\BLOCK_C:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[3]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[2]~2\,
	combout => \BLOCK_C:count[3]~1_combout\,
	cout => \BLOCK_C:count[3]~2\);

-- Location: FF_X103_Y68_N17
\BLOCK_C:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[3]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[3]~q\);

-- Location: LCCOMB_X103_Y68_N18
\BLOCK_C:count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[4]~1_combout\ = (\BLOCK_C:count[4]~q\ & (\BLOCK_C:count[3]~2\ $ (GND))) # (!\BLOCK_C:count[4]~q\ & (!\BLOCK_C:count[3]~2\ & VCC))
-- \BLOCK_C:count[4]~2\ = CARRY((\BLOCK_C:count[4]~q\ & !\BLOCK_C:count[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[4]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[3]~2\,
	combout => \BLOCK_C:count[4]~1_combout\,
	cout => \BLOCK_C:count[4]~2\);

-- Location: FF_X103_Y68_N19
\BLOCK_C:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[4]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[4]~q\);

-- Location: LCCOMB_X103_Y68_N20
\BLOCK_C:count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[5]~1_combout\ = (\BLOCK_C:count[5]~q\ & (!\BLOCK_C:count[4]~2\)) # (!\BLOCK_C:count[5]~q\ & ((\BLOCK_C:count[4]~2\) # (GND)))
-- \BLOCK_C:count[5]~2\ = CARRY((!\BLOCK_C:count[4]~2\) # (!\BLOCK_C:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[5]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[4]~2\,
	combout => \BLOCK_C:count[5]~1_combout\,
	cout => \BLOCK_C:count[5]~2\);

-- Location: FF_X103_Y68_N21
\BLOCK_C:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[5]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[5]~q\);

-- Location: LCCOMB_X103_Y68_N22
\BLOCK_C:count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[6]~1_combout\ = (\BLOCK_C:count[6]~q\ & (\BLOCK_C:count[5]~2\ $ (GND))) # (!\BLOCK_C:count[6]~q\ & (!\BLOCK_C:count[5]~2\ & VCC))
-- \BLOCK_C:count[6]~2\ = CARRY((\BLOCK_C:count[6]~q\ & !\BLOCK_C:count[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[6]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[5]~2\,
	combout => \BLOCK_C:count[6]~1_combout\,
	cout => \BLOCK_C:count[6]~2\);

-- Location: FF_X103_Y68_N23
\BLOCK_C:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[6]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[6]~q\);

-- Location: LCCOMB_X103_Y68_N24
\BLOCK_C:count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[7]~1_combout\ = (\BLOCK_C:count[7]~q\ & (!\BLOCK_C:count[6]~2\)) # (!\BLOCK_C:count[7]~q\ & ((\BLOCK_C:count[6]~2\) # (GND)))
-- \BLOCK_C:count[7]~2\ = CARRY((!\BLOCK_C:count[6]~2\) # (!\BLOCK_C:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[7]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[6]~2\,
	combout => \BLOCK_C:count[7]~1_combout\,
	cout => \BLOCK_C:count[7]~2\);

-- Location: FF_X103_Y68_N25
\BLOCK_C:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[7]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[7]~q\);

-- Location: LCCOMB_X103_Y68_N26
\BLOCK_C:count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[8]~1_combout\ = (\BLOCK_C:count[8]~q\ & (\BLOCK_C:count[7]~2\ $ (GND))) # (!\BLOCK_C:count[8]~q\ & (!\BLOCK_C:count[7]~2\ & VCC))
-- \BLOCK_C:count[8]~2\ = CARRY((\BLOCK_C:count[8]~q\ & !\BLOCK_C:count[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[8]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[7]~2\,
	combout => \BLOCK_C:count[8]~1_combout\,
	cout => \BLOCK_C:count[8]~2\);

-- Location: FF_X103_Y68_N27
\BLOCK_C:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[8]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[8]~q\);

-- Location: LCCOMB_X103_Y68_N28
\BLOCK_C:count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[9]~1_combout\ = (\BLOCK_C:count[9]~q\ & (!\BLOCK_C:count[8]~2\)) # (!\BLOCK_C:count[9]~q\ & ((\BLOCK_C:count[8]~2\) # (GND)))
-- \BLOCK_C:count[9]~2\ = CARRY((!\BLOCK_C:count[8]~2\) # (!\BLOCK_C:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[9]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[8]~2\,
	combout => \BLOCK_C:count[9]~1_combout\,
	cout => \BLOCK_C:count[9]~2\);

-- Location: FF_X102_Y67_N25
\BLOCK_C:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \BLOCK_C:count[9]~1_combout\,
	sclr => \LessThan2~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[9]~q\);

-- Location: LCCOMB_X103_Y68_N30
\BLOCK_C:count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[10]~1_combout\ = (\BLOCK_C:count[10]~q\ & (\BLOCK_C:count[9]~2\ $ (GND))) # (!\BLOCK_C:count[10]~q\ & (!\BLOCK_C:count[9]~2\ & VCC))
-- \BLOCK_C:count[10]~2\ = CARRY((\BLOCK_C:count[10]~q\ & !\BLOCK_C:count[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[10]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[9]~2\,
	combout => \BLOCK_C:count[10]~1_combout\,
	cout => \BLOCK_C:count[10]~2\);

-- Location: FF_X102_Y67_N15
\BLOCK_C:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \BLOCK_C:count[10]~1_combout\,
	sclr => \LessThan2~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[10]~q\);

-- Location: LCCOMB_X103_Y67_N0
\BLOCK_C:count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[11]~1_combout\ = (\BLOCK_C:count[11]~q\ & (!\BLOCK_C:count[10]~2\)) # (!\BLOCK_C:count[11]~q\ & ((\BLOCK_C:count[10]~2\) # (GND)))
-- \BLOCK_C:count[11]~2\ = CARRY((!\BLOCK_C:count[10]~2\) # (!\BLOCK_C:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[11]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[10]~2\,
	combout => \BLOCK_C:count[11]~1_combout\,
	cout => \BLOCK_C:count[11]~2\);

-- Location: FF_X103_Y67_N1
\BLOCK_C:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[11]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[11]~q\);

-- Location: LCCOMB_X103_Y67_N2
\BLOCK_C:count[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[12]~1_combout\ = (\BLOCK_C:count[12]~q\ & (\BLOCK_C:count[11]~2\ $ (GND))) # (!\BLOCK_C:count[12]~q\ & (!\BLOCK_C:count[11]~2\ & VCC))
-- \BLOCK_C:count[12]~2\ = CARRY((\BLOCK_C:count[12]~q\ & !\BLOCK_C:count[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[12]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[11]~2\,
	combout => \BLOCK_C:count[12]~1_combout\,
	cout => \BLOCK_C:count[12]~2\);

-- Location: FF_X103_Y67_N3
\BLOCK_C:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[12]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[12]~q\);

-- Location: LCCOMB_X103_Y67_N4
\BLOCK_C:count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[13]~1_combout\ = (\BLOCK_C:count[13]~q\ & (!\BLOCK_C:count[12]~2\)) # (!\BLOCK_C:count[13]~q\ & ((\BLOCK_C:count[12]~2\) # (GND)))
-- \BLOCK_C:count[13]~2\ = CARRY((!\BLOCK_C:count[12]~2\) # (!\BLOCK_C:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[13]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[12]~2\,
	combout => \BLOCK_C:count[13]~1_combout\,
	cout => \BLOCK_C:count[13]~2\);

-- Location: FF_X103_Y67_N5
\BLOCK_C:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[13]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[13]~q\);

-- Location: LCCOMB_X103_Y67_N6
\BLOCK_C:count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[14]~1_combout\ = (\BLOCK_C:count[14]~q\ & (\BLOCK_C:count[13]~2\ $ (GND))) # (!\BLOCK_C:count[14]~q\ & (!\BLOCK_C:count[13]~2\ & VCC))
-- \BLOCK_C:count[14]~2\ = CARRY((\BLOCK_C:count[14]~q\ & !\BLOCK_C:count[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[14]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[13]~2\,
	combout => \BLOCK_C:count[14]~1_combout\,
	cout => \BLOCK_C:count[14]~2\);

-- Location: FF_X103_Y67_N7
\BLOCK_C:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[14]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[14]~q\);

-- Location: LCCOMB_X103_Y67_N8
\BLOCK_C:count[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[15]~1_combout\ = (\BLOCK_C:count[15]~q\ & (!\BLOCK_C:count[14]~2\)) # (!\BLOCK_C:count[15]~q\ & ((\BLOCK_C:count[14]~2\) # (GND)))
-- \BLOCK_C:count[15]~2\ = CARRY((!\BLOCK_C:count[14]~2\) # (!\BLOCK_C:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[15]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[14]~2\,
	combout => \BLOCK_C:count[15]~1_combout\,
	cout => \BLOCK_C:count[15]~2\);

-- Location: FF_X103_Y67_N9
\BLOCK_C:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[15]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[15]~q\);

-- Location: LCCOMB_X103_Y67_N10
\BLOCK_C:count[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[16]~1_combout\ = (\BLOCK_C:count[16]~q\ & (\BLOCK_C:count[15]~2\ $ (GND))) # (!\BLOCK_C:count[16]~q\ & (!\BLOCK_C:count[15]~2\ & VCC))
-- \BLOCK_C:count[16]~2\ = CARRY((\BLOCK_C:count[16]~q\ & !\BLOCK_C:count[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[16]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[15]~2\,
	combout => \BLOCK_C:count[16]~1_combout\,
	cout => \BLOCK_C:count[16]~2\);

-- Location: FF_X103_Y67_N11
\BLOCK_C:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[16]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[16]~q\);

-- Location: LCCOMB_X103_Y67_N12
\BLOCK_C:count[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[17]~1_combout\ = (\BLOCK_C:count[17]~q\ & (!\BLOCK_C:count[16]~2\)) # (!\BLOCK_C:count[17]~q\ & ((\BLOCK_C:count[16]~2\) # (GND)))
-- \BLOCK_C:count[17]~2\ = CARRY((!\BLOCK_C:count[16]~2\) # (!\BLOCK_C:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[17]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[16]~2\,
	combout => \BLOCK_C:count[17]~1_combout\,
	cout => \BLOCK_C:count[17]~2\);

-- Location: FF_X103_Y67_N13
\BLOCK_C:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[17]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[17]~q\);

-- Location: LCCOMB_X103_Y67_N14
\BLOCK_C:count[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[18]~1_combout\ = (\BLOCK_C:count[18]~q\ & (\BLOCK_C:count[17]~2\ $ (GND))) # (!\BLOCK_C:count[18]~q\ & (!\BLOCK_C:count[17]~2\ & VCC))
-- \BLOCK_C:count[18]~2\ = CARRY((\BLOCK_C:count[18]~q\ & !\BLOCK_C:count[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[18]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[17]~2\,
	combout => \BLOCK_C:count[18]~1_combout\,
	cout => \BLOCK_C:count[18]~2\);

-- Location: FF_X103_Y67_N15
\BLOCK_C:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[18]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[18]~q\);

-- Location: LCCOMB_X103_Y67_N16
\BLOCK_C:count[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[19]~1_combout\ = (\BLOCK_C:count[19]~q\ & (!\BLOCK_C:count[18]~2\)) # (!\BLOCK_C:count[19]~q\ & ((\BLOCK_C:count[18]~2\) # (GND)))
-- \BLOCK_C:count[19]~2\ = CARRY((!\BLOCK_C:count[18]~2\) # (!\BLOCK_C:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[19]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[18]~2\,
	combout => \BLOCK_C:count[19]~1_combout\,
	cout => \BLOCK_C:count[19]~2\);

-- Location: FF_X103_Y67_N17
\BLOCK_C:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[19]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[19]~q\);

-- Location: LCCOMB_X103_Y67_N18
\BLOCK_C:count[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[20]~1_combout\ = (\BLOCK_C:count[20]~q\ & (\BLOCK_C:count[19]~2\ $ (GND))) # (!\BLOCK_C:count[20]~q\ & (!\BLOCK_C:count[19]~2\ & VCC))
-- \BLOCK_C:count[20]~2\ = CARRY((\BLOCK_C:count[20]~q\ & !\BLOCK_C:count[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_C:count[20]~q\,
	datad => VCC,
	cin => \BLOCK_C:count[19]~2\,
	combout => \BLOCK_C:count[20]~1_combout\,
	cout => \BLOCK_C:count[20]~2\);

-- Location: FF_X103_Y67_N19
\BLOCK_C:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[20]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[20]~q\);

-- Location: LCCOMB_X103_Y67_N20
\BLOCK_C:count[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_C:count[21]~1_combout\ = \BLOCK_C:count[20]~2\ $ (\BLOCK_C:count[21]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BLOCK_C:count[21]~q\,
	cin => \BLOCK_C:count[20]~2\,
	combout => \BLOCK_C:count[21]~1_combout\);

-- Location: FF_X103_Y67_N21
\BLOCK_C:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_C:count[21]~1_combout\,
	sclr => \LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_C:count[21]~q\);

-- Location: LCCOMB_X102_Y67_N28
\sig[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig[3]~1_combout\ = sig(3) $ (((\BLOCK_C:count[21]~q\ & (!\LessThan2~5_combout\ & !\LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_C:count[21]~q\,
	datab => \LessThan2~5_combout\,
	datac => sig(3),
	datad => \LessThan2~4_combout\,
	combout => \sig[3]~1_combout\);

-- Location: FF_X102_Y67_N29
\sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \sig[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig(3));

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

-- Location: LCCOMB_X102_Y67_N10
\LED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED~1_combout\ = (sig(3) & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig(3),
	datad => \SW[1]~input_o\,
	combout => \LED~1_combout\);

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

-- Location: LCCOMB_X96_Y68_N14
\BLOCK_B:count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[0]~1_combout\ = \BLOCK_B:count[0]~q\ $ (VCC)
-- \BLOCK_B:count[0]~2\ = CARRY(\BLOCK_B:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[0]~q\,
	datad => VCC,
	combout => \BLOCK_B:count[0]~1_combout\,
	cout => \BLOCK_B:count[0]~2\);

-- Location: LCCOMB_X96_Y67_N14
\BLOCK_B:count[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[16]~1_combout\ = (\BLOCK_B:count[16]~q\ & (\BLOCK_B:count[15]~2\ $ (GND))) # (!\BLOCK_B:count[16]~q\ & (!\BLOCK_B:count[15]~2\ & VCC))
-- \BLOCK_B:count[16]~2\ = CARRY((\BLOCK_B:count[16]~q\ & !\BLOCK_B:count[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[16]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[15]~2\,
	combout => \BLOCK_B:count[16]~1_combout\,
	cout => \BLOCK_B:count[16]~2\);

-- Location: LCCOMB_X96_Y67_N16
\BLOCK_B:count[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[17]~1_combout\ = \BLOCK_B:count[16]~2\ $ (\BLOCK_B:count[17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BLOCK_B:count[17]~q\,
	cin => \BLOCK_B:count[16]~2\,
	combout => \BLOCK_B:count[17]~1_combout\);

-- Location: FF_X96_Y67_N17
\BLOCK_B:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[17]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[17]~q\);

-- Location: LCCOMB_X96_Y68_N6
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((!\BLOCK_B:count[4]~q\ & (!\BLOCK_B:count[5]~q\ & !\BLOCK_B:count[6]~q\))) # (!\BLOCK_B:count[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[4]~q\,
	datab => \BLOCK_B:count[5]~q\,
	datac => \BLOCK_B:count[6]~q\,
	datad => \BLOCK_B:count[7]~q\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X96_Y68_N8
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!\BLOCK_B:count[11]~q\ & (!\BLOCK_B:count[9]~q\ & (!\BLOCK_B:count[8]~q\ & !\BLOCK_B:count[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[11]~q\,
	datab => \BLOCK_B:count[9]~q\,
	datac => \BLOCK_B:count[8]~q\,
	datad => \BLOCK_B:count[10]~q\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X96_Y67_N22
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\BLOCK_B:count[12]~q\ & !\BLOCK_B:count[13]~q\)) # (!\BLOCK_B:count[14]~q\)) # (!\BLOCK_B:count[15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[15]~q\,
	datab => \BLOCK_B:count[12]~q\,
	datac => \BLOCK_B:count[13]~q\,
	datad => \BLOCK_B:count[14]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X96_Y68_N2
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~0_combout\) # ((\LessThan1~1_combout\ & (!\BLOCK_B:count[13]~q\ & \LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \BLOCK_B:count[13]~q\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X96_Y68_N4
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\BLOCK_B:count[16]~q\ & (\BLOCK_B:count[17]~q\ & !\LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[16]~q\,
	datac => \BLOCK_B:count[17]~q\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: FF_X96_Y68_N15
\BLOCK_B:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[0]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[0]~q\);

-- Location: LCCOMB_X96_Y68_N16
\BLOCK_B:count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[1]~1_combout\ = (\BLOCK_B:count[1]~q\ & (!\BLOCK_B:count[0]~2\)) # (!\BLOCK_B:count[1]~q\ & ((\BLOCK_B:count[0]~2\) # (GND)))
-- \BLOCK_B:count[1]~2\ = CARRY((!\BLOCK_B:count[0]~2\) # (!\BLOCK_B:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[1]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[0]~2\,
	combout => \BLOCK_B:count[1]~1_combout\,
	cout => \BLOCK_B:count[1]~2\);

-- Location: FF_X96_Y68_N17
\BLOCK_B:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[1]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[1]~q\);

-- Location: LCCOMB_X96_Y68_N18
\BLOCK_B:count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[2]~1_combout\ = (\BLOCK_B:count[2]~q\ & (\BLOCK_B:count[1]~2\ $ (GND))) # (!\BLOCK_B:count[2]~q\ & (!\BLOCK_B:count[1]~2\ & VCC))
-- \BLOCK_B:count[2]~2\ = CARRY((\BLOCK_B:count[2]~q\ & !\BLOCK_B:count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[2]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[1]~2\,
	combout => \BLOCK_B:count[2]~1_combout\,
	cout => \BLOCK_B:count[2]~2\);

-- Location: FF_X96_Y68_N19
\BLOCK_B:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[2]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[2]~q\);

-- Location: LCCOMB_X96_Y68_N20
\BLOCK_B:count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[3]~1_combout\ = (\BLOCK_B:count[3]~q\ & (!\BLOCK_B:count[2]~2\)) # (!\BLOCK_B:count[3]~q\ & ((\BLOCK_B:count[2]~2\) # (GND)))
-- \BLOCK_B:count[3]~2\ = CARRY((!\BLOCK_B:count[2]~2\) # (!\BLOCK_B:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[3]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[2]~2\,
	combout => \BLOCK_B:count[3]~1_combout\,
	cout => \BLOCK_B:count[3]~2\);

-- Location: FF_X96_Y68_N21
\BLOCK_B:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[3]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[3]~q\);

-- Location: LCCOMB_X96_Y68_N22
\BLOCK_B:count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[4]~1_combout\ = (\BLOCK_B:count[4]~q\ & (\BLOCK_B:count[3]~2\ $ (GND))) # (!\BLOCK_B:count[4]~q\ & (!\BLOCK_B:count[3]~2\ & VCC))
-- \BLOCK_B:count[4]~2\ = CARRY((\BLOCK_B:count[4]~q\ & !\BLOCK_B:count[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[4]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[3]~2\,
	combout => \BLOCK_B:count[4]~1_combout\,
	cout => \BLOCK_B:count[4]~2\);

-- Location: FF_X96_Y68_N23
\BLOCK_B:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[4]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[4]~q\);

-- Location: LCCOMB_X96_Y68_N24
\BLOCK_B:count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[5]~1_combout\ = (\BLOCK_B:count[5]~q\ & (!\BLOCK_B:count[4]~2\)) # (!\BLOCK_B:count[5]~q\ & ((\BLOCK_B:count[4]~2\) # (GND)))
-- \BLOCK_B:count[5]~2\ = CARRY((!\BLOCK_B:count[4]~2\) # (!\BLOCK_B:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[5]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[4]~2\,
	combout => \BLOCK_B:count[5]~1_combout\,
	cout => \BLOCK_B:count[5]~2\);

-- Location: FF_X96_Y68_N25
\BLOCK_B:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[5]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[5]~q\);

-- Location: LCCOMB_X96_Y68_N26
\BLOCK_B:count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[6]~1_combout\ = (\BLOCK_B:count[6]~q\ & (\BLOCK_B:count[5]~2\ $ (GND))) # (!\BLOCK_B:count[6]~q\ & (!\BLOCK_B:count[5]~2\ & VCC))
-- \BLOCK_B:count[6]~2\ = CARRY((\BLOCK_B:count[6]~q\ & !\BLOCK_B:count[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[6]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[5]~2\,
	combout => \BLOCK_B:count[6]~1_combout\,
	cout => \BLOCK_B:count[6]~2\);

-- Location: FF_X96_Y68_N27
\BLOCK_B:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[6]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[6]~q\);

-- Location: LCCOMB_X96_Y68_N28
\BLOCK_B:count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[7]~1_combout\ = (\BLOCK_B:count[7]~q\ & (!\BLOCK_B:count[6]~2\)) # (!\BLOCK_B:count[7]~q\ & ((\BLOCK_B:count[6]~2\) # (GND)))
-- \BLOCK_B:count[7]~2\ = CARRY((!\BLOCK_B:count[6]~2\) # (!\BLOCK_B:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[7]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[6]~2\,
	combout => \BLOCK_B:count[7]~1_combout\,
	cout => \BLOCK_B:count[7]~2\);

-- Location: FF_X96_Y68_N29
\BLOCK_B:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[7]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[7]~q\);

-- Location: LCCOMB_X96_Y68_N30
\BLOCK_B:count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[8]~1_combout\ = (\BLOCK_B:count[8]~q\ & (\BLOCK_B:count[7]~2\ $ (GND))) # (!\BLOCK_B:count[8]~q\ & (!\BLOCK_B:count[7]~2\ & VCC))
-- \BLOCK_B:count[8]~2\ = CARRY((\BLOCK_B:count[8]~q\ & !\BLOCK_B:count[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[8]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[7]~2\,
	combout => \BLOCK_B:count[8]~1_combout\,
	cout => \BLOCK_B:count[8]~2\);

-- Location: FF_X96_Y68_N31
\BLOCK_B:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[8]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[8]~q\);

-- Location: LCCOMB_X96_Y67_N0
\BLOCK_B:count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[9]~1_combout\ = (\BLOCK_B:count[9]~q\ & (!\BLOCK_B:count[8]~2\)) # (!\BLOCK_B:count[9]~q\ & ((\BLOCK_B:count[8]~2\) # (GND)))
-- \BLOCK_B:count[9]~2\ = CARRY((!\BLOCK_B:count[8]~2\) # (!\BLOCK_B:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[9]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[8]~2\,
	combout => \BLOCK_B:count[9]~1_combout\,
	cout => \BLOCK_B:count[9]~2\);

-- Location: FF_X96_Y67_N1
\BLOCK_B:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[9]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[9]~q\);

-- Location: LCCOMB_X96_Y67_N2
\BLOCK_B:count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[10]~1_combout\ = (\BLOCK_B:count[10]~q\ & (\BLOCK_B:count[9]~2\ $ (GND))) # (!\BLOCK_B:count[10]~q\ & (!\BLOCK_B:count[9]~2\ & VCC))
-- \BLOCK_B:count[10]~2\ = CARRY((\BLOCK_B:count[10]~q\ & !\BLOCK_B:count[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[10]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[9]~2\,
	combout => \BLOCK_B:count[10]~1_combout\,
	cout => \BLOCK_B:count[10]~2\);

-- Location: LCCOMB_X96_Y68_N12
\BLOCK_B:count[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[10]~feeder_combout\ = \BLOCK_B:count[10]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOCK_B:count[10]~1_combout\,
	combout => \BLOCK_B:count[10]~feeder_combout\);

-- Location: FF_X96_Y68_N13
\BLOCK_B:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[10]~feeder_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[10]~q\);

-- Location: LCCOMB_X96_Y67_N4
\BLOCK_B:count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[11]~1_combout\ = (\BLOCK_B:count[11]~q\ & (!\BLOCK_B:count[10]~2\)) # (!\BLOCK_B:count[11]~q\ & ((\BLOCK_B:count[10]~2\) # (GND)))
-- \BLOCK_B:count[11]~2\ = CARRY((!\BLOCK_B:count[10]~2\) # (!\BLOCK_B:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[11]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[10]~2\,
	combout => \BLOCK_B:count[11]~1_combout\,
	cout => \BLOCK_B:count[11]~2\);

-- Location: LCCOMB_X96_Y68_N10
\BLOCK_B:count[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[11]~feeder_combout\ = \BLOCK_B:count[11]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BLOCK_B:count[11]~1_combout\,
	combout => \BLOCK_B:count[11]~feeder_combout\);

-- Location: FF_X96_Y68_N11
\BLOCK_B:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[11]~feeder_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[11]~q\);

-- Location: LCCOMB_X96_Y67_N6
\BLOCK_B:count[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[12]~1_combout\ = (\BLOCK_B:count[12]~q\ & (\BLOCK_B:count[11]~2\ $ (GND))) # (!\BLOCK_B:count[12]~q\ & (!\BLOCK_B:count[11]~2\ & VCC))
-- \BLOCK_B:count[12]~2\ = CARRY((\BLOCK_B:count[12]~q\ & !\BLOCK_B:count[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[12]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[11]~2\,
	combout => \BLOCK_B:count[12]~1_combout\,
	cout => \BLOCK_B:count[12]~2\);

-- Location: FF_X96_Y67_N7
\BLOCK_B:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[12]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[12]~q\);

-- Location: LCCOMB_X96_Y67_N8
\BLOCK_B:count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[13]~1_combout\ = (\BLOCK_B:count[13]~q\ & (!\BLOCK_B:count[12]~2\)) # (!\BLOCK_B:count[13]~q\ & ((\BLOCK_B:count[12]~2\) # (GND)))
-- \BLOCK_B:count[13]~2\ = CARRY((!\BLOCK_B:count[12]~2\) # (!\BLOCK_B:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[13]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[12]~2\,
	combout => \BLOCK_B:count[13]~1_combout\,
	cout => \BLOCK_B:count[13]~2\);

-- Location: FF_X96_Y67_N9
\BLOCK_B:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[13]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[13]~q\);

-- Location: LCCOMB_X96_Y67_N10
\BLOCK_B:count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[14]~1_combout\ = (\BLOCK_B:count[14]~q\ & (\BLOCK_B:count[13]~2\ $ (GND))) # (!\BLOCK_B:count[14]~q\ & (!\BLOCK_B:count[13]~2\ & VCC))
-- \BLOCK_B:count[14]~2\ = CARRY((\BLOCK_B:count[14]~q\ & !\BLOCK_B:count[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[14]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[13]~2\,
	combout => \BLOCK_B:count[14]~1_combout\,
	cout => \BLOCK_B:count[14]~2\);

-- Location: FF_X96_Y67_N11
\BLOCK_B:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[14]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[14]~q\);

-- Location: LCCOMB_X96_Y67_N12
\BLOCK_B:count[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_B:count[15]~1_combout\ = (\BLOCK_B:count[15]~q\ & (!\BLOCK_B:count[14]~2\)) # (!\BLOCK_B:count[15]~q\ & ((\BLOCK_B:count[14]~2\) # (GND)))
-- \BLOCK_B:count[15]~2\ = CARRY((!\BLOCK_B:count[14]~2\) # (!\BLOCK_B:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_B:count[15]~q\,
	datad => VCC,
	cin => \BLOCK_B:count[14]~2\,
	combout => \BLOCK_B:count[15]~1_combout\,
	cout => \BLOCK_B:count[15]~2\);

-- Location: FF_X96_Y67_N13
\BLOCK_B:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[15]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[15]~q\);

-- Location: FF_X96_Y67_N15
\BLOCK_B:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_B:count[16]~1_combout\,
	sclr => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_B:count[16]~q\);

-- Location: LCCOMB_X96_Y68_N0
\sig[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig[2]~2_combout\ = sig(2) $ (((\BLOCK_B:count[16]~q\ & (\BLOCK_B:count[17]~q\ & !\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_B:count[16]~q\,
	datab => \BLOCK_B:count[17]~q\,
	datac => sig(2),
	datad => \LessThan1~3_combout\,
	combout => \sig[2]~2_combout\);

-- Location: FF_X96_Y68_N1
\sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \sig[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig(2));

-- Location: LCCOMB_X96_Y69_N0
\LED~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED~2_combout\ = (\SW[2]~input_o\ & sig(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => sig(2),
	combout => \LED~2_combout\);

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

-- Location: LCCOMB_X100_Y46_N0
\BLOCK_A:count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[0]~1_combout\ = \BLOCK_A:count[0]~q\ $ (VCC)
-- \BLOCK_A:count[0]~2\ = CARRY(\BLOCK_A:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[0]~q\,
	datad => VCC,
	combout => \BLOCK_A:count[0]~1_combout\,
	cout => \BLOCK_A:count[0]~2\);

-- Location: FF_X100_Y46_N1
\BLOCK_A:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[0]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[0]~q\);

-- Location: LCCOMB_X100_Y46_N2
\BLOCK_A:count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[1]~1_combout\ = (\BLOCK_A:count[1]~q\ & (!\BLOCK_A:count[0]~2\)) # (!\BLOCK_A:count[1]~q\ & ((\BLOCK_A:count[0]~2\) # (GND)))
-- \BLOCK_A:count[1]~2\ = CARRY((!\BLOCK_A:count[0]~2\) # (!\BLOCK_A:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[1]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[0]~2\,
	combout => \BLOCK_A:count[1]~1_combout\,
	cout => \BLOCK_A:count[1]~2\);

-- Location: FF_X100_Y46_N3
\BLOCK_A:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[1]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[1]~q\);

-- Location: LCCOMB_X100_Y46_N4
\BLOCK_A:count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[2]~1_combout\ = (\BLOCK_A:count[2]~q\ & (\BLOCK_A:count[1]~2\ $ (GND))) # (!\BLOCK_A:count[2]~q\ & (!\BLOCK_A:count[1]~2\ & VCC))
-- \BLOCK_A:count[2]~2\ = CARRY((\BLOCK_A:count[2]~q\ & !\BLOCK_A:count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[2]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[1]~2\,
	combout => \BLOCK_A:count[2]~1_combout\,
	cout => \BLOCK_A:count[2]~2\);

-- Location: FF_X100_Y46_N5
\BLOCK_A:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[2]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[2]~q\);

-- Location: LCCOMB_X100_Y46_N6
\BLOCK_A:count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[3]~1_combout\ = (\BLOCK_A:count[3]~q\ & (!\BLOCK_A:count[2]~2\)) # (!\BLOCK_A:count[3]~q\ & ((\BLOCK_A:count[2]~2\) # (GND)))
-- \BLOCK_A:count[3]~2\ = CARRY((!\BLOCK_A:count[2]~2\) # (!\BLOCK_A:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[3]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[2]~2\,
	combout => \BLOCK_A:count[3]~1_combout\,
	cout => \BLOCK_A:count[3]~2\);

-- Location: FF_X100_Y46_N7
\BLOCK_A:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[3]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[3]~q\);

-- Location: LCCOMB_X100_Y46_N8
\BLOCK_A:count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[4]~1_combout\ = (\BLOCK_A:count[4]~q\ & (\BLOCK_A:count[3]~2\ $ (GND))) # (!\BLOCK_A:count[4]~q\ & (!\BLOCK_A:count[3]~2\ & VCC))
-- \BLOCK_A:count[4]~2\ = CARRY((\BLOCK_A:count[4]~q\ & !\BLOCK_A:count[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[4]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[3]~2\,
	combout => \BLOCK_A:count[4]~1_combout\,
	cout => \BLOCK_A:count[4]~2\);

-- Location: FF_X100_Y46_N9
\BLOCK_A:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[4]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[4]~q\);

-- Location: LCCOMB_X100_Y46_N10
\BLOCK_A:count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[5]~1_combout\ = (\BLOCK_A:count[5]~q\ & (!\BLOCK_A:count[4]~2\)) # (!\BLOCK_A:count[5]~q\ & ((\BLOCK_A:count[4]~2\) # (GND)))
-- \BLOCK_A:count[5]~2\ = CARRY((!\BLOCK_A:count[4]~2\) # (!\BLOCK_A:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[5]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[4]~2\,
	combout => \BLOCK_A:count[5]~1_combout\,
	cout => \BLOCK_A:count[5]~2\);

-- Location: FF_X100_Y46_N11
\BLOCK_A:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[5]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[5]~q\);

-- Location: LCCOMB_X100_Y46_N12
\BLOCK_A:count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[6]~1_combout\ = (\BLOCK_A:count[6]~q\ & (\BLOCK_A:count[5]~2\ $ (GND))) # (!\BLOCK_A:count[6]~q\ & (!\BLOCK_A:count[5]~2\ & VCC))
-- \BLOCK_A:count[6]~2\ = CARRY((\BLOCK_A:count[6]~q\ & !\BLOCK_A:count[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[6]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[5]~2\,
	combout => \BLOCK_A:count[6]~1_combout\,
	cout => \BLOCK_A:count[6]~2\);

-- Location: FF_X100_Y46_N13
\BLOCK_A:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[6]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[6]~q\);

-- Location: LCCOMB_X100_Y46_N14
\BLOCK_A:count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[7]~1_combout\ = (\BLOCK_A:count[7]~q\ & (!\BLOCK_A:count[6]~2\)) # (!\BLOCK_A:count[7]~q\ & ((\BLOCK_A:count[6]~2\) # (GND)))
-- \BLOCK_A:count[7]~2\ = CARRY((!\BLOCK_A:count[6]~2\) # (!\BLOCK_A:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[7]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[6]~2\,
	combout => \BLOCK_A:count[7]~1_combout\,
	cout => \BLOCK_A:count[7]~2\);

-- Location: FF_X100_Y46_N15
\BLOCK_A:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[7]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[7]~q\);

-- Location: LCCOMB_X100_Y46_N16
\BLOCK_A:count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[8]~1_combout\ = (\BLOCK_A:count[8]~q\ & (\BLOCK_A:count[7]~2\ $ (GND))) # (!\BLOCK_A:count[8]~q\ & (!\BLOCK_A:count[7]~2\ & VCC))
-- \BLOCK_A:count[8]~2\ = CARRY((\BLOCK_A:count[8]~q\ & !\BLOCK_A:count[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[8]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[7]~2\,
	combout => \BLOCK_A:count[8]~1_combout\,
	cout => \BLOCK_A:count[8]~2\);

-- Location: FF_X100_Y46_N17
\BLOCK_A:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[8]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[8]~q\);

-- Location: LCCOMB_X100_Y46_N18
\BLOCK_A:count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[9]~1_combout\ = (\BLOCK_A:count[9]~q\ & (!\BLOCK_A:count[8]~2\)) # (!\BLOCK_A:count[9]~q\ & ((\BLOCK_A:count[8]~2\) # (GND)))
-- \BLOCK_A:count[9]~2\ = CARRY((!\BLOCK_A:count[8]~2\) # (!\BLOCK_A:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[9]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[8]~2\,
	combout => \BLOCK_A:count[9]~1_combout\,
	cout => \BLOCK_A:count[9]~2\);

-- Location: FF_X100_Y46_N19
\BLOCK_A:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[9]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[9]~q\);

-- Location: LCCOMB_X100_Y46_N20
\BLOCK_A:count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[10]~1_combout\ = (\BLOCK_A:count[10]~q\ & (\BLOCK_A:count[9]~2\ $ (GND))) # (!\BLOCK_A:count[10]~q\ & (!\BLOCK_A:count[9]~2\ & VCC))
-- \BLOCK_A:count[10]~2\ = CARRY((\BLOCK_A:count[10]~q\ & !\BLOCK_A:count[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[10]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[9]~2\,
	combout => \BLOCK_A:count[10]~1_combout\,
	cout => \BLOCK_A:count[10]~2\);

-- Location: FF_X100_Y46_N21
\BLOCK_A:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[10]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[10]~q\);

-- Location: LCCOMB_X100_Y46_N22
\BLOCK_A:count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[11]~1_combout\ = (\BLOCK_A:count[11]~q\ & (!\BLOCK_A:count[10]~2\)) # (!\BLOCK_A:count[11]~q\ & ((\BLOCK_A:count[10]~2\) # (GND)))
-- \BLOCK_A:count[11]~2\ = CARRY((!\BLOCK_A:count[10]~2\) # (!\BLOCK_A:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[11]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[10]~2\,
	combout => \BLOCK_A:count[11]~1_combout\,
	cout => \BLOCK_A:count[11]~2\);

-- Location: FF_X100_Y46_N23
\BLOCK_A:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[11]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[11]~q\);

-- Location: LCCOMB_X100_Y46_N24
\BLOCK_A:count[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[12]~1_combout\ = (\BLOCK_A:count[12]~q\ & (\BLOCK_A:count[11]~2\ $ (GND))) # (!\BLOCK_A:count[12]~q\ & (!\BLOCK_A:count[11]~2\ & VCC))
-- \BLOCK_A:count[12]~2\ = CARRY((\BLOCK_A:count[12]~q\ & !\BLOCK_A:count[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLOCK_A:count[12]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[11]~2\,
	combout => \BLOCK_A:count[12]~1_combout\,
	cout => \BLOCK_A:count[12]~2\);

-- Location: FF_X100_Y46_N25
\BLOCK_A:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[12]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[12]~q\);

-- Location: LCCOMB_X100_Y46_N26
\BLOCK_A:count[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[13]~1_combout\ = (\BLOCK_A:count[13]~q\ & (!\BLOCK_A:count[12]~2\)) # (!\BLOCK_A:count[13]~q\ & ((\BLOCK_A:count[12]~2\) # (GND)))
-- \BLOCK_A:count[13]~2\ = CARRY((!\BLOCK_A:count[12]~2\) # (!\BLOCK_A:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[13]~q\,
	datad => VCC,
	cin => \BLOCK_A:count[12]~2\,
	combout => \BLOCK_A:count[13]~1_combout\,
	cout => \BLOCK_A:count[13]~2\);

-- Location: FF_X100_Y46_N27
\BLOCK_A:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[13]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[13]~q\);

-- Location: LCCOMB_X100_Y46_N28
\BLOCK_A:count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLOCK_A:count[14]~1_combout\ = \BLOCK_A:count[13]~2\ $ (!\BLOCK_A:count[14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BLOCK_A:count[14]~q\,
	cin => \BLOCK_A:count[13]~2\,
	combout => \BLOCK_A:count[14]~1_combout\);

-- Location: FF_X100_Y46_N29
\BLOCK_A:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \BLOCK_A:count[14]~1_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCK_A:count[14]~q\);

-- Location: LCCOMB_X101_Y46_N30
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\BLOCK_A:count[9]~q\ & (!\BLOCK_A:count[11]~q\ & (!\BLOCK_A:count[12]~q\ & !\BLOCK_A:count[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[9]~q\,
	datab => \BLOCK_A:count[11]~q\,
	datac => \BLOCK_A:count[12]~q\,
	datad => \BLOCK_A:count[10]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X99_Y46_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!\BLOCK_A:count[3]~q\ & (!\BLOCK_A:count[4]~q\ & !\BLOCK_A:count[6]~q\))) # (!\BLOCK_A:count[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[3]~q\,
	datab => \BLOCK_A:count[4]~q\,
	datac => \BLOCK_A:count[6]~q\,
	datad => \BLOCK_A:count[7]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X99_Y46_N14
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((\LessThan0~0_combout\) # ((!\BLOCK_A:count[6]~q\ & !\BLOCK_A:count[5]~q\))) # (!\BLOCK_A:count[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[8]~q\,
	datab => \BLOCK_A:count[6]~q\,
	datac => \BLOCK_A:count[5]~q\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X100_Y46_N30
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\BLOCK_A:count[13]~q\ & (\BLOCK_A:count[14]~q\ & ((!\LessThan0~1_combout\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCK_A:count[13]~q\,
	datab => \BLOCK_A:count[14]~q\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X101_Y46_N4
\sig[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig[1]~3_combout\ = sig(1) $ (\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig(1),
	datad => \LessThan0~3_combout\,
	combout => \sig[1]~3_combout\);

-- Location: FF_X101_Y46_N5
\sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \sig[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig(1));

-- Location: LCCOMB_X107_Y46_N16
\LED~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED~3_combout\ = (\SW[3]~input_o\ & sig(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => sig(1),
	combout => \LED~3_combout\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;
END structure;


