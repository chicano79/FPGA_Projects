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

-- DATE "03/23/2024 02:48:01"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	movingText IS
    PORT (
	CLK50MHZ : IN std_logic;
	LEDR : OUT std_logic_vector(0 TO 9);
	CPU_RESETN : IN std_logic;
	GPIO : OUT std_logic_vector(0 TO 19)
	);
END movingText;

-- Design Ports Information
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[13]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK50MHZ	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CPU_RESETN	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF movingText IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK50MHZ : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 TO 9);
SIGNAL ww_CPU_RESETN : std_logic;
SIGNAL ww_GPIO : std_logic_vector(0 TO 19);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \shiftRegisterClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \GPIO[19]~output_o\ : std_logic;
SIGNAL \GPIO[18]~output_o\ : std_logic;
SIGNAL \GPIO[17]~output_o\ : std_logic;
SIGNAL \GPIO[16]~output_o\ : std_logic;
SIGNAL \GPIO[15]~output_o\ : std_logic;
SIGNAL \GPIO[14]~output_o\ : std_logic;
SIGNAL \GPIO[13]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \CLK50MHZ~input_o\ : std_logic;
SIGNAL \CLK50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[0]~1_combout\ : std_logic;
SIGNAL \CPU_RESETN~input_o\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[0]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[0]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[1]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[1]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[1]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[2]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[2]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[2]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[3]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[3]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[3]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[4]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[4]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[4]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[5]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[5]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[5]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[6]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[6]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[6]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[7]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[7]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[7]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[8]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[8]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[8]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[9]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[9]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[9]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[10]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[10]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[10]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[11]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[11]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[11]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[12]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[12]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[12]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[13]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[13]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[13]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[14]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[14]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[14]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[15]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[15]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[15]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[16]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[16]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[16]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[17]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[17]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[17]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[18]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[18]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[18]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[19]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[19]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[19]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[20]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[20]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[20]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[21]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[21]~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[21]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[22]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[22]~q\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \CHAR_CLK~q\ : std_logic;
SIGNAL \counter~79_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[0]~q\ : std_logic;
SIGNAL \counter~78_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[1]~q\ : std_logic;
SIGNAL \shiftRegisterClk~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterClk~q\ : std_logic;
SIGNAL \shiftRegisterClk~clkctrl_outclk\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[0]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[0]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[1]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[2]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[2]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[2]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[3]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[3]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[3]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[4]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[4]~q\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD4~q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK4~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT4~q\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW4~q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD5~q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK5~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT5~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT5~q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW5~q\ : std_logic;
SIGNAL \WideOr13~1_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW1~q\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD2~q\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK2~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT2~q\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW2~q\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \WideOr13~2_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[0]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[0]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[1]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[1]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[1]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[2]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[2]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[2]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[3]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[3]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[3]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[4]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[4]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[4]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[5]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[5]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[5]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[6]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[6]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[6]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[7]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[7]~q\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[7]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[8]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[8]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[8]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[9]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[9]~q\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD6~q\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK6~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT6~q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW6~q\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD7~q\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK7~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT7~q\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW7~q\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD8~q\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK8~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT8~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT8~q\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW8~q\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD1~q\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK1~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT1~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT1~q\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr4~3_combout\ : std_logic;
SIGNAL \WideOr4~5_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[0]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[0]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[1]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[1]~q\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD3~q\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK3~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT3~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT3~q\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW3~q\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \counter[0]~26_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \counter[0]~27\ : std_logic;
SIGNAL \counter[1]~28_combout\ : std_logic;
SIGNAL \counter[1]~29\ : std_logic;
SIGNAL \counter[2]~30_combout\ : std_logic;
SIGNAL \counter[2]~31\ : std_logic;
SIGNAL \counter[3]~32_combout\ : std_logic;
SIGNAL \counter[3]~33\ : std_logic;
SIGNAL \counter[4]~34_combout\ : std_logic;
SIGNAL \counter[4]~35\ : std_logic;
SIGNAL \counter[5]~36_combout\ : std_logic;
SIGNAL \counter[5]~37\ : std_logic;
SIGNAL \counter[6]~38_combout\ : std_logic;
SIGNAL \counter[6]~39\ : std_logic;
SIGNAL \counter[7]~40_combout\ : std_logic;
SIGNAL \counter[7]~41\ : std_logic;
SIGNAL \counter[8]~42_combout\ : std_logic;
SIGNAL \counter[8]~43\ : std_logic;
SIGNAL \counter[9]~44_combout\ : std_logic;
SIGNAL \counter[9]~45\ : std_logic;
SIGNAL \counter[10]~46_combout\ : std_logic;
SIGNAL \counter[10]~47\ : std_logic;
SIGNAL \counter[11]~48_combout\ : std_logic;
SIGNAL \counter[11]~49\ : std_logic;
SIGNAL \counter[12]~50_combout\ : std_logic;
SIGNAL \counter[12]~51\ : std_logic;
SIGNAL \counter[13]~52_combout\ : std_logic;
SIGNAL \counter[13]~53\ : std_logic;
SIGNAL \counter[14]~54_combout\ : std_logic;
SIGNAL \counter[14]~55\ : std_logic;
SIGNAL \counter[15]~56_combout\ : std_logic;
SIGNAL \counter[15]~57\ : std_logic;
SIGNAL \counter[16]~58_combout\ : std_logic;
SIGNAL \counter[16]~59\ : std_logic;
SIGNAL \counter[17]~60_combout\ : std_logic;
SIGNAL \counter[17]~61\ : std_logic;
SIGNAL \counter[18]~62_combout\ : std_logic;
SIGNAL \counter[18]~63\ : std_logic;
SIGNAL \counter[19]~64_combout\ : std_logic;
SIGNAL \counter[19]~65\ : std_logic;
SIGNAL \counter[20]~66_combout\ : std_logic;
SIGNAL \counter[20]~67\ : std_logic;
SIGNAL \counter[21]~68_combout\ : std_logic;
SIGNAL \counter[21]~69\ : std_logic;
SIGNAL \counter[22]~70_combout\ : std_logic;
SIGNAL \counter[22]~71\ : std_logic;
SIGNAL \counter[23]~72_combout\ : std_logic;
SIGNAL \counter[23]~73\ : std_logic;
SIGNAL \counter[24]~74_combout\ : std_logic;
SIGNAL \counter[24]~75\ : std_logic;
SIGNAL \counter[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \TEST_CLK~0_combout\ : std_logic;
SIGNAL \TEST_CLK~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \WideOr4~4_combout\ : std_logic;
SIGNAL \WideOr13~3_combout\ : std_logic;
SIGNAL \WideOr13~4_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \serial_clk~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \parallel_load~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \output_enable~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \shiftStateVariable~0_combout\ : std_logic;
SIGNAL \shiftStateVariable~q\ : std_logic;
SIGNAL \screenArea[0][31]~3_combout\ : std_logic;
SIGNAL \shiftedColumnState.COL7~q\ : std_logic;
SIGNAL \shiftedColumnState.COL1~0_combout\ : std_logic;
SIGNAL \shiftedColumnState.COL1~q\ : std_logic;
SIGNAL \shiftedColumnState.COL2~0_combout\ : std_logic;
SIGNAL \shiftedColumnState.COL2~q\ : std_logic;
SIGNAL \shiftedColumnState.COL3~q\ : std_logic;
SIGNAL \shiftedColumnState.COL4~feeder_combout\ : std_logic;
SIGNAL \shiftedColumnState.COL4~q\ : std_logic;
SIGNAL \shiftedColumnState.COL5~q\ : std_logic;
SIGNAL \shiftedColumnState.COL6~q\ : std_logic;
SIGNAL \Selector2~22_combout\ : std_logic;
SIGNAL \Selector5~23_combout\ : std_logic;
SIGNAL \Selector6~87_combout\ : std_logic;
SIGNAL \screenArea[1][0]~4_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~5_combout\ : std_logic;
SIGNAL \ascii_char[5]~0_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Selector5~22_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Mux52~5_combout\ : std_logic;
SIGNAL \Selector4~36_combout\ : std_logic;
SIGNAL \Selector4~46_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector4~45_combout\ : std_logic;
SIGNAL \Selector4~47_combout\ : std_logic;
SIGNAL \Selector4~48_combout\ : std_logic;
SIGNAL \Selector2~23_combout\ : std_logic;
SIGNAL \Selector2~21_combout\ : std_logic;
SIGNAL \Selector5~26_combout\ : std_logic;
SIGNAL \Selector4~67_combout\ : std_logic;
SIGNAL \Selector4~49_combout\ : std_logic;
SIGNAL \Selector4~50_combout\ : std_logic;
SIGNAL \Selector4~51_combout\ : std_logic;
SIGNAL \Selector4~52_combout\ : std_logic;
SIGNAL \Selector4~34_combout\ : std_logic;
SIGNAL \Selector4~35_combout\ : std_logic;
SIGNAL \Selector4~66_combout\ : std_logic;
SIGNAL \Selector4~40_combout\ : std_logic;
SIGNAL \Selector4~39_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Selector5~25_combout\ : std_logic;
SIGNAL \Selector4~41_combout\ : std_logic;
SIGNAL \Selector4~42_combout\ : std_logic;
SIGNAL \Selector4~43_combout\ : std_logic;
SIGNAL \Selector1~32_combout\ : std_logic;
SIGNAL \Selector4~37_combout\ : std_logic;
SIGNAL \Selector4~38_combout\ : std_logic;
SIGNAL \Selector4~44_combout\ : std_logic;
SIGNAL \Selector4~68_combout\ : std_logic;
SIGNAL \Selector6~72_combout\ : std_logic;
SIGNAL \Selector4~53_combout\ : std_logic;
SIGNAL \Selector6~92_combout\ : std_logic;
SIGNAL \Selector4~69_combout\ : std_logic;
SIGNAL \Selector4~54_combout\ : std_logic;
SIGNAL \Selector4~15_combout\ : std_logic;
SIGNAL \Selector4~14_combout\ : std_logic;
SIGNAL \Selector4~71_combout\ : std_logic;
SIGNAL \Selector4~11_combout\ : std_logic;
SIGNAL \Selector4~10_combout\ : std_logic;
SIGNAL \Selector4~70_combout\ : std_logic;
SIGNAL \Selector4~55_combout\ : std_logic;
SIGNAL \Selector4~56_combout\ : std_logic;
SIGNAL \Selector4~27_combout\ : std_logic;
SIGNAL \Selector4~26_combout\ : std_logic;
SIGNAL \Selector4~23_combout\ : std_logic;
SIGNAL \Selector4~24_combout\ : std_logic;
SIGNAL \Selector4~32_combout\ : std_logic;
SIGNAL \Selector4~33_combout\ : std_logic;
SIGNAL \Selector4~74_combout\ : std_logic;
SIGNAL \Selector4~75_combout\ : std_logic;
SIGNAL \Selector4~19_combout\ : std_logic;
SIGNAL \Selector4~18_combout\ : std_logic;
SIGNAL \Selector4~72_combout\ : std_logic;
SIGNAL \Selector6~59_combout\ : std_logic;
SIGNAL \Selector4~57_combout\ : std_logic;
SIGNAL \Selector4~59_combout\ : std_logic;
SIGNAL \Selector5~21_combout\ : std_logic;
SIGNAL \Selector6~62_combout\ : std_logic;
SIGNAL \Selector4~60_combout\ : std_logic;
SIGNAL \Selector6~93_combout\ : std_logic;
SIGNAL \Selector4~58_combout\ : std_logic;
SIGNAL \Selector4~61_combout\ : std_logic;
SIGNAL \Selector4~62_combout\ : std_logic;
SIGNAL \Selector4~63_combout\ : std_logic;
SIGNAL \Selector4~64_combout\ : std_logic;
SIGNAL \Selector4~65_combout\ : std_logic;
SIGNAL \screenArea[4][0]~q\ : std_logic;
SIGNAL \screenArea[4][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][1]~q\ : std_logic;
SIGNAL \screenArea[4][2]~q\ : std_logic;
SIGNAL \screenArea[4][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][3]~q\ : std_logic;
SIGNAL \screenArea[4][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][4]~q\ : std_logic;
SIGNAL \screenArea[4][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][5]~q\ : std_logic;
SIGNAL \screenArea[4][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][6]~q\ : std_logic;
SIGNAL \screenArea[4][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][7]~q\ : std_logic;
SIGNAL \screenArea[4][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][8]~q\ : std_logic;
SIGNAL \screenArea[4][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][9]~q\ : std_logic;
SIGNAL \screenArea[4][10]~q\ : std_logic;
SIGNAL \screenArea[4][11]~q\ : std_logic;
SIGNAL \screenArea[4][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][12]~q\ : std_logic;
SIGNAL \screenArea[4][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][13]~q\ : std_logic;
SIGNAL \screenArea[4][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][14]~q\ : std_logic;
SIGNAL \screenArea[4][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][15]~q\ : std_logic;
SIGNAL \screenArea[4][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][16]~q\ : std_logic;
SIGNAL \screenArea[4][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][17]~q\ : std_logic;
SIGNAL \screenArea[4][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][18]~q\ : std_logic;
SIGNAL \screenArea[4][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][19]~q\ : std_logic;
SIGNAL \screenArea[4][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][20]~q\ : std_logic;
SIGNAL \screenArea[4][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][21]~q\ : std_logic;
SIGNAL \screenArea[4][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][22]~q\ : std_logic;
SIGNAL \screenArea[4][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][23]~q\ : std_logic;
SIGNAL \screenArea[4][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][24]~q\ : std_logic;
SIGNAL \screenArea[4][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][25]~q\ : std_logic;
SIGNAL \screenArea[4][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][26]~q\ : std_logic;
SIGNAL \screenArea[4][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][27]~q\ : std_logic;
SIGNAL \screenArea[4][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][28]~q\ : std_logic;
SIGNAL \screenArea[4][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][29]~q\ : std_logic;
SIGNAL \screenArea[4][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][30]~q\ : std_logic;
SIGNAL \screenArea[4][31]~q\ : std_logic;
SIGNAL \Selector5~67_combout\ : std_logic;
SIGNAL \Selector5~8_combout\ : std_logic;
SIGNAL \Selector5~7_combout\ : std_logic;
SIGNAL \Selector5~73_combout\ : std_logic;
SIGNAL \Selector5~28_combout\ : std_logic;
SIGNAL \Selector5~29_combout\ : std_logic;
SIGNAL \Selector5~30_combout\ : std_logic;
SIGNAL \Selector5~24_combout\ : std_logic;
SIGNAL \Selector5~40_combout\ : std_logic;
SIGNAL \Selector5~39_combout\ : std_logic;
SIGNAL \Selector5~41_combout\ : std_logic;
SIGNAL \Selector2~26_combout\ : std_logic;
SIGNAL \Selector5~34_combout\ : std_logic;
SIGNAL \Selector5~35_combout\ : std_logic;
SIGNAL \Selector5~32_combout\ : std_logic;
SIGNAL \Selector5~31_combout\ : std_logic;
SIGNAL \Selector5~33_combout\ : std_logic;
SIGNAL \Selector5~36_combout\ : std_logic;
SIGNAL \Selector5~72_combout\ : std_logic;
SIGNAL \Selector5~37_combout\ : std_logic;
SIGNAL \Selector5~38_combout\ : std_logic;
SIGNAL \Selector5~42_combout\ : std_logic;
SIGNAL \Selector5~56_combout\ : std_logic;
SIGNAL \Selector5~55_combout\ : std_logic;
SIGNAL \Selector6~58_combout\ : std_logic;
SIGNAL \Selector5~57_combout\ : std_logic;
SIGNAL \Selector5~58_combout\ : std_logic;
SIGNAL \Selector3~26_combout\ : std_logic;
SIGNAL \Selector6~94_combout\ : std_logic;
SIGNAL \Selector5~63_combout\ : std_logic;
SIGNAL \Selector5~64_combout\ : std_logic;
SIGNAL \Selector5~59_combout\ : std_logic;
SIGNAL \Selector5~60_combout\ : std_logic;
SIGNAL \Selector5~61_combout\ : std_logic;
SIGNAL \Selector5~62_combout\ : std_logic;
SIGNAL \Selector5~65_combout\ : std_logic;
SIGNAL \Selector5~74_combout\ : std_logic;
SIGNAL \Selector5~75_combout\ : std_logic;
SIGNAL \Selector5~50_combout\ : std_logic;
SIGNAL \Selector5~51_combout\ : std_logic;
SIGNAL \Selector4~73_combout\ : std_logic;
SIGNAL \Selector5~52_combout\ : std_logic;
SIGNAL \Selector5~47_combout\ : std_logic;
SIGNAL \Selector5~48_combout\ : std_logic;
SIGNAL \Selector5~49_combout\ : std_logic;
SIGNAL \Selector5~53_combout\ : std_logic;
SIGNAL \Selector5~18_combout\ : std_logic;
SIGNAL \Selector5~17_combout\ : std_logic;
SIGNAL \Selector5~15_combout\ : std_logic;
SIGNAL \Selector5~14_combout\ : std_logic;
SIGNAL \Selector5~19_combout\ : std_logic;
SIGNAL \Selector5~20_combout\ : std_logic;
SIGNAL \Selector6~83_combout\ : std_logic;
SIGNAL \Selector5~43_combout\ : std_logic;
SIGNAL \Selector5~44_combout\ : std_logic;
SIGNAL \Selector5~45_combout\ : std_logic;
SIGNAL \Selector5~46_combout\ : std_logic;
SIGNAL \Selector5~54_combout\ : std_logic;
SIGNAL \Selector5~66_combout\ : std_logic;
SIGNAL \Selector5~68_combout\ : std_logic;
SIGNAL \Selector5~69_combout\ : std_logic;
SIGNAL \screenArea[5][0]~q\ : std_logic;
SIGNAL \screenArea[5][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][1]~q\ : std_logic;
SIGNAL \screenArea[5][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][2]~q\ : std_logic;
SIGNAL \screenArea[5][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][3]~q\ : std_logic;
SIGNAL \screenArea[5][4]~q\ : std_logic;
SIGNAL \screenArea[5][5]~q\ : std_logic;
SIGNAL \screenArea[5][6]~q\ : std_logic;
SIGNAL \screenArea[5][7]~q\ : std_logic;
SIGNAL \screenArea[5][8]~q\ : std_logic;
SIGNAL \screenArea[5][9]~q\ : std_logic;
SIGNAL \screenArea[5][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][10]~q\ : std_logic;
SIGNAL \screenArea[5][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][11]~q\ : std_logic;
SIGNAL \screenArea[5][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][12]~q\ : std_logic;
SIGNAL \screenArea[5][13]~q\ : std_logic;
SIGNAL \screenArea[5][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][14]~q\ : std_logic;
SIGNAL \screenArea[5][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][15]~q\ : std_logic;
SIGNAL \screenArea[5][16]~q\ : std_logic;
SIGNAL \screenArea[5][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][17]~q\ : std_logic;
SIGNAL \screenArea[5][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][18]~q\ : std_logic;
SIGNAL \screenArea[5][19]~q\ : std_logic;
SIGNAL \screenArea[5][20]~q\ : std_logic;
SIGNAL \screenArea[5][21]~q\ : std_logic;
SIGNAL \screenArea[5][22]~q\ : std_logic;
SIGNAL \screenArea[5][23]~q\ : std_logic;
SIGNAL \screenArea[5][24]~q\ : std_logic;
SIGNAL \screenArea[5][25]~q\ : std_logic;
SIGNAL \screenArea[5][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][26]~q\ : std_logic;
SIGNAL \screenArea[5][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][27]~q\ : std_logic;
SIGNAL \screenArea[5][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][28]~q\ : std_logic;
SIGNAL \screenArea[5][29]~q\ : std_logic;
SIGNAL \screenArea[5][30]~q\ : std_logic;
SIGNAL \screenArea[5][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][31]~q\ : std_logic;
SIGNAL \Selector51~3_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Selector2~69_combout\ : std_logic;
SIGNAL \Selector3~59_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector3~63_combout\ : std_logic;
SIGNAL \Selector3~62_combout\ : std_logic;
SIGNAL \Selector3~64_combout\ : std_logic;
SIGNAL \Selector3~60_combout\ : std_logic;
SIGNAL \Selector3~61_combout\ : std_logic;
SIGNAL \Selector3~65_combout\ : std_logic;
SIGNAL \Selector3~70_combout\ : std_logic;
SIGNAL \Selector3~66_combout\ : std_logic;
SIGNAL \Selector3~67_combout\ : std_logic;
SIGNAL \Selector3~73_combout\ : std_logic;
SIGNAL \Selector3~74_combout\ : std_logic;
SIGNAL \Selector3~39_combout\ : std_logic;
SIGNAL \Selector3~40_combout\ : std_logic;
SIGNAL \Selector3~41_combout\ : std_logic;
SIGNAL \Selector3~37_combout\ : std_logic;
SIGNAL \Selector3~36_combout\ : std_logic;
SIGNAL \Selector3~38_combout\ : std_logic;
SIGNAL \Selector3~42_combout\ : std_logic;
SIGNAL \Selector3~43_combout\ : std_logic;
SIGNAL \Selector3~29_combout\ : std_logic;
SIGNAL \Selector3~75_combout\ : std_logic;
SIGNAL \Selector3~76_combout\ : std_logic;
SIGNAL \Selector3~30_combout\ : std_logic;
SIGNAL \Selector5~27_combout\ : std_logic;
SIGNAL \Selector3~31_combout\ : std_logic;
SIGNAL \Selector3~32_combout\ : std_logic;
SIGNAL \Selector3~33_combout\ : std_logic;
SIGNAL \Selector3~34_combout\ : std_logic;
SIGNAL \Selector3~35_combout\ : std_logic;
SIGNAL \Selector3~52_combout\ : std_logic;
SIGNAL \Selector3~51_combout\ : std_logic;
SIGNAL \Selector3~53_combout\ : std_logic;
SIGNAL \Selector3~13_combout\ : std_logic;
SIGNAL \Selector3~12_combout\ : std_logic;
SIGNAL \Selector3~71_combout\ : std_logic;
SIGNAL \Selector3~54_combout\ : std_logic;
SIGNAL \Selector3~55_combout\ : std_logic;
SIGNAL \Selector3~56_combout\ : std_logic;
SIGNAL \Selector2~68_combout\ : std_logic;
SIGNAL \Selector3~48_combout\ : std_logic;
SIGNAL \Selector3~49_combout\ : std_logic;
SIGNAL \Selector3~44_combout\ : std_logic;
SIGNAL \Selector3~45_combout\ : std_logic;
SIGNAL \Selector3~46_combout\ : std_logic;
SIGNAL \Selector3~69_combout\ : std_logic;
SIGNAL \Selector3~20_combout\ : std_logic;
SIGNAL \Selector3~72_combout\ : std_logic;
SIGNAL \Selector3~47_combout\ : std_logic;
SIGNAL \Selector3~50_combout\ : std_logic;
SIGNAL \Selector3~57_combout\ : std_logic;
SIGNAL \Selector3~58_combout\ : std_logic;
SIGNAL \Selector3~68_combout\ : std_logic;
SIGNAL \screenArea[3][0]~q\ : std_logic;
SIGNAL \screenArea[3][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][1]~q\ : std_logic;
SIGNAL \screenArea[3][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][2]~q\ : std_logic;
SIGNAL \screenArea[3][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][3]~q\ : std_logic;
SIGNAL \screenArea[3][4]~q\ : std_logic;
SIGNAL \screenArea[3][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][5]~q\ : std_logic;
SIGNAL \screenArea[3][6]~q\ : std_logic;
SIGNAL \screenArea[3][7]~q\ : std_logic;
SIGNAL \screenArea[3][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][8]~q\ : std_logic;
SIGNAL \screenArea[3][9]~q\ : std_logic;
SIGNAL \screenArea[3][10]~q\ : std_logic;
SIGNAL \screenArea[3][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][11]~q\ : std_logic;
SIGNAL \screenArea[3][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][12]~q\ : std_logic;
SIGNAL \screenArea[3][13]~q\ : std_logic;
SIGNAL \screenArea[3][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][14]~q\ : std_logic;
SIGNAL \screenArea[3][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][15]~q\ : std_logic;
SIGNAL \screenArea[3][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][16]~q\ : std_logic;
SIGNAL \screenArea[3][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][17]~q\ : std_logic;
SIGNAL \screenArea[3][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][18]~q\ : std_logic;
SIGNAL \screenArea[3][19]~q\ : std_logic;
SIGNAL \screenArea[3][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][20]~q\ : std_logic;
SIGNAL \screenArea[3][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][21]~q\ : std_logic;
SIGNAL \screenArea[3][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][22]~q\ : std_logic;
SIGNAL \screenArea[3][23]~q\ : std_logic;
SIGNAL \screenArea[3][24]~q\ : std_logic;
SIGNAL \screenArea[3][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][25]~q\ : std_logic;
SIGNAL \screenArea[3][26]~q\ : std_logic;
SIGNAL \screenArea[3][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][27]~q\ : std_logic;
SIGNAL \screenArea[3][28]~q\ : std_logic;
SIGNAL \screenArea[3][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][29]~q\ : std_logic;
SIGNAL \screenArea[3][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][30]~q\ : std_logic;
SIGNAL \Selector1~59_combout\ : std_logic;
SIGNAL \Selector5~71_combout\ : std_logic;
SIGNAL \Selector1~64_combout\ : std_logic;
SIGNAL \Selector1~14_combout\ : std_logic;
SIGNAL \Selector1~15_combout\ : std_logic;
SIGNAL \Selector1~65_combout\ : std_logic;
SIGNAL \Selector1~58_combout\ : std_logic;
SIGNAL \Selector1~60_combout\ : std_logic;
SIGNAL \Selector1~63_combout\ : std_logic;
SIGNAL \Selector1~50_combout\ : std_logic;
SIGNAL \Selector1~51_combout\ : std_logic;
SIGNAL \Selector1~52_combout\ : std_logic;
SIGNAL \Selector1~53_combout\ : std_logic;
SIGNAL \Selector1~54_combout\ : std_logic;
SIGNAL \Selector5~70_combout\ : std_logic;
SIGNAL \Selector1~55_combout\ : std_logic;
SIGNAL \Selector1~56_combout\ : std_logic;
SIGNAL \Selector6~65_combout\ : std_logic;
SIGNAL \Selector1~33_combout\ : std_logic;
SIGNAL \Selector1~34_combout\ : std_logic;
SIGNAL \Selector1~23_combout\ : std_logic;
SIGNAL \Selector1~67_combout\ : std_logic;
SIGNAL \Selector1~36_combout\ : std_logic;
SIGNAL \Selector1~35_combout\ : std_logic;
SIGNAL \Selector1~37_combout\ : std_logic;
SIGNAL \Selector1~38_combout\ : std_logic;
SIGNAL \Selector1~61_combout\ : std_logic;
SIGNAL \Selector1~19_combout\ : std_logic;
SIGNAL \Selector1~18_combout\ : std_logic;
SIGNAL \Selector1~66_combout\ : std_logic;
SIGNAL \Selector1~47_combout\ : std_logic;
SIGNAL \Selector1~62_combout\ : std_logic;
SIGNAL \Selector1~48_combout\ : std_logic;
SIGNAL \Selector3~28_combout\ : std_logic;
SIGNAL \Selector1~44_combout\ : std_logic;
SIGNAL \Selector1~45_combout\ : std_logic;
SIGNAL \Selector1~46_combout\ : std_logic;
SIGNAL \Selector1~29_combout\ : std_logic;
SIGNAL \Selector1~68_combout\ : std_logic;
SIGNAL \Selector1~42_combout\ : std_logic;
SIGNAL \Selector1~40_combout\ : std_logic;
SIGNAL \Selector1~39_combout\ : std_logic;
SIGNAL \Selector1~41_combout\ : std_logic;
SIGNAL \Selector1~43_combout\ : std_logic;
SIGNAL \Selector1~49_combout\ : std_logic;
SIGNAL \Selector1~57_combout\ : std_logic;
SIGNAL \screenArea[1][0]~1_combout\ : std_logic;
SIGNAL \screenArea[1][0]~q\ : std_logic;
SIGNAL \screenArea[1][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][1]~q\ : std_logic;
SIGNAL \screenArea[1][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][2]~q\ : std_logic;
SIGNAL \screenArea[1][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][3]~q\ : std_logic;
SIGNAL \screenArea[1][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][4]~q\ : std_logic;
SIGNAL \screenArea[1][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][5]~q\ : std_logic;
SIGNAL \screenArea[1][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][6]~q\ : std_logic;
SIGNAL \screenArea[1][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][7]~q\ : std_logic;
SIGNAL \screenArea[1][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][8]~q\ : std_logic;
SIGNAL \screenArea[1][9]~q\ : std_logic;
SIGNAL \screenArea[1][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][10]~q\ : std_logic;
SIGNAL \screenArea[1][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][11]~q\ : std_logic;
SIGNAL \screenArea[1][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][12]~q\ : std_logic;
SIGNAL \screenArea[1][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][13]~q\ : std_logic;
SIGNAL \screenArea[1][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][14]~q\ : std_logic;
SIGNAL \screenArea[1][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][15]~q\ : std_logic;
SIGNAL \screenArea[1][16]~q\ : std_logic;
SIGNAL \screenArea[1][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][17]~q\ : std_logic;
SIGNAL \screenArea[1][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][18]~q\ : std_logic;
SIGNAL \screenArea[1][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][19]~q\ : std_logic;
SIGNAL \screenArea[1][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][20]~q\ : std_logic;
SIGNAL \screenArea[1][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][21]~q\ : std_logic;
SIGNAL \screenArea[1][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][22]~q\ : std_logic;
SIGNAL \screenArea[1][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][23]~q\ : std_logic;
SIGNAL \screenArea[1][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][24]~q\ : std_logic;
SIGNAL \screenArea[1][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][25]~q\ : std_logic;
SIGNAL \screenArea[1][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][26]~q\ : std_logic;
SIGNAL \screenArea[1][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][27]~q\ : std_logic;
SIGNAL \screenArea[1][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][28]~q\ : std_logic;
SIGNAL \screenArea[1][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][29]~q\ : std_logic;
SIGNAL \screenArea[1][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][30]~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector6~96_combout\ : std_logic;
SIGNAL \Selector0~70_combout\ : std_logic;
SIGNAL \Selector0~69_combout\ : std_logic;
SIGNAL \Selector0~78_combout\ : std_logic;
SIGNAL \Selector0~79_combout\ : std_logic;
SIGNAL \Selector0~75_combout\ : std_logic;
SIGNAL \Selector0~71_combout\ : std_logic;
SIGNAL \Selector0~80_combout\ : std_logic;
SIGNAL \Selector0~81_combout\ : std_logic;
SIGNAL \Selector0~31_combout\ : std_logic;
SIGNAL \Selector0~30_combout\ : std_logic;
SIGNAL \Selector0~76_combout\ : std_logic;
SIGNAL \Selector0~65_combout\ : std_logic;
SIGNAL \Selector0~66_combout\ : std_logic;
SIGNAL \Selector0~67_combout\ : std_logic;
SIGNAL \Selector0~45_combout\ : std_logic;
SIGNAL \Selector0~48_combout\ : std_logic;
SIGNAL \Selector0~44_combout\ : std_logic;
SIGNAL \Selector0~82_combout\ : std_logic;
SIGNAL \Selector0~83_combout\ : std_logic;
SIGNAL \Selector0~38_combout\ : std_logic;
SIGNAL \Selector0~37_combout\ : std_logic;
SIGNAL \Selector0~41_combout\ : std_logic;
SIGNAL \Selector0~84_combout\ : std_logic;
SIGNAL \Selector0~85_combout\ : std_logic;
SIGNAL \Selector0~77_combout\ : std_logic;
SIGNAL \Selector0~61_combout\ : std_logic;
SIGNAL \Selector0~60_combout\ : std_logic;
SIGNAL \Selector0~62_combout\ : std_logic;
SIGNAL \Selector0~86_combout\ : std_logic;
SIGNAL \Selector0~87_combout\ : std_logic;
SIGNAL \Selector0~74_combout\ : std_logic;
SIGNAL \Selector0~63_combout\ : std_logic;
SIGNAL \Selector0~73_combout\ : std_logic;
SIGNAL \Selector0~57_combout\ : std_logic;
SIGNAL \Selector0~56_combout\ : std_logic;
SIGNAL \Selector0~72_combout\ : std_logic;
SIGNAL \Selector0~58_combout\ : std_logic;
SIGNAL \Selector0~51_combout\ : std_logic;
SIGNAL \Selector0~54_combout\ : std_logic;
SIGNAL \Selector0~52_combout\ : std_logic;
SIGNAL \Selector3~25_combout\ : std_logic;
SIGNAL \Selector0~53_combout\ : std_logic;
SIGNAL \Selector0~55_combout\ : std_logic;
SIGNAL \Selector0~59_combout\ : std_logic;
SIGNAL \Selector0~64_combout\ : std_logic;
SIGNAL \Selector0~68_combout\ : std_logic;
SIGNAL \screenArea[0][0]~2_combout\ : std_logic;
SIGNAL \screenArea[0][0]~q\ : std_logic;
SIGNAL \screenArea[0][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][1]~q\ : std_logic;
SIGNAL \screenArea[0][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][2]~q\ : std_logic;
SIGNAL \screenArea[0][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][3]~q\ : std_logic;
SIGNAL \screenArea[0][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][4]~q\ : std_logic;
SIGNAL \screenArea[0][5]~q\ : std_logic;
SIGNAL \screenArea[0][6]~q\ : std_logic;
SIGNAL \screenArea[0][7]~q\ : std_logic;
SIGNAL \screenArea[0][8]~q\ : std_logic;
SIGNAL \screenArea[0][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][9]~q\ : std_logic;
SIGNAL \screenArea[0][10]~q\ : std_logic;
SIGNAL \screenArea[0][11]~q\ : std_logic;
SIGNAL \screenArea[0][12]~q\ : std_logic;
SIGNAL \screenArea[0][13]~q\ : std_logic;
SIGNAL \screenArea[0][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][14]~q\ : std_logic;
SIGNAL \screenArea[0][15]~q\ : std_logic;
SIGNAL \screenArea[0][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][16]~q\ : std_logic;
SIGNAL \screenArea[0][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][17]~q\ : std_logic;
SIGNAL \screenArea[0][18]~q\ : std_logic;
SIGNAL \screenArea[0][19]~q\ : std_logic;
SIGNAL \screenArea[0][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][20]~q\ : std_logic;
SIGNAL \screenArea[0][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][21]~q\ : std_logic;
SIGNAL \screenArea[0][22]~q\ : std_logic;
SIGNAL \screenArea[0][23]~q\ : std_logic;
SIGNAL \screenArea[0][24]~q\ : std_logic;
SIGNAL \screenArea[0][25]~q\ : std_logic;
SIGNAL \screenArea[0][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][26]~q\ : std_logic;
SIGNAL \screenArea[0][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][27]~q\ : std_logic;
SIGNAL \screenArea[0][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][28]~q\ : std_logic;
SIGNAL \screenArea[0][29]~q\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector2~27_combout\ : std_logic;
SIGNAL \Selector2~33_combout\ : std_logic;
SIGNAL \Selector2~34_combout\ : std_logic;
SIGNAL \Selector2~35_combout\ : std_logic;
SIGNAL \Selector2~36_combout\ : std_logic;
SIGNAL \Selector2~37_combout\ : std_logic;
SIGNAL \Selector2~38_combout\ : std_logic;
SIGNAL \Selector2~31_combout\ : std_logic;
SIGNAL \Selector2~28_combout\ : std_logic;
SIGNAL \Selector3~27_combout\ : std_logic;
SIGNAL \Selector2~29_combout\ : std_logic;
SIGNAL \Selector6~95_combout\ : std_logic;
SIGNAL \Selector2~25_combout\ : std_logic;
SIGNAL \Selector2~30_combout\ : std_logic;
SIGNAL \Selector2~32_combout\ : std_logic;
SIGNAL \Selector2~77_combout\ : std_logic;
SIGNAL \Selector2~78_combout\ : std_logic;
SIGNAL \Selector2~45_combout\ : std_logic;
SIGNAL \Selector2~57_combout\ : std_logic;
SIGNAL \Selector2~73_combout\ : std_logic;
SIGNAL \Selector2~58_combout\ : std_logic;
SIGNAL \Selector2~39_combout\ : std_logic;
SIGNAL \Selector2~41_combout\ : std_logic;
SIGNAL \Selector2~40_combout\ : std_logic;
SIGNAL \Selector2~42_combout\ : std_logic;
SIGNAL \Selector2~43_combout\ : std_logic;
SIGNAL \Selector2~44_combout\ : std_logic;
SIGNAL \Selector2~46_combout\ : std_logic;
SIGNAL \Selector2~24_combout\ : std_logic;
SIGNAL \Selector2~47_combout\ : std_logic;
SIGNAL \Selector2~48_combout\ : std_logic;
SIGNAL \Selector2~49_combout\ : std_logic;
SIGNAL \Selector2~52_combout\ : std_logic;
SIGNAL \Selector2~71_combout\ : std_logic;
SIGNAL \Selector2~54_combout\ : std_logic;
SIGNAL \Selector2~53_combout\ : std_logic;
SIGNAL \Selector2~72_combout\ : std_logic;
SIGNAL \Selector2~55_combout\ : std_logic;
SIGNAL \Selector2~50_combout\ : std_logic;
SIGNAL \Selector2~70_combout\ : std_logic;
SIGNAL \Selector2~51_combout\ : std_logic;
SIGNAL \Selector2~56_combout\ : std_logic;
SIGNAL \Selector2~15_combout\ : std_logic;
SIGNAL \Selector2~14_combout\ : std_logic;
SIGNAL \Selector2~74_combout\ : std_logic;
SIGNAL \Selector2~59_combout\ : std_logic;
SIGNAL \Selector2~20_combout\ : std_logic;
SIGNAL \Selector2~63_combout\ : std_logic;
SIGNAL \Selector2~61_combout\ : std_logic;
SIGNAL \Selector2~60_combout\ : std_logic;
SIGNAL \Selector2~62_combout\ : std_logic;
SIGNAL \Selector2~75_combout\ : std_logic;
SIGNAL \Selector2~76_combout\ : std_logic;
SIGNAL \Selector2~64_combout\ : std_logic;
SIGNAL \Selector2~65_combout\ : std_logic;
SIGNAL \Selector2~66_combout\ : std_logic;
SIGNAL \Selector2~67_combout\ : std_logic;
SIGNAL \screenArea[2][0]~q\ : std_logic;
SIGNAL \screenArea[2][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][1]~q\ : std_logic;
SIGNAL \screenArea[2][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][2]~q\ : std_logic;
SIGNAL \screenArea[2][3]~q\ : std_logic;
SIGNAL \screenArea[2][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][4]~q\ : std_logic;
SIGNAL \screenArea[2][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][5]~q\ : std_logic;
SIGNAL \screenArea[2][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][6]~q\ : std_logic;
SIGNAL \screenArea[2][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][7]~q\ : std_logic;
SIGNAL \screenArea[2][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][8]~q\ : std_logic;
SIGNAL \screenArea[2][9]~q\ : std_logic;
SIGNAL \screenArea[2][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][10]~q\ : std_logic;
SIGNAL \screenArea[2][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][11]~q\ : std_logic;
SIGNAL \screenArea[2][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][12]~q\ : std_logic;
SIGNAL \screenArea[2][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][13]~q\ : std_logic;
SIGNAL \screenArea[2][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][14]~q\ : std_logic;
SIGNAL \screenArea[2][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][15]~q\ : std_logic;
SIGNAL \screenArea[2][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][16]~q\ : std_logic;
SIGNAL \screenArea[2][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][17]~q\ : std_logic;
SIGNAL \screenArea[2][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][18]~q\ : std_logic;
SIGNAL \screenArea[2][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][19]~q\ : std_logic;
SIGNAL \screenArea[2][20]~q\ : std_logic;
SIGNAL \screenArea[2][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][21]~q\ : std_logic;
SIGNAL \screenArea[2][22]~q\ : std_logic;
SIGNAL \screenArea[2][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][23]~q\ : std_logic;
SIGNAL \screenArea[2][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][24]~q\ : std_logic;
SIGNAL \screenArea[2][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][25]~q\ : std_logic;
SIGNAL \screenArea[2][26]~q\ : std_logic;
SIGNAL \screenArea[2][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][27]~q\ : std_logic;
SIGNAL \screenArea[2][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][28]~q\ : std_logic;
SIGNAL \screenArea[2][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][29]~q\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \Selector6~90_combout\ : std_logic;
SIGNAL \Selector6~89_combout\ : std_logic;
SIGNAL \Selector6~102_combout\ : std_logic;
SIGNAL \Selector6~31_combout\ : std_logic;
SIGNAL \Selector6~32_combout\ : std_logic;
SIGNAL \Selector6~103_combout\ : std_logic;
SIGNAL \Selector6~39_combout\ : std_logic;
SIGNAL \Selector6~38_combout\ : std_logic;
SIGNAL \Selector6~104_combout\ : std_logic;
SIGNAL \Selector6~91_combout\ : std_logic;
SIGNAL \Selector6~61_combout\ : std_logic;
SIGNAL \Selector6~105_combout\ : std_logic;
SIGNAL \Selector6~60_combout\ : std_logic;
SIGNAL \Selector6~63_combout\ : std_logic;
SIGNAL \Selector6~112_combout\ : std_logic;
SIGNAL \Selector6~113_combout\ : std_logic;
SIGNAL \Selector6~110_combout\ : std_logic;
SIGNAL \Selector6~111_combout\ : std_logic;
SIGNAL \Selector6~108_combout\ : std_logic;
SIGNAL \Selector6~109_combout\ : std_logic;
SIGNAL \Selector6~70_combout\ : std_logic;
SIGNAL \Selector6~97_combout\ : std_logic;
SIGNAL \Selector6~68_combout\ : std_logic;
SIGNAL \Selector6~67_combout\ : std_logic;
SIGNAL \Selector6~69_combout\ : std_logic;
SIGNAL \Selector6~64_combout\ : std_logic;
SIGNAL \Selector6~66_combout\ : std_logic;
SIGNAL \Selector6~71_combout\ : std_logic;
SIGNAL \Selector6~98_combout\ : std_logic;
SIGNAL \Selector6~106_combout\ : std_logic;
SIGNAL \Selector6~107_combout\ : std_logic;
SIGNAL \Selector6~81_combout\ : std_logic;
SIGNAL \Selector6~82_combout\ : std_logic;
SIGNAL \Selector6~101_combout\ : std_logic;
SIGNAL \Selector6~84_combout\ : std_logic;
SIGNAL \Selector6~85_combout\ : std_logic;
SIGNAL \Selector6~76_combout\ : std_logic;
SIGNAL \Selector6~77_combout\ : std_logic;
SIGNAL \Selector6~78_combout\ : std_logic;
SIGNAL \Selector6~79_combout\ : std_logic;
SIGNAL \Selector6~100_combout\ : std_logic;
SIGNAL \Selector6~74_combout\ : std_logic;
SIGNAL \Selector6~73_combout\ : std_logic;
SIGNAL \Selector6~99_combout\ : std_logic;
SIGNAL \Selector6~75_combout\ : std_logic;
SIGNAL \Selector6~80_combout\ : std_logic;
SIGNAL \Selector6~86_combout\ : std_logic;
SIGNAL \Selector6~88_combout\ : std_logic;
SIGNAL \screenArea[6][0]~0_combout\ : std_logic;
SIGNAL \screenArea[6][0]~q\ : std_logic;
SIGNAL \screenArea[6][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][1]~q\ : std_logic;
SIGNAL \screenArea[6][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][2]~q\ : std_logic;
SIGNAL \screenArea[6][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][3]~q\ : std_logic;
SIGNAL \screenArea[6][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][4]~q\ : std_logic;
SIGNAL \screenArea[6][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][5]~q\ : std_logic;
SIGNAL \screenArea[6][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][6]~q\ : std_logic;
SIGNAL \screenArea[6][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][7]~q\ : std_logic;
SIGNAL \screenArea[6][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][8]~q\ : std_logic;
SIGNAL \screenArea[6][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][9]~q\ : std_logic;
SIGNAL \screenArea[6][10]~q\ : std_logic;
SIGNAL \screenArea[6][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][11]~q\ : std_logic;
SIGNAL \screenArea[6][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][12]~q\ : std_logic;
SIGNAL \screenArea[6][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][13]~q\ : std_logic;
SIGNAL \screenArea[6][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][14]~q\ : std_logic;
SIGNAL \screenArea[6][15]~q\ : std_logic;
SIGNAL \screenArea[6][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][16]~q\ : std_logic;
SIGNAL \screenArea[6][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][17]~q\ : std_logic;
SIGNAL \screenArea[6][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][18]~q\ : std_logic;
SIGNAL \screenArea[6][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][19]~q\ : std_logic;
SIGNAL \screenArea[6][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][20]~q\ : std_logic;
SIGNAL \screenArea[6][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][21]~q\ : std_logic;
SIGNAL \screenArea[6][22]~q\ : std_logic;
SIGNAL \screenArea[6][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][23]~q\ : std_logic;
SIGNAL \screenArea[6][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][24]~q\ : std_logic;
SIGNAL \screenArea[6][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][25]~q\ : std_logic;
SIGNAL \screenArea[6][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][26]~q\ : std_logic;
SIGNAL \screenArea[6][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][27]~q\ : std_logic;
SIGNAL \screenArea[6][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][28]~q\ : std_logic;
SIGNAL \screenArea[6][29]~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Selector7~8_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Selector7~13_combout\ : std_logic;
SIGNAL \Selector7~14_combout\ : std_logic;
SIGNAL \Selector7~10_combout\ : std_logic;
SIGNAL \Selector7~11_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Selector7~12_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Selector7~9_combout\ : std_logic;
SIGNAL \Selector7~15_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Selector7~17_combout\ : std_logic;
SIGNAL \Selector7~16_combout\ : std_logic;
SIGNAL \screenArea[7][0]~q\ : std_logic;
SIGNAL \screenArea[7][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][1]~q\ : std_logic;
SIGNAL \screenArea[7][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][2]~q\ : std_logic;
SIGNAL \screenArea[7][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][3]~q\ : std_logic;
SIGNAL \screenArea[7][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][4]~q\ : std_logic;
SIGNAL \screenArea[7][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][5]~q\ : std_logic;
SIGNAL \screenArea[7][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][6]~q\ : std_logic;
SIGNAL \screenArea[7][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][7]~q\ : std_logic;
SIGNAL \screenArea[7][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][8]~q\ : std_logic;
SIGNAL \screenArea[7][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][9]~q\ : std_logic;
SIGNAL \screenArea[7][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][10]~q\ : std_logic;
SIGNAL \screenArea[7][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][11]~q\ : std_logic;
SIGNAL \screenArea[7][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][12]~q\ : std_logic;
SIGNAL \screenArea[7][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][13]~q\ : std_logic;
SIGNAL \screenArea[7][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][14]~q\ : std_logic;
SIGNAL \screenArea[7][15]~q\ : std_logic;
SIGNAL \screenArea[7][16]~q\ : std_logic;
SIGNAL \screenArea[7][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][17]~q\ : std_logic;
SIGNAL \screenArea[7][18]~q\ : std_logic;
SIGNAL \screenArea[7][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][19]~q\ : std_logic;
SIGNAL \screenArea[7][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][20]~q\ : std_logic;
SIGNAL \screenArea[7][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][21]~q\ : std_logic;
SIGNAL \screenArea[7][22]~q\ : std_logic;
SIGNAL \screenArea[7][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][23]~q\ : std_logic;
SIGNAL \screenArea[7][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][24]~q\ : std_logic;
SIGNAL \screenArea[7][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][25]~q\ : std_logic;
SIGNAL \screenArea[7][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][26]~q\ : std_logic;
SIGNAL \screenArea[7][27]~q\ : std_logic;
SIGNAL \screenArea[7][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][28]~q\ : std_logic;
SIGNAL \screenArea[7][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][29]~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \Selector28~3_combout\ : std_logic;
SIGNAL \Selector28~4_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \Selector30~4_combout\ : std_logic;
SIGNAL \Selector30~3_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \Selector33~4_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~3_combout\ : std_logic;
SIGNAL \Selector35~4_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector36~3_combout\ : std_logic;
SIGNAL \Selector36~4_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \Selector40~4_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \Selector45~4_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \Selector47~4_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \Selector48~3_combout\ : std_logic;
SIGNAL \Selector48~4_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \Selector49~3_combout\ : std_logic;
SIGNAL \Selector49~4_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector50~5_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~3_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \Selector50~4_combout\ : std_logic;
SIGNAL \Selector50~6_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \Selector49~5_combout\ : std_logic;
SIGNAL \serial_data~7_combout\ : std_logic;
SIGNAL \serial_data~4_combout\ : std_logic;
SIGNAL \serial_data~9_combout\ : std_logic;
SIGNAL \serial_data~5_combout\ : std_logic;
SIGNAL \serial_data~6_combout\ : std_logic;
SIGNAL \serial_data~8_combout\ : std_logic;
SIGNAL \Selector48~2_combout\ : std_logic;
SIGNAL \Selector48~5_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~5_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \Selector46~4_combout\ : std_logic;
SIGNAL \Selector46~5_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector45~5_combout\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \Selector44~4_combout\ : std_logic;
SIGNAL \Selector44~5_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \Selector43~4_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~5_combout\ : std_logic;
SIGNAL \Selector42~3_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \Selector42~2_combout\ : std_logic;
SIGNAL \Selector42~4_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~5_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \Selector41~3_combout\ : std_logic;
SIGNAL \Selector41~4_combout\ : std_logic;
SIGNAL \Selector41~5_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \Selector40~5_combout\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \Selector39~3_combout\ : std_logic;
SIGNAL \Selector39~4_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~5_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \Selector38~3_combout\ : std_logic;
SIGNAL \Selector38~4_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~5_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~3_combout\ : std_logic;
SIGNAL \Selector37~4_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~5_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~5_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \Selector35~5_combout\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector34~3_combout\ : std_logic;
SIGNAL \Selector34~4_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~5_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~5_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector32~5_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector31~3_combout\ : std_logic;
SIGNAL \Selector31~4_combout\ : std_logic;
SIGNAL \Selector31~5_combout\ : std_logic;
SIGNAL \Selector30~5_combout\ : std_logic;
SIGNAL \Selector30~7_combout\ : std_logic;
SIGNAL \Selector30~6_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \Selector29~4_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~5_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector28~5_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~4_combout\ : std_logic;
SIGNAL \Selector27~5_combout\ : std_logic;
SIGNAL \Selector26~5_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~5_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~5_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~5_combout\ : std_logic;
SIGNAL \screenArea[7][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][30]~q\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \screenArea[0][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][30]~q\ : std_logic;
SIGNAL \screenArea[6][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][30]~q\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \screenArea[2][30]~q\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \Selector20~5_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \screenArea[3][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][31]~q\ : std_logic;
SIGNAL \screenArea[2][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][31]~q\ : std_logic;
SIGNAL \Selector51~4_combout\ : std_logic;
SIGNAL \screenArea[6][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][31]~q\ : std_logic;
SIGNAL \screenArea[7][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][31]~q\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \screenArea[0][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][31]~q\ : std_logic;
SIGNAL \screenArea[1][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][31]~q\ : std_logic;
SIGNAL \Selector51~5_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector51~6_combout\ : std_logic;
SIGNAL \Selector51~7_combout\ : std_logic;
SIGNAL \serial_data~q\ : std_logic;
SIGNAL counter : std_logic_vector(25 DOWNTO 0);
SIGNAL row_driver : std_logic_vector(7 DOWNTO 0);
SIGNAL screenAreaLatch : std_logic_vector(31 DOWNTO 0);
SIGNAL ascii_char : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_shiftStateVariable~q\ : std_logic;
SIGNAL \ALT_INV_output_enable~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK50MHZ <= CLK50MHZ;
LEDR <= ww_LEDR;
ww_CPU_RESETN <= CPU_RESETN;
GPIO <= ww_GPIO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\shiftRegisterClk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \shiftRegisterClk~q\);

\CLK50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK50MHZ~input_o\);
\ALT_INV_shiftStateVariable~q\ <= NOT \shiftStateVariable~q\;
\ALT_INV_output_enable~q\ <= NOT \output_enable~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHAR_CLK~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\GPIO[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[19]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\GPIO[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[18]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\GPIO[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[17]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\GPIO[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(5),
	devoe => ww_devoe,
	o => \GPIO[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\GPIO[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[15]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\GPIO[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(6),
	devoe => ww_devoe,
	o => \GPIO[14]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\GPIO[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[13]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\GPIO[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(7),
	devoe => ww_devoe,
	o => \GPIO[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\GPIO[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\GPIO[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\GPIO[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(0),
	devoe => ww_devoe,
	o => \GPIO[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\GPIO[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEST_CLK~q\,
	devoe => ww_devoe,
	o => \GPIO[8]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\GPIO[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(1),
	devoe => ww_devoe,
	o => \GPIO[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\GPIO[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_clk~q\,
	devoe => ww_devoe,
	o => \GPIO[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\GPIO[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(2),
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\GPIO[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parallel_load~q\,
	devoe => ww_devoe,
	o => \GPIO[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\GPIO[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(3),
	devoe => ww_devoe,
	o => \GPIO[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\GPIO[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_enable~q\,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\GPIO[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => row_driver(4),
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\GPIO[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_data~q\,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK50MHZ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK50MHZ,
	o => \CLK50MHZ~input_o\);

-- Location: CLKCTRL_G19
\CLK50MHZ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK50MHZ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK50MHZ~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y38_N10
\TEST_CLK_PROC:drtcount[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[0]~1_combout\ = \TEST_CLK_PROC:drtcount[0]~q\ $ (VCC)
-- \TEST_CLK_PROC:drtcount[0]~2\ = CARRY(\TEST_CLK_PROC:drtcount[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[0]~q\,
	datad => VCC,
	combout => \TEST_CLK_PROC:drtcount[0]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[0]~2\);

-- Location: IOIBUF_X46_Y54_N29
\CPU_RESETN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_RESETN,
	o => \CPU_RESETN~input_o\);

-- Location: FF_X40_Y38_N11
\TEST_CLK_PROC:drtcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[0]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[0]~q\);

-- Location: LCCOMB_X40_Y38_N12
\TEST_CLK_PROC:drtcount[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[1]~1_combout\ = (\TEST_CLK_PROC:drtcount[1]~q\ & (!\TEST_CLK_PROC:drtcount[0]~2\)) # (!\TEST_CLK_PROC:drtcount[1]~q\ & ((\TEST_CLK_PROC:drtcount[0]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[1]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[0]~2\) # (!\TEST_CLK_PROC:drtcount[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[1]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[0]~2\,
	combout => \TEST_CLK_PROC:drtcount[1]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[1]~2\);

-- Location: FF_X40_Y38_N13
\TEST_CLK_PROC:drtcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[1]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[1]~q\);

-- Location: LCCOMB_X40_Y38_N14
\TEST_CLK_PROC:drtcount[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[2]~1_combout\ = (\TEST_CLK_PROC:drtcount[2]~q\ & (\TEST_CLK_PROC:drtcount[1]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[2]~q\ & (!\TEST_CLK_PROC:drtcount[1]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[2]~2\ = CARRY((\TEST_CLK_PROC:drtcount[2]~q\ & !\TEST_CLK_PROC:drtcount[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[2]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[1]~2\,
	combout => \TEST_CLK_PROC:drtcount[2]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[2]~2\);

-- Location: FF_X40_Y38_N15
\TEST_CLK_PROC:drtcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[2]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[2]~q\);

-- Location: LCCOMB_X40_Y38_N16
\TEST_CLK_PROC:drtcount[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[3]~1_combout\ = (\TEST_CLK_PROC:drtcount[3]~q\ & (!\TEST_CLK_PROC:drtcount[2]~2\)) # (!\TEST_CLK_PROC:drtcount[3]~q\ & ((\TEST_CLK_PROC:drtcount[2]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[3]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[2]~2\) # (!\TEST_CLK_PROC:drtcount[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[3]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[2]~2\,
	combout => \TEST_CLK_PROC:drtcount[3]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[3]~2\);

-- Location: FF_X40_Y38_N17
\TEST_CLK_PROC:drtcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[3]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[3]~q\);

-- Location: LCCOMB_X40_Y38_N18
\TEST_CLK_PROC:drtcount[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[4]~1_combout\ = (\TEST_CLK_PROC:drtcount[4]~q\ & (\TEST_CLK_PROC:drtcount[3]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[4]~q\ & (!\TEST_CLK_PROC:drtcount[3]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[4]~2\ = CARRY((\TEST_CLK_PROC:drtcount[4]~q\ & !\TEST_CLK_PROC:drtcount[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[4]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[3]~2\,
	combout => \TEST_CLK_PROC:drtcount[4]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[4]~2\);

-- Location: FF_X40_Y38_N19
\TEST_CLK_PROC:drtcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[4]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[4]~q\);

-- Location: LCCOMB_X40_Y38_N20
\TEST_CLK_PROC:drtcount[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[5]~1_combout\ = (\TEST_CLK_PROC:drtcount[5]~q\ & (!\TEST_CLK_PROC:drtcount[4]~2\)) # (!\TEST_CLK_PROC:drtcount[5]~q\ & ((\TEST_CLK_PROC:drtcount[4]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[5]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[4]~2\) # (!\TEST_CLK_PROC:drtcount[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[5]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[4]~2\,
	combout => \TEST_CLK_PROC:drtcount[5]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[5]~2\);

-- Location: FF_X40_Y38_N21
\TEST_CLK_PROC:drtcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[5]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[5]~q\);

-- Location: LCCOMB_X40_Y38_N22
\TEST_CLK_PROC:drtcount[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[6]~1_combout\ = (\TEST_CLK_PROC:drtcount[6]~q\ & (\TEST_CLK_PROC:drtcount[5]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[6]~q\ & (!\TEST_CLK_PROC:drtcount[5]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[6]~2\ = CARRY((\TEST_CLK_PROC:drtcount[6]~q\ & !\TEST_CLK_PROC:drtcount[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[6]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[5]~2\,
	combout => \TEST_CLK_PROC:drtcount[6]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[6]~2\);

-- Location: FF_X40_Y38_N23
\TEST_CLK_PROC:drtcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[6]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[6]~q\);

-- Location: LCCOMB_X40_Y38_N24
\TEST_CLK_PROC:drtcount[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[7]~1_combout\ = (\TEST_CLK_PROC:drtcount[7]~q\ & (!\TEST_CLK_PROC:drtcount[6]~2\)) # (!\TEST_CLK_PROC:drtcount[7]~q\ & ((\TEST_CLK_PROC:drtcount[6]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[7]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[6]~2\) # (!\TEST_CLK_PROC:drtcount[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[7]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[6]~2\,
	combout => \TEST_CLK_PROC:drtcount[7]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[7]~2\);

-- Location: FF_X40_Y38_N25
\TEST_CLK_PROC:drtcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[7]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[7]~q\);

-- Location: LCCOMB_X40_Y38_N26
\TEST_CLK_PROC:drtcount[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[8]~1_combout\ = (\TEST_CLK_PROC:drtcount[8]~q\ & (\TEST_CLK_PROC:drtcount[7]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[8]~q\ & (!\TEST_CLK_PROC:drtcount[7]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[8]~2\ = CARRY((\TEST_CLK_PROC:drtcount[8]~q\ & !\TEST_CLK_PROC:drtcount[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[8]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[7]~2\,
	combout => \TEST_CLK_PROC:drtcount[8]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[8]~2\);

-- Location: FF_X40_Y38_N27
\TEST_CLK_PROC:drtcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[8]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[8]~q\);

-- Location: LCCOMB_X40_Y38_N28
\TEST_CLK_PROC:drtcount[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[9]~1_combout\ = (\TEST_CLK_PROC:drtcount[9]~q\ & (!\TEST_CLK_PROC:drtcount[8]~2\)) # (!\TEST_CLK_PROC:drtcount[9]~q\ & ((\TEST_CLK_PROC:drtcount[8]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[9]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[8]~2\) # (!\TEST_CLK_PROC:drtcount[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[9]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[8]~2\,
	combout => \TEST_CLK_PROC:drtcount[9]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[9]~2\);

-- Location: FF_X40_Y38_N29
\TEST_CLK_PROC:drtcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[9]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[9]~q\);

-- Location: LCCOMB_X40_Y38_N30
\TEST_CLK_PROC:drtcount[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[10]~1_combout\ = (\TEST_CLK_PROC:drtcount[10]~q\ & (\TEST_CLK_PROC:drtcount[9]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[10]~q\ & (!\TEST_CLK_PROC:drtcount[9]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[10]~2\ = CARRY((\TEST_CLK_PROC:drtcount[10]~q\ & !\TEST_CLK_PROC:drtcount[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[10]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[9]~2\,
	combout => \TEST_CLK_PROC:drtcount[10]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[10]~2\);

-- Location: FF_X40_Y38_N31
\TEST_CLK_PROC:drtcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[10]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[10]~q\);

-- Location: LCCOMB_X40_Y37_N0
\TEST_CLK_PROC:drtcount[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[11]~1_combout\ = (\TEST_CLK_PROC:drtcount[11]~q\ & (!\TEST_CLK_PROC:drtcount[10]~2\)) # (!\TEST_CLK_PROC:drtcount[11]~q\ & ((\TEST_CLK_PROC:drtcount[10]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[11]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[10]~2\) # (!\TEST_CLK_PROC:drtcount[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[11]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[10]~2\,
	combout => \TEST_CLK_PROC:drtcount[11]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[11]~2\);

-- Location: FF_X40_Y37_N1
\TEST_CLK_PROC:drtcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[11]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[11]~q\);

-- Location: LCCOMB_X40_Y37_N2
\TEST_CLK_PROC:drtcount[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[12]~1_combout\ = (\TEST_CLK_PROC:drtcount[12]~q\ & (\TEST_CLK_PROC:drtcount[11]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[12]~q\ & (!\TEST_CLK_PROC:drtcount[11]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[12]~2\ = CARRY((\TEST_CLK_PROC:drtcount[12]~q\ & !\TEST_CLK_PROC:drtcount[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[12]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[11]~2\,
	combout => \TEST_CLK_PROC:drtcount[12]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[12]~2\);

-- Location: FF_X40_Y37_N3
\TEST_CLK_PROC:drtcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[12]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[12]~q\);

-- Location: LCCOMB_X40_Y37_N4
\TEST_CLK_PROC:drtcount[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[13]~1_combout\ = (\TEST_CLK_PROC:drtcount[13]~q\ & (!\TEST_CLK_PROC:drtcount[12]~2\)) # (!\TEST_CLK_PROC:drtcount[13]~q\ & ((\TEST_CLK_PROC:drtcount[12]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[13]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[12]~2\) # (!\TEST_CLK_PROC:drtcount[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[13]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[12]~2\,
	combout => \TEST_CLK_PROC:drtcount[13]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[13]~2\);

-- Location: FF_X40_Y37_N5
\TEST_CLK_PROC:drtcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[13]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[13]~q\);

-- Location: LCCOMB_X40_Y37_N6
\TEST_CLK_PROC:drtcount[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[14]~1_combout\ = (\TEST_CLK_PROC:drtcount[14]~q\ & (\TEST_CLK_PROC:drtcount[13]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[14]~q\ & (!\TEST_CLK_PROC:drtcount[13]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[14]~2\ = CARRY((\TEST_CLK_PROC:drtcount[14]~q\ & !\TEST_CLK_PROC:drtcount[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[14]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[13]~2\,
	combout => \TEST_CLK_PROC:drtcount[14]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[14]~2\);

-- Location: FF_X40_Y37_N7
\TEST_CLK_PROC:drtcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[14]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[14]~q\);

-- Location: LCCOMB_X40_Y37_N8
\TEST_CLK_PROC:drtcount[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[15]~1_combout\ = (\TEST_CLK_PROC:drtcount[15]~q\ & (!\TEST_CLK_PROC:drtcount[14]~2\)) # (!\TEST_CLK_PROC:drtcount[15]~q\ & ((\TEST_CLK_PROC:drtcount[14]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[15]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[14]~2\) # (!\TEST_CLK_PROC:drtcount[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[15]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[14]~2\,
	combout => \TEST_CLK_PROC:drtcount[15]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[15]~2\);

-- Location: FF_X40_Y37_N9
\TEST_CLK_PROC:drtcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[15]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[15]~q\);

-- Location: LCCOMB_X40_Y37_N10
\TEST_CLK_PROC:drtcount[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[16]~1_combout\ = (\TEST_CLK_PROC:drtcount[16]~q\ & (\TEST_CLK_PROC:drtcount[15]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[16]~q\ & (!\TEST_CLK_PROC:drtcount[15]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[16]~2\ = CARRY((\TEST_CLK_PROC:drtcount[16]~q\ & !\TEST_CLK_PROC:drtcount[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[16]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[15]~2\,
	combout => \TEST_CLK_PROC:drtcount[16]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[16]~2\);

-- Location: FF_X40_Y37_N11
\TEST_CLK_PROC:drtcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[16]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[16]~q\);

-- Location: LCCOMB_X40_Y37_N12
\TEST_CLK_PROC:drtcount[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[17]~1_combout\ = (\TEST_CLK_PROC:drtcount[17]~q\ & (!\TEST_CLK_PROC:drtcount[16]~2\)) # (!\TEST_CLK_PROC:drtcount[17]~q\ & ((\TEST_CLK_PROC:drtcount[16]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[17]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[16]~2\) # (!\TEST_CLK_PROC:drtcount[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[17]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[16]~2\,
	combout => \TEST_CLK_PROC:drtcount[17]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[17]~2\);

-- Location: FF_X40_Y37_N13
\TEST_CLK_PROC:drtcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[17]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[17]~q\);

-- Location: LCCOMB_X40_Y37_N14
\TEST_CLK_PROC:drtcount[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[18]~1_combout\ = (\TEST_CLK_PROC:drtcount[18]~q\ & (\TEST_CLK_PROC:drtcount[17]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[18]~q\ & (!\TEST_CLK_PROC:drtcount[17]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[18]~2\ = CARRY((\TEST_CLK_PROC:drtcount[18]~q\ & !\TEST_CLK_PROC:drtcount[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[18]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[17]~2\,
	combout => \TEST_CLK_PROC:drtcount[18]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[18]~2\);

-- Location: FF_X40_Y37_N15
\TEST_CLK_PROC:drtcount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[18]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[18]~q\);

-- Location: LCCOMB_X40_Y37_N16
\TEST_CLK_PROC:drtcount[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[19]~1_combout\ = (\TEST_CLK_PROC:drtcount[19]~q\ & (!\TEST_CLK_PROC:drtcount[18]~2\)) # (!\TEST_CLK_PROC:drtcount[19]~q\ & ((\TEST_CLK_PROC:drtcount[18]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[19]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[18]~2\) # (!\TEST_CLK_PROC:drtcount[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[19]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[18]~2\,
	combout => \TEST_CLK_PROC:drtcount[19]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[19]~2\);

-- Location: FF_X40_Y37_N17
\TEST_CLK_PROC:drtcount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[19]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[19]~q\);

-- Location: LCCOMB_X40_Y37_N18
\TEST_CLK_PROC:drtcount[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[20]~1_combout\ = (\TEST_CLK_PROC:drtcount[20]~q\ & (\TEST_CLK_PROC:drtcount[19]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[20]~q\ & (!\TEST_CLK_PROC:drtcount[19]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[20]~2\ = CARRY((\TEST_CLK_PROC:drtcount[20]~q\ & !\TEST_CLK_PROC:drtcount[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[20]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[19]~2\,
	combout => \TEST_CLK_PROC:drtcount[20]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[20]~2\);

-- Location: FF_X40_Y37_N19
\TEST_CLK_PROC:drtcount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[20]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[20]~q\);

-- Location: LCCOMB_X40_Y37_N20
\TEST_CLK_PROC:drtcount[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[21]~1_combout\ = (\TEST_CLK_PROC:drtcount[21]~q\ & (!\TEST_CLK_PROC:drtcount[20]~2\)) # (!\TEST_CLK_PROC:drtcount[21]~q\ & ((\TEST_CLK_PROC:drtcount[20]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[21]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[20]~2\) # (!\TEST_CLK_PROC:drtcount[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[21]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[20]~2\,
	combout => \TEST_CLK_PROC:drtcount[21]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[21]~2\);

-- Location: FF_X40_Y37_N21
\TEST_CLK_PROC:drtcount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[21]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[21]~q\);

-- Location: LCCOMB_X40_Y38_N8
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\TEST_CLK_PROC:drtcount[0]~q\) # (!\TEST_CLK_PROC:drtcount[2]~q\)) # (!\TEST_CLK_PROC:drtcount[3]~q\)) # (!\TEST_CLK_PROC:drtcount[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[1]~q\,
	datab => \TEST_CLK_PROC:drtcount[3]~q\,
	datac => \TEST_CLK_PROC:drtcount[2]~q\,
	datad => \TEST_CLK_PROC:drtcount[0]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y38_N2
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!\TEST_CLK_PROC:drtcount[5]~q\) # (!\TEST_CLK_PROC:drtcount[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[4]~q\,
	datad => \TEST_CLK_PROC:drtcount[5]~q\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y38_N0
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!\TEST_CLK_PROC:drtcount[7]~q\ & (!\TEST_CLK_PROC:drtcount[6]~q\ & ((\LessThan1~0_combout\) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[7]~q\,
	datab => \TEST_CLK_PROC:drtcount[6]~q\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X40_Y38_N6
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!\TEST_CLK_PROC:drtcount[10]~q\ & (((\LessThan1~2_combout\) # (!\TEST_CLK_PROC:drtcount[8]~q\)) # (!\TEST_CLK_PROC:drtcount[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[10]~q\,
	datab => \TEST_CLK_PROC:drtcount[9]~q\,
	datac => \TEST_CLK_PROC:drtcount[8]~q\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X40_Y37_N30
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!\TEST_CLK_PROC:drtcount[13]~q\ & (!\TEST_CLK_PROC:drtcount[12]~q\ & ((\LessThan1~3_combout\) # (!\TEST_CLK_PROC:drtcount[11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[13]~q\,
	datab => \TEST_CLK_PROC:drtcount[12]~q\,
	datac => \TEST_CLK_PROC:drtcount[11]~q\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X40_Y37_N28
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\TEST_CLK_PROC:drtcount[17]~q\) # ((\TEST_CLK_PROC:drtcount[15]~q\) # ((\TEST_CLK_PROC:drtcount[14]~q\ & !\LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[17]~q\,
	datab => \TEST_CLK_PROC:drtcount[14]~q\,
	datac => \LessThan1~4_combout\,
	datad => \TEST_CLK_PROC:drtcount[15]~q\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X40_Y37_N26
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (((!\TEST_CLK_PROC:drtcount[16]~q\ & !\LessThan1~5_combout\)) # (!\TEST_CLK_PROC:drtcount[18]~q\)) # (!\TEST_CLK_PROC:drtcount[19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[19]~q\,
	datab => \TEST_CLK_PROC:drtcount[18]~q\,
	datac => \TEST_CLK_PROC:drtcount[16]~q\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X40_Y37_N22
\TEST_CLK_PROC:drtcount[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[22]~1_combout\ = \TEST_CLK_PROC:drtcount[22]~q\ $ (!\TEST_CLK_PROC:drtcount[21]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[22]~q\,
	cin => \TEST_CLK_PROC:drtcount[21]~2\,
	combout => \TEST_CLK_PROC:drtcount[22]~1_combout\);

-- Location: FF_X40_Y37_N23
\TEST_CLK_PROC:drtcount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[22]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[22]~q\);

-- Location: LCCOMB_X40_Y37_N24
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\TEST_CLK_PROC:drtcount[22]~q\ & ((\TEST_CLK_PROC:drtcount[20]~q\) # ((\TEST_CLK_PROC:drtcount[21]~q\) # (!\LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[20]~q\,
	datab => \TEST_CLK_PROC:drtcount[21]~q\,
	datac => \LessThan1~6_combout\,
	datad => \TEST_CLK_PROC:drtcount[22]~q\,
	combout => \LessThan1~7_combout\);

-- Location: FF_X40_Y37_N25
CHAR_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \LessThan1~7_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHAR_CLK~q\);

-- Location: LCCOMB_X39_Y34_N20
\counter~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~79_combout\ = (!\p74HC595_CLK_PROC:counter[0]~q\ & !\p74HC595_CLK_PROC:counter[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p74HC595_CLK_PROC:counter[0]~q\,
	datad => \p74HC595_CLK_PROC:counter[1]~q\,
	combout => \counter~79_combout\);

-- Location: FF_X39_Y34_N21
\p74HC595_CLK_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter~79_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[0]~q\);

-- Location: LCCOMB_X39_Y34_N24
\counter~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~78_combout\ = (!\p74HC595_CLK_PROC:counter[1]~q\ & \p74HC595_CLK_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p74HC595_CLK_PROC:counter[1]~q\,
	datad => \p74HC595_CLK_PROC:counter[0]~q\,
	combout => \counter~78_combout\);

-- Location: FF_X39_Y34_N25
\p74HC595_CLK_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter~78_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[1]~q\);

-- Location: LCCOMB_X39_Y34_N30
\shiftRegisterClk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shiftRegisterClk~feeder_combout\ = \p74HC595_CLK_PROC:counter[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p74HC595_CLK_PROC:counter[1]~q\,
	combout => \shiftRegisterClk~feeder_combout\);

-- Location: FF_X39_Y34_N31
shiftRegisterClk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \shiftRegisterClk~feeder_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterClk~q\);

-- Location: CLKCTRL_G12
\shiftRegisterClk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \shiftRegisterClk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \shiftRegisterClk~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y35_N20
\LINE_SACN_PROC:registerSerialData[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[0]~1_combout\ = \LINE_SACN_PROC:registerSerialData[0]~q\ $ (VCC)
-- \LINE_SACN_PROC:registerSerialData[0]~2\ = CARRY(\LINE_SACN_PROC:registerSerialData[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[0]~q\,
	datad => VCC,
	combout => \LINE_SACN_PROC:registerSerialData[0]~1_combout\,
	cout => \LINE_SACN_PROC:registerSerialData[0]~2\);

-- Location: LCCOMB_X43_Y35_N10
\LINE_SACN_PROC:scanCount[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[0]~1_combout\ = \LINE_SACN_PROC:scanCount[0]~q\ $ (VCC)
-- \LINE_SACN_PROC:scanCount[0]~2\ = CARRY(\LINE_SACN_PROC:scanCount[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[0]~q\,
	datad => VCC,
	combout => \LINE_SACN_PROC:scanCount[0]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[0]~2\);

-- Location: LCCOMB_X42_Y35_N22
\LINE_SACN_PROC:registerSerialData[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[1]~1_combout\ = (\LINE_SACN_PROC:registerSerialData[1]~q\ & (!\LINE_SACN_PROC:registerSerialData[0]~2\)) # (!\LINE_SACN_PROC:registerSerialData[1]~q\ & ((\LINE_SACN_PROC:registerSerialData[0]~2\) # (GND)))
-- \LINE_SACN_PROC:registerSerialData[1]~2\ = CARRY((!\LINE_SACN_PROC:registerSerialData[0]~2\) # (!\LINE_SACN_PROC:registerSerialData[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:registerSerialData[1]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:registerSerialData[0]~2\,
	combout => \LINE_SACN_PROC:registerSerialData[1]~1_combout\,
	cout => \LINE_SACN_PROC:registerSerialData[1]~2\);

-- Location: LCCOMB_X42_Y35_N24
\LINE_SACN_PROC:registerSerialData[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[2]~1_combout\ = (\LINE_SACN_PROC:registerSerialData[2]~q\ & (\LINE_SACN_PROC:registerSerialData[1]~2\ $ (GND))) # (!\LINE_SACN_PROC:registerSerialData[2]~q\ & (!\LINE_SACN_PROC:registerSerialData[1]~2\ & VCC))
-- \LINE_SACN_PROC:registerSerialData[2]~2\ = CARRY((\LINE_SACN_PROC:registerSerialData[2]~q\ & !\LINE_SACN_PROC:registerSerialData[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[2]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:registerSerialData[1]~2\,
	combout => \LINE_SACN_PROC:registerSerialData[2]~1_combout\,
	cout => \LINE_SACN_PROC:registerSerialData[2]~2\);

-- Location: FF_X42_Y35_N25
\LINE_SACN_PROC:registerSerialData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[2]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[2]~q\);

-- Location: LCCOMB_X42_Y35_N26
\LINE_SACN_PROC:registerSerialData[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[3]~1_combout\ = (\LINE_SACN_PROC:registerSerialData[3]~q\ & (!\LINE_SACN_PROC:registerSerialData[2]~2\)) # (!\LINE_SACN_PROC:registerSerialData[3]~q\ & ((\LINE_SACN_PROC:registerSerialData[2]~2\) # (GND)))
-- \LINE_SACN_PROC:registerSerialData[3]~2\ = CARRY((!\LINE_SACN_PROC:registerSerialData[2]~2\) # (!\LINE_SACN_PROC:registerSerialData[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:registerSerialData[3]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:registerSerialData[2]~2\,
	combout => \LINE_SACN_PROC:registerSerialData[3]~1_combout\,
	cout => \LINE_SACN_PROC:registerSerialData[3]~2\);

-- Location: FF_X42_Y35_N27
\LINE_SACN_PROC:registerSerialData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[3]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[3]~q\);

-- Location: LCCOMB_X42_Y35_N28
\LINE_SACN_PROC:registerSerialData[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[4]~1_combout\ = \LINE_SACN_PROC:registerSerialData[3]~2\ $ (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LINE_SACN_PROC:registerSerialData[4]~q\,
	cin => \LINE_SACN_PROC:registerSerialData[3]~2\,
	combout => \LINE_SACN_PROC:registerSerialData[4]~1_combout\);

-- Location: FF_X42_Y35_N29
\LINE_SACN_PROC:registerSerialData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[4]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[4]~q\);

-- Location: LCCOMB_X42_Y32_N22
\Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\scanStateVariable.SHOW3~q\ & \LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW3~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector64~0_combout\);

-- Location: FF_X42_Y32_N23
\scanStateVariable.LOAD4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD4~q\);

-- Location: LCCOMB_X41_Y35_N30
\Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\scanStateVariable.LOAD4~q\) # ((\scanStateVariable.SHIFT4~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT4~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.LOAD4~q\,
	datad => \LessThan5~0_combout\,
	combout => \Selector65~0_combout\);

-- Location: FF_X41_Y35_N31
\scanStateVariable.CLOCK4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector65~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK4~q\);

-- Location: FF_X42_Y35_N15
\scanStateVariable.SHIFT4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \scanStateVariable.CLOCK4~q\,
	sload => VCC,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT4~q\);

-- Location: LCCOMB_X42_Y35_N30
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X42_Y32_N10
\Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\scanStateVariable.SHIFT4~q\ & (((\scanStateVariable.SHOW4~q\ & !\LessThan6~2_combout\)) # (!\LessThan5~1_combout\))) # (!\scanStateVariable.SHIFT4~q\ & (((\scanStateVariable.SHOW4~q\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT4~q\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW4~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X42_Y32_N11
\scanStateVariable.SHOW4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW4~q\);

-- Location: LCCOMB_X42_Y32_N12
\Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\scanStateVariable.SHOW4~q\ & \LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW4~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X42_Y32_N13
\scanStateVariable.LOAD5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD5~q\);

-- Location: LCCOMB_X41_Y35_N6
\Selector69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\scanStateVariable.LOAD5~q\) # ((\scanStateVariable.SHIFT5~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT5~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.LOAD5~q\,
	datad => \LessThan5~0_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X41_Y35_N7
\scanStateVariable.CLOCK5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector69~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK5~q\);

-- Location: LCCOMB_X42_Y35_N0
\scanStateVariable.SHIFT5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.SHIFT5~feeder_combout\ = \scanStateVariable.CLOCK5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scanStateVariable.CLOCK5~q\,
	combout => \scanStateVariable.SHIFT5~feeder_combout\);

-- Location: FF_X42_Y35_N1
\scanStateVariable.SHIFT5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT5~feeder_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT5~q\);

-- Location: LCCOMB_X40_Y35_N30
\Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\scanStateVariable.SHIFT5~q\ & (((\scanStateVariable.SHOW5~q\ & !\LessThan6~2_combout\)) # (!\LessThan5~1_combout\))) # (!\scanStateVariable.SHIFT5~q\ & (((\scanStateVariable.SHOW5~q\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT5~q\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW5~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X40_Y35_N31
\scanStateVariable.SHOW5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW5~q\);

-- Location: LCCOMB_X40_Y35_N6
\WideOr13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~1_combout\ = (!\scanStateVariable.SHOW6~q\ & (!\scanStateVariable.SHOW8~q\ & (!\scanStateVariable.SHOW5~q\ & !\scanStateVariable.SHOW7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW6~q\,
	datab => \scanStateVariable.SHOW8~q\,
	datac => \scanStateVariable.SHOW5~q\,
	datad => \scanStateVariable.SHOW7~q\,
	combout => \WideOr13~1_combout\);

-- Location: LCCOMB_X42_Y32_N4
\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\scanStateVariable.SHIFT1~q\ & (((\scanStateVariable.SHOW1~q\ & !\LessThan6~2_combout\)) # (!\LessThan5~1_combout\))) # (!\scanStateVariable.SHIFT1~q\ & (((\scanStateVariable.SHOW1~q\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT1~q\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW1~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X42_Y32_N5
\scanStateVariable.SHOW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW1~q\);

-- Location: LCCOMB_X42_Y32_N30
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\scanStateVariable.SHOW1~q\ & \LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW1~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X42_Y32_N31
\scanStateVariable.LOAD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD2~q\);

-- Location: LCCOMB_X41_Y35_N22
\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\scanStateVariable.LOAD2~q\) # ((\scanStateVariable.SHIFT2~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT2~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \LessThan5~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X41_Y35_N23
\scanStateVariable.CLOCK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK2~q\);

-- Location: FF_X42_Y35_N31
\scanStateVariable.SHIFT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \scanStateVariable.CLOCK2~q\,
	sload => VCC,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT2~q\);

-- Location: LCCOMB_X42_Y32_N6
\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\scanStateVariable.SHIFT2~q\ & (((\scanStateVariable.SHOW2~q\ & !\LessThan6~2_combout\)) # (!\LessThan5~1_combout\))) # (!\scanStateVariable.SHIFT2~q\ & (((\scanStateVariable.SHOW2~q\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT2~q\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW2~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X42_Y32_N7
\scanStateVariable.SHOW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW2~q\);

-- Location: LCCOMB_X42_Y32_N16
\WideOr13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (!\scanStateVariable.SHOW4~q\ & (!\scanStateVariable.SHOW3~q\ & (!\scanStateVariable.SHOW1~q\ & !\scanStateVariable.SHOW2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW4~q\,
	datab => \scanStateVariable.SHOW3~q\,
	datac => \scanStateVariable.SHOW1~q\,
	datad => \scanStateVariable.SHOW2~q\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X41_Y35_N24
\WideOr13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~2_combout\ = (!\WideOr13~0_combout\) # (!\WideOr13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr13~1_combout\,
	datad => \WideOr13~0_combout\,
	combout => \WideOr13~2_combout\);

-- Location: FF_X43_Y35_N11
\LINE_SACN_PROC:scanCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[0]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[0]~q\);

-- Location: LCCOMB_X43_Y35_N12
\LINE_SACN_PROC:scanCount[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[1]~1_combout\ = (\LINE_SACN_PROC:scanCount[1]~q\ & (!\LINE_SACN_PROC:scanCount[0]~2\)) # (!\LINE_SACN_PROC:scanCount[1]~q\ & ((\LINE_SACN_PROC:scanCount[0]~2\) # (GND)))
-- \LINE_SACN_PROC:scanCount[1]~2\ = CARRY((!\LINE_SACN_PROC:scanCount[0]~2\) # (!\LINE_SACN_PROC:scanCount[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[1]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[0]~2\,
	combout => \LINE_SACN_PROC:scanCount[1]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[1]~2\);

-- Location: FF_X43_Y35_N13
\LINE_SACN_PROC:scanCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[1]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[1]~q\);

-- Location: LCCOMB_X43_Y35_N14
\LINE_SACN_PROC:scanCount[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[2]~1_combout\ = (\LINE_SACN_PROC:scanCount[2]~q\ & (\LINE_SACN_PROC:scanCount[1]~2\ $ (GND))) # (!\LINE_SACN_PROC:scanCount[2]~q\ & (!\LINE_SACN_PROC:scanCount[1]~2\ & VCC))
-- \LINE_SACN_PROC:scanCount[2]~2\ = CARRY((\LINE_SACN_PROC:scanCount[2]~q\ & !\LINE_SACN_PROC:scanCount[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[2]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[1]~2\,
	combout => \LINE_SACN_PROC:scanCount[2]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[2]~2\);

-- Location: FF_X43_Y35_N15
\LINE_SACN_PROC:scanCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[2]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[2]~q\);

-- Location: LCCOMB_X43_Y35_N16
\LINE_SACN_PROC:scanCount[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[3]~1_combout\ = (\LINE_SACN_PROC:scanCount[3]~q\ & (!\LINE_SACN_PROC:scanCount[2]~2\)) # (!\LINE_SACN_PROC:scanCount[3]~q\ & ((\LINE_SACN_PROC:scanCount[2]~2\) # (GND)))
-- \LINE_SACN_PROC:scanCount[3]~2\ = CARRY((!\LINE_SACN_PROC:scanCount[2]~2\) # (!\LINE_SACN_PROC:scanCount[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[3]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[2]~2\,
	combout => \LINE_SACN_PROC:scanCount[3]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[3]~2\);

-- Location: FF_X43_Y35_N17
\LINE_SACN_PROC:scanCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[3]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[3]~q\);

-- Location: LCCOMB_X43_Y35_N18
\LINE_SACN_PROC:scanCount[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[4]~1_combout\ = (\LINE_SACN_PROC:scanCount[4]~q\ & (\LINE_SACN_PROC:scanCount[3]~2\ $ (GND))) # (!\LINE_SACN_PROC:scanCount[4]~q\ & (!\LINE_SACN_PROC:scanCount[3]~2\ & VCC))
-- \LINE_SACN_PROC:scanCount[4]~2\ = CARRY((\LINE_SACN_PROC:scanCount[4]~q\ & !\LINE_SACN_PROC:scanCount[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[4]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[3]~2\,
	combout => \LINE_SACN_PROC:scanCount[4]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[4]~2\);

-- Location: FF_X43_Y35_N19
\LINE_SACN_PROC:scanCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[4]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[4]~q\);

-- Location: LCCOMB_X43_Y35_N20
\LINE_SACN_PROC:scanCount[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[5]~1_combout\ = (\LINE_SACN_PROC:scanCount[5]~q\ & (!\LINE_SACN_PROC:scanCount[4]~2\)) # (!\LINE_SACN_PROC:scanCount[5]~q\ & ((\LINE_SACN_PROC:scanCount[4]~2\) # (GND)))
-- \LINE_SACN_PROC:scanCount[5]~2\ = CARRY((!\LINE_SACN_PROC:scanCount[4]~2\) # (!\LINE_SACN_PROC:scanCount[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[5]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[4]~2\,
	combout => \LINE_SACN_PROC:scanCount[5]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[5]~2\);

-- Location: FF_X43_Y35_N21
\LINE_SACN_PROC:scanCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[5]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[5]~q\);

-- Location: LCCOMB_X43_Y35_N22
\LINE_SACN_PROC:scanCount[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[6]~1_combout\ = (\LINE_SACN_PROC:scanCount[6]~q\ & (\LINE_SACN_PROC:scanCount[5]~2\ $ (GND))) # (!\LINE_SACN_PROC:scanCount[6]~q\ & (!\LINE_SACN_PROC:scanCount[5]~2\ & VCC))
-- \LINE_SACN_PROC:scanCount[6]~2\ = CARRY((\LINE_SACN_PROC:scanCount[6]~q\ & !\LINE_SACN_PROC:scanCount[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[6]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[5]~2\,
	combout => \LINE_SACN_PROC:scanCount[6]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[6]~2\);

-- Location: FF_X43_Y35_N23
\LINE_SACN_PROC:scanCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[6]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[6]~q\);

-- Location: LCCOMB_X43_Y35_N24
\LINE_SACN_PROC:scanCount[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[7]~1_combout\ = (\LINE_SACN_PROC:scanCount[7]~q\ & (!\LINE_SACN_PROC:scanCount[6]~2\)) # (!\LINE_SACN_PROC:scanCount[7]~q\ & ((\LINE_SACN_PROC:scanCount[6]~2\) # (GND)))
-- \LINE_SACN_PROC:scanCount[7]~2\ = CARRY((!\LINE_SACN_PROC:scanCount[6]~2\) # (!\LINE_SACN_PROC:scanCount[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[7]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[6]~2\,
	combout => \LINE_SACN_PROC:scanCount[7]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[7]~2\);

-- Location: FF_X43_Y35_N25
\LINE_SACN_PROC:scanCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[7]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[7]~q\);

-- Location: LCCOMB_X43_Y35_N30
\LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!\LINE_SACN_PROC:scanCount[7]~q\ & (!\LINE_SACN_PROC:scanCount[6]~q\ & !\LINE_SACN_PROC:scanCount[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[7]~q\,
	datac => \LINE_SACN_PROC:scanCount[6]~q\,
	datad => \LINE_SACN_PROC:scanCount[5]~q\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X43_Y35_N26
\LINE_SACN_PROC:scanCount[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[8]~1_combout\ = (\LINE_SACN_PROC:scanCount[8]~q\ & (\LINE_SACN_PROC:scanCount[7]~2\ $ (GND))) # (!\LINE_SACN_PROC:scanCount[8]~q\ & (!\LINE_SACN_PROC:scanCount[7]~2\ & VCC))
-- \LINE_SACN_PROC:scanCount[8]~2\ = CARRY((\LINE_SACN_PROC:scanCount[8]~q\ & !\LINE_SACN_PROC:scanCount[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[8]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[7]~2\,
	combout => \LINE_SACN_PROC:scanCount[8]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[8]~2\);

-- Location: FF_X43_Y35_N27
\LINE_SACN_PROC:scanCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[8]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[8]~q\);

-- Location: LCCOMB_X43_Y35_N28
\LINE_SACN_PROC:scanCount[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[9]~1_combout\ = \LINE_SACN_PROC:scanCount[8]~2\ $ (\LINE_SACN_PROC:scanCount[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LINE_SACN_PROC:scanCount[9]~q\,
	cin => \LINE_SACN_PROC:scanCount[8]~2\,
	combout => \LINE_SACN_PROC:scanCount[9]~1_combout\);

-- Location: FF_X43_Y35_N29
\LINE_SACN_PROC:scanCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[9]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan6~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[9]~q\);

-- Location: LCCOMB_X43_Y35_N0
\LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!\LINE_SACN_PROC:scanCount[1]~q\ & (!\LINE_SACN_PROC:scanCount[3]~q\ & (!\LINE_SACN_PROC:scanCount[2]~q\ & !\LINE_SACN_PROC:scanCount[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[1]~q\,
	datab => \LINE_SACN_PROC:scanCount[3]~q\,
	datac => \LINE_SACN_PROC:scanCount[2]~q\,
	datad => \LINE_SACN_PROC:scanCount[4]~q\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X43_Y35_N8
\LessThan6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\LINE_SACN_PROC:scanCount[9]~q\ & (\LINE_SACN_PROC:scanCount[8]~q\ & ((!\LessThan6~0_combout\) # (!\LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~1_combout\,
	datab => \LINE_SACN_PROC:scanCount[9]~q\,
	datac => \LINE_SACN_PROC:scanCount[8]~q\,
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X40_Y35_N28
\Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\scanStateVariable.SHOW5~q\ & \LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW5~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector72~0_combout\);

-- Location: FF_X40_Y35_N29
\scanStateVariable.LOAD6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD6~q\);

-- Location: LCCOMB_X41_Y35_N28
\Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\scanStateVariable.LOAD6~q\) # ((\scanStateVariable.SHIFT6~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.SHIFT6~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector73~0_combout\);

-- Location: FF_X41_Y35_N29
\scanStateVariable.CLOCK6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK6~q\);

-- Location: FF_X42_Y35_N3
\scanStateVariable.SHIFT6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \scanStateVariable.CLOCK6~q\,
	sload => VCC,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT6~q\);

-- Location: LCCOMB_X40_Y35_N12
\Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\LessThan6~2_combout\ & (!\LessThan5~1_combout\ & ((\scanStateVariable.SHIFT6~q\)))) # (!\LessThan6~2_combout\ & ((\scanStateVariable.SHOW6~q\) # ((!\LessThan5~1_combout\ & \scanStateVariable.SHIFT6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~2_combout\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW6~q\,
	datad => \scanStateVariable.SHIFT6~q\,
	combout => \Selector75~0_combout\);

-- Location: FF_X40_Y35_N13
\scanStateVariable.SHOW6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW6~q\);

-- Location: LCCOMB_X40_Y35_N22
\Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\scanStateVariable.SHOW6~q\ & \LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW6~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector76~0_combout\);

-- Location: FF_X40_Y35_N23
\scanStateVariable.LOAD7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD7~q\);

-- Location: LCCOMB_X41_Y35_N4
\Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\scanStateVariable.LOAD7~q\) # ((\scanStateVariable.SHIFT7~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.SHIFT7~q\,
	datad => \LessThan5~0_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X41_Y35_N5
\scanStateVariable.CLOCK7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK7~q\);

-- Location: FF_X41_Y35_N11
\scanStateVariable.SHIFT7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \scanStateVariable.CLOCK7~q\,
	sload => VCC,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT7~q\);

-- Location: LCCOMB_X40_Y35_N24
\Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\scanStateVariable.SHIFT7~q\ & (((\scanStateVariable.SHOW7~q\ & !\LessThan6~2_combout\)) # (!\LessThan5~1_combout\))) # (!\scanStateVariable.SHIFT7~q\ & (((\scanStateVariable.SHOW7~q\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT7~q\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW7~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector79~0_combout\);

-- Location: FF_X40_Y35_N25
\scanStateVariable.SHOW7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector79~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW7~q\);

-- Location: LCCOMB_X40_Y35_N0
\Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\scanStateVariable.SHOW7~q\ & \LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW7~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector80~0_combout\);

-- Location: FF_X40_Y35_N1
\scanStateVariable.LOAD8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector80~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD8~q\);

-- Location: LCCOMB_X41_Y35_N12
\Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\scanStateVariable.LOAD8~q\) # ((\scanStateVariable.SHIFT8~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.SHIFT8~q\,
	datad => \LessThan5~0_combout\,
	combout => \Selector81~0_combout\);

-- Location: FF_X41_Y35_N13
\scanStateVariable.CLOCK8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector81~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK8~q\);

-- Location: LCCOMB_X42_Y35_N12
\scanStateVariable.SHIFT8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.SHIFT8~feeder_combout\ = \scanStateVariable.CLOCK8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scanStateVariable.CLOCK8~q\,
	combout => \scanStateVariable.SHIFT8~feeder_combout\);

-- Location: FF_X42_Y35_N13
\scanStateVariable.SHIFT8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT8~feeder_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT8~q\);

-- Location: LCCOMB_X40_Y35_N14
\Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\scanStateVariable.SHIFT8~q\ & (((\scanStateVariable.SHOW8~q\ & !\LessThan6~2_combout\)) # (!\LessThan5~1_combout\))) # (!\scanStateVariable.SHIFT8~q\ & (((\scanStateVariable.SHOW8~q\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT8~q\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW8~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector83~0_combout\);

-- Location: FF_X40_Y35_N15
\scanStateVariable.SHOW8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector83~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW8~q\);

-- Location: LCCOMB_X40_Y35_N16
\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (!\LessThan6~2_combout\) # (!\scanStateVariable.SHOW8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW8~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X40_Y35_N17
\scanStateVariable.LOAD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD1~q\);

-- Location: LCCOMB_X41_Y35_N16
\Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = ((\scanStateVariable.SHIFT1~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)))) # (!\scanStateVariable.LOAD1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.SHIFT1~q\,
	datad => \LessThan5~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X41_Y35_N17
\scanStateVariable.CLOCK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK1~q\);

-- Location: LCCOMB_X42_Y35_N8
\scanStateVariable.SHIFT1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.SHIFT1~feeder_combout\ = \scanStateVariable.CLOCK1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.CLOCK1~q\,
	combout => \scanStateVariable.SHIFT1~feeder_combout\);

-- Location: FF_X42_Y35_N9
\scanStateVariable.SHIFT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT1~feeder_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT1~q\);

-- Location: LCCOMB_X42_Y35_N14
\WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (!\scanStateVariable.SHIFT3~q\ & (!\scanStateVariable.SHIFT1~q\ & (!\scanStateVariable.SHIFT4~q\ & !\scanStateVariable.SHIFT2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT3~q\,
	datab => \scanStateVariable.SHIFT1~q\,
	datac => \scanStateVariable.SHIFT4~q\,
	datad => \scanStateVariable.SHIFT2~q\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X42_Y35_N2
\WideOr4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~3_combout\ = (!\scanStateVariable.SHIFT8~q\ & (!\scanStateVariable.SHIFT5~q\ & (!\scanStateVariable.SHIFT6~q\ & !\scanStateVariable.SHIFT7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT8~q\,
	datab => \scanStateVariable.SHIFT5~q\,
	datac => \scanStateVariable.SHIFT6~q\,
	datad => \scanStateVariable.SHIFT7~q\,
	combout => \WideOr4~3_combout\);

-- Location: LCCOMB_X42_Y35_N16
\WideOr4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~5_combout\ = (!\WideOr4~3_combout\) # (!\WideOr4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr4~2_combout\,
	datad => \WideOr4~3_combout\,
	combout => \WideOr4~5_combout\);

-- Location: FF_X42_Y35_N21
\LINE_SACN_PROC:registerSerialData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[0]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[0]~q\);

-- Location: FF_X42_Y35_N23
\LINE_SACN_PROC:registerSerialData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[1]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[1]~q\);

-- Location: LCCOMB_X42_Y35_N6
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (((!\LINE_SACN_PROC:registerSerialData[2]~q\) # (!\LINE_SACN_PROC:registerSerialData[3]~q\)) # (!\LINE_SACN_PROC:registerSerialData[0]~q\)) # (!\LINE_SACN_PROC:registerSerialData[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[1]~q\,
	datab => \LINE_SACN_PROC:registerSerialData[0]~q\,
	datac => \LINE_SACN_PROC:registerSerialData[3]~q\,
	datad => \LINE_SACN_PROC:registerSerialData[2]~q\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X42_Y32_N28
\Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\scanStateVariable.SHOW2~q\ & \LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW2~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X42_Y32_N29
\scanStateVariable.LOAD3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector60~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD3~q\);

-- Location: LCCOMB_X41_Y35_N0
\Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\scanStateVariable.LOAD3~q\) # ((\scanStateVariable.SHIFT3~q\ & ((\LessThan5~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \scanStateVariable.SHIFT3~q\,
	combout => \Selector61~0_combout\);

-- Location: FF_X41_Y35_N1
\scanStateVariable.CLOCK3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK3~q\);

-- Location: LCCOMB_X42_Y35_N4
\scanStateVariable.SHIFT3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.SHIFT3~feeder_combout\ = \scanStateVariable.CLOCK3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scanStateVariable.CLOCK3~q\,
	combout => \scanStateVariable.SHIFT3~feeder_combout\);

-- Location: FF_X42_Y35_N5
\scanStateVariable.SHIFT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT3~feeder_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT3~q\);

-- Location: LCCOMB_X42_Y32_N8
\Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\scanStateVariable.SHIFT3~q\ & (((\scanStateVariable.SHOW3~q\ & !\LessThan6~2_combout\)) # (!\LessThan5~1_combout\))) # (!\scanStateVariable.SHIFT3~q\ & (((\scanStateVariable.SHOW3~q\ & !\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT3~q\,
	datab => \LessThan5~1_combout\,
	datac => \scanStateVariable.SHOW3~q\,
	datad => \LessThan6~2_combout\,
	combout => \Selector63~0_combout\);

-- Location: FF_X42_Y32_N9
\scanStateVariable.SHOW3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector63~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW3~q\);

-- Location: LCCOMB_X41_Y35_N10
\WideOr4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (!\scanStateVariable.CLOCK8~q\ & (!\scanStateVariable.CLOCK6~q\ & (!\scanStateVariable.CLOCK7~q\ & !\scanStateVariable.CLOCK5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.CLOCK8~q\,
	datab => \scanStateVariable.CLOCK6~q\,
	datac => \scanStateVariable.CLOCK7~q\,
	datad => \scanStateVariable.CLOCK5~q\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X41_Y35_N14
\WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\scanStateVariable.CLOCK2~q\ & (!\scanStateVariable.CLOCK3~q\ & (!\scanStateVariable.CLOCK4~q\ & !\scanStateVariable.CLOCK1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.CLOCK2~q\,
	datab => \scanStateVariable.CLOCK3~q\,
	datac => \scanStateVariable.CLOCK4~q\,
	datad => \scanStateVariable.CLOCK1~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X41_Y35_N20
WideOr4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (((!\WideOr4~3_combout\) # (!\WideOr4~2_combout\)) # (!\WideOr4~0_combout\)) # (!\WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~1_combout\,
	datab => \WideOr4~0_combout\,
	datac => \WideOr4~2_combout\,
	datad => \WideOr4~3_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X42_Y32_N20
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\scanStateVariable.SHOW3~q\) # ((row_driver(5) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW3~q\,
	datac => row_driver(5),
	datad => \WideOr4~combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X42_Y32_N21
\row_driver[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(5));

-- Location: LCCOMB_X42_Y32_N26
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\scanStateVariable.SHOW2~q\) # ((row_driver(6) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW2~q\,
	datac => row_driver(6),
	datad => \WideOr4~combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X42_Y32_N27
\row_driver[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(6));

-- Location: LCCOMB_X42_Y32_N24
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\scanStateVariable.SHOW1~q\) # ((row_driver(7) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW1~q\,
	datac => row_driver(7),
	datad => \WideOr4~combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X42_Y32_N25
\row_driver[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(7));

-- Location: LCCOMB_X40_Y35_N8
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\scanStateVariable.SHOW8~q\) # ((row_driver(0) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW8~q\,
	datac => row_driver(0),
	datad => \WideOr4~combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X40_Y35_N9
\row_driver[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(0));

-- Location: LCCOMB_X41_Y37_N6
\counter[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~26_combout\ = counter(0) $ (VCC)
-- \counter[0]~27\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~26_combout\,
	cout => \counter[0]~27\);

-- Location: LCCOMB_X40_Y36_N14
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (counter(18)) # ((counter(21)) # ((counter(20)) # (counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(21),
	datac => counter(20),
	datad => counter(19),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X41_Y36_N30
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counter(12)) # ((counter(13)) # ((counter(10)) # (counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(13),
	datac => counter(10),
	datad => counter(11),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X41_Y37_N4
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter(3)) # ((counter(5)) # ((counter(4)) # (counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(5),
	datac => counter(4),
	datad => counter(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y36_N0
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (counter(17)) # ((counter(16)) # ((counter(15)) # (counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(16),
	datac => counter(15),
	datad => counter(14),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y37_N2
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter(6)) # ((counter(7)) # ((counter(8)) # (counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(7),
	datac => counter(8),
	datad => counter(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y36_N28
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\) # (\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X41_Y36_N26
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~7_combout\);

-- Location: FF_X41_Y37_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[0]~26_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X41_Y37_N8
\counter[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~28_combout\ = (counter(1) & (!\counter[0]~27\)) # (!counter(1) & ((\counter[0]~27\) # (GND)))
-- \counter[1]~29\ = CARRY((!\counter[0]~27\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~27\,
	combout => \counter[1]~28_combout\,
	cout => \counter[1]~29\);

-- Location: FF_X41_Y37_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[1]~28_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X41_Y37_N10
\counter[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~30_combout\ = (counter(2) & (\counter[1]~29\ $ (GND))) # (!counter(2) & (!\counter[1]~29\ & VCC))
-- \counter[2]~31\ = CARRY((counter(2) & !\counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~29\,
	combout => \counter[2]~30_combout\,
	cout => \counter[2]~31\);

-- Location: FF_X41_Y37_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[2]~30_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X41_Y37_N12
\counter[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~32_combout\ = (counter(3) & (!\counter[2]~31\)) # (!counter(3) & ((\counter[2]~31\) # (GND)))
-- \counter[3]~33\ = CARRY((!\counter[2]~31\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~31\,
	combout => \counter[3]~32_combout\,
	cout => \counter[3]~33\);

-- Location: FF_X41_Y37_N13
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[3]~32_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X41_Y37_N14
\counter[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~34_combout\ = (counter(4) & (\counter[3]~33\ $ (GND))) # (!counter(4) & (!\counter[3]~33\ & VCC))
-- \counter[4]~35\ = CARRY((counter(4) & !\counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~33\,
	combout => \counter[4]~34_combout\,
	cout => \counter[4]~35\);

-- Location: FF_X41_Y37_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[4]~34_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X41_Y37_N16
\counter[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~36_combout\ = (counter(5) & (!\counter[4]~35\)) # (!counter(5) & ((\counter[4]~35\) # (GND)))
-- \counter[5]~37\ = CARRY((!\counter[4]~35\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~35\,
	combout => \counter[5]~36_combout\,
	cout => \counter[5]~37\);

-- Location: FF_X41_Y37_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[5]~36_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X41_Y37_N18
\counter[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~38_combout\ = (counter(6) & (\counter[5]~37\ $ (GND))) # (!counter(6) & (!\counter[5]~37\ & VCC))
-- \counter[6]~39\ = CARRY((counter(6) & !\counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~37\,
	combout => \counter[6]~38_combout\,
	cout => \counter[6]~39\);

-- Location: FF_X41_Y37_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[6]~38_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X41_Y37_N20
\counter[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~40_combout\ = (counter(7) & (!\counter[6]~39\)) # (!counter(7) & ((\counter[6]~39\) # (GND)))
-- \counter[7]~41\ = CARRY((!\counter[6]~39\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~39\,
	combout => \counter[7]~40_combout\,
	cout => \counter[7]~41\);

-- Location: FF_X41_Y37_N21
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[7]~40_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X41_Y37_N22
\counter[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[8]~42_combout\ = (counter(8) & (\counter[7]~41\ $ (GND))) # (!counter(8) & (!\counter[7]~41\ & VCC))
-- \counter[8]~43\ = CARRY((counter(8) & !\counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~41\,
	combout => \counter[8]~42_combout\,
	cout => \counter[8]~43\);

-- Location: FF_X41_Y37_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[8]~42_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X41_Y37_N24
\counter[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[9]~44_combout\ = (counter(9) & (!\counter[8]~43\)) # (!counter(9) & ((\counter[8]~43\) # (GND)))
-- \counter[9]~45\ = CARRY((!\counter[8]~43\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~43\,
	combout => \counter[9]~44_combout\,
	cout => \counter[9]~45\);

-- Location: FF_X41_Y37_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[9]~44_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X41_Y37_N26
\counter[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~46_combout\ = (counter(10) & (\counter[9]~45\ $ (GND))) # (!counter(10) & (!\counter[9]~45\ & VCC))
-- \counter[10]~47\ = CARRY((counter(10) & !\counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \counter[9]~45\,
	combout => \counter[10]~46_combout\,
	cout => \counter[10]~47\);

-- Location: FF_X41_Y37_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[10]~46_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X41_Y37_N28
\counter[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[11]~48_combout\ = (counter(11) & (!\counter[10]~47\)) # (!counter(11) & ((\counter[10]~47\) # (GND)))
-- \counter[11]~49\ = CARRY((!\counter[10]~47\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~47\,
	combout => \counter[11]~48_combout\,
	cout => \counter[11]~49\);

-- Location: FF_X41_Y37_N29
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[11]~48_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X41_Y37_N30
\counter[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[12]~50_combout\ = (counter(12) & (\counter[11]~49\ $ (GND))) # (!counter(12) & (!\counter[11]~49\ & VCC))
-- \counter[12]~51\ = CARRY((counter(12) & !\counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \counter[11]~49\,
	combout => \counter[12]~50_combout\,
	cout => \counter[12]~51\);

-- Location: FF_X41_Y37_N31
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[12]~50_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X41_Y36_N0
\counter[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[13]~52_combout\ = (counter(13) & (!\counter[12]~51\)) # (!counter(13) & ((\counter[12]~51\) # (GND)))
-- \counter[13]~53\ = CARRY((!\counter[12]~51\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~51\,
	combout => \counter[13]~52_combout\,
	cout => \counter[13]~53\);

-- Location: FF_X41_Y36_N1
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[13]~52_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X41_Y36_N2
\counter[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[14]~54_combout\ = (counter(14) & (\counter[13]~53\ $ (GND))) # (!counter(14) & (!\counter[13]~53\ & VCC))
-- \counter[14]~55\ = CARRY((counter(14) & !\counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~53\,
	combout => \counter[14]~54_combout\,
	cout => \counter[14]~55\);

-- Location: FF_X41_Y36_N3
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[14]~54_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X41_Y36_N4
\counter[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[15]~56_combout\ = (counter(15) & (!\counter[14]~55\)) # (!counter(15) & ((\counter[14]~55\) # (GND)))
-- \counter[15]~57\ = CARRY((!\counter[14]~55\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~55\,
	combout => \counter[15]~56_combout\,
	cout => \counter[15]~57\);

-- Location: FF_X41_Y36_N5
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[15]~56_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X41_Y36_N6
\counter[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[16]~58_combout\ = (counter(16) & (\counter[15]~57\ $ (GND))) # (!counter(16) & (!\counter[15]~57\ & VCC))
-- \counter[16]~59\ = CARRY((counter(16) & !\counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~57\,
	combout => \counter[16]~58_combout\,
	cout => \counter[16]~59\);

-- Location: FF_X41_Y36_N7
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[16]~58_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X41_Y36_N8
\counter[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[17]~60_combout\ = (counter(17) & (!\counter[16]~59\)) # (!counter(17) & ((\counter[16]~59\) # (GND)))
-- \counter[17]~61\ = CARRY((!\counter[16]~59\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~59\,
	combout => \counter[17]~60_combout\,
	cout => \counter[17]~61\);

-- Location: FF_X41_Y36_N9
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[17]~60_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X41_Y36_N10
\counter[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[18]~62_combout\ = (counter(18) & (\counter[17]~61\ $ (GND))) # (!counter(18) & (!\counter[17]~61\ & VCC))
-- \counter[18]~63\ = CARRY((counter(18) & !\counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~61\,
	combout => \counter[18]~62_combout\,
	cout => \counter[18]~63\);

-- Location: FF_X41_Y36_N11
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[18]~62_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X41_Y36_N12
\counter[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[19]~64_combout\ = (counter(19) & (!\counter[18]~63\)) # (!counter(19) & ((\counter[18]~63\) # (GND)))
-- \counter[19]~65\ = CARRY((!\counter[18]~63\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~63\,
	combout => \counter[19]~64_combout\,
	cout => \counter[19]~65\);

-- Location: FF_X41_Y36_N13
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[19]~64_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X41_Y36_N14
\counter[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[20]~66_combout\ = (counter(20) & (\counter[19]~65\ $ (GND))) # (!counter(20) & (!\counter[19]~65\ & VCC))
-- \counter[20]~67\ = CARRY((counter(20) & !\counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~65\,
	combout => \counter[20]~66_combout\,
	cout => \counter[20]~67\);

-- Location: FF_X41_Y36_N15
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[20]~66_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X41_Y36_N16
\counter[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[21]~68_combout\ = (counter(21) & (!\counter[20]~67\)) # (!counter(21) & ((\counter[20]~67\) # (GND)))
-- \counter[21]~69\ = CARRY((!\counter[20]~67\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~67\,
	combout => \counter[21]~68_combout\,
	cout => \counter[21]~69\);

-- Location: FF_X41_Y36_N17
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[21]~68_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X41_Y36_N18
\counter[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[22]~70_combout\ = (counter(22) & (\counter[21]~69\ $ (GND))) # (!counter(22) & (!\counter[21]~69\ & VCC))
-- \counter[22]~71\ = CARRY((counter(22) & !\counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~69\,
	combout => \counter[22]~70_combout\,
	cout => \counter[22]~71\);

-- Location: FF_X41_Y36_N19
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[22]~70_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X41_Y36_N20
\counter[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[23]~72_combout\ = (counter(23) & (!\counter[22]~71\)) # (!counter(23) & ((\counter[22]~71\) # (GND)))
-- \counter[23]~73\ = CARRY((!\counter[22]~71\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~71\,
	combout => \counter[23]~72_combout\,
	cout => \counter[23]~73\);

-- Location: FF_X41_Y36_N21
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[23]~72_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X41_Y36_N22
\counter[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[24]~74_combout\ = (counter(24) & (\counter[23]~73\ $ (GND))) # (!counter(24) & (!\counter[23]~73\ & VCC))
-- \counter[24]~75\ = CARRY((counter(24) & !\counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datad => VCC,
	cin => \counter[23]~73\,
	combout => \counter[24]~74_combout\,
	cout => \counter[24]~75\);

-- Location: FF_X41_Y36_N23
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[24]~74_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X41_Y36_N24
\counter[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[25]~76_combout\ = \counter[24]~75\ $ (counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(25),
	cin => \counter[24]~75\,
	combout => \counter[25]~76_combout\);

-- Location: FF_X41_Y36_N25
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter[25]~76_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X40_Y36_N16
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (counter(23)) # ((counter(24)) # ((counter(25)) # (counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(24),
	datac => counter(25),
	datad => counter(22),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X40_Y36_N24
\TEST_CLK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK~0_combout\ = \TEST_CLK~q\ $ (((\LessThan0~6_combout\) # ((\LessThan0~5_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~5_combout\,
	datac => \TEST_CLK~q\,
	datad => \LessThan0~4_combout\,
	combout => \TEST_CLK~0_combout\);

-- Location: FF_X40_Y36_N25
TEST_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK~q\);

-- Location: LCCOMB_X40_Y35_N26
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\scanStateVariable.SHOW7~q\) # ((row_driver(1) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW7~q\,
	datac => row_driver(1),
	datad => \WideOr4~combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X40_Y35_N27
\row_driver[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(1));

-- Location: LCCOMB_X40_Y36_N2
\WideOr4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~4_combout\ = (\WideOr4~0_combout\ & \WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~0_combout\,
	datac => \WideOr4~1_combout\,
	combout => \WideOr4~4_combout\);

-- Location: LCCOMB_X42_Y32_N18
\WideOr13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~3_combout\ = (!\scanStateVariable.LOAD5~q\ & (!\scanStateVariable.LOAD3~q\ & (!\scanStateVariable.LOAD4~q\ & !\scanStateVariable.LOAD2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \scanStateVariable.LOAD4~q\,
	datad => \scanStateVariable.LOAD2~q\,
	combout => \WideOr13~3_combout\);

-- Location: LCCOMB_X40_Y35_N10
\WideOr13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~4_combout\ = (!\scanStateVariable.LOAD7~q\ & (!\scanStateVariable.LOAD8~q\ & (!\scanStateVariable.LOAD6~q\ & \WideOr13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \scanStateVariable.LOAD6~q\,
	datad => \WideOr13~3_combout\,
	combout => \WideOr13~4_combout\);

-- Location: LCCOMB_X40_Y36_N26
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ((\serial_clk~q\ & ((\WideOr13~2_combout\) # (!\WideOr13~4_combout\)))) # (!\WideOr4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~2_combout\,
	datab => \WideOr4~4_combout\,
	datac => \serial_clk~q\,
	datad => \WideOr13~4_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X40_Y36_N27
serial_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_clk~q\);

-- Location: LCCOMB_X40_Y35_N20
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\scanStateVariable.SHOW6~q\) # ((\WideOr4~combout\ & row_driver(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW6~q\,
	datab => \WideOr4~combout\,
	datac => row_driver(2),
	combout => \Selector13~0_combout\);

-- Location: FF_X40_Y35_N21
\row_driver[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(2));

-- Location: LCCOMB_X40_Y36_N10
\Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (\parallel_load~q\ & (((!\WideOr13~4_combout\) # (!\WideOr4~0_combout\)) # (!\WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_load~q\,
	datab => \WideOr4~1_combout\,
	datac => \WideOr4~0_combout\,
	datad => \WideOr13~4_combout\,
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X40_Y36_N12
\Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~3_combout\) # ((\WideOr4~5_combout\ & ((\parallel_load~q\) # (!\LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => \WideOr4~5_combout\,
	datac => \parallel_load~q\,
	datad => \Selector18~3_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X40_Y36_N13
parallel_load : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector18~2_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parallel_load~q\);

-- Location: LCCOMB_X40_Y35_N18
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\scanStateVariable.SHOW5~q\) # ((\WideOr4~combout\ & row_driver(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~combout\,
	datac => row_driver(3),
	datad => \scanStateVariable.SHOW5~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X40_Y35_N19
\row_driver[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(3));

-- Location: LCCOMB_X40_Y35_N4
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\scanStateVariable.LOAD1~q\ & (\WideOr13~4_combout\ & ((\output_enable~q\) # (!\WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \output_enable~q\,
	datad => \WideOr13~4_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X40_Y35_N5
output_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_enable~q\);

-- Location: LCCOMB_X42_Y32_N14
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\scanStateVariable.SHOW4~q\) # ((row_driver(4) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW4~q\,
	datac => row_driver(4),
	datad => \WideOr4~combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X42_Y32_N15
\row_driver[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(4));

-- Location: LCCOMB_X38_Y34_N12
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1_combout\ = \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\ $ (VCC)
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\ = CARRY(\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\,
	datad => VCC,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\);

-- Location: FF_X38_Y34_N13
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\);

-- Location: LCCOMB_X38_Y34_N14
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\);

-- Location: FF_X38_Y34_N15
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\);

-- Location: LCCOMB_X38_Y34_N16
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\);

-- Location: FF_X38_Y34_N17
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\);

-- Location: LCCOMB_X38_Y34_N18
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\);

-- Location: FF_X38_Y34_N19
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\);

-- Location: LCCOMB_X38_Y34_N20
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~2\);

-- Location: FF_X38_Y34_N21
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\);

-- Location: LCCOMB_X38_Y34_N22
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~2\);

-- Location: FF_X38_Y34_N23
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\);

-- Location: LCCOMB_X38_Y34_N24
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\);

-- Location: FF_X38_Y34_N25
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\);

-- Location: LCCOMB_X38_Y34_N26
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\);

-- Location: FF_X38_Y34_N27
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\);

-- Location: LCCOMB_X38_Y34_N28
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~2\);

-- Location: FF_X38_Y34_N29
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\);

-- Location: LCCOMB_X38_Y34_N30
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~2\);

-- Location: FF_X38_Y34_N31
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\);

-- Location: LCCOMB_X38_Y33_N0
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~2\);

-- Location: FF_X38_Y33_N1
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\);

-- Location: LCCOMB_X38_Y33_N2
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~2\);

-- Location: FF_X38_Y33_N3
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\);

-- Location: LCCOMB_X38_Y33_N4
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~2\);

-- Location: FF_X38_Y33_N5
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\);

-- Location: LCCOMB_X38_Y33_N6
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\);

-- Location: FF_X38_Y33_N7
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\);

-- Location: LCCOMB_X38_Y33_N8
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\);

-- Location: FF_X38_Y33_N9
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\);

-- Location: LCCOMB_X38_Y33_N10
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\);

-- Location: FF_X38_Y33_N11
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\);

-- Location: LCCOMB_X38_Y33_N12
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\);

-- Location: FF_X38_Y33_N13
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\);

-- Location: LCCOMB_X38_Y33_N14
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\);

-- Location: FF_X38_Y33_N15
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\);

-- Location: LCCOMB_X38_Y33_N16
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\);

-- Location: FF_X38_Y33_N17
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\);

-- Location: LCCOMB_X38_Y33_N18
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\);

-- Location: FF_X38_Y33_N19
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\);

-- Location: LCCOMB_X38_Y34_N0
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X38_Y34_N10
\LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\ & ((\LessThan3~1_combout\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\,
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X38_Y34_N8
\LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\ & \LessThan3~2_combout\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\,
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X38_Y33_N28
\LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\ & \LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\,
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X38_Y33_N26
\LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (((\LessThan3~4_combout\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X38_Y33_N20
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\ = \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\ $ (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\);

-- Location: FF_X38_Y33_N21
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan3~6_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\);

-- Location: LCCOMB_X37_Y33_N16
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X38_Y33_N24
\LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (!\LessThan3~0_combout\ & ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\) # ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\) # (!\LessThan3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\,
	datac => \LessThan3~5_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X36_Y34_N12
\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~1_combout\ = !\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~2\ = CARRY(!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~2\);

-- Location: LCCOMB_X37_Y35_N10
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X36_Y34_N13
\SCREEN_AREA_SHIFT_PROC:stringIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \LessThan2~1_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\);

-- Location: LCCOMB_X36_Y34_N14
\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~2\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~2\);

-- Location: FF_X36_Y34_N15
\SCREEN_AREA_SHIFT_PROC:stringIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \LessThan2~1_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\);

-- Location: LCCOMB_X36_Y34_N16
\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~2\);

-- Location: FF_X36_Y34_N17
\SCREEN_AREA_SHIFT_PROC:stringIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \LessThan2~1_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\);

-- Location: LCCOMB_X36_Y34_N18
\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~2\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~2\);

-- Location: FF_X36_Y34_N19
\SCREEN_AREA_SHIFT_PROC:stringIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \LessThan2~1_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\);

-- Location: LCCOMB_X36_Y34_N20
\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~2\);

-- Location: FF_X36_Y34_N21
\SCREEN_AREA_SHIFT_PROC:stringIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \LessThan2~1_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\);

-- Location: LCCOMB_X36_Y34_N22
\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~1_combout\ = \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ $ (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	cin => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~1_combout\);

-- Location: FF_X36_Y34_N23
\SCREEN_AREA_SHIFT_PROC:stringIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \LessThan2~1_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\);

-- Location: LCCOMB_X36_Y34_N28
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\) # (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X36_Y34_N30
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & !\LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X38_Y33_N22
\shiftStateVariable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shiftStateVariable~0_combout\ = (\shiftStateVariable~q\ & (((!\shiftedColumnState.COL7~q\)) # (!\LessThan3~6_combout\))) # (!\shiftStateVariable~q\ & (((!\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~6_combout\,
	datab => \LessThan2~1_combout\,
	datac => \shiftStateVariable~q\,
	datad => \shiftedColumnState.COL7~q\,
	combout => \shiftStateVariable~0_combout\);

-- Location: FF_X38_Y33_N23
shiftStateVariable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \shiftStateVariable~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftStateVariable~q\);

-- Location: LCCOMB_X38_Y33_N30
\screenArea[0][31]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][31]~3_combout\ = (\shiftStateVariable~q\ & (\CPU_RESETN~input_o\ & \LessThan3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftStateVariable~q\,
	datac => \CPU_RESETN~input_o\,
	datad => \LessThan3~6_combout\,
	combout => \screenArea[0][31]~3_combout\);

-- Location: FF_X36_Y33_N29
\shiftedColumnState.COL7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL6~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL7~q\);

-- Location: LCCOMB_X36_Y33_N18
\shiftedColumnState.COL1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shiftedColumnState.COL1~0_combout\ = !\shiftedColumnState.COL7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shiftedColumnState.COL7~q\,
	combout => \shiftedColumnState.COL1~0_combout\);

-- Location: FF_X36_Y33_N19
\shiftedColumnState.COL1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \shiftedColumnState.COL1~0_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL1~q\);

-- Location: LCCOMB_X36_Y33_N24
\shiftedColumnState.COL2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shiftedColumnState.COL2~0_combout\ = !\shiftedColumnState.COL1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftedColumnState.COL1~q\,
	combout => \shiftedColumnState.COL2~0_combout\);

-- Location: FF_X36_Y33_N25
\shiftedColumnState.COL2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \shiftedColumnState.COL2~0_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL2~q\);

-- Location: FF_X34_Y32_N21
\shiftedColumnState.COL3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL2~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL3~q\);

-- Location: LCCOMB_X36_Y33_N30
\shiftedColumnState.COL4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shiftedColumnState.COL4~feeder_combout\ = \shiftedColumnState.COL3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shiftedColumnState.COL3~q\,
	combout => \shiftedColumnState.COL4~feeder_combout\);

-- Location: FF_X36_Y33_N31
\shiftedColumnState.COL4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \shiftedColumnState.COL4~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL4~q\);

-- Location: FF_X35_Y30_N13
\shiftedColumnState.COL5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL4~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL5~q\);

-- Location: FF_X35_Y33_N17
\shiftedColumnState.COL6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL5~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL6~q\);

-- Location: LCCOMB_X36_Y32_N8
\Selector2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~22_combout\ = (!\shiftedColumnState.COL3~q\ & (!\shiftedColumnState.COL4~q\ & !\shiftedColumnState.COL5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datac => \shiftedColumnState.COL4~q\,
	datad => \shiftedColumnState.COL5~q\,
	combout => \Selector2~22_combout\);

-- Location: LCCOMB_X36_Y33_N22
\Selector5~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~23_combout\ = (!\shiftedColumnState.COL7~q\ & ((\shiftedColumnState.COL6~q\) # ((\shiftedColumnState.COL2~q\) # (!\Selector2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \shiftedColumnState.COL2~q\,
	datac => \shiftedColumnState.COL7~q\,
	datad => \Selector2~22_combout\,
	combout => \Selector5~23_combout\);

-- Location: LCCOMB_X36_Y33_N28
\Selector6~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~87_combout\ = (!\shiftedColumnState.COL5~q\ & !\shiftedColumnState.COL4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftedColumnState.COL5~q\,
	datad => \shiftedColumnState.COL4~q\,
	combout => \Selector6~87_combout\);

-- Location: LCCOMB_X36_Y33_N16
\screenArea[1][0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][0]~4_combout\ = (!\shiftedColumnState.COL6~q\ & (!\shiftedColumnState.COL2~q\ & (!\shiftedColumnState.COL3~q\ & \Selector6~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \shiftedColumnState.COL2~q\,
	datac => \shiftedColumnState.COL3~q\,
	datad => \Selector6~87_combout\,
	combout => \screenArea[1][0]~4_combout\);

-- Location: LCCOMB_X36_Y31_N20
\Mux58~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux58~4_combout\);

-- Location: LCCOMB_X36_Y34_N26
\Mux58~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X36_Y34_N4
\Mux58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X36_Y34_N24
\Mux58~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((!\Mux58~1_combout\))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (\Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~2_combout\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \Mux58~1_combout\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X35_Y31_N18
\Mux58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X31_Y31_N0
\Mux58~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~5_combout\ = (\Mux58~3_combout\ & (!\Mux58~4_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))) # (!\Mux58~3_combout\ & (((\Mux58~0_combout\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~4_combout\,
	datab => \Mux58~3_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \Mux58~0_combout\,
	combout => \Mux58~5_combout\);

-- Location: LCCOMB_X36_Y34_N0
\ascii_char[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ascii_char[5]~0_combout\ = (\CPU_RESETN~input_o\ & (!\LessThan2~1_combout\ & !\shiftStateVariable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_RESETN~input_o\,
	datac => \LessThan2~1_combout\,
	datad => \shiftStateVariable~q\,
	combout => \ascii_char[5]~0_combout\);

-- Location: FF_X31_Y31_N1
\ascii_char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Mux58~5_combout\,
	ena => \ascii_char[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(0));

-- Location: LCCOMB_X36_Y32_N28
\Mux57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X36_Y31_N18
\Mux53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X36_Y34_N6
\Mux57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))) 
-- # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X36_Y34_N8
\Mux57~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ (((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X36_Y34_N10
\Mux57~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\Mux57~1_combout\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (((\Mux57~2_combout\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~1_combout\,
	datab => \Mux57~2_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X31_Y32_N12
\Mux57~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((\Mux57~3_combout\ & ((!\Mux53~2_combout\))) # (!\Mux57~3_combout\ & (!\Mux57~0_combout\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (((!\Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datab => \Mux57~0_combout\,
	datac => \Mux53~2_combout\,
	datad => \Mux57~3_combout\,
	combout => \Mux57~4_combout\);

-- Location: FF_X31_Y32_N13
\ascii_char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Mux57~4_combout\,
	ena => \ascii_char[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(1));

-- Location: LCCOMB_X32_Y32_N30
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (ascii_char(0) & ascii_char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X36_Y31_N2
\Mux53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X36_Y31_N24
\Mux53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & 
-- (((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X34_Y31_N10
\Mux53~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\) # (\Mux53~0_combout\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\Mux53~0_combout\ $ 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \Mux53~0_combout\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X34_Y31_N0
\Mux53~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\Mux53~0_combout\ & ((\Mux53~3_combout\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ $ (\Mux53~1_combout\)))) # (!\Mux53~0_combout\ & (\Mux53~3_combout\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # (\Mux53~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \Mux53~1_combout\,
	datac => \Mux53~0_combout\,
	datad => \Mux53~3_combout\,
	combout => \Mux53~4_combout\);

-- Location: FF_X34_Y31_N1
\ascii_char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Mux53~4_combout\,
	ena => \ascii_char[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(5));

-- Location: LCCOMB_X36_Y32_N18
\Mux55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X35_Y31_N20
\Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X35_Y31_N8
\Mux55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\Mux55~1_combout\ & ((!\Mux55~0_combout\))) # (!\Mux55~1_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\Mux55~0_combout\ & 
-- ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))) # (!\Mux55~0_combout\ & (\Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => \Mux55~0_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X35_Y31_N6
\Mux55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux55~0_combout\ & (!\Mux55~1_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))) # (!\Mux55~0_combout\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & 
-- !\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => \Mux55~0_combout\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X34_Y31_N6
\Mux55~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = \Mux55~2_combout\ $ (((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & \Mux55~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \Mux55~3_combout\,
	datad => \Mux55~2_combout\,
	combout => \Mux55~4_combout\);

-- Location: FF_X34_Y31_N7
\ascii_char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Mux55~4_combout\,
	ena => \ascii_char[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(3));

-- Location: LCCOMB_X36_Y31_N26
\Mux54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)))) 
-- # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X36_Y31_N6
\Mux54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\Mux54~1_combout\ & 
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\Mux54~1_combout\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))) # (!\Mux54~1_combout\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \Mux54~1_combout\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X36_Y31_N12
\Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X35_Y31_N0
\Mux54~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\Mux54~2_combout\ & (\Mux54~0_combout\)) # (!\Mux54~2_combout\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # (!\Mux54~1_combout\)) # (!\Mux54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Mux54~0_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \Mux54~1_combout\,
	combout => \Mux54~3_combout\);

-- Location: FF_X35_Y31_N1
\ascii_char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Mux54~3_combout\,
	ena => \ascii_char[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(4));

-- Location: LCCOMB_X35_Y31_N10
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!ascii_char(3) & ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X36_Y31_N8
\Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & 
-- (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X36_Y31_N4
\Mux56~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X36_Y31_N10
\Mux56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X36_Y31_N22
\Mux56~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((!\Mux56~1_combout\))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \Mux56~2_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \Mux56~1_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X36_Y31_N28
\Mux56~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X32_Y31_N4
\Mux56~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (\Mux56~3_combout\ & (((\Mux56~4_combout\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))) # (!\Mux56~3_combout\ & (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\Mux56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~0_combout\,
	datab => \Mux56~3_combout\,
	datac => \Mux56~4_combout\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	combout => \Mux56~5_combout\);

-- Location: FF_X32_Y31_N5
\ascii_char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Mux56~5_combout\,
	ena => \ascii_char[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(2));

-- Location: LCCOMB_X32_Y32_N2
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~2_combout\ & (!ascii_char(5) & (\Mux4~0_combout\ & ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => ascii_char(5),
	datac => \Mux4~0_combout\,
	datad => ascii_char(2),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X35_Y34_N14
\Selector5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~22_combout\ = (\screenArea[1][0]~4_combout\ & (!\shiftedColumnState.COL7~q\ & \Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screenArea[1][0]~4_combout\,
	datac => \shiftedColumnState.COL7~q\,
	datad => \Mux4~1_combout\,
	combout => \Selector5~22_combout\);

-- Location: LCCOMB_X36_Y31_N30
\Mux52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X36_Y31_N0
\Mux52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & 
-- (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X36_Y31_N14
\Mux52~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((\Mux52~1_combout\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & \Mux52~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~1_combout\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \Mux52~2_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X34_Y31_N20
\Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ $ (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X36_Y31_N16
\Mux52~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X34_Y31_N4
\Mux52~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~5_combout\ = (\Mux52~3_combout\ & (((\Mux52~4_combout\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))) # (!\Mux52~3_combout\ & ((\Mux52~0_combout\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \Mux52~0_combout\,
	datac => \Mux52~4_combout\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	combout => \Mux52~5_combout\);

-- Location: FF_X34_Y31_N5
\ascii_char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Mux52~5_combout\,
	ena => \ascii_char[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(6));

-- Location: LCCOMB_X34_Y31_N12
\Selector4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~36_combout\ = (ascii_char(6) & ascii_char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(6),
	datad => ascii_char(5),
	combout => \Selector4~36_combout\);

-- Location: LCCOMB_X31_Y34_N30
\Selector4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~46_combout\ = (ascii_char(2) & (ascii_char(1) & ((!ascii_char(3)) # (!ascii_char(0))))) # (!ascii_char(2) & ((ascii_char(0) & ((!ascii_char(1)))) # (!ascii_char(0) & (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector4~46_combout\);

-- Location: LCCOMB_X34_Y31_N26
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ascii_char(6) $ (!ascii_char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(6),
	datad => ascii_char(5),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X31_Y34_N12
\Selector4~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~45_combout\ = (ascii_char(0) & (ascii_char(3) $ (ascii_char(1) $ (ascii_char(2))))) # (!ascii_char(0) & (((!ascii_char(3) & ascii_char(1))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector4~45_combout\);

-- Location: LCCOMB_X31_Y34_N4
\Selector4~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~47_combout\ = (!\Add0~0_combout\ & ((ascii_char(4) & ((\Selector4~45_combout\))) # (!ascii_char(4) & (\Selector4~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~46_combout\,
	datab => ascii_char(4),
	datac => \Add0~0_combout\,
	datad => \Selector4~45_combout\,
	combout => \Selector4~47_combout\);

-- Location: LCCOMB_X31_Y34_N20
\Selector4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~48_combout\ = (ascii_char(1) & ((ascii_char(0) & ((ascii_char(4)))) # (!ascii_char(0) & ((ascii_char(2)) # (!ascii_char(4)))))) # (!ascii_char(1) & (ascii_char(2) $ (((!ascii_char(4)) # (!ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Selector4~48_combout\);

-- Location: LCCOMB_X35_Y34_N24
\Selector2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~23_combout\ = (!ascii_char(3) & !ascii_char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(3),
	datad => ascii_char(5),
	combout => \Selector2~23_combout\);

-- Location: LCCOMB_X35_Y34_N28
\Selector2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~21_combout\ = (ascii_char(3) & ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector2~21_combout\);

-- Location: LCCOMB_X31_Y34_N14
\Selector5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~26_combout\ = (ascii_char(0) & ((ascii_char(2)) # (!ascii_char(1)))) # (!ascii_char(0) & ((!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector5~26_combout\);

-- Location: LCCOMB_X31_Y34_N2
\Selector4~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~67_combout\ = (\Selector2~21_combout\ & (\Selector5~26_combout\ & (!ascii_char(5) & !ascii_char(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~21_combout\,
	datab => \Selector5~26_combout\,
	datac => ascii_char(5),
	datad => ascii_char(6),
	combout => \Selector4~67_combout\);

-- Location: LCCOMB_X31_Y34_N26
\Selector4~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~49_combout\ = (\Selector4~67_combout\) # ((\Add0~0_combout\ & (\Selector4~48_combout\ & \Selector2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector4~48_combout\,
	datac => \Selector2~23_combout\,
	datad => \Selector4~67_combout\,
	combout => \Selector4~49_combout\);

-- Location: LCCOMB_X31_Y33_N28
\Selector4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~50_combout\ = (ascii_char(3) & (((ascii_char(1) & ascii_char(2))))) # (!ascii_char(3) & (ascii_char(0) $ (ascii_char(1) $ (ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector4~50_combout\);

-- Location: LCCOMB_X31_Y33_N18
\Selector4~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~51_combout\ = (!ascii_char(4) & \Selector4~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => \Selector4~50_combout\,
	combout => \Selector4~51_combout\);

-- Location: LCCOMB_X31_Y34_N24
\Selector4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~52_combout\ = (\Selector4~47_combout\) # ((\Selector4~49_combout\) # ((\Selector4~36_combout\ & \Selector4~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~36_combout\,
	datab => \Selector4~47_combout\,
	datac => \Selector4~49_combout\,
	datad => \Selector4~51_combout\,
	combout => \Selector4~52_combout\);

-- Location: LCCOMB_X32_Y32_N20
\Selector4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~34_combout\ = (ascii_char(2) & (ascii_char(4) $ (((ascii_char(0)) # (!ascii_char(1)))))) # (!ascii_char(2) & (!ascii_char(1) & (!ascii_char(0) & ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Selector4~34_combout\);

-- Location: LCCOMB_X32_Y32_N10
\Selector4~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~35_combout\ = (ascii_char(5) & (!ascii_char(2) & (\Mux4~2_combout\))) # (!ascii_char(5) & (((\Selector4~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => \Mux4~2_combout\,
	datad => \Selector4~34_combout\,
	combout => \Selector4~35_combout\);

-- Location: LCCOMB_X32_Y32_N22
\Selector4~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~66_combout\ = (!ascii_char(3) & (\Selector4~35_combout\ & (ascii_char(5) $ (!ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datac => ascii_char(6),
	datad => \Selector4~35_combout\,
	combout => \Selector4~66_combout\);

-- Location: LCCOMB_X32_Y34_N8
\Selector4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~40_combout\ = (ascii_char(0) & (!ascii_char(2) & (ascii_char(4) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector4~40_combout\);

-- Location: LCCOMB_X35_Y30_N0
\Selector4~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~39_combout\ = (!ascii_char(6) & !ascii_char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(6),
	datad => ascii_char(5),
	combout => \Selector4~39_combout\);

-- Location: LCCOMB_X34_Y31_N24
\Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = ascii_char(2) $ (ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X34_Y31_N22
\Selector5~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~25_combout\ = ascii_char(2) $ (ascii_char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => ascii_char(1),
	combout => \Selector5~25_combout\);

-- Location: LCCOMB_X34_Y31_N2
\Selector4~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~41_combout\ = (!\Add0~0_combout\ & ((ascii_char(0) & (ascii_char(2) & !ascii_char(1))) # (!ascii_char(0) & ((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => \Add0~0_combout\,
	combout => \Selector4~41_combout\);

-- Location: LCCOMB_X34_Y31_N28
\Selector4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~42_combout\ = (\Selector4~41_combout\) # ((\Selector4~36_combout\ & (\Mux14~6_combout\ & !\Selector5~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~36_combout\,
	datab => \Mux14~6_combout\,
	datac => \Selector5~25_combout\,
	datad => \Selector4~41_combout\,
	combout => \Selector4~42_combout\);

-- Location: LCCOMB_X35_Y34_N4
\Selector4~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~43_combout\ = (\Selector4~40_combout\ & ((\Selector4~39_combout\) # ((!ascii_char(4) & \Selector4~42_combout\)))) # (!\Selector4~40_combout\ & (!ascii_char(4) & ((\Selector4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~40_combout\,
	datab => ascii_char(4),
	datac => \Selector4~39_combout\,
	datad => \Selector4~42_combout\,
	combout => \Selector4~43_combout\);

-- Location: LCCOMB_X31_Y32_N10
\Selector1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~32_combout\ = (ascii_char(4) & ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~32_combout\);

-- Location: LCCOMB_X31_Y34_N0
\Selector4~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~37_combout\ = (ascii_char(3) & (!\Selector4~36_combout\ & ((ascii_char(1)) # (\Add0~0_combout\)))) # (!ascii_char(3) & ((ascii_char(1) & (!\Add0~0_combout\)) # (!ascii_char(1) & ((\Selector4~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => \Add0~0_combout\,
	datad => \Selector4~36_combout\,
	combout => \Selector4~37_combout\);

-- Location: LCCOMB_X31_Y34_N10
\Selector4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~38_combout\ = (\Selector1~32_combout\ & ((ascii_char(3) & (ascii_char(0) & !\Selector4~37_combout\)) # (!ascii_char(3) & (!ascii_char(0) & \Selector4~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~32_combout\,
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => \Selector4~37_combout\,
	combout => \Selector4~38_combout\);

-- Location: LCCOMB_X35_Y34_N6
\Selector4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~44_combout\ = (\Selector4~66_combout\) # ((\Selector4~38_combout\) # ((ascii_char(3) & \Selector4~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~66_combout\,
	datab => ascii_char(3),
	datac => \Selector4~43_combout\,
	datad => \Selector4~38_combout\,
	combout => \Selector4~44_combout\);

-- Location: LCCOMB_X35_Y34_N26
\Selector4~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~68_combout\ = (\shiftedColumnState.COL6~q\ & (((\Selector4~52_combout\)))) # (!\shiftedColumnState.COL6~q\ & (\shiftedColumnState.COL5~q\ & ((\Selector4~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \shiftedColumnState.COL5~q\,
	datac => \Selector4~52_combout\,
	datad => \Selector4~44_combout\,
	combout => \Selector4~68_combout\);

-- Location: LCCOMB_X36_Y30_N28
\Selector6~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~72_combout\ = (!\shiftedColumnState.COL5~q\ & \shiftedColumnState.COL4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datad => \shiftedColumnState.COL4~q\,
	combout => \Selector6~72_combout\);

-- Location: LCCOMB_X35_Y32_N20
\Selector4~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~53_combout\ = (ascii_char(1) & (ascii_char(2) & ((ascii_char(3)) # (ascii_char(4))))) # (!ascii_char(1) & (!ascii_char(3) & ((!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Selector4~53_combout\);

-- Location: LCCOMB_X35_Y32_N2
\Selector6~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~92_combout\ = (ascii_char(1) & !ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector6~92_combout\);

-- Location: LCCOMB_X35_Y32_N6
\Selector4~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~69_combout\ = (ascii_char(3) & ((ascii_char(4) & ((\Selector6~92_combout\))) # (!ascii_char(4) & (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => \Selector6~92_combout\,
	combout => \Selector4~69_combout\);

-- Location: LCCOMB_X35_Y32_N18
\Selector4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~54_combout\ = (!\Add0~0_combout\ & ((\Selector4~69_combout\) # ((\Selector4~53_combout\ & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector4~53_combout\,
	datac => ascii_char(0),
	datad => \Selector4~69_combout\,
	combout => \Selector4~54_combout\);

-- Location: LCCOMB_X35_Y31_N4
\Selector4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~15_combout\ = (ascii_char(1) & (!ascii_char(4) & (ascii_char(2) & !ascii_char(0)))) # (!ascii_char(1) & ((ascii_char(2) & (ascii_char(4))) # (!ascii_char(2) & ((!ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector4~15_combout\);

-- Location: LCCOMB_X35_Y31_N2
\Selector4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~14_combout\ = (ascii_char(2) & (!ascii_char(4) & ((ascii_char(0)) # (ascii_char(1))))) # (!ascii_char(2) & (ascii_char(4) $ (((!ascii_char(0) & !ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector4~14_combout\);

-- Location: LCCOMB_X35_Y31_N14
\Selector4~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~71_combout\ = (ascii_char(3) & (\Selector4~15_combout\)) # (!ascii_char(3) & ((\Selector4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(3),
	datac => \Selector4~15_combout\,
	datad => \Selector4~14_combout\,
	combout => \Selector4~71_combout\);

-- Location: LCCOMB_X35_Y31_N22
\Selector4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~11_combout\ = (ascii_char(0) & (((!ascii_char(4))))) # (!ascii_char(0) & (ascii_char(1) $ (((!ascii_char(4) & !ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector4~11_combout\);

-- Location: LCCOMB_X35_Y31_N28
\Selector4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~10_combout\ = (ascii_char(4) & (!ascii_char(1) & (ascii_char(3) $ (!ascii_char(0))))) # (!ascii_char(4) & (ascii_char(1) $ (((!ascii_char(3) & !ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector4~10_combout\);

-- Location: LCCOMB_X35_Y31_N16
\Selector4~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~70_combout\ = (ascii_char(2) & (\Selector4~11_combout\)) # (!ascii_char(2) & ((\Selector4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => \Selector4~11_combout\,
	datad => \Selector4~10_combout\,
	combout => \Selector4~70_combout\);

-- Location: LCCOMB_X35_Y31_N24
\Selector4~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~55_combout\ = (\Selector4~36_combout\ & ((\Selector4~71_combout\) # ((\Selector4~39_combout\ & \Selector4~70_combout\)))) # (!\Selector4~36_combout\ & (\Selector4~39_combout\ & ((\Selector4~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~36_combout\,
	datab => \Selector4~39_combout\,
	datac => \Selector4~71_combout\,
	datad => \Selector4~70_combout\,
	combout => \Selector4~55_combout\);

-- Location: LCCOMB_X35_Y34_N22
\Selector4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~56_combout\ = (!\shiftedColumnState.COL6~q\ & (\Selector6~72_combout\ & ((\Selector4~54_combout\) # (\Selector4~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Selector6~72_combout\,
	datac => \Selector4~54_combout\,
	datad => \Selector4~55_combout\,
	combout => \Selector4~56_combout\);

-- Location: LCCOMB_X32_Y34_N30
\Selector4~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~27_combout\ = (ascii_char(0) & (!ascii_char(1) & (ascii_char(2) $ (!ascii_char(3))))) # (!ascii_char(0) & (ascii_char(2) & (ascii_char(1) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector4~27_combout\);

-- Location: LCCOMB_X32_Y34_N24
\Selector4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~26_combout\ = (ascii_char(1) & (ascii_char(3) & (ascii_char(2) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector4~26_combout\);

-- Location: LCCOMB_X32_Y34_N0
\Selector4~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~23_combout\ = (ascii_char(2) & ((ascii_char(0) & ((!ascii_char(3)))) # (!ascii_char(0) & (!ascii_char(1) & ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector4~23_combout\);

-- Location: LCCOMB_X32_Y34_N2
\Selector4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~24_combout\ = (ascii_char(0) & (ascii_char(1) & ((!ascii_char(3))))) # (!ascii_char(0) & (ascii_char(2) & (ascii_char(1) $ (ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector4~24_combout\);

-- Location: LCCOMB_X32_Y34_N12
\Selector4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~32_combout\ = (ascii_char(4) & (((ascii_char(5)) # (\Selector4~24_combout\)))) # (!ascii_char(4) & (\Selector4~23_combout\ & (!ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Selector4~23_combout\,
	datac => ascii_char(5),
	datad => \Selector4~24_combout\,
	combout => \Selector4~32_combout\);

-- Location: LCCOMB_X32_Y34_N10
\Selector4~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~33_combout\ = (ascii_char(5) & ((\Selector4~32_combout\ & (\Selector4~27_combout\)) # (!\Selector4~32_combout\ & ((\Selector4~26_combout\))))) # (!ascii_char(5) & (((\Selector4~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~27_combout\,
	datab => \Selector4~26_combout\,
	datac => ascii_char(5),
	datad => \Selector4~32_combout\,
	combout => \Selector4~33_combout\);

-- Location: LCCOMB_X32_Y29_N16
\Selector4~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~74_combout\ = (ascii_char(2) & (ascii_char(1) $ (((ascii_char(3)) # (!ascii_char(4)))))) # (!ascii_char(2) & ((ascii_char(1) & ((!ascii_char(4)))) # (!ascii_char(1) & (!ascii_char(3) & ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector4~74_combout\);

-- Location: LCCOMB_X31_Y30_N2
\Selector4~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~75_combout\ = (\Selector4~74_combout\ & (ascii_char(2) $ (ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datac => ascii_char(0),
	datad => \Selector4~74_combout\,
	combout => \Selector4~75_combout\);

-- Location: LCCOMB_X32_Y34_N22
\Selector4~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~19_combout\ = (ascii_char(2) & (ascii_char(4) & (ascii_char(0) $ (!ascii_char(1))))) # (!ascii_char(2) & ((ascii_char(0) & ((!ascii_char(1)))) # (!ascii_char(0) & (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector4~19_combout\);

-- Location: LCCOMB_X32_Y34_N28
\Selector4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~18_combout\ = (ascii_char(2) & ((ascii_char(4) & ((!ascii_char(1)))) # (!ascii_char(4) & ((ascii_char(0)) # (ascii_char(1)))))) # (!ascii_char(2) & ((ascii_char(4) $ (!ascii_char(1))) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector4~18_combout\);

-- Location: LCCOMB_X32_Y34_N20
\Selector4~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~72_combout\ = (ascii_char(3) & (\Selector4~19_combout\)) # (!ascii_char(3) & ((\Selector4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datac => \Selector4~19_combout\,
	datad => \Selector4~18_combout\,
	combout => \Selector4~72_combout\);

-- Location: LCCOMB_X32_Y31_N22
\Selector6~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~59_combout\ = ascii_char(0) $ (ascii_char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector6~59_combout\);

-- Location: LCCOMB_X35_Y34_N12
\Selector4~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~57_combout\ = (!ascii_char(5) & (\Selector2~21_combout\ & ((!ascii_char(2)) # (!\Selector6~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector2~21_combout\,
	datac => \Selector6~59_combout\,
	datad => ascii_char(2),
	combout => \Selector4~57_combout\);

-- Location: LCCOMB_X31_Y34_N18
\Selector4~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~59_combout\ = (ascii_char(2) & (((ascii_char(1))))) # (!ascii_char(2) & ((ascii_char(4) & ((ascii_char(1)))) # (!ascii_char(4) & (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector4~59_combout\);

-- Location: LCCOMB_X35_Y34_N30
\Selector5~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~21_combout\ = (ascii_char(2) & !ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datac => ascii_char(0),
	combout => \Selector5~21_combout\);

-- Location: LCCOMB_X31_Y30_N4
\Selector6~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~62_combout\ = (ascii_char(4)) # (!ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Selector6~62_combout\);

-- Location: LCCOMB_X35_Y34_N8
\Selector4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~60_combout\ = (ascii_char(5) & (((\Mux4~0_combout\ & \Selector5~21_combout\)) # (!\Selector6~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Mux4~0_combout\,
	datac => \Selector5~21_combout\,
	datad => \Selector6~62_combout\,
	combout => \Selector4~60_combout\);

-- Location: LCCOMB_X32_Y29_N0
\Selector6~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~93_combout\ = (ascii_char(2) & !ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Selector6~93_combout\);

-- Location: LCCOMB_X35_Y34_N2
\Selector4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~58_combout\ = (\Selector2~23_combout\ & ((ascii_char(1) & ((\Selector6~93_combout\) # (!ascii_char(0)))) # (!ascii_char(1) & ((ascii_char(0)) # (!\Selector6~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => \Selector6~93_combout\,
	datad => \Selector2~23_combout\,
	combout => \Selector4~58_combout\);

-- Location: LCCOMB_X35_Y34_N10
\Selector4~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~61_combout\ = (\Selector4~57_combout\) # ((\Selector4~58_combout\) # ((\Selector4~59_combout\ & \Selector4~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~57_combout\,
	datab => \Selector4~59_combout\,
	datac => \Selector4~60_combout\,
	datad => \Selector4~58_combout\,
	combout => \Selector4~61_combout\);

-- Location: LCCOMB_X35_Y34_N0
\Selector4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~62_combout\ = (\shiftedColumnState.COL3~q\ & (((\Add0~0_combout\)))) # (!\shiftedColumnState.COL3~q\ & ((\Add0~0_combout\ & ((\Selector4~61_combout\))) # (!\Add0~0_combout\ & (\Selector4~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~72_combout\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \Add0~0_combout\,
	datad => \Selector4~61_combout\,
	combout => \Selector4~62_combout\);

-- Location: LCCOMB_X35_Y34_N18
\Selector4~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~63_combout\ = (\shiftedColumnState.COL3~q\ & ((\Selector4~62_combout\ & (\Selector4~33_combout\)) # (!\Selector4~62_combout\ & ((\Selector4~75_combout\))))) # (!\shiftedColumnState.COL3~q\ & (((\Selector4~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~33_combout\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \Selector4~75_combout\,
	datad => \Selector4~62_combout\,
	combout => \Selector4~63_combout\);

-- Location: LCCOMB_X35_Y34_N20
\Selector4~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~64_combout\ = (\Selector4~56_combout\) # ((!\shiftedColumnState.COL6~q\ & (\Selector6~87_combout\ & \Selector4~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Selector6~87_combout\,
	datac => \Selector4~56_combout\,
	datad => \Selector4~63_combout\,
	combout => \Selector4~64_combout\);

-- Location: LCCOMB_X35_Y34_N16
\Selector4~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~65_combout\ = (\Selector5~22_combout\) # ((\Selector5~23_combout\ & ((\Selector4~68_combout\) # (\Selector4~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~23_combout\,
	datab => \Selector5~22_combout\,
	datac => \Selector4~68_combout\,
	datad => \Selector4~64_combout\,
	combout => \Selector4~65_combout\);

-- Location: FF_X35_Y34_N17
\screenArea[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Selector4~65_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][0]~q\);

-- Location: LCCOMB_X40_Y34_N16
\screenArea[4][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][1]~feeder_combout\ = \screenArea[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][0]~q\,
	combout => \screenArea[4][1]~feeder_combout\);

-- Location: FF_X40_Y34_N17
\screenArea[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][1]~q\);

-- Location: FF_X39_Y32_N23
\screenArea[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[4][1]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][2]~q\);

-- Location: LCCOMB_X39_Y32_N16
\screenArea[4][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][3]~feeder_combout\ = \screenArea[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][2]~q\,
	combout => \screenArea[4][3]~feeder_combout\);

-- Location: FF_X39_Y32_N17
\screenArea[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][3]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][3]~q\);

-- Location: LCCOMB_X38_Y32_N24
\screenArea[4][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][4]~feeder_combout\ = \screenArea[4][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][3]~q\,
	combout => \screenArea[4][4]~feeder_combout\);

-- Location: FF_X38_Y32_N25
\screenArea[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][4]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][4]~q\);

-- Location: LCCOMB_X37_Y32_N14
\screenArea[4][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][5]~feeder_combout\ = \screenArea[4][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][4]~q\,
	combout => \screenArea[4][5]~feeder_combout\);

-- Location: FF_X37_Y32_N15
\screenArea[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][5]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][5]~q\);

-- Location: LCCOMB_X40_Y33_N2
\screenArea[4][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][6]~feeder_combout\ = \screenArea[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][5]~q\,
	combout => \screenArea[4][6]~feeder_combout\);

-- Location: FF_X40_Y33_N3
\screenArea[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][6]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][6]~q\);

-- Location: LCCOMB_X40_Y33_N18
\screenArea[4][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][7]~feeder_combout\ = \screenArea[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][6]~q\,
	combout => \screenArea[4][7]~feeder_combout\);

-- Location: FF_X40_Y33_N19
\screenArea[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][7]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][7]~q\);

-- Location: LCCOMB_X40_Y33_N14
\screenArea[4][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][8]~feeder_combout\ = \screenArea[4][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][7]~q\,
	combout => \screenArea[4][8]~feeder_combout\);

-- Location: FF_X40_Y33_N15
\screenArea[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][8]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][8]~q\);

-- Location: LCCOMB_X41_Y33_N8
\screenArea[4][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][9]~feeder_combout\ = \screenArea[4][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][8]~q\,
	combout => \screenArea[4][9]~feeder_combout\);

-- Location: FF_X41_Y33_N9
\screenArea[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][9]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][9]~q\);

-- Location: FF_X41_Y33_N1
\screenArea[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[4][9]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][10]~q\);

-- Location: FF_X42_Y33_N19
\screenArea[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[4][10]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][11]~q\);

-- Location: LCCOMB_X43_Y33_N26
\screenArea[4][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][12]~feeder_combout\ = \screenArea[4][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][11]~q\,
	combout => \screenArea[4][12]~feeder_combout\);

-- Location: FF_X43_Y33_N27
\screenArea[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][12]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][12]~q\);

-- Location: LCCOMB_X43_Y33_N6
\screenArea[4][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][13]~feeder_combout\ = \screenArea[4][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][12]~q\,
	combout => \screenArea[4][13]~feeder_combout\);

-- Location: FF_X43_Y33_N7
\screenArea[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][13]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][13]~q\);

-- Location: LCCOMB_X40_Y31_N12
\screenArea[4][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][14]~feeder_combout\ = \screenArea[4][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][13]~q\,
	combout => \screenArea[4][14]~feeder_combout\);

-- Location: FF_X40_Y31_N13
\screenArea[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][14]~q\);

-- Location: LCCOMB_X39_Y31_N24
\screenArea[4][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][15]~feeder_combout\ = \screenArea[4][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][14]~q\,
	combout => \screenArea[4][15]~feeder_combout\);

-- Location: FF_X39_Y31_N25
\screenArea[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][15]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][15]~q\);

-- Location: LCCOMB_X39_Y31_N6
\screenArea[4][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][16]~feeder_combout\ = \screenArea[4][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][15]~q\,
	combout => \screenArea[4][16]~feeder_combout\);

-- Location: FF_X39_Y31_N7
\screenArea[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][16]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][16]~q\);

-- Location: LCCOMB_X39_Y31_N28
\screenArea[4][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][17]~feeder_combout\ = \screenArea[4][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][16]~q\,
	combout => \screenArea[4][17]~feeder_combout\);

-- Location: FF_X39_Y31_N29
\screenArea[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][17]~q\);

-- Location: LCCOMB_X38_Y31_N6
\screenArea[4][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][18]~feeder_combout\ = \screenArea[4][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][17]~q\,
	combout => \screenArea[4][18]~feeder_combout\);

-- Location: FF_X38_Y31_N7
\screenArea[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][18]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][18]~q\);

-- Location: LCCOMB_X41_Y31_N16
\screenArea[4][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][19]~feeder_combout\ = \screenArea[4][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][18]~q\,
	combout => \screenArea[4][19]~feeder_combout\);

-- Location: FF_X41_Y31_N17
\screenArea[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][19]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][19]~q\);

-- Location: LCCOMB_X41_Y32_N14
\screenArea[4][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][20]~feeder_combout\ = \screenArea[4][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][19]~q\,
	combout => \screenArea[4][20]~feeder_combout\);

-- Location: FF_X41_Y32_N15
\screenArea[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][20]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][20]~q\);

-- Location: LCCOMB_X41_Y34_N0
\screenArea[4][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][21]~feeder_combout\ = \screenArea[4][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][20]~q\,
	combout => \screenArea[4][21]~feeder_combout\);

-- Location: FF_X41_Y34_N1
\screenArea[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][21]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][21]~q\);

-- Location: LCCOMB_X41_Y34_N16
\screenArea[4][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][22]~feeder_combout\ = \screenArea[4][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][21]~q\,
	combout => \screenArea[4][22]~feeder_combout\);

-- Location: FF_X41_Y34_N17
\screenArea[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][22]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][22]~q\);

-- Location: LCCOMB_X42_Y34_N28
\screenArea[4][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][23]~feeder_combout\ = \screenArea[4][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][22]~q\,
	combout => \screenArea[4][23]~feeder_combout\);

-- Location: FF_X42_Y34_N29
\screenArea[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][23]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][23]~q\);

-- Location: LCCOMB_X42_Y34_N16
\screenArea[4][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][24]~feeder_combout\ = \screenArea[4][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][23]~q\,
	combout => \screenArea[4][24]~feeder_combout\);

-- Location: FF_X42_Y34_N17
\screenArea[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][24]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][24]~q\);

-- Location: LCCOMB_X39_Y32_N18
\screenArea[4][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][25]~feeder_combout\ = \screenArea[4][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][24]~q\,
	combout => \screenArea[4][25]~feeder_combout\);

-- Location: FF_X39_Y32_N19
\screenArea[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][25]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][25]~q\);

-- Location: LCCOMB_X37_Y34_N26
\screenArea[4][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][26]~feeder_combout\ = \screenArea[4][25]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][25]~q\,
	combout => \screenArea[4][26]~feeder_combout\);

-- Location: FF_X37_Y34_N27
\screenArea[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][26]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][26]~q\);

-- Location: LCCOMB_X39_Y33_N24
\screenArea[4][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][27]~feeder_combout\ = \screenArea[4][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][26]~q\,
	combout => \screenArea[4][27]~feeder_combout\);

-- Location: FF_X39_Y33_N25
\screenArea[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][27]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][27]~q\);

-- Location: LCCOMB_X39_Y33_N30
\screenArea[4][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][28]~feeder_combout\ = \screenArea[4][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][27]~q\,
	combout => \screenArea[4][28]~feeder_combout\);

-- Location: FF_X39_Y33_N31
\screenArea[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][28]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][28]~q\);

-- Location: LCCOMB_X37_Y35_N2
\screenArea[4][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][29]~feeder_combout\ = \screenArea[4][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][28]~q\,
	combout => \screenArea[4][29]~feeder_combout\);

-- Location: FF_X37_Y35_N3
\screenArea[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][29]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][29]~q\);

-- Location: LCCOMB_X37_Y35_N16
\screenArea[4][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][30]~feeder_combout\ = \screenArea[4][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][29]~q\,
	combout => \screenArea[4][30]~feeder_combout\);

-- Location: FF_X37_Y35_N17
\screenArea[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[4][30]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][30]~q\);

-- Location: FF_X38_Y35_N27
\screenArea[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[4][30]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][31]~q\);

-- Location: LCCOMB_X36_Y32_N10
\Selector5~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~67_combout\ = (!\shiftedColumnState.COL5~q\ & !\shiftedColumnState.COL6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datad => \shiftedColumnState.COL6~q\,
	combout => \Selector5~67_combout\);

-- Location: LCCOMB_X30_Y33_N6
\Selector5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~8_combout\ = (ascii_char(2) & (!ascii_char(1) & (ascii_char(0) $ (!ascii_char(3))))) # (!ascii_char(2) & (ascii_char(0) & ((!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector5~8_combout\);

-- Location: LCCOMB_X31_Y33_N20
\Selector5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~7_combout\ = (ascii_char(0) & ((ascii_char(2)) # (ascii_char(3) $ (ascii_char(1))))) # (!ascii_char(0) & (ascii_char(2) $ (((ascii_char(3)) # (!ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector5~7_combout\);

-- Location: LCCOMB_X31_Y33_N22
\Selector5~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~73_combout\ = (ascii_char(4) & ((ascii_char(5) & (\Selector5~8_combout\)) # (!ascii_char(5) & ((\Selector5~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Selector5~8_combout\,
	datad => \Selector5~7_combout\,
	combout => \Selector5~73_combout\);

-- Location: LCCOMB_X31_Y33_N4
\Selector5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~28_combout\ = (!ascii_char(0) & (!ascii_char(5) & (!ascii_char(4) & !ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector5~28_combout\);

-- Location: LCCOMB_X31_Y33_N10
\Selector5~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~29_combout\ = (\Selector5~28_combout\) # ((!ascii_char(4) & (ascii_char(5) & \Selector4~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Selector5~28_combout\,
	datad => \Selector4~50_combout\,
	combout => \Selector5~29_combout\);

-- Location: LCCOMB_X31_Y33_N12
\Selector5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~30_combout\ = (\Add0~0_combout\ & (\shiftedColumnState.COL6~q\ & ((\Selector5~73_combout\) # (\Selector5~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \Selector5~73_combout\,
	datad => \Selector5~29_combout\,
	combout => \Selector5~30_combout\);

-- Location: LCCOMB_X35_Y30_N12
\Selector5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~24_combout\ = (\shiftedColumnState.COL5~q\ & !\shiftedColumnState.COL6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shiftedColumnState.COL5~q\,
	datad => \shiftedColumnState.COL6~q\,
	combout => \Selector5~24_combout\);

-- Location: LCCOMB_X30_Y32_N22
\Selector5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~40_combout\ = (ascii_char(2) & (ascii_char(1) & ((!ascii_char(0))))) # (!ascii_char(2) & (!ascii_char(3) & ((!ascii_char(0)) # (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector5~40_combout\);

-- Location: LCCOMB_X30_Y32_N28
\Selector5~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~39_combout\ = ascii_char(2) $ (((ascii_char(1) & (ascii_char(3) $ (ascii_char(0)))) # (!ascii_char(1) & ((ascii_char(3)) # (!ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector5~39_combout\);

-- Location: LCCOMB_X30_Y32_N24
\Selector5~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~41_combout\ = (ascii_char(4) & ((\Selector5~39_combout\))) # (!ascii_char(4) & (\Selector5~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => \Selector5~40_combout\,
	datad => \Selector5~39_combout\,
	combout => \Selector5~41_combout\);

-- Location: LCCOMB_X32_Y29_N10
\Selector2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~26_combout\ = (\shiftedColumnState.COL6~q\ & (ascii_char(6) $ (ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(6),
	datac => \shiftedColumnState.COL6~q\,
	datad => ascii_char(5),
	combout => \Selector2~26_combout\);

-- Location: LCCOMB_X31_Y32_N24
\Selector5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~34_combout\ = (ascii_char(1) & (!ascii_char(4) & (ascii_char(3)))) # (!ascii_char(1) & (!ascii_char(2) & (ascii_char(4) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector5~34_combout\);

-- Location: LCCOMB_X31_Y32_N26
\Selector5~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~35_combout\ = (ascii_char(0) & (!ascii_char(5) & \Selector5~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(0),
	datac => ascii_char(5),
	datad => \Selector5~34_combout\,
	combout => \Selector5~35_combout\);

-- Location: LCCOMB_X30_Y32_N6
\Selector5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~32_combout\ = (ascii_char(2) & (!ascii_char(3) & ((ascii_char(1)) # (!ascii_char(0))))) # (!ascii_char(2) & (ascii_char(0) & (!ascii_char(1) & ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector5~32_combout\);

-- Location: LCCOMB_X31_Y32_N28
\Selector5~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~31_combout\ = (ascii_char(3) & (ascii_char(0) & (!ascii_char(1) & ascii_char(2)))) # (!ascii_char(3) & (!ascii_char(0) & ((!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector5~31_combout\);

-- Location: LCCOMB_X31_Y32_N30
\Selector5~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~33_combout\ = (!\Add0~0_combout\ & ((ascii_char(4) & ((\Selector5~31_combout\))) # (!ascii_char(4) & (\Selector5~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Add0~0_combout\,
	datac => \Selector5~32_combout\,
	datad => \Selector5~31_combout\,
	combout => \Selector5~33_combout\);

-- Location: LCCOMB_X31_Y32_N4
\Selector5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~36_combout\ = (ascii_char(1) & (!ascii_char(2) & (ascii_char(3) $ (ascii_char(0))))) # (!ascii_char(1) & (ascii_char(3) & (ascii_char(0) & ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector5~36_combout\);

-- Location: LCCOMB_X31_Y32_N2
\Selector5~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~72_combout\ = (\Selector1~32_combout\ & ((ascii_char(3) & (ascii_char(0) & ascii_char(1))) # (!ascii_char(3) & (!ascii_char(0) & !ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => \Selector1~32_combout\,
	combout => \Selector5~72_combout\);

-- Location: LCCOMB_X31_Y32_N18
\Selector5~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~37_combout\ = (ascii_char(5) & ((\Selector5~72_combout\) # ((\Selector5~36_combout\ & !ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector5~36_combout\,
	datac => ascii_char(4),
	datad => \Selector5~72_combout\,
	combout => \Selector5~37_combout\);

-- Location: LCCOMB_X31_Y32_N20
\Selector5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~38_combout\ = (\Selector5~33_combout\) # ((\Add0~0_combout\ & ((\Selector5~35_combout\) # (\Selector5~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~35_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector5~33_combout\,
	datad => \Selector5~37_combout\,
	combout => \Selector5~38_combout\);

-- Location: LCCOMB_X31_Y32_N22
\Selector5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~42_combout\ = (\Selector5~24_combout\ & ((\Selector5~38_combout\) # ((\Selector5~41_combout\ & \Selector2~26_combout\)))) # (!\Selector5~24_combout\ & (\Selector5~41_combout\ & (\Selector2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~24_combout\,
	datab => \Selector5~41_combout\,
	datac => \Selector2~26_combout\,
	datad => \Selector5~38_combout\,
	combout => \Selector5~42_combout\);

-- Location: LCCOMB_X32_Y32_N26
\Selector5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~56_combout\ = (ascii_char(2) & ((ascii_char(1) & (!ascii_char(0) & !ascii_char(3))) # (!ascii_char(1) & ((ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector5~56_combout\);

-- Location: LCCOMB_X32_Y32_N28
\Selector5~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~55_combout\ = (ascii_char(1) & ((ascii_char(0) & ((ascii_char(2)) # (ascii_char(3)))) # (!ascii_char(0) & ((!ascii_char(3)))))) # (!ascii_char(1) & (ascii_char(2) $ (((ascii_char(0)) # (ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector5~55_combout\);

-- Location: LCCOMB_X32_Y32_N0
\Selector6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~58_combout\ = (!ascii_char(2) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector6~58_combout\);

-- Location: LCCOMB_X32_Y32_N12
\Selector5~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~57_combout\ = (ascii_char(5) & ((\Selector5~56_combout\) # ((\Selector6~58_combout\)))) # (!ascii_char(5) & (\Selector5~56_combout\ $ ((\Selector5~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~56_combout\,
	datab => \Selector5~55_combout\,
	datac => ascii_char(5),
	datad => \Selector6~58_combout\,
	combout => \Selector5~57_combout\);

-- Location: LCCOMB_X32_Y32_N18
\Selector5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~58_combout\ = (!ascii_char(4) & ((\Selector5~57_combout\ & (ascii_char(5) & ascii_char(6))) # (!\Selector5~57_combout\ & (!ascii_char(5) & !ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~57_combout\,
	datab => ascii_char(5),
	datac => ascii_char(6),
	datad => ascii_char(4),
	combout => \Selector5~58_combout\);

-- Location: LCCOMB_X34_Y30_N16
\Selector3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~26_combout\ = (ascii_char(4) & (ascii_char(6) $ (!ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(6),
	datad => ascii_char(5),
	combout => \Selector3~26_combout\);

-- Location: LCCOMB_X35_Y30_N22
\Selector6~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~94_combout\ = (!ascii_char(0) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector6~94_combout\);

-- Location: LCCOMB_X35_Y32_N28
\Selector5~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~63_combout\ = (ascii_char(0) & (ascii_char(2) $ (((ascii_char(1)) # (!ascii_char(3)))))) # (!ascii_char(0) & (ascii_char(2) & ((!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector5~63_combout\);

-- Location: LCCOMB_X35_Y32_N22
\Selector5~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~64_combout\ = (ascii_char(5) & (((\Selector5~63_combout\)))) # (!ascii_char(5) & (ascii_char(2) & (\Selector6~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => \Selector6~94_combout\,
	datad => \Selector5~63_combout\,
	combout => \Selector5~64_combout\);

-- Location: LCCOMB_X35_Y32_N4
\Selector5~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~59_combout\ = ascii_char(3) $ (((ascii_char(1) & (ascii_char(0))) # (!ascii_char(1) & ((!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector5~59_combout\);

-- Location: LCCOMB_X35_Y32_N14
\Selector5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~60_combout\ = (ascii_char(4) & ((\Selector5~59_combout\ & (!ascii_char(0))) # (!\Selector5~59_combout\ & ((\Selector6~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => \Selector5~59_combout\,
	datad => \Selector6~92_combout\,
	combout => \Selector5~60_combout\);

-- Location: LCCOMB_X35_Y32_N0
\Selector5~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~61_combout\ = (ascii_char(1) & ((ascii_char(3) & ((ascii_char(0)) # (!ascii_char(2)))) # (!ascii_char(3) & ((ascii_char(2)))))) # (!ascii_char(1) & (((ascii_char(3) & ascii_char(2))) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector5~61_combout\);

-- Location: LCCOMB_X35_Y32_N10
\Selector5~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~62_combout\ = (!\Add0~0_combout\ & ((\Selector5~60_combout\) # ((!ascii_char(4) & \Selector5~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector5~60_combout\,
	datad => \Selector5~61_combout\,
	combout => \Selector5~62_combout\);

-- Location: LCCOMB_X35_Y32_N12
\Selector5~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~65_combout\ = (\Selector5~62_combout\) # ((\Selector3~26_combout\ & \Selector5~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~26_combout\,
	datac => \Selector5~64_combout\,
	datad => \Selector5~62_combout\,
	combout => \Selector5~65_combout\);

-- Location: LCCOMB_X30_Y32_N12
\Selector5~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~74_combout\ = (ascii_char(2) & ((ascii_char(3) & (!ascii_char(1) & ascii_char(0))) # (!ascii_char(3) & (ascii_char(1))))) # (!ascii_char(2) & ((ascii_char(1) & ((ascii_char(0)))) # (!ascii_char(1) & (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector5~74_combout\);

-- Location: LCCOMB_X30_Y32_N14
\Selector5~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~75_combout\ = (ascii_char(4) & (!ascii_char(3) & (ascii_char(1) $ (\Selector5~74_combout\)))) # (!ascii_char(4) & (\Selector5~74_combout\ & ((ascii_char(3)) # (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => \Selector5~74_combout\,
	combout => \Selector5~75_combout\);

-- Location: LCCOMB_X32_Y31_N18
\Selector5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~50_combout\ = (ascii_char(4) & (ascii_char(2) & (ascii_char(3) $ (!ascii_char(1))))) # (!ascii_char(4) & (ascii_char(3) & (ascii_char(2) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(2),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector5~50_combout\);

-- Location: LCCOMB_X32_Y31_N0
\Selector5~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~51_combout\ = (!ascii_char(0) & (ascii_char(5) & \Selector5~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datac => ascii_char(5),
	datad => \Selector5~50_combout\,
	combout => \Selector5~51_combout\);

-- Location: LCCOMB_X36_Y32_N2
\Selector4~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~73_combout\ = (!ascii_char(3) & ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector4~73_combout\);

-- Location: LCCOMB_X30_Y31_N14
\Selector5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~52_combout\ = (ascii_char(2) & (ascii_char(5) & (!ascii_char(4)))) # (!ascii_char(2) & (!ascii_char(5) & (ascii_char(4) $ (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector5~52_combout\);

-- Location: LCCOMB_X34_Y32_N22
\Selector5~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~47_combout\ = (ascii_char(3) & (ascii_char(4) & (ascii_char(1) $ (!ascii_char(0))))) # (!ascii_char(3) & (!ascii_char(0) & (ascii_char(4) $ (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(4),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector5~47_combout\);

-- Location: LCCOMB_X31_Y31_N30
\Selector5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~48_combout\ = (ascii_char(1) & (ascii_char(0) & (ascii_char(3) $ (ascii_char(4))))) # (!ascii_char(1) & (((ascii_char(3) & !ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector5~48_combout\);

-- Location: LCCOMB_X34_Y32_N24
\Selector5~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~49_combout\ = (ascii_char(2) & (!ascii_char(5) & ((\Selector5~48_combout\)))) # (!ascii_char(2) & (ascii_char(5) & (\Selector5~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => \Selector5~47_combout\,
	datad => \Selector5~48_combout\,
	combout => \Selector5~49_combout\);

-- Location: LCCOMB_X34_Y32_N30
\Selector5~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~53_combout\ = (\Selector5~51_combout\) # ((\Selector5~49_combout\) # ((\Selector4~73_combout\ & \Selector5~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~51_combout\,
	datab => \Selector4~73_combout\,
	datac => \Selector5~52_combout\,
	datad => \Selector5~49_combout\,
	combout => \Selector5~53_combout\);

-- Location: LCCOMB_X34_Y32_N14
\Selector5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~18_combout\ = (ascii_char(5) & (ascii_char(2) & (ascii_char(1) $ (ascii_char(4))))) # (!ascii_char(5) & (ascii_char(4) & ((ascii_char(1)) # (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector5~18_combout\);

-- Location: LCCOMB_X35_Y32_N30
\Selector5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~17_combout\ = (ascii_char(1) & (!ascii_char(2) & (ascii_char(4) $ (ascii_char(5))))) # (!ascii_char(1) & (ascii_char(4) & (!ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector5~17_combout\);

-- Location: LCCOMB_X34_Y32_N4
\Selector5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~15_combout\ = (ascii_char(5) & (((ascii_char(1) & !ascii_char(4))) # (!ascii_char(2)))) # (!ascii_char(5) & ((ascii_char(4) & (!ascii_char(1))) # (!ascii_char(4) & ((ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector5~15_combout\);

-- Location: LCCOMB_X34_Y32_N10
\Selector5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~14_combout\ = (ascii_char(2) & ((ascii_char(4)) # ((ascii_char(1) & !ascii_char(5))))) # (!ascii_char(2) & (((!ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector5~14_combout\);

-- Location: LCCOMB_X34_Y32_N28
\Selector5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~19_combout\ = (ascii_char(3) & (ascii_char(0))) # (!ascii_char(3) & ((ascii_char(0) & (\Selector5~15_combout\)) # (!ascii_char(0) & ((\Selector5~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => \Selector5~15_combout\,
	datad => \Selector5~14_combout\,
	combout => \Selector5~19_combout\);

-- Location: LCCOMB_X34_Y32_N26
\Selector5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~20_combout\ = (ascii_char(3) & ((\Selector5~19_combout\ & (\Selector5~18_combout\)) # (!\Selector5~19_combout\ & ((\Selector5~17_combout\))))) # (!ascii_char(3) & (((\Selector5~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => \Selector5~18_combout\,
	datac => \Selector5~17_combout\,
	datad => \Selector5~19_combout\,
	combout => \Selector5~20_combout\);

-- Location: LCCOMB_X35_Y29_N4
\Selector6~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~83_combout\ = (!ascii_char(4) & !ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~83_combout\);

-- Location: LCCOMB_X34_Y32_N8
\Selector5~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~43_combout\ = (\Mux4~0_combout\ & ((ascii_char(2) & ((!ascii_char(1)) # (!ascii_char(0)))) # (!ascii_char(2) & ((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => \Mux4~0_combout\,
	datad => ascii_char(1),
	combout => \Selector5~43_combout\);

-- Location: LCCOMB_X34_Y32_N18
\Selector5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~44_combout\ = (\Selector2~21_combout\ & ((ascii_char(1) & (ascii_char(0) $ (!ascii_char(2)))) # (!ascii_char(1) & ((!ascii_char(2)) # (!ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => \Selector2~21_combout\,
	combout => \Selector5~44_combout\);

-- Location: LCCOMB_X34_Y32_N12
\Selector5~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~45_combout\ = (\Selector5~43_combout\) # ((\Selector5~44_combout\) # ((\Selector6~83_combout\ & \Selector5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~83_combout\,
	datab => \Selector5~43_combout\,
	datac => \Selector5~26_combout\,
	datad => \Selector5~44_combout\,
	combout => \Selector5~45_combout\);

-- Location: LCCOMB_X34_Y32_N20
\Selector5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~46_combout\ = (\Add0~0_combout\ & ((\Selector5~20_combout\) # ((\shiftedColumnState.COL3~q\)))) # (!\Add0~0_combout\ & (((!\shiftedColumnState.COL3~q\ & \Selector5~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~20_combout\,
	datab => \Add0~0_combout\,
	datac => \shiftedColumnState.COL3~q\,
	datad => \Selector5~45_combout\,
	combout => \Selector5~46_combout\);

-- Location: LCCOMB_X34_Y32_N16
\Selector5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~54_combout\ = (\shiftedColumnState.COL3~q\ & ((\Selector5~46_combout\ & ((\Selector5~53_combout\))) # (!\Selector5~46_combout\ & (\Selector5~75_combout\)))) # (!\shiftedColumnState.COL3~q\ & (((\Selector5~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => \Selector5~75_combout\,
	datac => \Selector5~53_combout\,
	datad => \Selector5~46_combout\,
	combout => \Selector5~54_combout\);

-- Location: LCCOMB_X34_Y32_N6
\Selector5~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~66_combout\ = (\shiftedColumnState.COL4~q\ & ((\Selector5~58_combout\) # ((\Selector5~65_combout\)))) # (!\shiftedColumnState.COL4~q\ & (((\Selector5~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~58_combout\,
	datab => \shiftedColumnState.COL4~q\,
	datac => \Selector5~65_combout\,
	datad => \Selector5~54_combout\,
	combout => \Selector5~66_combout\);

-- Location: LCCOMB_X34_Y32_N0
\Selector5~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~68_combout\ = (\Selector5~30_combout\) # ((\Selector5~42_combout\) # ((\Selector5~67_combout\ & \Selector5~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~67_combout\,
	datab => \Selector5~30_combout\,
	datac => \Selector5~42_combout\,
	datad => \Selector5~66_combout\,
	combout => \Selector5~68_combout\);

-- Location: LCCOMB_X34_Y32_N2
\Selector5~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~69_combout\ = (!\shiftedColumnState.COL7~q\ & ((\screenArea[1][0]~4_combout\ & (\Mux4~1_combout\)) # (!\screenArea[1][0]~4_combout\ & ((\Selector5~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \Mux4~1_combout\,
	datac => \screenArea[1][0]~4_combout\,
	datad => \Selector5~68_combout\,
	combout => \Selector5~69_combout\);

-- Location: FF_X34_Y32_N3
\screenArea[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Selector5~69_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][0]~q\);

-- Location: LCCOMB_X39_Y33_N10
\screenArea[5][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][1]~feeder_combout\ = \screenArea[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][0]~q\,
	combout => \screenArea[5][1]~feeder_combout\);

-- Location: FF_X39_Y33_N11
\screenArea[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][1]~q\);

-- Location: LCCOMB_X40_Y32_N8
\screenArea[5][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][2]~feeder_combout\ = \screenArea[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][1]~q\,
	combout => \screenArea[5][2]~feeder_combout\);

-- Location: FF_X40_Y32_N9
\screenArea[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][2]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][2]~q\);

-- Location: LCCOMB_X37_Y32_N30
\screenArea[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][3]~feeder_combout\ = \screenArea[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][2]~q\,
	combout => \screenArea[5][3]~feeder_combout\);

-- Location: FF_X37_Y32_N31
\screenArea[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][3]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][3]~q\);

-- Location: FF_X38_Y32_N23
\screenArea[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][3]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][4]~q\);

-- Location: FF_X38_Y32_N19
\screenArea[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][4]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][5]~q\);

-- Location: FF_X40_Y33_N5
\screenArea[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][5]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][6]~q\);

-- Location: FF_X40_Y33_N1
\screenArea[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][6]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][7]~q\);

-- Location: FF_X41_Y33_N23
\screenArea[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][7]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][8]~q\);

-- Location: FF_X41_Y33_N17
\screenArea[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][8]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][9]~q\);

-- Location: LCCOMB_X42_Y33_N6
\screenArea[5][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][10]~feeder_combout\ = \screenArea[5][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][9]~q\,
	combout => \screenArea[5][10]~feeder_combout\);

-- Location: FF_X42_Y33_N7
\screenArea[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][10]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][10]~q\);

-- Location: LCCOMB_X42_Y33_N28
\screenArea[5][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][11]~feeder_combout\ = \screenArea[5][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][10]~q\,
	combout => \screenArea[5][11]~feeder_combout\);

-- Location: FF_X42_Y33_N29
\screenArea[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][11]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][11]~q\);

-- Location: LCCOMB_X42_Y33_N30
\screenArea[5][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][12]~feeder_combout\ = \screenArea[5][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][11]~q\,
	combout => \screenArea[5][12]~feeder_combout\);

-- Location: FF_X42_Y33_N31
\screenArea[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][12]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][12]~q\);

-- Location: FF_X43_Y33_N29
\screenArea[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][12]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][13]~q\);

-- Location: LCCOMB_X40_Y31_N6
\screenArea[5][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][14]~feeder_combout\ = \screenArea[5][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][13]~q\,
	combout => \screenArea[5][14]~feeder_combout\);

-- Location: FF_X40_Y31_N7
\screenArea[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][14]~q\);

-- Location: LCCOMB_X39_Y31_N14
\screenArea[5][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][15]~feeder_combout\ = \screenArea[5][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][14]~q\,
	combout => \screenArea[5][15]~feeder_combout\);

-- Location: FF_X39_Y31_N15
\screenArea[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][15]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][15]~q\);

-- Location: FF_X39_Y31_N11
\screenArea[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][15]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][16]~q\);

-- Location: LCCOMB_X42_Y31_N2
\screenArea[5][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][17]~feeder_combout\ = \screenArea[5][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][16]~q\,
	combout => \screenArea[5][17]~feeder_combout\);

-- Location: FF_X42_Y31_N3
\screenArea[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][17]~q\);

-- Location: LCCOMB_X38_Y31_N12
\screenArea[5][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][18]~feeder_combout\ = \screenArea[5][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][17]~q\,
	combout => \screenArea[5][18]~feeder_combout\);

-- Location: FF_X38_Y31_N13
\screenArea[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][18]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][18]~q\);

-- Location: FF_X41_Y31_N9
\screenArea[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][18]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][19]~q\);

-- Location: FF_X41_Y31_N13
\screenArea[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][19]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][20]~q\);

-- Location: FF_X41_Y34_N5
\screenArea[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][20]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][21]~q\);

-- Location: FF_X41_Y34_N19
\screenArea[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][21]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][22]~q\);

-- Location: FF_X42_Y34_N27
\screenArea[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][22]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][23]~q\);

-- Location: FF_X42_Y34_N5
\screenArea[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][23]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][24]~q\);

-- Location: FF_X39_Y32_N3
\screenArea[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][24]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][25]~q\);

-- Location: LCCOMB_X39_Y33_N12
\screenArea[5][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][26]~feeder_combout\ = \screenArea[5][25]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][25]~q\,
	combout => \screenArea[5][26]~feeder_combout\);

-- Location: FF_X39_Y33_N13
\screenArea[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][26]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][26]~q\);

-- Location: LCCOMB_X39_Y33_N6
\screenArea[5][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][27]~feeder_combout\ = \screenArea[5][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][26]~q\,
	combout => \screenArea[5][27]~feeder_combout\);

-- Location: FF_X39_Y33_N7
\screenArea[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][27]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][27]~q\);

-- Location: LCCOMB_X39_Y33_N28
\screenArea[5][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][28]~feeder_combout\ = \screenArea[5][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][27]~q\,
	combout => \screenArea[5][28]~feeder_combout\);

-- Location: FF_X39_Y33_N29
\screenArea[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][28]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][28]~q\);

-- Location: FF_X37_Y35_N15
\screenArea[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][28]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][29]~q\);

-- Location: FF_X37_Y35_N23
\screenArea[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[5][29]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][30]~q\);

-- Location: LCCOMB_X38_Y35_N0
\screenArea[5][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][31]~feeder_combout\ = \screenArea[5][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][30]~q\,
	combout => \screenArea[5][31]~feeder_combout\);

-- Location: FF_X38_Y35_N1
\screenArea[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[5][31]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][31]~q\);

-- Location: LCCOMB_X38_Y35_N26
\Selector51~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~3_combout\ = (\scanStateVariable.LOAD6~q\ & (!\screenArea[5][31]~q\ & ((!\screenArea[4][31]~q\) # (!\scanStateVariable.LOAD5~q\)))) # (!\scanStateVariable.LOAD6~q\ & (((!\screenArea[4][31]~q\)) # (!\scanStateVariable.LOAD5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][31]~q\,
	datad => \screenArea[5][31]~q\,
	combout => \Selector51~3_combout\);

-- Location: LCCOMB_X32_Y34_N6
\Mux49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (ascii_char(0) & (((!ascii_char(1)) # (!ascii_char(4))) # (!ascii_char(2)))) # (!ascii_char(0) & ((ascii_char(2)) # ((ascii_char(4)) # (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X32_Y34_N18
\Selector2~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~69_combout\ = (!ascii_char(3) & (!ascii_char(5) & !\Mux49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datad => \Mux49~0_combout\,
	combout => \Selector2~69_combout\);

-- Location: LCCOMB_X36_Y30_N10
\Selector3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~59_combout\ = (!\shiftedColumnState.COL7~q\ & (\Selector2~69_combout\ & \screenArea[1][0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datac => \Selector2~69_combout\,
	datad => \screenArea[1][0]~4_combout\,
	combout => \Selector3~59_combout\);

-- Location: LCCOMB_X30_Y33_N0
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!ascii_char(5) & !ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(5),
	datad => ascii_char(4),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y34_N26
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!ascii_char(2) & !ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X31_Y33_N2
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!ascii_char(0) & (!ascii_char(1) & (\Mux0~0_combout\ & \Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => \Mux0~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X31_Y32_N8
\Selector3~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~63_combout\ = (ascii_char(0) & (ascii_char(1) $ (ascii_char(2) $ (ascii_char(3))))) # (!ascii_char(0) & (((!ascii_char(3)) # (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector3~63_combout\);

-- Location: LCCOMB_X31_Y32_N6
\Selector3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~62_combout\ = (ascii_char(2) & ((ascii_char(1) & ((!ascii_char(3)) # (!ascii_char(0)))) # (!ascii_char(1) & (ascii_char(0))))) # (!ascii_char(2) & (!ascii_char(3) & ((!ascii_char(0)) # (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector3~62_combout\);

-- Location: LCCOMB_X31_Y32_N14
\Selector3~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~64_combout\ = (ascii_char(4) & (!\Add0~0_combout\ & (\Selector3~63_combout\))) # (!ascii_char(4) & ((\Add0~0_combout\) # ((\Selector3~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Add0~0_combout\,
	datac => \Selector3~63_combout\,
	datad => \Selector3~62_combout\,
	combout => \Selector3~64_combout\);

-- Location: LCCOMB_X34_Y30_N20
\Selector3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~60_combout\ = (ascii_char(2) & ((ascii_char(3) & (ascii_char(0))) # (!ascii_char(3) & ((ascii_char(1)))))) # (!ascii_char(2) & (ascii_char(3) $ (((ascii_char(0) & ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector3~60_combout\);

-- Location: LCCOMB_X35_Y30_N20
\Selector3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~61_combout\ = (ascii_char(5) & (\Selector6~94_combout\ & (\Selector5~25_combout\))) # (!ascii_char(5) & (((\Selector3~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~94_combout\,
	datab => ascii_char(5),
	datac => \Selector5~25_combout\,
	datad => \Selector3~60_combout\,
	combout => \Selector3~61_combout\);

-- Location: LCCOMB_X30_Y33_N24
\Selector3~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~65_combout\ = (ascii_char(1) & ((ascii_char(2)) # ((!ascii_char(5) & !ascii_char(0))))) # (!ascii_char(1) & (((!ascii_char(5) & ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => ascii_char(0),
	combout => \Selector3~65_combout\);

-- Location: LCCOMB_X30_Y33_N8
\Selector3~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~70_combout\ = (\Selector3~65_combout\ & (ascii_char(3) $ (((ascii_char(0)) # (!ascii_char(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(5),
	datad => \Selector3~65_combout\,
	combout => \Selector3~70_combout\);

-- Location: LCCOMB_X35_Y30_N2
\Selector3~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~66_combout\ = (\Selector3~64_combout\ & (((\Selector3~70_combout\) # (!\Add0~0_combout\)))) # (!\Selector3~64_combout\ & (\Selector3~61_combout\ & (\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~64_combout\,
	datab => \Selector3~61_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector3~70_combout\,
	combout => \Selector3~66_combout\);

-- Location: LCCOMB_X35_Y30_N4
\Selector3~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~67_combout\ = (\shiftedColumnState.COL7~q\ & (((\Mux0~1_combout\)))) # (!\shiftedColumnState.COL7~q\ & (\shiftedColumnState.COL6~q\ & ((\Selector3~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \Mux0~1_combout\,
	datad => \Selector3~66_combout\,
	combout => \Selector3~67_combout\);

-- Location: LCCOMB_X32_Y30_N6
\Selector3~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~73_combout\ = ascii_char(5) $ (((ascii_char(2) & ((!ascii_char(4)))) # (!ascii_char(2) & (!ascii_char(3) & ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(5),
	combout => \Selector3~73_combout\);

-- Location: LCCOMB_X32_Y30_N24
\Selector3~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~74_combout\ = (ascii_char(1) & (\Selector3~73_combout\ & ((ascii_char(3)) # (!ascii_char(2))))) # (!ascii_char(1) & (ascii_char(2) & ((ascii_char(3)) # (\Selector3~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => \Selector3~73_combout\,
	combout => \Selector3~74_combout\);

-- Location: LCCOMB_X32_Y30_N10
\Selector3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~39_combout\ = (ascii_char(2) & (!ascii_char(4) & ascii_char(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector3~39_combout\);

-- Location: LCCOMB_X32_Y30_N16
\Selector3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~40_combout\ = (ascii_char(2) & (ascii_char(3) $ (((!ascii_char(1)))))) # (!ascii_char(2) & ((ascii_char(4) & ((!ascii_char(1)))) # (!ascii_char(4) & ((ascii_char(3)) # (ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector3~40_combout\);

-- Location: LCCOMB_X32_Y30_N26
\Selector3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~41_combout\ = (ascii_char(0) & (((!\Add0~0_combout\ & \Selector3~40_combout\)))) # (!ascii_char(0) & ((\Selector3~39_combout\) # ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~39_combout\,
	datab => ascii_char(0),
	datac => \Add0~0_combout\,
	datad => \Selector3~40_combout\,
	combout => \Selector3~41_combout\);

-- Location: LCCOMB_X32_Y30_N14
\Selector3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~37_combout\ = (ascii_char(3) & (ascii_char(1) $ (((!ascii_char(2) & ascii_char(4)))))) # (!ascii_char(3) & (ascii_char(4) & ((!ascii_char(1)) # (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector3~37_combout\);

-- Location: LCCOMB_X32_Y30_N0
\Selector3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~36_combout\ = (ascii_char(2) & (ascii_char(3) & (ascii_char(1) $ (ascii_char(4))))) # (!ascii_char(2) & (!ascii_char(3) & ((ascii_char(1)) # (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector3~36_combout\);

-- Location: LCCOMB_X32_Y30_N20
\Selector3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~38_combout\ = (ascii_char(5) & ((\Selector3~36_combout\))) # (!ascii_char(5) & (\Selector3~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(5),
	datac => \Selector3~37_combout\,
	datad => \Selector3~36_combout\,
	combout => \Selector3~38_combout\);

-- Location: LCCOMB_X32_Y30_N8
\Selector3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~42_combout\ = (\Add0~0_combout\ & ((\Selector3~41_combout\ & (\Selector3~74_combout\)) # (!\Selector3~41_combout\ & ((\Selector3~38_combout\))))) # (!\Add0~0_combout\ & (((\Selector3~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector3~74_combout\,
	datac => \Selector3~41_combout\,
	datad => \Selector3~38_combout\,
	combout => \Selector3~42_combout\);

-- Location: LCCOMB_X35_Y30_N26
\Selector3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~43_combout\ = (!\shiftedColumnState.COL5~q\ & (\shiftedColumnState.COL3~q\ & (!\shiftedColumnState.COL4~q\ & \Selector3~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \shiftedColumnState.COL4~q\,
	datad => \Selector3~42_combout\,
	combout => \Selector3~43_combout\);

-- Location: LCCOMB_X36_Y32_N20
\Selector3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~29_combout\ = (!\shiftedColumnState.COL6~q\ & (!\shiftedColumnState.COL7~q\ & ((\shiftedColumnState.COL2~q\) # (!\Selector2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~22_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \shiftedColumnState.COL2~q\,
	datad => \shiftedColumnState.COL7~q\,
	combout => \Selector3~29_combout\);

-- Location: LCCOMB_X35_Y31_N12
\Selector3~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~75_combout\ = (ascii_char(0) & (!ascii_char(3) & ((!ascii_char(4))))) # (!ascii_char(0) & (((ascii_char(1)) # (!ascii_char(4))) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector3~75_combout\);

-- Location: LCCOMB_X35_Y31_N26
\Selector3~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~76_combout\ = (ascii_char(3) & (ascii_char(2) $ (((\Selector3~75_combout\))))) # (!ascii_char(3) & ((ascii_char(2) & (!ascii_char(1) & \Selector3~75_combout\)) # (!ascii_char(2) & ((\Selector3~75_combout\) # (!ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => \Selector3~75_combout\,
	combout => \Selector3~76_combout\);

-- Location: LCCOMB_X34_Y31_N8
\Selector3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~30_combout\ = (ascii_char(3) & (ascii_char(2) & (!ascii_char(1) & ascii_char(0)))) # (!ascii_char(3) & ((ascii_char(1) & ((ascii_char(0)))) # (!ascii_char(1) & (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector3~30_combout\);

-- Location: LCCOMB_X34_Y31_N14
\Selector5~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~27_combout\ = (ascii_char(1) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector5~27_combout\);

-- Location: LCCOMB_X34_Y31_N18
\Selector3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~31_combout\ = (ascii_char(4) & (\Selector3~30_combout\)) # (!ascii_char(4) & (((\Selector5~27_combout\ & !\Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Selector3~30_combout\,
	datac => \Selector5~27_combout\,
	datad => \Mux14~6_combout\,
	combout => \Selector3~31_combout\);

-- Location: LCCOMB_X35_Y31_N30
\Selector3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~32_combout\ = (ascii_char(5) & ((ascii_char(6) & (\Selector3~76_combout\)) # (!ascii_char(6) & ((\Selector3~31_combout\))))) # (!ascii_char(5) & (ascii_char(6) & ((\Selector3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(6),
	datac => \Selector3~76_combout\,
	datad => \Selector3~31_combout\,
	combout => \Selector3~32_combout\);

-- Location: LCCOMB_X32_Y31_N14
\Selector3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~33_combout\ = (ascii_char(3) & (ascii_char(1) & ((ascii_char(0)) # (!ascii_char(4))))) # (!ascii_char(3) & (ascii_char(0) & ((ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector3~33_combout\);

-- Location: LCCOMB_X32_Y31_N24
\Selector3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~34_combout\ = (ascii_char(2) & (((\Selector3~33_combout\)))) # (!ascii_char(2) & (\Selector6~59_combout\ & ((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~59_combout\,
	datab => ascii_char(2),
	datac => \Selector3~33_combout\,
	datad => \Mux4~0_combout\,
	combout => \Selector3~34_combout\);

-- Location: LCCOMB_X35_Y30_N8
\Selector3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~35_combout\ = (\shiftedColumnState.COL5~q\ & ((\Selector3~32_combout\) # ((\Selector4~39_combout\ & \Selector3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \Selector4~39_combout\,
	datac => \Selector3~32_combout\,
	datad => \Selector3~34_combout\,
	combout => \Selector3~35_combout\);

-- Location: LCCOMB_X34_Y30_N4
\Selector3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~52_combout\ = (ascii_char(5) & ((ascii_char(3) & (!ascii_char(0))) # (!ascii_char(3) & (ascii_char(0) & ascii_char(1))))) # (!ascii_char(5) & ((ascii_char(0) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector3~52_combout\);

-- Location: LCCOMB_X34_Y30_N2
\Selector3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~51_combout\ = (ascii_char(3) & (ascii_char(5) $ (((ascii_char(1)))))) # (!ascii_char(3) & (!ascii_char(5) & (ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector3~51_combout\);

-- Location: LCCOMB_X34_Y30_N14
\Selector3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~53_combout\ = (\Selector3~26_combout\ & ((ascii_char(2) & ((\Selector3~51_combout\))) # (!ascii_char(2) & (\Selector3~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => \Selector3~26_combout\,
	datac => \Selector3~52_combout\,
	datad => \Selector3~51_combout\,
	combout => \Selector3~53_combout\);

-- Location: LCCOMB_X32_Y32_N14
\Selector3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~13_combout\ = (ascii_char(2) & ((ascii_char(0)) # ((!ascii_char(1) & ascii_char(5))))) # (!ascii_char(2) & ((ascii_char(1)) # ((ascii_char(0) & ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(5),
	combout => \Selector3~13_combout\);

-- Location: LCCOMB_X32_Y32_N16
\Selector3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~12_combout\ = (ascii_char(1) & (ascii_char(5) $ (((!ascii_char(2) & ascii_char(0)))))) # (!ascii_char(1) & (ascii_char(0) $ (((ascii_char(2)) # (!ascii_char(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(5),
	combout => \Selector3~12_combout\);

-- Location: LCCOMB_X32_Y32_N4
\Selector3~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~71_combout\ = (ascii_char(3) & (\Selector3~13_combout\)) # (!ascii_char(3) & ((\Selector3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datac => \Selector3~13_combout\,
	datad => \Selector3~12_combout\,
	combout => \Selector3~71_combout\);

-- Location: LCCOMB_X32_Y32_N8
\Selector3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~54_combout\ = (ascii_char(0) & (!ascii_char(3) & (ascii_char(1) $ (!ascii_char(2))))) # (!ascii_char(0) & (ascii_char(3) & ((ascii_char(1)) # (ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector3~54_combout\);

-- Location: LCCOMB_X32_Y32_N6
\Selector3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~55_combout\ = (\Mux4~2_combout\ & ((\Selector6~58_combout\) # ((ascii_char(4) & \Selector3~54_combout\)))) # (!\Mux4~2_combout\ & (ascii_char(4) & (\Selector3~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => ascii_char(4),
	datac => \Selector3~54_combout\,
	datad => \Selector6~58_combout\,
	combout => \Selector3~55_combout\);

-- Location: LCCOMB_X32_Y32_N24
\Selector3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~56_combout\ = (\Add0~0_combout\ & (!ascii_char(4) & (\Selector3~71_combout\))) # (!\Add0~0_combout\ & (((\Selector3~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector3~71_combout\,
	datad => \Selector3~55_combout\,
	combout => \Selector3~56_combout\);

-- Location: LCCOMB_X35_Y30_N30
\Selector2~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~68_combout\ = (!ascii_char(3) & ((ascii_char(0) & ((ascii_char(2)) # (!ascii_char(1)))) # (!ascii_char(0) & ((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector2~68_combout\);

-- Location: LCCOMB_X35_Y30_N24
\Selector3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~48_combout\ = (ascii_char(3) & ((ascii_char(1) $ (!ascii_char(0))) # (!ascii_char(2)))) # (!ascii_char(3) & (((!ascii_char(0))) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector3~48_combout\);

-- Location: LCCOMB_X35_Y30_N16
\Selector3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~49_combout\ = (\Selector4~39_combout\ & ((ascii_char(4) & ((\Selector3~48_combout\))) # (!ascii_char(4) & (\Selector2~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Selector4~39_combout\,
	datac => \Selector2~68_combout\,
	datad => \Selector3~48_combout\,
	combout => \Selector3~49_combout\);

-- Location: LCCOMB_X35_Y29_N14
\Selector3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~44_combout\ = (\Selector6~83_combout\ & ((ascii_char(2)) # ((!ascii_char(1)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => \Selector6~83_combout\,
	datad => ascii_char(1),
	combout => \Selector3~44_combout\);

-- Location: LCCOMB_X35_Y29_N12
\Selector3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~45_combout\ = (ascii_char(1) & (ascii_char(2) $ (((!ascii_char(0)) # (!ascii_char(3)))))) # (!ascii_char(1) & (((!ascii_char(0)) # (!ascii_char(2))) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector3~45_combout\);

-- Location: LCCOMB_X35_Y29_N10
\Selector3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~46_combout\ = (!\Add0~0_combout\ & ((\Selector3~44_combout\) # ((ascii_char(4) & \Selector3~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector3~44_combout\,
	datad => \Selector3~45_combout\,
	combout => \Selector3~46_combout\);

-- Location: LCCOMB_X31_Y31_N22
\Selector3~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~69_combout\ = (ascii_char(3) & (ascii_char(1) $ (((ascii_char(2) & ascii_char(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector3~69_combout\);

-- Location: LCCOMB_X31_Y31_N16
\Selector3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~20_combout\ = (ascii_char(2) & (ascii_char(1) & (ascii_char(0) $ (ascii_char(4))))) # (!ascii_char(2) & ((ascii_char(0) & ((!ascii_char(1)))) # (!ascii_char(0) & (!ascii_char(4) & ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector3~20_combout\);

-- Location: LCCOMB_X31_Y31_N10
\Selector3~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~72_combout\ = (!ascii_char(3) & \Selector3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(3),
	datad => \Selector3~20_combout\,
	combout => \Selector3~72_combout\);

-- Location: LCCOMB_X31_Y31_N28
\Selector3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~47_combout\ = (\Selector4~36_combout\ & ((\Selector3~72_combout\) # ((\Selector3~69_combout\ & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~69_combout\,
	datab => ascii_char(0),
	datac => \Selector4~36_combout\,
	datad => \Selector3~72_combout\,
	combout => \Selector3~47_combout\);

-- Location: LCCOMB_X35_Y30_N10
\Selector3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~50_combout\ = (\Selector2~22_combout\ & ((\Selector3~49_combout\) # ((\Selector3~46_combout\) # (\Selector3~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~22_combout\,
	datab => \Selector3~49_combout\,
	datac => \Selector3~46_combout\,
	datad => \Selector3~47_combout\,
	combout => \Selector3~50_combout\);

-- Location: LCCOMB_X35_Y30_N28
\Selector3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~57_combout\ = (\Selector3~50_combout\) # ((\Selector6~72_combout\ & ((\Selector3~53_combout\) # (\Selector3~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~53_combout\,
	datab => \Selector6~72_combout\,
	datac => \Selector3~56_combout\,
	datad => \Selector3~50_combout\,
	combout => \Selector3~57_combout\);

-- Location: LCCOMB_X35_Y30_N18
\Selector3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~58_combout\ = (\Selector3~29_combout\ & ((\Selector3~43_combout\) # ((\Selector3~35_combout\) # (\Selector3~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~43_combout\,
	datab => \Selector3~29_combout\,
	datac => \Selector3~35_combout\,
	datad => \Selector3~57_combout\,
	combout => \Selector3~58_combout\);

-- Location: LCCOMB_X35_Y30_N14
\Selector3~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~68_combout\ = (\Selector3~59_combout\) # ((\Selector3~67_combout\) # (\Selector3~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~59_combout\,
	datac => \Selector3~67_combout\,
	datad => \Selector3~58_combout\,
	combout => \Selector3~68_combout\);

-- Location: FF_X35_Y30_N15
\screenArea[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Selector3~68_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][0]~q\);

-- Location: LCCOMB_X40_Y34_N4
\screenArea[3][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][1]~feeder_combout\ = \screenArea[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][0]~q\,
	combout => \screenArea[3][1]~feeder_combout\);

-- Location: FF_X40_Y34_N5
\screenArea[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][1]~q\);

-- Location: LCCOMB_X40_Y32_N20
\screenArea[3][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][2]~feeder_combout\ = \screenArea[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][1]~q\,
	combout => \screenArea[3][2]~feeder_combout\);

-- Location: FF_X40_Y32_N21
\screenArea[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][2]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][2]~q\);

-- Location: LCCOMB_X40_Y32_N10
\screenArea[3][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][3]~feeder_combout\ = \screenArea[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][2]~q\,
	combout => \screenArea[3][3]~feeder_combout\);

-- Location: FF_X40_Y32_N11
\screenArea[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][3]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][3]~q\);

-- Location: FF_X39_Y32_N13
\screenArea[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][3]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][4]~q\);

-- Location: LCCOMB_X38_Y32_N2
\screenArea[3][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][5]~feeder_combout\ = \screenArea[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][4]~q\,
	combout => \screenArea[3][5]~feeder_combout\);

-- Location: FF_X38_Y32_N3
\screenArea[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][5]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][5]~q\);

-- Location: FF_X40_Y33_N13
\screenArea[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][5]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][6]~q\);

-- Location: FF_X41_Y33_N25
\screenArea[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][6]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][7]~q\);

-- Location: LCCOMB_X42_Y33_N8
\screenArea[3][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][8]~feeder_combout\ = \screenArea[3][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][7]~q\,
	combout => \screenArea[3][8]~feeder_combout\);

-- Location: FF_X42_Y33_N9
\screenArea[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][8]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][8]~q\);

-- Location: FF_X42_Y33_N27
\screenArea[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][8]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][9]~q\);

-- Location: FF_X41_Y33_N15
\screenArea[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][9]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][10]~q\);

-- Location: LCCOMB_X37_Y32_N28
\screenArea[3][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][11]~feeder_combout\ = \screenArea[3][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][10]~q\,
	combout => \screenArea[3][11]~feeder_combout\);

-- Location: FF_X37_Y32_N29
\screenArea[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][11]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][11]~q\);

-- Location: LCCOMB_X37_Y32_N2
\screenArea[3][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][12]~feeder_combout\ = \screenArea[3][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][11]~q\,
	combout => \screenArea[3][12]~feeder_combout\);

-- Location: FF_X37_Y32_N3
\screenArea[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][12]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][12]~q\);

-- Location: FF_X43_Y33_N1
\screenArea[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][12]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][13]~q\);

-- Location: LCCOMB_X40_Y31_N26
\screenArea[3][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][14]~feeder_combout\ = \screenArea[3][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][13]~q\,
	combout => \screenArea[3][14]~feeder_combout\);

-- Location: FF_X40_Y31_N27
\screenArea[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][14]~q\);

-- Location: LCCOMB_X41_Y32_N28
\screenArea[3][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][15]~feeder_combout\ = \screenArea[3][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][14]~q\,
	combout => \screenArea[3][15]~feeder_combout\);

-- Location: FF_X41_Y32_N29
\screenArea[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][15]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][15]~q\);

-- Location: LCCOMB_X37_Y31_N12
\screenArea[3][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][16]~feeder_combout\ = \screenArea[3][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][15]~q\,
	combout => \screenArea[3][16]~feeder_combout\);

-- Location: FF_X37_Y31_N13
\screenArea[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][16]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][16]~q\);

-- Location: LCCOMB_X42_Y31_N14
\screenArea[3][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][17]~feeder_combout\ = \screenArea[3][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][16]~q\,
	combout => \screenArea[3][17]~feeder_combout\);

-- Location: FF_X42_Y31_N15
\screenArea[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][17]~q\);

-- Location: LCCOMB_X41_Y31_N14
\screenArea[3][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][18]~feeder_combout\ = \screenArea[3][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][17]~q\,
	combout => \screenArea[3][18]~feeder_combout\);

-- Location: FF_X41_Y31_N15
\screenArea[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][18]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][18]~q\);

-- Location: FF_X41_Y31_N11
\screenArea[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][18]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][19]~q\);

-- Location: LCCOMB_X38_Y31_N0
\screenArea[3][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][20]~feeder_combout\ = \screenArea[3][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][19]~q\,
	combout => \screenArea[3][20]~feeder_combout\);

-- Location: FF_X38_Y31_N1
\screenArea[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][20]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][20]~q\);

-- Location: LCCOMB_X41_Y34_N12
\screenArea[3][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][21]~feeder_combout\ = \screenArea[3][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][20]~q\,
	combout => \screenArea[3][21]~feeder_combout\);

-- Location: FF_X41_Y34_N13
\screenArea[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][21]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][21]~q\);

-- Location: LCCOMB_X41_Y32_N24
\screenArea[3][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][22]~feeder_combout\ = \screenArea[3][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][21]~q\,
	combout => \screenArea[3][22]~feeder_combout\);

-- Location: FF_X41_Y32_N25
\screenArea[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][22]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][22]~q\);

-- Location: FF_X42_Y34_N31
\screenArea[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][22]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][23]~q\);

-- Location: FF_X42_Y34_N13
\screenArea[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][23]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][24]~q\);

-- Location: LCCOMB_X39_Y32_N8
\screenArea[3][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][25]~feeder_combout\ = \screenArea[3][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][24]~q\,
	combout => \screenArea[3][25]~feeder_combout\);

-- Location: FF_X39_Y32_N9
\screenArea[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][25]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][25]~q\);

-- Location: FF_X39_Y32_N25
\screenArea[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][25]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][26]~q\);

-- Location: LCCOMB_X37_Y32_N18
\screenArea[3][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][27]~feeder_combout\ = \screenArea[3][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][26]~q\,
	combout => \screenArea[3][27]~feeder_combout\);

-- Location: FF_X37_Y32_N19
\screenArea[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][27]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][27]~q\);

-- Location: FF_X41_Y35_N25
\screenArea[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[3][27]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][28]~q\);

-- Location: LCCOMB_X37_Y35_N0
\screenArea[3][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][29]~feeder_combout\ = \screenArea[3][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][28]~q\,
	combout => \screenArea[3][29]~feeder_combout\);

-- Location: FF_X37_Y35_N1
\screenArea[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][29]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][29]~q\);

-- Location: LCCOMB_X39_Y33_N8
\screenArea[3][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][30]~feeder_combout\ = \screenArea[3][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][29]~q\,
	combout => \screenArea[3][30]~feeder_combout\);

-- Location: FF_X39_Y33_N9
\screenArea[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][30]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][30]~q\);

-- Location: LCCOMB_X32_Y29_N22
\Selector1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~59_combout\ = (ascii_char(2) & (!ascii_char(0) & (!ascii_char(1) & ascii_char(3)))) # (!ascii_char(2) & (ascii_char(0) & ((!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector1~59_combout\);

-- Location: LCCOMB_X32_Y29_N26
\Selector5~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~71_combout\ = (!ascii_char(2) & (!ascii_char(1) & !ascii_char(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector5~71_combout\);

-- Location: LCCOMB_X32_Y29_N8
\Selector1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~64_combout\ = (\Selector6~93_combout\ & ((ascii_char(3) & ((ascii_char(1)))) # (!ascii_char(3) & ((ascii_char(0)) # (!ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => \Selector6~93_combout\,
	combout => \Selector1~64_combout\);

-- Location: LCCOMB_X32_Y29_N14
\Selector1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~14_combout\ = (ascii_char(2) & ((ascii_char(0)) # ((!ascii_char(4)) # (!ascii_char(1))))) # (!ascii_char(2) & (ascii_char(0) $ (ascii_char(1) $ (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector1~14_combout\);

-- Location: LCCOMB_X32_Y29_N24
\Selector1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~15_combout\ = (ascii_char(2) & ((ascii_char(0)) # ((ascii_char(1) & !ascii_char(4))))) # (!ascii_char(2) & (ascii_char(4) & ((!ascii_char(1)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector1~15_combout\);

-- Location: LCCOMB_X32_Y29_N18
\Selector1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~65_combout\ = (ascii_char(3) & ((\Selector1~15_combout\))) # (!ascii_char(3) & (\Selector1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datac => \Selector1~14_combout\,
	datad => \Selector1~15_combout\,
	combout => \Selector1~65_combout\);

-- Location: LCCOMB_X32_Y29_N12
\Selector1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~58_combout\ = (ascii_char(5) & ((\Selector5~71_combout\) # ((\Selector1~64_combout\)))) # (!ascii_char(5) & (((\Selector1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~71_combout\,
	datab => ascii_char(5),
	datac => \Selector1~64_combout\,
	datad => \Selector1~65_combout\,
	combout => \Selector1~58_combout\);

-- Location: LCCOMB_X32_Y29_N20
\Selector1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~60_combout\ = (\Add0~0_combout\ & (((\Selector1~58_combout\)))) # (!\Add0~0_combout\ & (\Selector1~59_combout\ & (ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~59_combout\,
	datab => ascii_char(4),
	datac => \Add0~0_combout\,
	datad => \Selector1~58_combout\,
	combout => \Selector1~60_combout\);

-- Location: LCCOMB_X29_Y33_N16
\Selector1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~63_combout\ = (ascii_char(0) & ((ascii_char(3)) # (ascii_char(5) $ (!ascii_char(6))))) # (!ascii_char(0) & (ascii_char(3) & (ascii_char(5) $ (!ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(0),
	datac => ascii_char(6),
	datad => ascii_char(3),
	combout => \Selector1~63_combout\);

-- Location: LCCOMB_X32_Y33_N12
\Selector1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~50_combout\ = (\Add0~0_combout\ & (\Selector1~63_combout\ $ (((ascii_char(4)) # (!ascii_char(2)))))) # (!\Add0~0_combout\ & (ascii_char(4) & (ascii_char(2) & \Selector1~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(2),
	datac => \Add0~0_combout\,
	datad => \Selector1~63_combout\,
	combout => \Selector1~50_combout\);

-- Location: LCCOMB_X32_Y31_N26
\Selector1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~51_combout\ = (ascii_char(0) & (((!ascii_char(2) & ascii_char(4))) # (!ascii_char(3)))) # (!ascii_char(0) & ((ascii_char(4)) # ((ascii_char(2) & !ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector1~51_combout\);

-- Location: LCCOMB_X32_Y31_N12
\Selector1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~52_combout\ = (ascii_char(3) & ((ascii_char(0)) # (ascii_char(2) $ (ascii_char(4))))) # (!ascii_char(3) & ((ascii_char(2) & ((!ascii_char(4)))) # (!ascii_char(2) & (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector1~52_combout\);

-- Location: LCCOMB_X32_Y31_N10
\Selector1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~53_combout\ = (ascii_char(1) & (!ascii_char(5) & ((\Selector1~52_combout\)))) # (!ascii_char(1) & ((ascii_char(5)) # ((\Selector1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(5),
	datac => \Selector1~51_combout\,
	datad => \Selector1~52_combout\,
	combout => \Selector1~53_combout\);

-- Location: LCCOMB_X31_Y34_N22
\Selector1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~54_combout\ = (!ascii_char(4) & (((!ascii_char(2) & !ascii_char(0))) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Selector1~54_combout\);

-- Location: LCCOMB_X31_Y34_N8
\Selector5~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~70_combout\ = ascii_char(0) $ (!ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector5~70_combout\);

-- Location: LCCOMB_X31_Y34_N28
\Selector1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~55_combout\ = (\Add0~0_combout\ & (\Selector1~54_combout\)) # (!\Add0~0_combout\ & (((!\Selector5~70_combout\ & \Selector1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~54_combout\,
	datab => \Selector5~70_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector1~32_combout\,
	combout => \Selector1~55_combout\);

-- Location: LCCOMB_X32_Y33_N2
\Selector1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~56_combout\ = (ascii_char(5) & ((\Selector1~53_combout\ & ((\Selector1~55_combout\))) # (!\Selector1~53_combout\ & (\Selector1~50_combout\)))) # (!ascii_char(5) & (((\Selector1~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~50_combout\,
	datab => ascii_char(5),
	datac => \Selector1~53_combout\,
	datad => \Selector1~55_combout\,
	combout => \Selector1~56_combout\);

-- Location: LCCOMB_X32_Y31_N6
\Selector6~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~65_combout\ = (ascii_char(0) & (ascii_char(2) $ (((ascii_char(5)) # (!ascii_char(4)))))) # (!ascii_char(0) & (ascii_char(2) & (ascii_char(5) & !ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(5),
	datad => ascii_char(4),
	combout => \Selector6~65_combout\);

-- Location: LCCOMB_X32_Y31_N30
\Selector1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~33_combout\ = (!ascii_char(0) & (!ascii_char(5) & (ascii_char(2) $ (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(5),
	datad => ascii_char(4),
	combout => \Selector1~33_combout\);

-- Location: LCCOMB_X32_Y31_N20
\Selector1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~34_combout\ = (ascii_char(3) & ((\Selector1~33_combout\))) # (!ascii_char(3) & (\Selector6~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~65_combout\,
	datab => ascii_char(3),
	datac => \Selector1~33_combout\,
	combout => \Selector1~34_combout\);

-- Location: LCCOMB_X32_Y31_N28
\Selector1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~23_combout\ = (ascii_char(3) & ((ascii_char(2)))) # (!ascii_char(3) & (ascii_char(0) & !ascii_char(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector1~23_combout\);

-- Location: LCCOMB_X32_Y31_N2
\Selector1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~67_combout\ = (ascii_char(4) & (ascii_char(5) & \Selector1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(5),
	datad => \Selector1~23_combout\,
	combout => \Selector1~67_combout\);

-- Location: LCCOMB_X31_Y33_N24
\Selector1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~36_combout\ = (ascii_char(4) & (ascii_char(0) & (ascii_char(2) $ (ascii_char(3))))) # (!ascii_char(4) & (((!ascii_char(2) & ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector1~36_combout\);

-- Location: LCCOMB_X30_Y33_N10
\Selector1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~35_combout\ = (ascii_char(3) & (!ascii_char(0) & (!ascii_char(4) & ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~35_combout\);

-- Location: LCCOMB_X32_Y33_N16
\Selector1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~37_combout\ = (ascii_char(1) & (\Selector1~36_combout\ & (!\Add0~0_combout\))) # (!ascii_char(1) & (((\Add0~0_combout\) # (\Selector1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => \Selector1~36_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector1~35_combout\,
	combout => \Selector1~37_combout\);

-- Location: LCCOMB_X32_Y33_N6
\Selector1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~38_combout\ = (\Add0~0_combout\ & ((\Selector1~37_combout\ & ((\Selector1~67_combout\))) # (!\Selector1~37_combout\ & (\Selector1~34_combout\)))) # (!\Add0~0_combout\ & (((\Selector1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector1~34_combout\,
	datac => \Selector1~67_combout\,
	datad => \Selector1~37_combout\,
	combout => \Selector1~38_combout\);

-- Location: LCCOMB_X32_Y33_N30
\Selector1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~61_combout\ = (\shiftedColumnState.COL4~q\ & (!\shiftedColumnState.COL5~q\ & \Selector1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftedColumnState.COL4~q\,
	datac => \shiftedColumnState.COL5~q\,
	datad => \Selector1~38_combout\,
	combout => \Selector1~61_combout\);

-- Location: LCCOMB_X31_Y33_N8
\Selector1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~19_combout\ = (ascii_char(2) & ((ascii_char(1) & (ascii_char(4) $ (!ascii_char(3)))) # (!ascii_char(1) & (ascii_char(4) & !ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector1~19_combout\);

-- Location: LCCOMB_X31_Y33_N6
\Selector1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~18_combout\ = (ascii_char(1) & (ascii_char(4) & (ascii_char(2) $ (ascii_char(3))))) # (!ascii_char(1) & (!ascii_char(4) & (ascii_char(2) & ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector1~18_combout\);

-- Location: LCCOMB_X31_Y33_N30
\Selector1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~66_combout\ = (ascii_char(5) & (\Selector1~19_combout\)) # (!ascii_char(5) & ((\Selector1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(5),
	datac => \Selector1~19_combout\,
	datad => \Selector1~18_combout\,
	combout => \Selector1~66_combout\);

-- Location: LCCOMB_X31_Y31_N12
\Selector1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~47_combout\ = (ascii_char(1) & ((!ascii_char(4)))) # (!ascii_char(1) & (!ascii_char(3) & ascii_char(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector1~47_combout\);

-- Location: LCCOMB_X31_Y31_N6
\Selector1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~62_combout\ = (!ascii_char(2) & (ascii_char(0) & (!\Add0~0_combout\ & \Selector1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => \Add0~0_combout\,
	datad => \Selector1~47_combout\,
	combout => \Selector1~62_combout\);

-- Location: LCCOMB_X31_Y33_N26
\Selector1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~48_combout\ = (\Selector1~62_combout\) # ((\Add0~0_combout\ & (!ascii_char(0) & \Selector1~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(0),
	datac => \Selector1~66_combout\,
	datad => \Selector1~62_combout\,
	combout => \Selector1~48_combout\);

-- Location: LCCOMB_X36_Y33_N26
\Selector3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~28_combout\ = (\shiftedColumnState.COL3~q\ & (!\shiftedColumnState.COL5~q\ & !\shiftedColumnState.COL4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftedColumnState.COL3~q\,
	datac => \shiftedColumnState.COL5~q\,
	datad => \shiftedColumnState.COL4~q\,
	combout => \Selector3~28_combout\);

-- Location: LCCOMB_X32_Y33_N14
\Selector1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~44_combout\ = (\Mux4~0_combout\ & ((ascii_char(1) & ((!ascii_char(5)) # (!ascii_char(2)))) # (!ascii_char(1) & ((ascii_char(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => \Mux4~0_combout\,
	datad => ascii_char(5),
	combout => \Selector1~44_combout\);

-- Location: LCCOMB_X30_Y33_N16
\Selector1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~45_combout\ = (!ascii_char(2) & (ascii_char(3) & (!ascii_char(1) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => \Mux0~0_combout\,
	combout => \Selector1~45_combout\);

-- Location: LCCOMB_X32_Y33_N4
\Selector1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~46_combout\ = (\Add0~0_combout\ & (ascii_char(0) & ((\Selector1~44_combout\) # (\Selector1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector1~44_combout\,
	datac => ascii_char(0),
	datad => \Selector1~45_combout\,
	combout => \Selector1~46_combout\);

-- Location: LCCOMB_X31_Y31_N8
\Selector1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~29_combout\ = (ascii_char(2) & (ascii_char(4) & ascii_char(3))) # (!ascii_char(2) & ((!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector1~29_combout\);

-- Location: LCCOMB_X31_Y31_N2
\Selector1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~68_combout\ = (ascii_char(0) & (\Selector1~29_combout\ & ascii_char(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(0),
	datac => \Selector1~29_combout\,
	datad => ascii_char(1),
	combout => \Selector1~68_combout\);

-- Location: LCCOMB_X31_Y31_N14
\Selector1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~42_combout\ = (\Selector1~68_combout\) # ((ascii_char(2) & (!ascii_char(1) & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => \Mux4~0_combout\,
	datad => \Selector1~68_combout\,
	combout => \Selector1~42_combout\);

-- Location: LCCOMB_X32_Y33_N8
\Selector1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~40_combout\ = (!ascii_char(2) & ((ascii_char(1) & (!ascii_char(0) & ascii_char(4))) # (!ascii_char(1) & (ascii_char(0) & !ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Selector1~40_combout\);

-- Location: LCCOMB_X31_Y32_N16
\Selector1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~39_combout\ = (\Selector1~32_combout\ & ((ascii_char(3) & (!ascii_char(0) & !ascii_char(1))) # (!ascii_char(3) & ((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => \Selector1~32_combout\,
	combout => \Selector1~39_combout\);

-- Location: LCCOMB_X32_Y33_N10
\Selector1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~41_combout\ = (!ascii_char(5) & ((\Selector1~39_combout\) # ((\Selector6~58_combout\ & \Selector1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector6~58_combout\,
	datac => \Selector1~40_combout\,
	datad => \Selector1~39_combout\,
	combout => \Selector1~41_combout\);

-- Location: LCCOMB_X32_Y33_N28
\Selector1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~43_combout\ = (\shiftedColumnState.COL5~q\ & ((\Selector1~41_combout\) # ((\Selector4~36_combout\ & \Selector1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \Selector4~36_combout\,
	datac => \Selector1~42_combout\,
	datad => \Selector1~41_combout\,
	combout => \Selector1~43_combout\);

-- Location: LCCOMB_X32_Y33_N18
\Selector1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~49_combout\ = (\Selector1~43_combout\) # ((\Selector3~28_combout\ & ((\Selector1~48_combout\) # (\Selector1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~48_combout\,
	datab => \Selector3~28_combout\,
	datac => \Selector1~46_combout\,
	datad => \Selector1~43_combout\,
	combout => \Selector1~49_combout\);

-- Location: LCCOMB_X32_Y33_N20
\Selector1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~57_combout\ = (\Selector1~61_combout\) # ((\Selector1~49_combout\) # ((\Selector2~22_combout\ & \Selector1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~22_combout\,
	datab => \Selector1~56_combout\,
	datac => \Selector1~61_combout\,
	datad => \Selector1~49_combout\,
	combout => \Selector1~57_combout\);

-- Location: LCCOMB_X32_Y33_N0
\screenArea[1][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][0]~1_combout\ = (\shiftedColumnState.COL6~q\ & (\Selector1~60_combout\)) # (!\shiftedColumnState.COL6~q\ & ((\Selector1~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Selector1~60_combout\,
	datad => \Selector1~57_combout\,
	combout => \screenArea[1][0]~1_combout\);

-- Location: FF_X32_Y33_N1
\screenArea[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][0]~1_combout\,
	asdata => \Mux0~1_combout\,
	sload => \screenArea[1][0]~4_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][0]~q\);

-- Location: LCCOMB_X40_Y34_N10
\screenArea[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][1]~feeder_combout\ = \screenArea[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][0]~q\,
	combout => \screenArea[1][1]~feeder_combout\);

-- Location: FF_X40_Y34_N11
\screenArea[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][1]~q\);

-- Location: LCCOMB_X40_Y32_N0
\screenArea[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][2]~feeder_combout\ = \screenArea[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][1]~q\,
	combout => \screenArea[1][2]~feeder_combout\);

-- Location: FF_X40_Y32_N1
\screenArea[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][2]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][2]~q\);

-- Location: LCCOMB_X41_Y32_N8
\screenArea[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][3]~feeder_combout\ = \screenArea[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][2]~q\,
	combout => \screenArea[1][3]~feeder_combout\);

-- Location: FF_X41_Y32_N9
\screenArea[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][3]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][3]~q\);

-- Location: LCCOMB_X38_Y32_N10
\screenArea[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][4]~feeder_combout\ = \screenArea[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][3]~q\,
	combout => \screenArea[1][4]~feeder_combout\);

-- Location: FF_X38_Y32_N11
\screenArea[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][4]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][4]~q\);

-- Location: LCCOMB_X37_Y32_N12
\screenArea[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][5]~feeder_combout\ = \screenArea[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][4]~q\,
	combout => \screenArea[1][5]~feeder_combout\);

-- Location: FF_X37_Y32_N13
\screenArea[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][5]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][5]~q\);

-- Location: LCCOMB_X40_Y33_N24
\screenArea[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][6]~feeder_combout\ = \screenArea[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][5]~q\,
	combout => \screenArea[1][6]~feeder_combout\);

-- Location: FF_X40_Y33_N25
\screenArea[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][6]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][6]~q\);

-- Location: LCCOMB_X40_Y33_N30
\screenArea[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][7]~feeder_combout\ = \screenArea[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][6]~q\,
	combout => \screenArea[1][7]~feeder_combout\);

-- Location: FF_X40_Y33_N31
\screenArea[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][7]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][7]~q\);

-- Location: LCCOMB_X40_Y33_N8
\screenArea[1][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][8]~feeder_combout\ = \screenArea[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][7]~q\,
	combout => \screenArea[1][8]~feeder_combout\);

-- Location: FF_X40_Y33_N9
\screenArea[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][8]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][8]~q\);

-- Location: FF_X40_Y33_N17
\screenArea[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[1][8]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][9]~q\);

-- Location: LCCOMB_X43_Y33_N12
\screenArea[1][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][10]~feeder_combout\ = \screenArea[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][9]~q\,
	combout => \screenArea[1][10]~feeder_combout\);

-- Location: FF_X43_Y33_N13
\screenArea[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][10]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][10]~q\);

-- Location: LCCOMB_X43_Y33_N8
\screenArea[1][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][11]~feeder_combout\ = \screenArea[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][10]~q\,
	combout => \screenArea[1][11]~feeder_combout\);

-- Location: FF_X43_Y33_N9
\screenArea[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][11]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][11]~q\);

-- Location: LCCOMB_X43_Y33_N20
\screenArea[1][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][12]~feeder_combout\ = \screenArea[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][11]~q\,
	combout => \screenArea[1][12]~feeder_combout\);

-- Location: FF_X43_Y33_N21
\screenArea[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][12]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][12]~q\);

-- Location: LCCOMB_X43_Y33_N24
\screenArea[1][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][13]~feeder_combout\ = \screenArea[1][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][12]~q\,
	combout => \screenArea[1][13]~feeder_combout\);

-- Location: FF_X43_Y33_N25
\screenArea[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][13]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][13]~q\);

-- Location: LCCOMB_X39_Y31_N2
\screenArea[1][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][14]~feeder_combout\ = \screenArea[1][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][13]~q\,
	combout => \screenArea[1][14]~feeder_combout\);

-- Location: FF_X39_Y31_N3
\screenArea[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][14]~q\);

-- Location: LCCOMB_X39_Y31_N0
\screenArea[1][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][15]~feeder_combout\ = \screenArea[1][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][14]~q\,
	combout => \screenArea[1][15]~feeder_combout\);

-- Location: FF_X39_Y31_N1
\screenArea[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][15]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][15]~q\);

-- Location: FF_X42_Y31_N25
\screenArea[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[1][15]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][16]~q\);

-- Location: LCCOMB_X42_Y31_N6
\screenArea[1][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][17]~feeder_combout\ = \screenArea[1][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][16]~q\,
	combout => \screenArea[1][17]~feeder_combout\);

-- Location: FF_X42_Y31_N7
\screenArea[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][17]~q\);

-- Location: LCCOMB_X38_Y31_N24
\screenArea[1][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][18]~feeder_combout\ = \screenArea[1][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][17]~q\,
	combout => \screenArea[1][18]~feeder_combout\);

-- Location: FF_X38_Y31_N25
\screenArea[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][18]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][18]~q\);

-- Location: LCCOMB_X41_Y31_N24
\screenArea[1][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][19]~feeder_combout\ = \screenArea[1][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][18]~q\,
	combout => \screenArea[1][19]~feeder_combout\);

-- Location: FF_X41_Y31_N25
\screenArea[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][19]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][19]~q\);

-- Location: LCCOMB_X38_Y31_N14
\screenArea[1][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][20]~feeder_combout\ = \screenArea[1][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][19]~q\,
	combout => \screenArea[1][20]~feeder_combout\);

-- Location: FF_X38_Y31_N15
\screenArea[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][20]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][20]~q\);

-- Location: LCCOMB_X41_Y34_N24
\screenArea[1][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][21]~feeder_combout\ = \screenArea[1][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][20]~q\,
	combout => \screenArea[1][21]~feeder_combout\);

-- Location: FF_X41_Y34_N25
\screenArea[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][21]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][21]~q\);

-- Location: LCCOMB_X41_Y32_N26
\screenArea[1][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][22]~feeder_combout\ = \screenArea[1][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][21]~q\,
	combout => \screenArea[1][22]~feeder_combout\);

-- Location: FF_X41_Y32_N27
\screenArea[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][22]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][22]~q\);

-- Location: LCCOMB_X42_Y34_N2
\screenArea[1][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][23]~feeder_combout\ = \screenArea[1][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][22]~q\,
	combout => \screenArea[1][23]~feeder_combout\);

-- Location: FF_X42_Y34_N3
\screenArea[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][23]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][23]~q\);

-- Location: LCCOMB_X42_Y34_N24
\screenArea[1][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][24]~feeder_combout\ = \screenArea[1][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][23]~q\,
	combout => \screenArea[1][24]~feeder_combout\);

-- Location: FF_X42_Y34_N25
\screenArea[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][24]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][24]~q\);

-- Location: LCCOMB_X39_Y32_N20
\screenArea[1][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][25]~feeder_combout\ = \screenArea[1][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][24]~q\,
	combout => \screenArea[1][25]~feeder_combout\);

-- Location: FF_X39_Y32_N21
\screenArea[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][25]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][25]~q\);

-- Location: LCCOMB_X39_Y33_N18
\screenArea[1][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][26]~feeder_combout\ = \screenArea[1][25]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][25]~q\,
	combout => \screenArea[1][26]~feeder_combout\);

-- Location: FF_X39_Y33_N19
\screenArea[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][26]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][26]~q\);

-- Location: LCCOMB_X39_Y33_N20
\screenArea[1][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][27]~feeder_combout\ = \screenArea[1][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][26]~q\,
	combout => \screenArea[1][27]~feeder_combout\);

-- Location: FF_X39_Y33_N21
\screenArea[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][27]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][27]~q\);

-- Location: LCCOMB_X39_Y35_N0
\screenArea[1][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][28]~feeder_combout\ = \screenArea[1][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][27]~q\,
	combout => \screenArea[1][28]~feeder_combout\);

-- Location: FF_X39_Y35_N1
\screenArea[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][28]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][28]~q\);

-- Location: LCCOMB_X36_Y35_N24
\screenArea[1][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][29]~feeder_combout\ = \screenArea[1][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][28]~q\,
	combout => \screenArea[1][29]~feeder_combout\);

-- Location: FF_X36_Y35_N25
\screenArea[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][29]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][29]~q\);

-- Location: LCCOMB_X39_Y33_N2
\screenArea[1][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][30]~feeder_combout\ = \screenArea[1][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][29]~q\,
	combout => \screenArea[1][30]~feeder_combout\);

-- Location: FF_X39_Y33_N3
\screenArea[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][30]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][30]~q\);

-- Location: LCCOMB_X39_Y33_N0
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][30]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][30]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[3][30]~q\,
	datad => \screenArea[1][30]~q\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X30_Y31_N8
\Selector6~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~96_combout\ = ascii_char(4) $ (!ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(4),
	datac => ascii_char(3),
	combout => \Selector6~96_combout\);

-- Location: LCCOMB_X31_Y31_N20
\Selector0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~70_combout\ = (ascii_char(2) & (!ascii_char(0) & (!ascii_char(4) & !ascii_char(1)))) # (!ascii_char(2) & (ascii_char(0) & (ascii_char(4) & ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector0~70_combout\);

-- Location: LCCOMB_X31_Y31_N26
\Selector0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~69_combout\ = (ascii_char(4) & (((ascii_char(1) & ascii_char(0))) # (!ascii_char(5)))) # (!ascii_char(4) & (!ascii_char(5) & ((ascii_char(1)) # (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => ascii_char(0),
	combout => \Selector0~69_combout\);

-- Location: LCCOMB_X31_Y31_N24
\Selector0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~78_combout\ = (ascii_char(0) & (!ascii_char(5) & ((!ascii_char(1)) # (!ascii_char(4))))) # (!ascii_char(0) & ((ascii_char(5) & ((!ascii_char(1)) # (!ascii_char(4)))) # (!ascii_char(5) & ((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => ascii_char(5),
	datad => ascii_char(1),
	combout => \Selector0~78_combout\);

-- Location: LCCOMB_X31_Y31_N18
\Selector0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~79_combout\ = (\Selector0~78_combout\ & ((ascii_char(4)) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(3),
	datad => \Selector0~78_combout\,
	combout => \Selector0~79_combout\);

-- Location: LCCOMB_X31_Y31_N4
\Selector0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~75_combout\ = (ascii_char(2) & (ascii_char(3) & (\Selector0~69_combout\))) # (!ascii_char(2) & (((\Selector0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => \Selector0~69_combout\,
	datad => \Selector0~79_combout\,
	combout => \Selector0~75_combout\);

-- Location: LCCOMB_X30_Y31_N18
\Selector0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~71_combout\ = (\Add0~0_combout\ & (((\Selector0~75_combout\)))) # (!\Add0~0_combout\ & (!\Selector6~96_combout\ & (\Selector0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~96_combout\,
	datac => \Selector0~70_combout\,
	datad => \Selector0~75_combout\,
	combout => \Selector0~71_combout\);

-- Location: LCCOMB_X34_Y31_N16
\Selector0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~80_combout\ = (ascii_char(4) & ((ascii_char(2) $ (!ascii_char(0))) # (!ascii_char(3)))) # (!ascii_char(4) & ((ascii_char(2)) # ((ascii_char(3) & ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector0~80_combout\);

-- Location: LCCOMB_X34_Y31_N30
\Selector0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~81_combout\ = (ascii_char(5) & (!ascii_char(4) & ((!\Selector0~80_combout\) # (!ascii_char(3))))) # (!ascii_char(5) & (((\Selector0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => \Selector0~80_combout\,
	combout => \Selector0~81_combout\);

-- Location: LCCOMB_X32_Y30_N22
\Selector0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~31_combout\ = (ascii_char(5) & (ascii_char(2) & ((!ascii_char(4))))) # (!ascii_char(5) & (!ascii_char(0) & (ascii_char(2) $ (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(5),
	combout => \Selector0~31_combout\);

-- Location: LCCOMB_X32_Y30_N28
\Selector0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~30_combout\ = (ascii_char(4) & ((ascii_char(0) & (!ascii_char(2))) # (!ascii_char(0) & ((!ascii_char(5)))))) # (!ascii_char(4) & ((ascii_char(2)) # (ascii_char(5) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(0),
	combout => \Selector0~30_combout\);

-- Location: LCCOMB_X32_Y30_N4
\Selector0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~76_combout\ = (ascii_char(3) & (\Selector0~31_combout\)) # (!ascii_char(3) & ((\Selector0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datac => \Selector0~31_combout\,
	datad => \Selector0~30_combout\,
	combout => \Selector0~76_combout\);

-- Location: LCCOMB_X32_Y30_N30
\Selector0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~65_combout\ = (ascii_char(2) & (ascii_char(1) & (ascii_char(4) & !ascii_char(0)))) # (!ascii_char(2) & (ascii_char(0) & ((ascii_char(1)) # (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(0),
	combout => \Selector0~65_combout\);

-- Location: LCCOMB_X32_Y30_N12
\Selector0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~66_combout\ = (\Add0~0_combout\ & (!ascii_char(1))) # (!\Add0~0_combout\ & (\Selector0~65_combout\ & (ascii_char(1) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(1),
	datac => \Selector0~65_combout\,
	datad => ascii_char(3),
	combout => \Selector0~66_combout\);

-- Location: LCCOMB_X32_Y30_N18
\Selector0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~67_combout\ = (\Add0~0_combout\ & ((\Selector0~66_combout\ & (\Selector0~81_combout\)) # (!\Selector0~66_combout\ & ((\Selector0~76_combout\))))) # (!\Add0~0_combout\ & (((\Selector0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector0~81_combout\,
	datac => \Selector0~76_combout\,
	datad => \Selector0~66_combout\,
	combout => \Selector0~67_combout\);

-- Location: LCCOMB_X36_Y32_N4
\Selector0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~45_combout\ = (ascii_char(2) & (ascii_char(4) & (!ascii_char(3) & ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector0~45_combout\);

-- Location: LCCOMB_X36_Y32_N30
\Selector0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~48_combout\ = (!ascii_char(4) & ((ascii_char(3) & ((ascii_char(2)))) # (!ascii_char(3) & ((ascii_char(0)) # (!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector0~48_combout\);

-- Location: LCCOMB_X35_Y32_N24
\Selector0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~44_combout\ = (ascii_char(4) & ((ascii_char(3) & (!ascii_char(0) & ascii_char(2))) # (!ascii_char(3) & ((!ascii_char(2)))))) # (!ascii_char(4) & (!ascii_char(3) & ((ascii_char(0)) # (ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector0~44_combout\);

-- Location: LCCOMB_X35_Y32_N16
\Selector0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~82_combout\ = (ascii_char(5) & (ascii_char(6) $ ((!\Selector0~48_combout\)))) # (!ascii_char(5) & (((\Selector0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => ascii_char(5),
	datac => \Selector0~48_combout\,
	datad => \Selector0~44_combout\,
	combout => \Selector0~82_combout\);

-- Location: LCCOMB_X35_Y32_N26
\Selector0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~83_combout\ = (\Selector0~45_combout\ & ((\Selector0~82_combout\) # ((ascii_char(5) & \Selector0~48_combout\)))) # (!\Selector0~45_combout\ & (\Selector0~82_combout\ & ((\Selector0~48_combout\) # (!ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~45_combout\,
	datab => ascii_char(5),
	datac => \Selector0~48_combout\,
	datad => \Selector0~82_combout\,
	combout => \Selector0~83_combout\);

-- Location: LCCOMB_X34_Y30_N26
\Selector0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~38_combout\ = (ascii_char(3) & (ascii_char(2) & (ascii_char(4) $ (!ascii_char(0))))) # (!ascii_char(3) & (ascii_char(4) & (ascii_char(0) & !ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(4),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector0~38_combout\);

-- Location: LCCOMB_X34_Y30_N8
\Selector0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~37_combout\ = (ascii_char(4) & ((ascii_char(0) $ (!ascii_char(2))) # (!ascii_char(3)))) # (!ascii_char(4) & (((ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector0~37_combout\);

-- Location: LCCOMB_X34_Y30_N0
\Selector0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~41_combout\ = (ascii_char(4) & (!ascii_char(3) & (ascii_char(0) $ (!ascii_char(2))))) # (!ascii_char(4) & (((!ascii_char(0) & !ascii_char(2))) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector0~41_combout\);

-- Location: LCCOMB_X34_Y30_N30
\Selector0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~84_combout\ = (ascii_char(5) & (ascii_char(6) $ (((!\Selector0~41_combout\))))) # (!ascii_char(5) & (((\Selector0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => ascii_char(5),
	datac => \Selector0~37_combout\,
	datad => \Selector0~41_combout\,
	combout => \Selector0~84_combout\);

-- Location: LCCOMB_X34_Y30_N24
\Selector0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~85_combout\ = (\Selector0~38_combout\ & ((\Selector0~84_combout\) # ((ascii_char(5) & \Selector0~41_combout\)))) # (!\Selector0~38_combout\ & (\Selector0~84_combout\ & ((\Selector0~41_combout\) # (!ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~38_combout\,
	datab => ascii_char(5),
	datac => \Selector0~84_combout\,
	datad => \Selector0~41_combout\,
	combout => \Selector0~85_combout\);

-- Location: LCCOMB_X34_Y34_N26
\Selector0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~77_combout\ = (\shiftedColumnState.COL5~q\ & ((ascii_char(1) & (\Selector0~83_combout\)) # (!ascii_char(1) & ((\Selector0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => ascii_char(1),
	datac => \Selector0~83_combout\,
	datad => \Selector0~85_combout\,
	combout => \Selector0~77_combout\);

-- Location: LCCOMB_X32_Y34_N14
\Selector0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~61_combout\ = ((ascii_char(3)) # ((ascii_char(0) & !ascii_char(4)))) # (!ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector0~61_combout\);

-- Location: LCCOMB_X32_Y34_N16
\Selector0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~60_combout\ = (ascii_char(0) & ((ascii_char(2)) # ((ascii_char(4)) # (!ascii_char(3))))) # (!ascii_char(0) & (ascii_char(2) & (ascii_char(4) & ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector0~60_combout\);

-- Location: LCCOMB_X32_Y34_N4
\Selector0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~62_combout\ = (ascii_char(1) & (!ascii_char(5) & (\Selector0~61_combout\))) # (!ascii_char(1) & ((ascii_char(5)) # ((\Selector0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(5),
	datac => \Selector0~61_combout\,
	datad => \Selector0~60_combout\,
	combout => \Selector0~62_combout\);

-- Location: LCCOMB_X34_Y34_N20
\Selector0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~86_combout\ = (ascii_char(3) & (\Add0~0_combout\ $ (((ascii_char(0)) # (!ascii_char(2)))))) # (!ascii_char(3) & (!ascii_char(0) & (\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => \Add0~0_combout\,
	datad => ascii_char(2),
	combout => \Selector0~86_combout\);

-- Location: LCCOMB_X34_Y34_N22
\Selector0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~87_combout\ = (\Selector0~86_combout\ & (ascii_char(4) $ (((!ascii_char(0) & !ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \Selector0~86_combout\,
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector0~87_combout\);

-- Location: LCCOMB_X31_Y34_N16
\Selector0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~74_combout\ = (\Selector5~70_combout\) # ((ascii_char(6) $ (!ascii_char(5))) # (!\Selector1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => ascii_char(5),
	datac => \Selector5~70_combout\,
	datad => \Selector1~32_combout\,
	combout => \Selector0~74_combout\);

-- Location: LCCOMB_X34_Y34_N8
\Selector0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~63_combout\ = (ascii_char(5) & ((\Selector0~62_combout\ & ((!\Selector0~74_combout\))) # (!\Selector0~62_combout\ & (\Selector0~87_combout\)))) # (!ascii_char(5) & (\Selector0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector0~62_combout\,
	datac => \Selector0~87_combout\,
	datad => \Selector0~74_combout\,
	combout => \Selector0~63_combout\);

-- Location: LCCOMB_X34_Y34_N12
\Selector0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~73_combout\ = (!\Add0~0_combout\ & (!\Mux4~0_combout\ & (ascii_char(1) & !ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux4~0_combout\,
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector0~73_combout\);

-- Location: LCCOMB_X34_Y34_N2
\Selector0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~57_combout\ = (ascii_char(2) & (!ascii_char(1) & ((!ascii_char(5)) # (!ascii_char(3))))) # (!ascii_char(2) & (!ascii_char(3) & ((!ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => ascii_char(2),
	combout => \Selector0~57_combout\);

-- Location: LCCOMB_X34_Y34_N0
\Selector0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~56_combout\ = (ascii_char(3) & (ascii_char(2) & (ascii_char(1) $ (!ascii_char(5))))) # (!ascii_char(3) & ((ascii_char(2)) # (ascii_char(1) $ (ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => ascii_char(2),
	combout => \Selector0~56_combout\);

-- Location: LCCOMB_X34_Y34_N30
\Selector0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~72_combout\ = (!ascii_char(4) & (\Selector0~56_combout\ & (ascii_char(5) $ (!ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => ascii_char(6),
	datad => \Selector0~56_combout\,
	combout => \Selector0~72_combout\);

-- Location: LCCOMB_X34_Y34_N4
\Selector0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~58_combout\ = (\Selector0~73_combout\) # ((\Selector0~72_combout\) # ((\Selector0~57_combout\ & \Selector3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~73_combout\,
	datab => \Selector0~57_combout\,
	datac => \Selector0~72_combout\,
	datad => \Selector3~26_combout\,
	combout => \Selector0~58_combout\);

-- Location: LCCOMB_X34_Y34_N14
\Selector0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~51_combout\ = (ascii_char(3) & (!ascii_char(4) & (!\Add0~0_combout\ & \Selector6~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(4),
	datac => \Add0~0_combout\,
	datad => \Selector6~92_combout\,
	combout => \Selector0~51_combout\);

-- Location: LCCOMB_X34_Y30_N18
\Selector0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~54_combout\ = (!ascii_char(6) & (ascii_char(2) $ (((ascii_char(3) & ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(6),
	datad => ascii_char(1),
	combout => \Selector0~54_combout\);

-- Location: LCCOMB_X34_Y33_N24
\Selector0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~52_combout\ = (ascii_char(5) & (!ascii_char(4) & ascii_char(6))) # (!ascii_char(5) & (ascii_char(4) & !ascii_char(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datad => ascii_char(6),
	combout => \Selector0~52_combout\);

-- Location: LCCOMB_X30_Y32_N8
\Selector3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~25_combout\ = (ascii_char(2) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector3~25_combout\);

-- Location: LCCOMB_X34_Y34_N16
\Selector0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~53_combout\ = (\Selector0~52_combout\ & ((\Mux0~2_combout\) # (ascii_char(1) $ (!\Selector3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Selector0~52_combout\,
	datac => ascii_char(1),
	datad => \Selector3~25_combout\,
	combout => \Selector0~53_combout\);

-- Location: LCCOMB_X34_Y34_N6
\Selector0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~55_combout\ = (!ascii_char(0) & ((\Selector0~53_combout\) # ((\Selector0~54_combout\ & \Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \Selector0~54_combout\,
	datac => \Mux0~0_combout\,
	datad => \Selector0~53_combout\,
	combout => \Selector0~55_combout\);

-- Location: LCCOMB_X34_Y34_N10
\Selector0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~59_combout\ = (\Selector0~51_combout\) # ((\Selector0~55_combout\) # ((ascii_char(0) & \Selector0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \Selector0~58_combout\,
	datac => \Selector0~51_combout\,
	datad => \Selector0~55_combout\,
	combout => \Selector0~59_combout\);

-- Location: LCCOMB_X34_Y34_N18
\Selector0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~64_combout\ = (\Selector6~87_combout\ & ((\shiftedColumnState.COL3~q\ & ((\Selector0~59_combout\))) # (!\shiftedColumnState.COL3~q\ & (\Selector0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => \Selector6~87_combout\,
	datac => \Selector0~63_combout\,
	datad => \Selector0~59_combout\,
	combout => \Selector0~64_combout\);

-- Location: LCCOMB_X34_Y34_N24
\Selector0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~68_combout\ = (\Selector0~77_combout\) # ((\Selector0~64_combout\) # ((\Selector0~67_combout\ & \Selector6~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~67_combout\,
	datab => \Selector6~72_combout\,
	datac => \Selector0~77_combout\,
	datad => \Selector0~64_combout\,
	combout => \Selector0~68_combout\);

-- Location: LCCOMB_X34_Y34_N28
\screenArea[0][0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][0]~2_combout\ = (\shiftedColumnState.COL6~q\ & (\Selector0~71_combout\)) # (!\shiftedColumnState.COL6~q\ & ((\Selector0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~71_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datad => \Selector0~68_combout\,
	combout => \screenArea[0][0]~2_combout\);

-- Location: FF_X34_Y34_N29
\screenArea[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][0]~2_combout\,
	asdata => \Mux0~1_combout\,
	sload => \screenArea[1][0]~4_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][0]~q\);

-- Location: LCCOMB_X39_Y33_N4
\screenArea[0][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][1]~feeder_combout\ = \screenArea[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][0]~q\,
	combout => \screenArea[0][1]~feeder_combout\);

-- Location: FF_X39_Y33_N5
\screenArea[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][1]~q\);

-- Location: LCCOMB_X40_Y32_N30
\screenArea[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][2]~feeder_combout\ = \screenArea[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][1]~q\,
	combout => \screenArea[0][2]~feeder_combout\);

-- Location: FF_X40_Y32_N31
\screenArea[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][2]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][2]~q\);

-- Location: LCCOMB_X41_Y32_N6
\screenArea[0][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][3]~feeder_combout\ = \screenArea[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][2]~q\,
	combout => \screenArea[0][3]~feeder_combout\);

-- Location: FF_X41_Y32_N7
\screenArea[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][3]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][3]~q\);

-- Location: LCCOMB_X38_Y32_N14
\screenArea[0][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][4]~feeder_combout\ = \screenArea[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][3]~q\,
	combout => \screenArea[0][4]~feeder_combout\);

-- Location: FF_X38_Y32_N15
\screenArea[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][4]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][4]~q\);

-- Location: FF_X38_Y32_N31
\screenArea[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][4]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][5]~q\);

-- Location: FF_X40_Y33_N27
\screenArea[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][5]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][6]~q\);

-- Location: FF_X40_Y33_N7
\screenArea[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][6]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][7]~q\);

-- Location: FF_X41_Y33_N11
\screenArea[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][7]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][8]~q\);

-- Location: LCCOMB_X42_Y33_N14
\screenArea[0][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][9]~feeder_combout\ = \screenArea[0][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][8]~q\,
	combout => \screenArea[0][9]~feeder_combout\);

-- Location: FF_X42_Y33_N15
\screenArea[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][9]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][9]~q\);

-- Location: FF_X42_Y33_N5
\screenArea[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][9]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][10]~q\);

-- Location: FF_X42_Y33_N23
\screenArea[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][10]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][11]~q\);

-- Location: FF_X42_Y33_N25
\screenArea[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][11]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][12]~q\);

-- Location: FF_X43_Y33_N3
\screenArea[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][12]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][13]~q\);

-- Location: LCCOMB_X39_Y31_N26
\screenArea[0][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][14]~feeder_combout\ = \screenArea[0][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][13]~q\,
	combout => \screenArea[0][14]~feeder_combout\);

-- Location: FF_X39_Y31_N27
\screenArea[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][14]~q\);

-- Location: FF_X39_Y31_N13
\screenArea[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][14]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][15]~q\);

-- Location: LCCOMB_X37_Y31_N14
\screenArea[0][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][16]~feeder_combout\ = \screenArea[0][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][15]~q\,
	combout => \screenArea[0][16]~feeder_combout\);

-- Location: FF_X37_Y31_N15
\screenArea[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][16]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][16]~q\);

-- Location: LCCOMB_X42_Y31_N8
\screenArea[0][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][17]~feeder_combout\ = \screenArea[0][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][16]~q\,
	combout => \screenArea[0][17]~feeder_combout\);

-- Location: FF_X42_Y31_N9
\screenArea[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][17]~q\);

-- Location: FF_X38_Y31_N27
\screenArea[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][17]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][18]~q\);

-- Location: FF_X41_Y31_N31
\screenArea[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][18]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][19]~q\);

-- Location: LCCOMB_X41_Y32_N0
\screenArea[0][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][20]~feeder_combout\ = \screenArea[0][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][19]~q\,
	combout => \screenArea[0][20]~feeder_combout\);

-- Location: FF_X41_Y32_N1
\screenArea[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][20]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][20]~q\);

-- Location: LCCOMB_X41_Y34_N30
\screenArea[0][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][21]~feeder_combout\ = \screenArea[0][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][20]~q\,
	combout => \screenArea[0][21]~feeder_combout\);

-- Location: FF_X41_Y34_N31
\screenArea[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][21]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][21]~q\);

-- Location: FF_X41_Y34_N23
\screenArea[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][21]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][22]~q\);

-- Location: FF_X42_Y34_N23
\screenArea[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][22]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][23]~q\);

-- Location: FF_X42_Y34_N11
\screenArea[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][23]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][24]~q\);

-- Location: FF_X39_Y32_N11
\screenArea[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][24]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][25]~q\);

-- Location: LCCOMB_X38_Y32_N28
\screenArea[0][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][26]~feeder_combout\ = \screenArea[0][25]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][25]~q\,
	combout => \screenArea[0][26]~feeder_combout\);

-- Location: FF_X38_Y32_N29
\screenArea[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][26]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][26]~q\);

-- Location: LCCOMB_X39_Y35_N12
\screenArea[0][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][27]~feeder_combout\ = \screenArea[0][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][26]~q\,
	combout => \screenArea[0][27]~feeder_combout\);

-- Location: FF_X39_Y35_N13
\screenArea[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][27]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][27]~q\);

-- Location: LCCOMB_X39_Y35_N26
\screenArea[0][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][28]~feeder_combout\ = \screenArea[0][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][27]~q\,
	combout => \screenArea[0][28]~feeder_combout\);

-- Location: FF_X39_Y35_N27
\screenArea[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][28]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][28]~q\);

-- Location: FF_X37_Y35_N11
\screenArea[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[0][28]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][29]~q\);

-- Location: LCCOMB_X37_Y35_N4
\Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\scanStateVariable.LOAD1~q\ & (\screenArea[4][29]~q\ & ((\scanStateVariable.LOAD5~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][29]~q\) # ((\screenArea[4][29]~q\ & \scanStateVariable.LOAD5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \screenArea[4][29]~q\,
	datac => \screenArea[0][29]~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector21~2_combout\);

-- Location: LCCOMB_X36_Y33_N20
\Selector2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~27_combout\ = (\shiftedColumnState.COL7~q\ & (((\Selector2~69_combout\)))) # (!\shiftedColumnState.COL7~q\ & (\screenArea[1][0]~4_combout\ & ((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \screenArea[1][0]~4_combout\,
	datac => \Selector2~69_combout\,
	datad => \Mux0~1_combout\,
	combout => \Selector2~27_combout\);

-- Location: LCCOMB_X36_Y32_N24
\Selector2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~33_combout\ = (ascii_char(2) & (!ascii_char(1) & (ascii_char(3) $ (!ascii_char(0))))) # (!ascii_char(2) & (!ascii_char(3) & ((ascii_char(1)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector2~33_combout\);

-- Location: LCCOMB_X36_Y32_N14
\Selector2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~34_combout\ = (ascii_char(0) & ((ascii_char(2) & ((!ascii_char(3)))) # (!ascii_char(2) & (!ascii_char(1))))) # (!ascii_char(0) & (ascii_char(1) & ((ascii_char(2)) # (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector2~34_combout\);

-- Location: LCCOMB_X36_Y32_N12
\Selector2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~35_combout\ = (ascii_char(1) & (ascii_char(0) $ (ascii_char(3) $ (ascii_char(2))))) # (!ascii_char(1) & ((ascii_char(2) & (ascii_char(0))) # (!ascii_char(2) & ((ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector2~35_combout\);

-- Location: LCCOMB_X36_Y32_N26
\Selector2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~36_combout\ = (ascii_char(5) & (!ascii_char(4))) # (!ascii_char(5) & ((ascii_char(4) & ((\Selector2~35_combout\))) # (!ascii_char(4) & (\Selector2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => \Selector2~34_combout\,
	datad => \Selector2~35_combout\,
	combout => \Selector2~36_combout\);

-- Location: LCCOMB_X36_Y32_N16
\Selector2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~37_combout\ = (ascii_char(2) & ((ascii_char(1) & ((ascii_char(3)) # (ascii_char(0)))) # (!ascii_char(1) & (!ascii_char(3))))) # (!ascii_char(2) & (!ascii_char(1) & ((!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector2~37_combout\);

-- Location: LCCOMB_X36_Y32_N22
\Selector2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~38_combout\ = (ascii_char(5) & ((\Selector2~36_combout\ & ((\Selector2~37_combout\))) # (!\Selector2~36_combout\ & (\Selector2~33_combout\)))) # (!ascii_char(5) & (((\Selector2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector2~33_combout\,
	datac => \Selector2~36_combout\,
	datad => \Selector2~37_combout\,
	combout => \Selector2~38_combout\);

-- Location: LCCOMB_X30_Y33_N12
\Selector2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~31_combout\ = (!ascii_char(2) & ((ascii_char(3) & (!ascii_char(0) & ascii_char(1))) # (!ascii_char(3) & (ascii_char(0) $ (!ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector2~31_combout\);

-- Location: LCCOMB_X30_Y33_N22
\Selector2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~28_combout\ = (ascii_char(1) & (!ascii_char(3) & (ascii_char(0) & !ascii_char(2)))) # (!ascii_char(1) & (ascii_char(2) & ((ascii_char(3)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector2~28_combout\);

-- Location: LCCOMB_X30_Y33_N28
\Selector3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~27_combout\ = (ascii_char(3) & (!ascii_char(0) & ((ascii_char(1)) # (ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector3~27_combout\);

-- Location: LCCOMB_X30_Y33_N30
\Selector2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~29_combout\ = (ascii_char(4) & ((ascii_char(5) & (\Selector2~28_combout\)) # (!ascii_char(5) & ((\Selector3~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => \Selector2~28_combout\,
	datad => \Selector3~27_combout\,
	combout => \Selector2~29_combout\);

-- Location: LCCOMB_X30_Y33_N4
\Selector6~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~95_combout\ = ascii_char(1) $ (!ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector6~95_combout\);

-- Location: LCCOMB_X30_Y33_N14
\Selector2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~25_combout\ = (ascii_char(5) & !ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(5),
	datad => ascii_char(4),
	combout => \Selector2~25_combout\);

-- Location: LCCOMB_X30_Y33_N2
\Selector2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~30_combout\ = (ascii_char(2) & (!\Selector6~95_combout\ & (\Selector2~25_combout\ & \Selector5~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => \Selector6~95_combout\,
	datac => \Selector2~25_combout\,
	datad => \Selector5~70_combout\,
	combout => \Selector2~30_combout\);

-- Location: LCCOMB_X30_Y33_N18
\Selector2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~32_combout\ = (\Selector2~29_combout\) # ((\Selector2~30_combout\) # ((\Selector2~31_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~31_combout\,
	datab => \Mux0~0_combout\,
	datac => \Selector2~29_combout\,
	datad => \Selector2~30_combout\,
	combout => \Selector2~32_combout\);

-- Location: LCCOMB_X35_Y33_N28
\Selector2~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~77_combout\ = (\shiftedColumnState.COL6~q\ & (((\Selector2~38_combout\)))) # (!\shiftedColumnState.COL6~q\ & (\Selector6~72_combout\ & ((\Selector2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Selector6~72_combout\,
	datac => \Selector2~38_combout\,
	datad => \Selector2~32_combout\,
	combout => \Selector2~77_combout\);

-- Location: LCCOMB_X35_Y33_N14
\Selector2~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~78_combout\ = (\Selector2~77_combout\ & (ascii_char(5) $ (!ascii_char(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datac => ascii_char(6),
	datad => \Selector2~77_combout\,
	combout => \Selector2~78_combout\);

-- Location: LCCOMB_X32_Y29_N28
\Selector2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~45_combout\ = (!ascii_char(2) & (!ascii_char(3) & !ascii_char(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector2~45_combout\);

-- Location: LCCOMB_X32_Y29_N30
\Selector2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~57_combout\ = (\Selector6~93_combout\ & ((ascii_char(3) & ((ascii_char(0)) # (ascii_char(1)))) # (!ascii_char(3) & (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => \Selector6~93_combout\,
	combout => \Selector2~57_combout\);

-- Location: LCCOMB_X32_Y29_N6
\Selector2~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~73_combout\ = (!ascii_char(2) & (ascii_char(4) & (!ascii_char(3) & !\Selector6~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => \Selector6~59_combout\,
	combout => \Selector2~73_combout\);

-- Location: LCCOMB_X32_Y29_N4
\Selector2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~58_combout\ = (\Selector2~26_combout\ & ((\Selector2~45_combout\) # ((\Selector2~57_combout\) # (\Selector2~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~26_combout\,
	datab => \Selector2~45_combout\,
	datac => \Selector2~57_combout\,
	datad => \Selector2~73_combout\,
	combout => \Selector2~58_combout\);

-- Location: LCCOMB_X35_Y33_N4
\Selector2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~39_combout\ = (ascii_char(0) & ((ascii_char(2) & (!ascii_char(1) & ascii_char(3))) # (!ascii_char(2) & ((!ascii_char(3)))))) # (!ascii_char(0) & (!ascii_char(3) & ((ascii_char(1)) # (ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector2~39_combout\);

-- Location: LCCOMB_X35_Y33_N12
\Selector2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~41_combout\ = (ascii_char(3) & ((ascii_char(1) $ (!ascii_char(0))) # (!ascii_char(2)))) # (!ascii_char(3) & (((ascii_char(2)) # (!ascii_char(0))) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector2~41_combout\);

-- Location: LCCOMB_X35_Y33_N10
\Selector2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~40_combout\ = (ascii_char(2) & (((ascii_char(1) & !ascii_char(0))) # (!ascii_char(3)))) # (!ascii_char(2) & ((ascii_char(1) & (!ascii_char(3) & !ascii_char(0))) # (!ascii_char(1) & ((ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector2~40_combout\);

-- Location: LCCOMB_X35_Y33_N22
\Selector2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~42_combout\ = (ascii_char(4) & (\Selector2~41_combout\ & (!ascii_char(5)))) # (!ascii_char(4) & (((ascii_char(5)) # (\Selector2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~41_combout\,
	datab => ascii_char(4),
	datac => ascii_char(5),
	datad => \Selector2~40_combout\,
	combout => \Selector2~42_combout\);

-- Location: LCCOMB_X32_Y33_N26
\Selector2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~43_combout\ = (ascii_char(1) & (ascii_char(2) $ (((!ascii_char(0) & !ascii_char(3)))))) # (!ascii_char(1) & (!ascii_char(2) & (ascii_char(0) & !ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector2~43_combout\);

-- Location: LCCOMB_X35_Y33_N8
\Selector2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~44_combout\ = (ascii_char(5) & ((\Selector2~42_combout\ & ((\Selector2~43_combout\))) # (!\Selector2~42_combout\ & (\Selector2~39_combout\)))) # (!ascii_char(5) & (((\Selector2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector2~39_combout\,
	datac => \Selector2~42_combout\,
	datad => \Selector2~43_combout\,
	combout => \Selector2~44_combout\);

-- Location: LCCOMB_X35_Y33_N30
\Selector2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~46_combout\ = (ascii_char(1) & ((ascii_char(3)) # ((ascii_char(0) & !ascii_char(4))))) # (!ascii_char(1) & (ascii_char(0) $ (((ascii_char(4) & ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector2~46_combout\);

-- Location: LCCOMB_X35_Y33_N16
\Selector2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~24_combout\ = (!ascii_char(1) & (ascii_char(0) & !ascii_char(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector2~24_combout\);

-- Location: LCCOMB_X35_Y33_N0
\Selector2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~47_combout\ = (\Selector2~46_combout\ & ((ascii_char(2)) # ((\Selector2~21_combout\ & \Selector2~24_combout\)))) # (!\Selector2~46_combout\ & (((\Selector2~21_combout\ & \Selector2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~46_combout\,
	datab => ascii_char(2),
	datac => \Selector2~21_combout\,
	datad => \Selector2~24_combout\,
	combout => \Selector2~47_combout\);

-- Location: LCCOMB_X35_Y33_N6
\Selector2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~48_combout\ = (\Add0~0_combout\ & (((\Selector2~44_combout\)))) # (!\Add0~0_combout\ & ((\Selector2~45_combout\) # ((\Selector2~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~45_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector2~44_combout\,
	datad => \Selector2~47_combout\,
	combout => \Selector2~48_combout\);

-- Location: LCCOMB_X35_Y33_N20
\Selector2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~49_combout\ = (!\shiftedColumnState.COL6~q\ & (\Selector2~22_combout\ & \Selector2~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datac => \Selector2~22_combout\,
	datad => \Selector2~48_combout\,
	combout => \Selector2~49_combout\);

-- Location: LCCOMB_X30_Y32_N18
\Selector2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~52_combout\ = (ascii_char(0) & ((ascii_char(1) & ((!ascii_char(3)))) # (!ascii_char(1) & (ascii_char(2))))) # (!ascii_char(0) & (ascii_char(2) & ((!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector2~52_combout\);

-- Location: LCCOMB_X30_Y32_N4
\Selector2~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~71_combout\ = (!ascii_char(4) & (\Selector2~52_combout\ & (ascii_char(5) $ (ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => ascii_char(6),
	datad => \Selector2~52_combout\,
	combout => \Selector2~71_combout\);

-- Location: LCCOMB_X30_Y32_N30
\Selector2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~54_combout\ = (!ascii_char(4) & (ascii_char(0) & (ascii_char(6) & ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => ascii_char(6),
	datad => ascii_char(5),
	combout => \Selector2~54_combout\);

-- Location: LCCOMB_X30_Y32_N16
\Selector2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~53_combout\ = (ascii_char(1) & (ascii_char(2) & (ascii_char(0) & ascii_char(3)))) # (!ascii_char(1) & (ascii_char(3) $ (((ascii_char(2)) # (ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector2~53_combout\);

-- Location: LCCOMB_X30_Y32_N10
\Selector2~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~72_combout\ = (ascii_char(4) & (ascii_char(5) & (ascii_char(6) & \Selector2~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => ascii_char(6),
	datad => \Selector2~53_combout\,
	combout => \Selector2~72_combout\);

-- Location: LCCOMB_X30_Y32_N0
\Selector2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~55_combout\ = (\Selector2~72_combout\) # ((\Selector2~54_combout\ & (ascii_char(1) $ (\Selector3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~54_combout\,
	datab => ascii_char(1),
	datac => \Selector3~25_combout\,
	datad => \Selector2~72_combout\,
	combout => \Selector2~55_combout\);

-- Location: LCCOMB_X30_Y32_N26
\Selector2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~50_combout\ = (ascii_char(1) & (ascii_char(0) $ (((!ascii_char(3)) # (!ascii_char(2)))))) # (!ascii_char(1) & ((ascii_char(2)) # ((ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector2~50_combout\);

-- Location: LCCOMB_X30_Y32_N2
\Selector2~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~70_combout\ = (!ascii_char(6) & (!ascii_char(5) & (\Selector3~25_combout\ & !\Selector6~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => ascii_char(5),
	datac => \Selector3~25_combout\,
	datad => \Selector6~62_combout\,
	combout => \Selector2~70_combout\);

-- Location: LCCOMB_X30_Y32_N20
\Selector2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~51_combout\ = (\Selector2~70_combout\) # ((ascii_char(4) & (!\Add0~0_combout\ & \Selector2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Add0~0_combout\,
	datac => \Selector2~50_combout\,
	datad => \Selector2~70_combout\,
	combout => \Selector2~51_combout\);

-- Location: LCCOMB_X31_Y32_N0
\Selector2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~56_combout\ = (\Selector5~24_combout\ & ((\Selector2~71_combout\) # ((\Selector2~55_combout\) # (\Selector2~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~24_combout\,
	datab => \Selector2~71_combout\,
	datac => \Selector2~55_combout\,
	datad => \Selector2~51_combout\,
	combout => \Selector2~56_combout\);

-- Location: LCCOMB_X31_Y33_N0
\Selector2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~15_combout\ = (ascii_char(2) & (((ascii_char(4)) # (!ascii_char(3))))) # (!ascii_char(2) & ((ascii_char(0)) # (ascii_char(4) $ (ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector2~15_combout\);

-- Location: LCCOMB_X32_Y33_N24
\Selector2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~14_combout\ = (ascii_char(4) & ((ascii_char(2) & ((!ascii_char(3)))) # (!ascii_char(2) & ((ascii_char(3)) # (!ascii_char(0)))))) # (!ascii_char(4) & (ascii_char(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector2~14_combout\);

-- Location: LCCOMB_X32_Y33_N22
\Selector2~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~74_combout\ = (ascii_char(1) & (\Selector2~15_combout\)) # (!ascii_char(1) & ((\Selector2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datac => \Selector2~15_combout\,
	datad => \Selector2~14_combout\,
	combout => \Selector2~74_combout\);

-- Location: LCCOMB_X35_Y33_N26
\Selector2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~59_combout\ = (!\shiftedColumnState.COL6~q\ & (!\Add0~0_combout\ & (\Selector2~74_combout\ & \Selector6~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Add0~0_combout\,
	datac => \Selector2~74_combout\,
	datad => \Selector6~72_combout\,
	combout => \Selector2~59_combout\);

-- Location: LCCOMB_X35_Y29_N22
\Selector2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~20_combout\ = (ascii_char(2) & (ascii_char(4) $ (!ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(5),
	combout => \Selector2~20_combout\);

-- Location: LCCOMB_X35_Y29_N18
\Selector2~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~63_combout\ = (\Selector2~20_combout\ & ((ascii_char(5) & (ascii_char(1) $ (!ascii_char(3)))) # (!ascii_char(5) & (!ascii_char(1) & ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~20_combout\,
	datab => ascii_char(5),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector2~63_combout\);

-- Location: LCCOMB_X35_Y29_N30
\Selector2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~61_combout\ = (ascii_char(4) & (!ascii_char(3) & (!ascii_char(2)))) # (!ascii_char(4) & (ascii_char(1) $ (((ascii_char(3) & ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector2~61_combout\);

-- Location: LCCOMB_X35_Y29_N0
\Selector2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~60_combout\ = (ascii_char(2) & (((ascii_char(4) & ascii_char(1))) # (!ascii_char(3)))) # (!ascii_char(2) & (ascii_char(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector2~60_combout\);

-- Location: LCCOMB_X35_Y29_N8
\Selector2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~62_combout\ = (\Add0~0_combout\ & (!ascii_char(0))) # (!\Add0~0_combout\ & ((ascii_char(0) & (\Selector2~61_combout\)) # (!ascii_char(0) & ((\Selector2~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(0),
	datac => \Selector2~61_combout\,
	datad => \Selector2~60_combout\,
	combout => \Selector2~62_combout\);

-- Location: LCCOMB_X35_Y29_N6
\Selector2~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~75_combout\ = (ascii_char(4) & ((ascii_char(3) & (!ascii_char(5) & !ascii_char(1))) # (!ascii_char(3) & (ascii_char(5) $ (ascii_char(1)))))) # (!ascii_char(4) & ((ascii_char(3) & (ascii_char(5) $ (ascii_char(1)))) # (!ascii_char(3) & 
-- (ascii_char(5) & ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(5),
	datad => ascii_char(1),
	combout => \Selector2~75_combout\);

-- Location: LCCOMB_X35_Y29_N28
\Selector2~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~76_combout\ = (\Selector2~75_combout\ & ((ascii_char(2) & (ascii_char(3) $ (!ascii_char(1)))) # (!ascii_char(2) & ((ascii_char(3)) # (ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => \Selector2~75_combout\,
	combout => \Selector2~76_combout\);

-- Location: LCCOMB_X35_Y29_N16
\Selector2~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~64_combout\ = (\Add0~0_combout\ & ((\Selector2~62_combout\ & (\Selector2~63_combout\)) # (!\Selector2~62_combout\ & ((\Selector2~76_combout\))))) # (!\Add0~0_combout\ & (((\Selector2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector2~63_combout\,
	datac => \Selector2~62_combout\,
	datad => \Selector2~76_combout\,
	combout => \Selector2~64_combout\);

-- Location: LCCOMB_X35_Y33_N24
\Selector2~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~65_combout\ = (\Selector2~59_combout\) # ((!\shiftedColumnState.COL6~q\ & (\Selector3~28_combout\ & \Selector2~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Selector3~28_combout\,
	datac => \Selector2~59_combout\,
	datad => \Selector2~64_combout\,
	combout => \Selector2~65_combout\);

-- Location: LCCOMB_X35_Y33_N2
\Selector2~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~66_combout\ = (\Selector2~58_combout\) # ((\Selector2~49_combout\) # ((\Selector2~56_combout\) # (\Selector2~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~58_combout\,
	datab => \Selector2~49_combout\,
	datac => \Selector2~56_combout\,
	datad => \Selector2~65_combout\,
	combout => \Selector2~66_combout\);

-- Location: LCCOMB_X35_Y33_N18
\Selector2~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~67_combout\ = (\Selector2~27_combout\) # ((\Selector5~23_combout\ & ((\Selector2~78_combout\) # (\Selector2~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~27_combout\,
	datab => \Selector5~23_combout\,
	datac => \Selector2~78_combout\,
	datad => \Selector2~66_combout\,
	combout => \Selector2~67_combout\);

-- Location: FF_X35_Y33_N19
\screenArea[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Selector2~67_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][0]~q\);

-- Location: LCCOMB_X40_Y34_N6
\screenArea[2][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][1]~feeder_combout\ = \screenArea[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][0]~q\,
	combout => \screenArea[2][1]~feeder_combout\);

-- Location: FF_X40_Y34_N7
\screenArea[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][1]~q\);

-- Location: LCCOMB_X40_Y32_N6
\screenArea[2][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][2]~feeder_combout\ = \screenArea[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][1]~q\,
	combout => \screenArea[2][2]~feeder_combout\);

-- Location: FF_X40_Y32_N7
\screenArea[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][2]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][2]~q\);

-- Location: FF_X39_Y32_N15
\screenArea[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[2][2]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][3]~q\);

-- Location: LCCOMB_X39_Y32_N6
\screenArea[2][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][4]~feeder_combout\ = \screenArea[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][3]~q\,
	combout => \screenArea[2][4]~feeder_combout\);

-- Location: FF_X39_Y32_N7
\screenArea[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][4]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][4]~q\);

-- Location: LCCOMB_X38_Y32_N8
\screenArea[2][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][5]~feeder_combout\ = \screenArea[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][4]~q\,
	combout => \screenArea[2][5]~feeder_combout\);

-- Location: FF_X38_Y32_N9
\screenArea[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][5]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][5]~q\);

-- Location: LCCOMB_X40_Y33_N20
\screenArea[2][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][6]~feeder_combout\ = \screenArea[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][5]~q\,
	combout => \screenArea[2][6]~feeder_combout\);

-- Location: FF_X40_Y33_N21
\screenArea[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][6]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][6]~q\);

-- Location: LCCOMB_X41_Y33_N20
\screenArea[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][7]~feeder_combout\ = \screenArea[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][6]~q\,
	combout => \screenArea[2][7]~feeder_combout\);

-- Location: FF_X41_Y33_N21
\screenArea[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][7]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][7]~q\);

-- Location: LCCOMB_X42_Y33_N2
\screenArea[2][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][8]~feeder_combout\ = \screenArea[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][7]~q\,
	combout => \screenArea[2][8]~feeder_combout\);

-- Location: FF_X42_Y33_N3
\screenArea[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][8]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][8]~q\);

-- Location: FF_X41_Y33_N19
\screenArea[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[2][8]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][9]~q\);

-- Location: LCCOMB_X41_Y33_N2
\screenArea[2][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][10]~feeder_combout\ = \screenArea[2][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][9]~q\,
	combout => \screenArea[2][10]~feeder_combout\);

-- Location: FF_X41_Y33_N3
\screenArea[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][10]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][10]~q\);

-- Location: LCCOMB_X37_Y32_N22
\screenArea[2][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][11]~feeder_combout\ = \screenArea[2][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][10]~q\,
	combout => \screenArea[2][11]~feeder_combout\);

-- Location: FF_X37_Y32_N23
\screenArea[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][11]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][11]~q\);

-- Location: LCCOMB_X37_Y32_N4
\screenArea[2][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][12]~feeder_combout\ = \screenArea[2][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][11]~q\,
	combout => \screenArea[2][12]~feeder_combout\);

-- Location: FF_X37_Y32_N5
\screenArea[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][12]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][12]~q\);

-- Location: LCCOMB_X43_Y33_N10
\screenArea[2][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][13]~feeder_combout\ = \screenArea[2][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][12]~q\,
	combout => \screenArea[2][13]~feeder_combout\);

-- Location: FF_X43_Y33_N11
\screenArea[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][13]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][13]~q\);

-- Location: LCCOMB_X40_Y31_N30
\screenArea[2][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][14]~feeder_combout\ = \screenArea[2][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][13]~q\,
	combout => \screenArea[2][14]~feeder_combout\);

-- Location: FF_X40_Y31_N31
\screenArea[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][14]~q\);

-- Location: LCCOMB_X43_Y31_N20
\screenArea[2][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][15]~feeder_combout\ = \screenArea[2][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][14]~q\,
	combout => \screenArea[2][15]~feeder_combout\);

-- Location: FF_X43_Y31_N21
\screenArea[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][15]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][15]~q\);

-- Location: LCCOMB_X40_Y31_N22
\screenArea[2][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][16]~feeder_combout\ = \screenArea[2][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][15]~q\,
	combout => \screenArea[2][16]~feeder_combout\);

-- Location: FF_X40_Y31_N23
\screenArea[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][16]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][16]~q\);

-- Location: LCCOMB_X42_Y31_N12
\screenArea[2][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][17]~feeder_combout\ = \screenArea[2][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][16]~q\,
	combout => \screenArea[2][17]~feeder_combout\);

-- Location: FF_X42_Y31_N13
\screenArea[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][17]~q\);

-- Location: LCCOMB_X42_Y31_N4
\screenArea[2][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][18]~feeder_combout\ = \screenArea[2][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][17]~q\,
	combout => \screenArea[2][18]~feeder_combout\);

-- Location: FF_X42_Y31_N5
\screenArea[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][18]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][18]~q\);

-- Location: LCCOMB_X41_Y31_N18
\screenArea[2][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][19]~feeder_combout\ = \screenArea[2][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][18]~q\,
	combout => \screenArea[2][19]~feeder_combout\);

-- Location: FF_X41_Y31_N19
\screenArea[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][19]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][19]~q\);

-- Location: FF_X39_Y31_N9
\screenArea[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[2][19]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][20]~q\);

-- Location: LCCOMB_X41_Y34_N8
\screenArea[2][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][21]~feeder_combout\ = \screenArea[2][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][20]~q\,
	combout => \screenArea[2][21]~feeder_combout\);

-- Location: FF_X41_Y34_N9
\screenArea[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][21]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][21]~q\);

-- Location: FF_X41_Y34_N21
\screenArea[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[2][21]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][22]~q\);

-- Location: LCCOMB_X42_Y34_N20
\screenArea[2][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][23]~feeder_combout\ = \screenArea[2][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][22]~q\,
	combout => \screenArea[2][23]~feeder_combout\);

-- Location: FF_X42_Y34_N21
\screenArea[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][23]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][23]~q\);

-- Location: LCCOMB_X42_Y34_N14
\screenArea[2][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][24]~feeder_combout\ = \screenArea[2][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][23]~q\,
	combout => \screenArea[2][24]~feeder_combout\);

-- Location: FF_X42_Y34_N15
\screenArea[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][24]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][24]~q\);

-- Location: LCCOMB_X39_Y32_N26
\screenArea[2][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][25]~feeder_combout\ = \screenArea[2][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][24]~q\,
	combout => \screenArea[2][25]~feeder_combout\);

-- Location: FF_X39_Y32_N27
\screenArea[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][25]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][25]~q\);

-- Location: FF_X39_Y32_N31
\screenArea[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[2][25]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][26]~q\);

-- Location: LCCOMB_X37_Y32_N8
\screenArea[2][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][27]~feeder_combout\ = \screenArea[2][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][26]~q\,
	combout => \screenArea[2][27]~feeder_combout\);

-- Location: FF_X37_Y32_N9
\screenArea[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][27]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][27]~q\);

-- Location: LCCOMB_X39_Y35_N28
\screenArea[2][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][28]~feeder_combout\ = \screenArea[2][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][27]~q\,
	combout => \screenArea[2][28]~feeder_combout\);

-- Location: FF_X39_Y35_N29
\screenArea[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][28]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][28]~q\);

-- Location: LCCOMB_X37_Y35_N30
\screenArea[2][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][29]~feeder_combout\ = \screenArea[2][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][28]~q\,
	combout => \screenArea[2][29]~feeder_combout\);

-- Location: FF_X37_Y35_N31
\screenArea[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][29]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][29]~q\);

-- Location: LCCOMB_X37_Y35_N28
\Selector21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][29]~q\) # ((\screenArea[3][29]~q\ & \scanStateVariable.LOAD4~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\screenArea[3][29]~q\ & ((\scanStateVariable.LOAD4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \screenArea[3][29]~q\,
	datac => \screenArea[2][29]~q\,
	datad => \scanStateVariable.LOAD4~q\,
	combout => \Selector21~3_combout\);

-- Location: LCCOMB_X37_Y35_N24
\Selector21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = (\Selector21~3_combout\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[1][29]~q\,
	datad => \Selector21~3_combout\,
	combout => \Selector21~4_combout\);

-- Location: LCCOMB_X30_Y31_N30
\Selector6~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~90_combout\ = (ascii_char(2) & (((ascii_char(4) & !ascii_char(1))) # (!ascii_char(0)))) # (!ascii_char(2) & ((ascii_char(0) & ((ascii_char(1)))) # (!ascii_char(0) & ((!ascii_char(1)) # (!ascii_char(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector6~90_combout\);

-- Location: LCCOMB_X30_Y31_N16
\Selector6~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~89_combout\ = ascii_char(2) $ (((!ascii_char(1)) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector6~89_combout\);

-- Location: LCCOMB_X30_Y31_N20
\Selector6~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~102_combout\ = (ascii_char(3) & (((ascii_char(4) & \Selector6~89_combout\)))) # (!ascii_char(3) & (\Selector6~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~90_combout\,
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => \Selector6~89_combout\,
	combout => \Selector6~102_combout\);

-- Location: LCCOMB_X30_Y31_N22
\Selector6~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~31_combout\ = (ascii_char(0) & (ascii_char(4) & ((ascii_char(2)) # (ascii_char(3))))) # (!ascii_char(0) & (((!ascii_char(2) & ascii_char(4))) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~31_combout\);

-- Location: LCCOMB_X30_Y31_N28
\Selector6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~32_combout\ = (ascii_char(2) & ((ascii_char(3) & (ascii_char(0))) # (!ascii_char(3) & ((ascii_char(4)))))) # (!ascii_char(2) & (ascii_char(0) $ (ascii_char(4) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~32_combout\);

-- Location: LCCOMB_X30_Y31_N26
\Selector6~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~103_combout\ = (!ascii_char(5) & ((ascii_char(1) & ((\Selector6~32_combout\))) # (!ascii_char(1) & (\Selector6~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~31_combout\,
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => \Selector6~32_combout\,
	combout => \Selector6~103_combout\);

-- Location: LCCOMB_X30_Y31_N10
\Selector6~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~39_combout\ = (ascii_char(3) & (ascii_char(2) & ((!ascii_char(4))))) # (!ascii_char(3) & ((ascii_char(0) & ((!ascii_char(4)))) # (!ascii_char(0) & (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~39_combout\);

-- Location: LCCOMB_X30_Y31_N0
\Selector6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~38_combout\ = (!ascii_char(4) & (!ascii_char(3) & (ascii_char(2) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~38_combout\);

-- Location: LCCOMB_X30_Y31_N12
\Selector6~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~104_combout\ = (ascii_char(5) & ((ascii_char(1) & (\Selector6~39_combout\)) # (!ascii_char(1) & ((\Selector6~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~39_combout\,
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => \Selector6~38_combout\,
	combout => \Selector6~104_combout\);

-- Location: LCCOMB_X30_Y31_N4
\Selector6~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~91_combout\ = (\Add0~0_combout\ & (((\Selector6~103_combout\) # (\Selector6~104_combout\)))) # (!\Add0~0_combout\ & (\Selector6~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~102_combout\,
	datac => \Selector6~103_combout\,
	datad => \Selector6~104_combout\,
	combout => \Selector6~91_combout\);

-- Location: LCCOMB_X31_Y30_N6
\Selector6~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~61_combout\ = (!ascii_char(2) & (!ascii_char(3) & (!ascii_char(1) & !ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(5),
	combout => \Selector6~61_combout\);

-- Location: LCCOMB_X31_Y30_N0
\Selector6~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~105_combout\ = (ascii_char(2) & !ascii_char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(5),
	combout => \Selector6~105_combout\);

-- Location: LCCOMB_X31_Y30_N28
\Selector6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~60_combout\ = (ascii_char(1) & ((ascii_char(0) & (ascii_char(3) $ (ascii_char(4)))) # (!ascii_char(0) & (!ascii_char(3) & !ascii_char(4))))) # (!ascii_char(1) & ((ascii_char(0) & (!ascii_char(3) & !ascii_char(4))) # (!ascii_char(0) & 
-- (ascii_char(3) & ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector6~60_combout\);

-- Location: LCCOMB_X31_Y30_N14
\Selector6~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~63_combout\ = (\Selector6~61_combout\ & (((\Selector6~105_combout\ & \Selector6~60_combout\)) # (!\Selector6~62_combout\))) # (!\Selector6~61_combout\ & (\Selector6~105_combout\ & ((\Selector6~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~61_combout\,
	datab => \Selector6~105_combout\,
	datac => \Selector6~62_combout\,
	datad => \Selector6~60_combout\,
	combout => \Selector6~63_combout\);

-- Location: LCCOMB_X34_Y30_N12
\Selector6~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~112_combout\ = (ascii_char(6) & ((ascii_char(1) & (ascii_char(0))) # (!ascii_char(1) & ((!ascii_char(3)))))) # (!ascii_char(6) & ((ascii_char(3) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(6),
	datad => ascii_char(1),
	combout => \Selector6~112_combout\);

-- Location: LCCOMB_X34_Y30_N22
\Selector6~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~113_combout\ = (\Selector6~112_combout\ & (ascii_char(2) $ (((!ascii_char(3) & ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => \Selector6~112_combout\,
	combout => \Selector6~113_combout\);

-- Location: LCCOMB_X34_Y30_N28
\Selector6~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~110_combout\ = (ascii_char(0) & (ascii_char(6) $ (ascii_char(2) $ (!ascii_char(1))))) # (!ascii_char(0) & (!ascii_char(6) & ((ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector6~110_combout\);

-- Location: LCCOMB_X34_Y30_N6
\Selector6~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~111_combout\ = (\Selector6~110_combout\ & ((ascii_char(3) & ((ascii_char(2)) # (ascii_char(6)))) # (!ascii_char(3) & (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(6),
	datad => \Selector6~110_combout\,
	combout => \Selector6~111_combout\);

-- Location: LCCOMB_X34_Y30_N10
\Selector6~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~108_combout\ = (ascii_char(5) & ((ascii_char(4) & (\Selector6~113_combout\)) # (!ascii_char(4) & ((\Selector6~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~113_combout\,
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => \Selector6~111_combout\,
	combout => \Selector6~108_combout\);

-- Location: LCCOMB_X35_Y30_N6
\Selector6~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~109_combout\ = (\shiftedColumnState.COL5~q\ & ((\Selector6~63_combout\) # (\Selector6~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datac => \Selector6~63_combout\,
	datad => \Selector6~108_combout\,
	combout => \Selector6~109_combout\);

-- Location: LCCOMB_X36_Y30_N0
\Selector6~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~70_combout\ = (ascii_char(5) & ((ascii_char(2)) # ((ascii_char(4) & ascii_char(0))))) # (!ascii_char(5) & ((ascii_char(4)) # ((ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector6~70_combout\);

-- Location: LCCOMB_X36_Y30_N16
\Selector6~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~97_combout\ = (ascii_char(5) & (((ascii_char(3) & \Selector6~70_combout\)))) # (!ascii_char(5) & (!ascii_char(2) & (!ascii_char(3) & !\Selector6~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(3),
	datad => \Selector6~70_combout\,
	combout => \Selector6~97_combout\);

-- Location: LCCOMB_X36_Y30_N4
\Selector6~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~68_combout\ = (ascii_char(3) & (((ascii_char(4) & !ascii_char(0))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector6~68_combout\);

-- Location: LCCOMB_X36_Y30_N18
\Selector6~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~67_combout\ = (!ascii_char(4) & (!ascii_char(0) & (ascii_char(2) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector6~67_combout\);

-- Location: LCCOMB_X36_Y30_N22
\Selector6~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~69_combout\ = (\Add0~0_combout\ & (!ascii_char(1))) # (!\Add0~0_combout\ & ((ascii_char(1) & (\Selector6~68_combout\)) # (!ascii_char(1) & ((\Selector6~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(1),
	datac => \Selector6~68_combout\,
	datad => \Selector6~67_combout\,
	combout => \Selector6~69_combout\);

-- Location: LCCOMB_X32_Y31_N8
\Selector6~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~64_combout\ = (ascii_char(0) & (!ascii_char(2) & (ascii_char(5) & ascii_char(4)))) # (!ascii_char(0) & (!ascii_char(5) & ((ascii_char(2)) # (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(5),
	datad => ascii_char(4),
	combout => \Selector6~64_combout\);

-- Location: LCCOMB_X32_Y31_N16
\Selector6~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~66_combout\ = (ascii_char(3) & (\Selector6~64_combout\)) # (!ascii_char(3) & ((\Selector6~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(3),
	datac => \Selector6~64_combout\,
	datad => \Selector6~65_combout\,
	combout => \Selector6~66_combout\);

-- Location: LCCOMB_X36_Y30_N30
\Selector6~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~71_combout\ = (\Add0~0_combout\ & ((\Selector6~69_combout\ & (\Selector6~97_combout\)) # (!\Selector6~69_combout\ & ((\Selector6~66_combout\))))) # (!\Add0~0_combout\ & (((\Selector6~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~97_combout\,
	datac => \Selector6~69_combout\,
	datad => \Selector6~66_combout\,
	combout => \Selector6~71_combout\);

-- Location: LCCOMB_X36_Y30_N26
\Selector6~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~98_combout\ = (!\shiftedColumnState.COL5~q\ & (\Selector6~71_combout\ & \shiftedColumnState.COL4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datac => \Selector6~71_combout\,
	datad => \shiftedColumnState.COL4~q\,
	combout => \Selector6~98_combout\);

-- Location: LCCOMB_X36_Y30_N8
\Selector6~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~106_combout\ = (ascii_char(5) & ((ascii_char(3) $ (ascii_char(1))))) # (!ascii_char(5) & ((ascii_char(4) & (!ascii_char(3) & ascii_char(1))) # (!ascii_char(4) & (ascii_char(3) $ (!ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector6~106_combout\);

-- Location: LCCOMB_X36_Y30_N14
\Selector6~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~107_combout\ = (\Selector6~106_combout\ & (ascii_char(2) $ (((ascii_char(5)) # (!ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => \Selector6~106_combout\,
	datad => ascii_char(5),
	combout => \Selector6~107_combout\);

-- Location: LCCOMB_X36_Y30_N2
\Selector6~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~81_combout\ = (ascii_char(4) & (((!ascii_char(3) & !ascii_char(1))))) # (!ascii_char(4) & ((ascii_char(3) & ((ascii_char(1)))) # (!ascii_char(3) & (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector6~81_combout\);

-- Location: LCCOMB_X36_Y30_N12
\Selector6~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~82_combout\ = (ascii_char(0) & ((\Add0~0_combout\ & (\Selector6~107_combout\)) # (!\Add0~0_combout\ & ((\Selector6~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \Selector6~107_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector6~81_combout\,
	combout => \Selector6~82_combout\);

-- Location: LCCOMB_X35_Y29_N24
\Selector6~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~101_combout\ = (!ascii_char(2) & (ascii_char(5) & (\Selector6~83_combout\ & !ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => \Selector6~83_combout\,
	datad => ascii_char(1),
	combout => \Selector6~101_combout\);

-- Location: LCCOMB_X35_Y29_N20
\Selector6~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~84_combout\ = (\Selector2~20_combout\ & ((ascii_char(1) & (ascii_char(4) & ascii_char(3))) # (!ascii_char(1) & (ascii_char(4) $ (ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => \Selector2~20_combout\,
	datad => ascii_char(3),
	combout => \Selector6~84_combout\);

-- Location: LCCOMB_X35_Y29_N26
\Selector6~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~85_combout\ = (\Add0~0_combout\ & (!ascii_char(0) & ((\Selector6~101_combout\) # (\Selector6~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~101_combout\,
	datac => ascii_char(0),
	datad => \Selector6~84_combout\,
	combout => \Selector6~85_combout\);

-- Location: LCCOMB_X31_Y30_N22
\Selector6~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~76_combout\ = (ascii_char(0) & ((ascii_char(4) & ((!ascii_char(3)))) # (!ascii_char(4) & (!ascii_char(2))))) # (!ascii_char(0) & (ascii_char(3) & ((ascii_char(2)) # (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector6~76_combout\);

-- Location: LCCOMB_X31_Y30_N8
\Selector6~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~77_combout\ = (ascii_char(5) & (((!ascii_char(1))))) # (!ascii_char(5) & (((ascii_char(4) & !ascii_char(1))) # (!\Selector6~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => \Selector6~76_combout\,
	datad => ascii_char(1),
	combout => \Selector6~77_combout\);

-- Location: LCCOMB_X31_Y30_N18
\Selector6~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~78_combout\ = (ascii_char(2) & (!ascii_char(0) & ((!ascii_char(4))))) # (!ascii_char(2) & ((ascii_char(3) & ((!ascii_char(4)))) # (!ascii_char(3) & ((ascii_char(0)) # (ascii_char(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector6~78_combout\);

-- Location: LCCOMB_X31_Y30_N12
\Selector6~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~79_combout\ = (ascii_char(4) & (!ascii_char(2) & (!ascii_char(0)))) # (!ascii_char(4) & (ascii_char(3) $ (((ascii_char(2) & ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector6~79_combout\);

-- Location: LCCOMB_X31_Y30_N26
\Selector6~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~100_combout\ = \Selector6~78_combout\ $ (((\Selector6~79_combout\) # (ascii_char(5) $ (ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector6~78_combout\,
	datac => ascii_char(6),
	datad => \Selector6~79_combout\,
	combout => \Selector6~100_combout\);

-- Location: LCCOMB_X31_Y30_N30
\Selector6~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~74_combout\ = (!ascii_char(3) & ((!ascii_char(4)) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector6~74_combout\);

-- Location: LCCOMB_X31_Y30_N16
\Selector6~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~73_combout\ = (ascii_char(2) & (ascii_char(0) $ (ascii_char(3) $ (ascii_char(4))))) # (!ascii_char(2) & ((ascii_char(0) & ((ascii_char(3)) # (!ascii_char(4)))) # (!ascii_char(0) & (ascii_char(3) & !ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector6~73_combout\);

-- Location: LCCOMB_X31_Y30_N20
\Selector6~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~99_combout\ = ascii_char(2) $ (((ascii_char(5) $ (!ascii_char(6))) # (!\Selector6~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(6),
	datad => \Selector6~73_combout\,
	combout => \Selector6~99_combout\);

-- Location: LCCOMB_X31_Y30_N24
\Selector6~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~75_combout\ = (\Add0~0_combout\ & ((\Selector6~99_combout\ & ((\Selector6~74_combout\))) # (!\Selector6~99_combout\ & (!\Selector6~62_combout\)))) # (!\Add0~0_combout\ & (((\Selector6~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~62_combout\,
	datac => \Selector6~74_combout\,
	datad => \Selector6~99_combout\,
	combout => \Selector6~75_combout\);

-- Location: LCCOMB_X31_Y30_N10
\Selector6~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~80_combout\ = (ascii_char(5) & ((\Selector6~77_combout\ & (\Selector6~100_combout\)) # (!\Selector6~77_combout\ & ((\Selector6~75_combout\))))) # (!ascii_char(5) & (\Selector6~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector6~77_combout\,
	datac => \Selector6~100_combout\,
	datad => \Selector6~75_combout\,
	combout => \Selector6~80_combout\);

-- Location: LCCOMB_X36_Y30_N6
\Selector6~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~86_combout\ = (\shiftedColumnState.COL3~q\ & ((\Selector6~82_combout\) # ((\Selector6~85_combout\)))) # (!\shiftedColumnState.COL3~q\ & (((\Selector6~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~82_combout\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \Selector6~85_combout\,
	datad => \Selector6~80_combout\,
	combout => \Selector6~86_combout\);

-- Location: LCCOMB_X36_Y30_N20
\Selector6~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~88_combout\ = (\Selector6~109_combout\) # ((\Selector6~98_combout\) # ((\Selector6~87_combout\ & \Selector6~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~87_combout\,
	datab => \Selector6~109_combout\,
	datac => \Selector6~98_combout\,
	datad => \Selector6~86_combout\,
	combout => \Selector6~88_combout\);

-- Location: LCCOMB_X36_Y30_N24
\screenArea[6][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][0]~0_combout\ = (\shiftedColumnState.COL6~q\ & (\Selector6~91_combout\)) # (!\shiftedColumnState.COL6~q\ & ((\Selector6~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~91_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datad => \Selector6~88_combout\,
	combout => \screenArea[6][0]~0_combout\);

-- Location: FF_X36_Y30_N25
\screenArea[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][0]~0_combout\,
	asdata => \Mux4~1_combout\,
	sload => \screenArea[1][0]~4_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][0]~q\);

-- Location: LCCOMB_X40_Y34_N22
\screenArea[6][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][1]~feeder_combout\ = \screenArea[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][0]~q\,
	combout => \screenArea[6][1]~feeder_combout\);

-- Location: FF_X40_Y34_N23
\screenArea[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][1]~q\);

-- Location: LCCOMB_X39_Y34_N10
\screenArea[6][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][2]~feeder_combout\ = \screenArea[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][1]~q\,
	combout => \screenArea[6][2]~feeder_combout\);

-- Location: FF_X39_Y34_N11
\screenArea[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][2]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][2]~q\);

-- Location: LCCOMB_X39_Y36_N12
\screenArea[6][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][3]~feeder_combout\ = \screenArea[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][2]~q\,
	combout => \screenArea[6][3]~feeder_combout\);

-- Location: FF_X39_Y36_N13
\screenArea[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][3]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][3]~q\);

-- Location: LCCOMB_X39_Y36_N26
\screenArea[6][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][4]~feeder_combout\ = \screenArea[6][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][3]~q\,
	combout => \screenArea[6][4]~feeder_combout\);

-- Location: FF_X39_Y36_N27
\screenArea[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][4]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][4]~q\);

-- Location: LCCOMB_X39_Y36_N8
\screenArea[6][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][5]~feeder_combout\ = \screenArea[6][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][4]~q\,
	combout => \screenArea[6][5]~feeder_combout\);

-- Location: FF_X39_Y36_N9
\screenArea[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][5]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][5]~q\);

-- Location: LCCOMB_X39_Y36_N18
\screenArea[6][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][6]~feeder_combout\ = \screenArea[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][5]~q\,
	combout => \screenArea[6][6]~feeder_combout\);

-- Location: FF_X39_Y36_N19
\screenArea[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][6]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][6]~q\);

-- Location: LCCOMB_X39_Y36_N28
\screenArea[6][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][7]~feeder_combout\ = \screenArea[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][6]~q\,
	combout => \screenArea[6][7]~feeder_combout\);

-- Location: FF_X39_Y36_N29
\screenArea[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][7]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][7]~q\);

-- Location: LCCOMB_X39_Y34_N4
\screenArea[6][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][8]~feeder_combout\ = \screenArea[6][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][7]~q\,
	combout => \screenArea[6][8]~feeder_combout\);

-- Location: FF_X39_Y34_N5
\screenArea[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][8]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][8]~q\);

-- Location: LCCOMB_X40_Y34_N24
\screenArea[6][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][9]~feeder_combout\ = \screenArea[6][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][8]~q\,
	combout => \screenArea[6][9]~feeder_combout\);

-- Location: FF_X40_Y34_N25
\screenArea[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][9]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][9]~q\);

-- Location: FF_X41_Y33_N29
\screenArea[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[6][9]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][10]~q\);

-- Location: LCCOMB_X42_Y33_N16
\screenArea[6][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][11]~feeder_combout\ = \screenArea[6][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][10]~q\,
	combout => \screenArea[6][11]~feeder_combout\);

-- Location: FF_X42_Y33_N17
\screenArea[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][11]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][11]~q\);

-- Location: LCCOMB_X43_Y33_N4
\screenArea[6][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][12]~feeder_combout\ = \screenArea[6][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][11]~q\,
	combout => \screenArea[6][12]~feeder_combout\);

-- Location: FF_X43_Y33_N5
\screenArea[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][12]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][12]~q\);

-- Location: LCCOMB_X39_Y34_N26
\screenArea[6][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][13]~feeder_combout\ = \screenArea[6][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][12]~q\,
	combout => \screenArea[6][13]~feeder_combout\);

-- Location: FF_X39_Y34_N27
\screenArea[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][13]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][13]~q\);

-- Location: LCCOMB_X39_Y31_N4
\screenArea[6][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][14]~feeder_combout\ = \screenArea[6][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][13]~q\,
	combout => \screenArea[6][14]~feeder_combout\);

-- Location: FF_X39_Y31_N5
\screenArea[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][14]~q\);

-- Location: FF_X39_Y31_N17
\screenArea[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[6][14]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][15]~q\);

-- Location: LCCOMB_X39_Y31_N18
\screenArea[6][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][16]~feeder_combout\ = \screenArea[6][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][15]~q\,
	combout => \screenArea[6][16]~feeder_combout\);

-- Location: FF_X39_Y31_N19
\screenArea[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][16]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][16]~q\);

-- Location: LCCOMB_X39_Y31_N22
\screenArea[6][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][17]~feeder_combout\ = \screenArea[6][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][16]~q\,
	combout => \screenArea[6][17]~feeder_combout\);

-- Location: FF_X39_Y31_N23
\screenArea[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][17]~q\);

-- Location: LCCOMB_X38_Y31_N22
\screenArea[6][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][18]~feeder_combout\ = \screenArea[6][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][17]~q\,
	combout => \screenArea[6][18]~feeder_combout\);

-- Location: FF_X38_Y31_N23
\screenArea[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][18]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][18]~q\);

-- Location: LCCOMB_X41_Y31_N2
\screenArea[6][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][19]~feeder_combout\ = \screenArea[6][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][18]~q\,
	combout => \screenArea[6][19]~feeder_combout\);

-- Location: FF_X41_Y31_N3
\screenArea[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][19]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][19]~q\);

-- Location: LCCOMB_X38_Y31_N8
\screenArea[6][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][20]~feeder_combout\ = \screenArea[6][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][19]~q\,
	combout => \screenArea[6][20]~feeder_combout\);

-- Location: FF_X38_Y31_N9
\screenArea[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][20]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][20]~q\);

-- Location: LCCOMB_X41_Y31_N4
\screenArea[6][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][21]~feeder_combout\ = \screenArea[6][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][20]~q\,
	combout => \screenArea[6][21]~feeder_combout\);

-- Location: FF_X41_Y31_N5
\screenArea[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][21]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][21]~q\);

-- Location: FF_X41_Y34_N29
\screenArea[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[6][21]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][22]~q\);

-- Location: LCCOMB_X37_Y34_N14
\screenArea[6][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][23]~feeder_combout\ = \screenArea[6][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][22]~q\,
	combout => \screenArea[6][23]~feeder_combout\);

-- Location: FF_X37_Y34_N15
\screenArea[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][23]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][23]~q\);

-- Location: LCCOMB_X37_Y34_N28
\screenArea[6][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][24]~feeder_combout\ = \screenArea[6][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][23]~q\,
	combout => \screenArea[6][24]~feeder_combout\);

-- Location: FF_X37_Y34_N29
\screenArea[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][24]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][24]~q\);

-- Location: LCCOMB_X37_Y34_N6
\screenArea[6][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][25]~feeder_combout\ = \screenArea[6][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][24]~q\,
	combout => \screenArea[6][25]~feeder_combout\);

-- Location: FF_X37_Y34_N7
\screenArea[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][25]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][25]~q\);

-- Location: LCCOMB_X37_Y34_N20
\screenArea[6][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][26]~feeder_combout\ = \screenArea[6][25]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][25]~q\,
	combout => \screenArea[6][26]~feeder_combout\);

-- Location: FF_X37_Y34_N21
\screenArea[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][26]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][26]~q\);

-- Location: LCCOMB_X39_Y34_N0
\screenArea[6][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][27]~feeder_combout\ = \screenArea[6][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][26]~q\,
	combout => \screenArea[6][27]~feeder_combout\);

-- Location: FF_X39_Y34_N1
\screenArea[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][27]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][27]~q\);

-- Location: LCCOMB_X39_Y35_N8
\screenArea[6][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][28]~feeder_combout\ = \screenArea[6][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][27]~q\,
	combout => \screenArea[6][28]~feeder_combout\);

-- Location: FF_X39_Y35_N9
\screenArea[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][28]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][28]~q\);

-- Location: FF_X37_Y35_N25
\screenArea[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[6][28]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][29]~q\);

-- Location: LCCOMB_X37_Y35_N22
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][29]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][29]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[5][29]~q\,
	datad => \screenArea[6][29]~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X30_Y31_N2
\Mux46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (ascii_char(5) & (ascii_char(0) $ (((ascii_char(2)) # (!ascii_char(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(0),
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X30_Y31_N24
\Selector7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = (!\Add0~0_combout\ & (ascii_char(1) & (!ascii_char(3) & \Mux46~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => \Mux46~2_combout\,
	combout => \Selector7~7_combout\);

-- Location: LCCOMB_X30_Y33_N26
\Mux46~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = (ascii_char(1) & (((ascii_char(5) & ascii_char(0))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Mux46~5_combout\);

-- Location: LCCOMB_X30_Y33_N20
\Mux46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (ascii_char(4) & (((ascii_char(1)) # (!ascii_char(0))))) # (!ascii_char(4) & ((ascii_char(5) & (!ascii_char(1))) # (!ascii_char(5) & ((ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(0),
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X31_Y33_N16
\Mux46~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux46~5_combout\ & ((ascii_char(6) & (ascii_char(2) & \Mux46~3_combout\)) # (!ascii_char(6) & ((ascii_char(2)) # (\Mux46~3_combout\))))) # (!\Mux46~5_combout\ & (!ascii_char(6) & (ascii_char(2) $ (!\Mux46~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~5_combout\,
	datab => ascii_char(6),
	datac => ascii_char(2),
	datad => \Mux46~3_combout\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X31_Y33_N14
\Selector7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~8_combout\ = (\shiftedColumnState.COL6~q\ & ((\Selector7~7_combout\) # ((ascii_char(3) & \Mux46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Selector7~7_combout\,
	datac => ascii_char(3),
	datad => \Mux46~4_combout\,
	combout => \Selector7~8_combout\);

-- Location: LCCOMB_X29_Y33_N8
\Mux38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (ascii_char(1) & (ascii_char(2) $ (((ascii_char(0)) # (!ascii_char(3)))))) # (!ascii_char(1) & ((ascii_char(0) & (ascii_char(2))) # (!ascii_char(0) & ((!ascii_char(3)) # (!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X29_Y33_N4
\Mux38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (ascii_char(1) & (!ascii_char(2) & (!ascii_char(0) & !ascii_char(3)))) # (!ascii_char(1) & (((ascii_char(2) & ascii_char(3))) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X29_Y33_N10
\Mux38~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (ascii_char(1) & (!ascii_char(2) & ((ascii_char(3))))) # (!ascii_char(1) & ((ascii_char(3)) # ((!ascii_char(2) & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X29_Y33_N20
\Selector7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~13_combout\ = (!ascii_char(4) & ((ascii_char(5) & ((!\Mux38~4_combout\))) # (!ascii_char(5) & (\Mux38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Mux38~3_combout\,
	datad => \Mux38~4_combout\,
	combout => \Selector7~13_combout\);

-- Location: LCCOMB_X29_Y33_N6
\Selector7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~14_combout\ = (\Selector7~13_combout\) # ((ascii_char(4) & (!ascii_char(5) & \Mux38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Mux38~2_combout\,
	datad => \Selector7~13_combout\,
	combout => \Selector7~14_combout\);

-- Location: LCCOMB_X37_Y31_N4
\Selector7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~10_combout\ = (ascii_char(2) & ((ascii_char(1) & ((!ascii_char(5)))) # (!ascii_char(1) & (!ascii_char(4))))) # (!ascii_char(2) & (ascii_char(4) & ((ascii_char(5)) # (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(5),
	datad => ascii_char(1),
	combout => \Selector7~10_combout\);

-- Location: LCCOMB_X37_Y31_N26
\Selector7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~11_combout\ = (!ascii_char(3) & (\Selector7~10_combout\ & (ascii_char(0) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => \Selector7~10_combout\,
	datad => ascii_char(1),
	combout => \Selector7~11_combout\);

-- Location: LCCOMB_X29_Y33_N0
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (ascii_char(3) & (ascii_char(2) $ (ascii_char(0) $ (!ascii_char(4))))) # (!ascii_char(3) & (ascii_char(0) & ((ascii_char(2)) # (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X29_Y33_N30
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (ascii_char(5) & (!ascii_char(4))) # (!ascii_char(5) & ((\Mux14~2_combout\) # ((ascii_char(4) & ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => ascii_char(1),
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X29_Y33_N28
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (ascii_char(3) & (!ascii_char(0) & (ascii_char(1) $ (!ascii_char(2))))) # (!ascii_char(3) & (ascii_char(2) & (ascii_char(1) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X29_Y33_N14
\Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (ascii_char(5) & (\Mux14~4_combout\ & (ascii_char(0) $ (!\Mux14~3_combout\)))) # (!ascii_char(5) & (((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(0),
	datac => \Mux14~3_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X34_Y33_N4
\Selector7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~12_combout\ = (\shiftedColumnState.COL2~q\ & ((\Mux14~5_combout\) # ((\shiftedColumnState.COL6~q\ & \Selector7~11_combout\)))) # (!\shiftedColumnState.COL2~q\ & (\shiftedColumnState.COL6~q\ & (\Selector7~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL2~q\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \Selector7~11_combout\,
	datad => \Mux14~5_combout\,
	combout => \Selector7~12_combout\);

-- Location: LCCOMB_X34_Y33_N26
\Mux22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (ascii_char(3) & ((ascii_char(5) & ((!ascii_char(2)))) # (!ascii_char(5) & (ascii_char(1) & ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X34_Y33_N30
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (ascii_char(5) & ((ascii_char(1) & ((ascii_char(2)))) # (!ascii_char(1) & (!ascii_char(3))))) # (!ascii_char(5) & (!ascii_char(1) & (ascii_char(3) & ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X34_Y33_N14
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (ascii_char(5) & (!ascii_char(2) & ((ascii_char(3)) # (!ascii_char(1))))) # (!ascii_char(5) & (ascii_char(1) $ (((ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X34_Y33_N16
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (!ascii_char(5) & ((ascii_char(1) & (ascii_char(3) $ (!ascii_char(2)))) # (!ascii_char(1) & ((!ascii_char(2)) # (!ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X34_Y33_N28
\Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (ascii_char(4) & ((ascii_char(0) & (\Mux22~4_combout\)) # (!ascii_char(0) & ((\Mux22~3_combout\))))) # (!ascii_char(4) & (!ascii_char(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => \Mux22~4_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X34_Y33_N8
\Mux22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (ascii_char(4) & (((\Mux22~5_combout\)))) # (!ascii_char(4) & ((\Mux22~5_combout\ & (!\Mux22~6_combout\)) # (!\Mux22~5_combout\ & ((\Mux22~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~6_combout\,
	datab => ascii_char(4),
	datac => \Mux22~2_combout\,
	datad => \Mux22~5_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X29_Y33_N12
\Mux30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (ascii_char(1) & (!ascii_char(2) & ((ascii_char(0)) # (ascii_char(3))))) # (!ascii_char(1) & (ascii_char(3) $ (((!ascii_char(2) & !ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X29_Y33_N24
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (!ascii_char(2) & (ascii_char(0) & ((!ascii_char(3)) # (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X29_Y33_N2
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (ascii_char(0) & ((ascii_char(2) & (!ascii_char(1) & ascii_char(3))) # (!ascii_char(2) & ((!ascii_char(3)))))) # (!ascii_char(0) & ((ascii_char(1)) # ((ascii_char(2)) # (ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X29_Y33_N26
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (ascii_char(4) & (!ascii_char(5) & (\Mux38~2_combout\))) # (!ascii_char(4) & ((ascii_char(5)) # ((\Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Mux38~2_combout\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X29_Y33_N18
\Mux30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux30~4_combout\ & (((!ascii_char(5))) # (!\Mux30~5_combout\))) # (!\Mux30~4_combout\ & (((\Mux30~2_combout\ & ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux30~2_combout\,
	datac => \Mux30~4_combout\,
	datad => ascii_char(5),
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X34_Y33_N6
\Selector7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~9_combout\ = (\shiftedColumnState.COL3~q\ & ((\Mux22~7_combout\) # ((\shiftedColumnState.COL4~q\ & \Mux30~6_combout\)))) # (!\shiftedColumnState.COL3~q\ & (\shiftedColumnState.COL4~q\ & ((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => \shiftedColumnState.COL4~q\,
	datac => \Mux22~7_combout\,
	datad => \Mux30~6_combout\,
	combout => \Selector7~9_combout\);

-- Location: LCCOMB_X34_Y33_N22
\Selector7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~15_combout\ = (\Selector7~12_combout\) # ((\Selector7~9_combout\) # ((\shiftedColumnState.COL5~q\ & \Selector7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \Selector7~14_combout\,
	datac => \Selector7~12_combout\,
	datad => \Selector7~9_combout\,
	combout => \Selector7~15_combout\);

-- Location: LCCOMB_X34_Y33_N12
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (ascii_char(3) & ((ascii_char(2) & (ascii_char(1) $ (ascii_char(0)))) # (!ascii_char(2) & (ascii_char(1) & ascii_char(0))))) # (!ascii_char(3) & (ascii_char(2) $ (((ascii_char(1)) # (ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X34_Y33_N18
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (ascii_char(0) & (ascii_char(2) $ (((ascii_char(1)))))) # (!ascii_char(0) & (((ascii_char(1)) # (!ascii_char(3))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X34_Y33_N10
\Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\shiftedColumnState.COL4~q\ & ((ascii_char(4) & ((\Mux30~0_combout\))) # (!ascii_char(4) & (\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \shiftedColumnState.COL4~q\,
	datac => \Mux30~1_combout\,
	datad => \Mux30~0_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X37_Y31_N22
\Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (ascii_char(4) & ((ascii_char(2) & ((ascii_char(3)))) # (!ascii_char(2) & (ascii_char(0))))) # (!ascii_char(4) & ((ascii_char(3) & (!ascii_char(2))) # (!ascii_char(3) & ((ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X37_Y31_N28
\Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (ascii_char(0) & (!ascii_char(2) & (ascii_char(4) $ (!ascii_char(3))))) # (!ascii_char(0) & (ascii_char(4) & (ascii_char(2) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X37_Y31_N0
\Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\shiftedColumnState.COL5~q\ & ((ascii_char(1) & ((\Mux38~0_combout\))) # (!ascii_char(1) & (!\Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => ascii_char(1),
	datac => \Mux38~1_combout\,
	datad => \Mux38~0_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X36_Y32_N0
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (ascii_char(2) & ((ascii_char(0) & ((!ascii_char(4)) # (!ascii_char(1)))) # (!ascii_char(0) & (!ascii_char(1) & !ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X36_Y32_N6
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (ascii_char(0) & ((ascii_char(4) & (!ascii_char(1) & ascii_char(2))) # (!ascii_char(4) & ((!ascii_char(2)))))) # (!ascii_char(0) & ((ascii_char(2) & ((!ascii_char(4)))) # (!ascii_char(2) & (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X35_Y32_N8
\Selector7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\shiftedColumnState.COL2~q\ & ((ascii_char(3) & ((!\Mux14~1_combout\))) # (!ascii_char(3) & (\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL2~q\,
	datab => ascii_char(3),
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X37_Y31_N8
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (ascii_char(3) & (ascii_char(1) $ (((ascii_char(2)) # (!ascii_char(4)))))) # (!ascii_char(3) & (ascii_char(2) & (!ascii_char(4) & ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X37_Y31_N18
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (ascii_char(3) & (ascii_char(2) $ (((ascii_char(1)))))) # (!ascii_char(3) & (!ascii_char(2) & (ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X37_Y31_N30
\Selector7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\shiftedColumnState.COL3~q\ & ((ascii_char(0) & ((\Mux22~0_combout\))) # (!ascii_char(0) & (!\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => ascii_char(0),
	datac => \Mux22~1_combout\,
	datad => \Mux22~0_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X34_Y33_N20
\Selector7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = (\Selector7~3_combout\) # ((\Selector7~2_combout\) # ((\Selector7~5_combout\) # (\Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~3_combout\,
	datab => \Selector7~2_combout\,
	datac => \Selector7~5_combout\,
	datad => \Selector7~4_combout\,
	combout => \Selector7~6_combout\);

-- Location: LCCOMB_X34_Y33_N2
\Selector7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~17_combout\ = (!ascii_char(6) & (ascii_char(5) & \Selector7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datac => ascii_char(5),
	datad => \Selector7~6_combout\,
	combout => \Selector7~17_combout\);

-- Location: LCCOMB_X34_Y33_N0
\Selector7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~16_combout\ = (\Selector7~8_combout\) # ((\Selector7~17_combout\) # ((\Add0~0_combout\ & \Selector7~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector7~8_combout\,
	datac => \Selector7~15_combout\,
	datad => \Selector7~17_combout\,
	combout => \Selector7~16_combout\);

-- Location: FF_X34_Y33_N1
\screenArea[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \Selector7~16_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][0]~q\);

-- Location: LCCOMB_X39_Y34_N22
\screenArea[7][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][1]~feeder_combout\ = \screenArea[7][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][0]~q\,
	combout => \screenArea[7][1]~feeder_combout\);

-- Location: FF_X39_Y34_N23
\screenArea[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][1]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][1]~q\);

-- Location: LCCOMB_X40_Y34_N30
\screenArea[7][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][2]~feeder_combout\ = \screenArea[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][1]~q\,
	combout => \screenArea[7][2]~feeder_combout\);

-- Location: FF_X40_Y34_N31
\screenArea[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][2]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][2]~q\);

-- Location: LCCOMB_X41_Y32_N16
\screenArea[7][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][3]~feeder_combout\ = \screenArea[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][2]~q\,
	combout => \screenArea[7][3]~feeder_combout\);

-- Location: FF_X41_Y32_N17
\screenArea[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][3]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][3]~q\);

-- Location: LCCOMB_X39_Y36_N20
\screenArea[7][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][4]~feeder_combout\ = \screenArea[7][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][3]~q\,
	combout => \screenArea[7][4]~feeder_combout\);

-- Location: FF_X39_Y36_N21
\screenArea[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][4]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][4]~q\);

-- Location: LCCOMB_X39_Y36_N6
\screenArea[7][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][5]~feeder_combout\ = \screenArea[7][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][4]~q\,
	combout => \screenArea[7][5]~feeder_combout\);

-- Location: FF_X39_Y36_N7
\screenArea[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][5]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][5]~q\);

-- Location: LCCOMB_X39_Y36_N4
\screenArea[7][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][6]~feeder_combout\ = \screenArea[7][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][5]~q\,
	combout => \screenArea[7][6]~feeder_combout\);

-- Location: FF_X39_Y36_N5
\screenArea[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][6]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][6]~q\);

-- Location: LCCOMB_X39_Y36_N30
\screenArea[7][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][7]~feeder_combout\ = \screenArea[7][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][6]~q\,
	combout => \screenArea[7][7]~feeder_combout\);

-- Location: FF_X39_Y36_N31
\screenArea[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][7]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][7]~q\);

-- Location: LCCOMB_X39_Y34_N28
\screenArea[7][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][8]~feeder_combout\ = \screenArea[7][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][7]~q\,
	combout => \screenArea[7][8]~feeder_combout\);

-- Location: FF_X39_Y34_N29
\screenArea[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][8]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][8]~q\);

-- Location: LCCOMB_X39_Y33_N16
\screenArea[7][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][9]~feeder_combout\ = \screenArea[7][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][8]~q\,
	combout => \screenArea[7][9]~feeder_combout\);

-- Location: FF_X39_Y33_N17
\screenArea[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][9]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][9]~q\);

-- Location: LCCOMB_X42_Y33_N0
\screenArea[7][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][10]~feeder_combout\ = \screenArea[7][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][9]~q\,
	combout => \screenArea[7][10]~feeder_combout\);

-- Location: FF_X42_Y33_N1
\screenArea[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][10]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][10]~q\);

-- Location: LCCOMB_X37_Y32_N16
\screenArea[7][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][11]~feeder_combout\ = \screenArea[7][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][10]~q\,
	combout => \screenArea[7][11]~feeder_combout\);

-- Location: FF_X37_Y32_N17
\screenArea[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][11]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][11]~q\);

-- Location: LCCOMB_X37_Y32_N26
\screenArea[7][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][12]~feeder_combout\ = \screenArea[7][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][11]~q\,
	combout => \screenArea[7][12]~feeder_combout\);

-- Location: FF_X37_Y32_N27
\screenArea[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][12]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][12]~q\);

-- Location: LCCOMB_X39_Y34_N8
\screenArea[7][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][13]~feeder_combout\ = \screenArea[7][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][12]~q\,
	combout => \screenArea[7][13]~feeder_combout\);

-- Location: FF_X39_Y34_N9
\screenArea[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][13]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][13]~q\);

-- Location: LCCOMB_X40_Y31_N14
\screenArea[7][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][14]~feeder_combout\ = \screenArea[7][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][13]~q\,
	combout => \screenArea[7][14]~feeder_combout\);

-- Location: FF_X40_Y31_N15
\screenArea[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][14]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][14]~q\);

-- Location: FF_X40_Y31_N19
\screenArea[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[7][14]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][15]~q\);

-- Location: FF_X39_Y31_N21
\screenArea[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[7][15]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][16]~q\);

-- Location: LCCOMB_X41_Y31_N22
\screenArea[7][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][17]~feeder_combout\ = \screenArea[7][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][16]~q\,
	combout => \screenArea[7][17]~feeder_combout\);

-- Location: FF_X41_Y31_N23
\screenArea[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][17]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][17]~q\);

-- Location: FF_X38_Y31_N5
\screenArea[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[7][17]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][18]~q\);

-- Location: LCCOMB_X41_Y31_N28
\screenArea[7][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][19]~feeder_combout\ = \screenArea[7][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][18]~q\,
	combout => \screenArea[7][19]~feeder_combout\);

-- Location: FF_X41_Y31_N29
\screenArea[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][19]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][19]~q\);

-- Location: LCCOMB_X38_Y31_N10
\screenArea[7][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][20]~feeder_combout\ = \screenArea[7][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][19]~q\,
	combout => \screenArea[7][20]~feeder_combout\);

-- Location: FF_X38_Y31_N11
\screenArea[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][20]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][20]~q\);

-- Location: LCCOMB_X41_Y31_N26
\screenArea[7][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][21]~feeder_combout\ = \screenArea[7][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][20]~q\,
	combout => \screenArea[7][21]~feeder_combout\);

-- Location: FF_X41_Y31_N27
\screenArea[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][21]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][21]~q\);

-- Location: FF_X41_Y34_N27
\screenArea[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[7][21]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][22]~q\);

-- Location: LCCOMB_X37_Y34_N8
\screenArea[7][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][23]~feeder_combout\ = \screenArea[7][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][22]~q\,
	combout => \screenArea[7][23]~feeder_combout\);

-- Location: FF_X37_Y34_N9
\screenArea[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][23]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][23]~q\);

-- Location: LCCOMB_X37_Y34_N22
\screenArea[7][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][24]~feeder_combout\ = \screenArea[7][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][23]~q\,
	combout => \screenArea[7][24]~feeder_combout\);

-- Location: FF_X37_Y34_N23
\screenArea[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][24]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][24]~q\);

-- Location: LCCOMB_X37_Y34_N4
\screenArea[7][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][25]~feeder_combout\ = \screenArea[7][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][24]~q\,
	combout => \screenArea[7][25]~feeder_combout\);

-- Location: FF_X37_Y34_N5
\screenArea[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][25]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][25]~q\);

-- Location: LCCOMB_X38_Y34_N6
\screenArea[7][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][26]~feeder_combout\ = \screenArea[7][25]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][25]~q\,
	combout => \screenArea[7][26]~feeder_combout\);

-- Location: FF_X38_Y34_N7
\screenArea[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][26]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][26]~q\);

-- Location: FF_X39_Y35_N19
\screenArea[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[7][26]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][27]~q\);

-- Location: LCCOMB_X39_Y35_N2
\screenArea[7][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][28]~feeder_combout\ = \screenArea[7][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][27]~q\,
	combout => \screenArea[7][28]~feeder_combout\);

-- Location: FF_X39_Y35_N3
\screenArea[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][28]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][28]~q\);

-- Location: LCCOMB_X36_Y35_N6
\screenArea[7][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][29]~feeder_combout\ = \screenArea[7][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][28]~q\,
	combout => \screenArea[7][29]~feeder_combout\);

-- Location: FF_X36_Y35_N7
\screenArea[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][29]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][29]~q\);

-- Location: LCCOMB_X37_Y34_N24
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][26]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][26]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[4][26]~q\,
	datad => \screenArea[6][26]~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X39_Y32_N24
\Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\screenArea[2][26]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][26]~q\)))) # (!\screenArea[2][26]~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][26]~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][26]~q\,
	datad => \scanStateVariable.LOAD3~q\,
	combout => \Selector24~3_combout\);

-- Location: LCCOMB_X39_Y32_N14
\Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = (\Selector24~3_combout\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~3_combout\,
	datab => \scanStateVariable.LOAD6~q\,
	datad => \screenArea[5][26]~q\,
	combout => \Selector24~4_combout\);

-- Location: LCCOMB_X39_Y32_N4
\Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][26]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][26]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][26]~q\,
	datad => \screenArea[7][26]~q\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X39_Y32_N10
\Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][25]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][25]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][25]~q\,
	datad => \screenArea[1][25]~q\,
	combout => \Selector25~3_combout\);

-- Location: LCCOMB_X39_Y32_N2
\Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][25]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][25]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][25]~q\,
	datad => \screenArea[4][25]~q\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X39_Y32_N30
\Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][25]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][25]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][25]~q\,
	datad => \screenArea[3][25]~q\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X39_Y32_N22
\Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = (\Selector25~3_combout\) # ((\Selector25~1_combout\) # (\Selector25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~3_combout\,
	datab => \Selector25~1_combout\,
	datad => \Selector25~2_combout\,
	combout => \Selector25~4_combout\);

-- Location: LCCOMB_X37_Y34_N16
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\screenArea[7][24]~q\ & ((\scanStateVariable.LOAD8~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][24]~q\)))) # (!\screenArea[7][24]~q\ & (((\scanStateVariable.LOAD7~q\ & \screenArea[6][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[7][24]~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \screenArea[6][24]~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X42_Y34_N4
\Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][24]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][24]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[5][24]~q\,
	datad => \screenArea[4][24]~q\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X42_Y34_N12
\Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][24]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][24]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][24]~q\,
	datad => \screenArea[2][24]~q\,
	combout => \Selector26~2_combout\);

-- Location: LCCOMB_X42_Y34_N8
\Selector26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = (\screenArea[0][24]~q\ & (((\screenArea[1][24]~q\ & \scanStateVariable.LOAD2~q\)) # (!\scanStateVariable.LOAD1~q\))) # (!\screenArea[0][24]~q\ & (\screenArea[1][24]~q\ & (\scanStateVariable.LOAD2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][24]~q\,
	datab => \screenArea[1][24]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector26~3_combout\);

-- Location: LCCOMB_X42_Y34_N10
\Selector26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~4_combout\ = (\Selector26~1_combout\) # ((\Selector26~2_combout\) # (\Selector26~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~1_combout\,
	datab => \Selector26~2_combout\,
	datad => \Selector26~3_combout\,
	combout => \Selector26~4_combout\);

-- Location: LCCOMB_X41_Y34_N18
\Selector28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~3_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][22]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][22]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][22]~q\,
	datad => \screenArea[4][22]~q\,
	combout => \Selector28~3_combout\);

-- Location: LCCOMB_X41_Y34_N28
\Selector28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~4_combout\ = (\Selector28~3_combout\) # ((\screenArea[0][22]~q\ & !\scanStateVariable.LOAD1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][22]~q\,
	datab => \Selector28~3_combout\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector28~4_combout\);

-- Location: LCCOMB_X41_Y32_N20
\Selector28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][22]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][22]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[1][22]~q\,
	datad => \screenArea[3][22]~q\,
	combout => \Selector28~2_combout\);

-- Location: LCCOMB_X41_Y34_N2
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][22]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][22]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (((\scanStateVariable.LOAD3~q\ & \screenArea[2][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \screenArea[6][22]~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \screenArea[2][22]~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X38_Y31_N20
\Selector30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (\screenArea[7][20]~q\ & ((\scanStateVariable.LOAD8~q\) # ((\screenArea[6][20]~q\ & \scanStateVariable.LOAD7~q\)))) # (!\screenArea[7][20]~q\ & (\screenArea[6][20]~q\ & ((\scanStateVariable.LOAD7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[7][20]~q\,
	datab => \screenArea[6][20]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector30~2_combout\);

-- Location: LCCOMB_X41_Y32_N10
\Selector30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~4_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][20]~q\))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][20]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][20]~q\,
	datad => \screenArea[0][20]~q\,
	combout => \Selector30~4_combout\);

-- Location: LCCOMB_X40_Y31_N0
\Selector30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~3_combout\ = (\screenArea[2][20]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\screenArea[5][20]~q\ & \scanStateVariable.LOAD6~q\)))) # (!\screenArea[2][20]~q\ & (\screenArea[5][20]~q\ & ((\scanStateVariable.LOAD6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][20]~q\,
	datab => \screenArea[5][20]~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector30~3_combout\);

-- Location: LCCOMB_X41_Y31_N20
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][19]~q\) # ((\screenArea[6][19]~q\ & \scanStateVariable.LOAD7~q\)))) # (!\scanStateVariable.LOAD8~q\ & (((\screenArea[6][19]~q\ & \scanStateVariable.LOAD7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \screenArea[7][19]~q\,
	datac => \screenArea[6][19]~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X38_Y31_N28
\Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\screenArea[5][18]~q\ & ((\scanStateVariable.LOAD6~q\) # ((\screenArea[7][18]~q\ & \scanStateVariable.LOAD8~q\)))) # (!\screenArea[5][18]~q\ & (\screenArea[7][18]~q\ & (\scanStateVariable.LOAD8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][18]~q\,
	datab => \screenArea[7][18]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X38_Y31_N26
\Selector32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][18]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][18]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[0][18]~q\,
	datad => \screenArea[1][18]~q\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X38_Y31_N4
\Selector32~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = (\Selector32~3_combout\) # ((\screenArea[6][18]~q\ & \scanStateVariable.LOAD7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][18]~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datad => \Selector32~3_combout\,
	combout => \Selector32~4_combout\);

-- Location: LCCOMB_X38_Y31_N2
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\screenArea[4][18]~q\ & ((\scanStateVariable.LOAD5~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][18]~q\)))) # (!\screenArea[4][18]~q\ & (((\scanStateVariable.LOAD4~q\ & \screenArea[3][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[4][18]~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \scanStateVariable.LOAD4~q\,
	datad => \screenArea[3][18]~q\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X42_Y31_N18
\Selector33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][17]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][17]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][17]~q\,
	datad => \screenArea[2][17]~q\,
	combout => \Selector33~3_combout\);

-- Location: LCCOMB_X42_Y31_N24
\Selector33~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~4_combout\ = (\Selector33~3_combout\) # ((\screenArea[1][17]~q\ & \scanStateVariable.LOAD2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[1][17]~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datad => \Selector33~3_combout\,
	combout => \Selector33~4_combout\);

-- Location: LCCOMB_X42_Y31_N0
\Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\screenArea[0][17]~q\ & (((\scanStateVariable.LOAD8~q\ & \screenArea[7][17]~q\)) # (!\scanStateVariable.LOAD1~q\))) # (!\screenArea[0][17]~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][17]~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \scanStateVariable.LOAD1~q\,
	datad => \screenArea[7][17]~q\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X39_Y31_N10
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][15]~q\) # ((\screenArea[4][15]~q\ & \scanStateVariable.LOAD5~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\screenArea[4][15]~q\ & ((\scanStateVariable.LOAD5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \screenArea[4][15]~q\,
	datac => \screenArea[5][15]~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X39_Y31_N16
\Selector35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][15]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][15]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][15]~q\,
	datad => \screenArea[1][15]~q\,
	combout => \Selector35~3_combout\);

-- Location: LCCOMB_X40_Y31_N18
\Selector35~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~4_combout\ = (\Selector35~3_combout\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \screenArea[2][15]~q\,
	datad => \Selector35~3_combout\,
	combout => \Selector35~4_combout\);

-- Location: LCCOMB_X39_Y31_N12
\Selector36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][14]~q\) # ((\screenArea[0][14]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\scanStateVariable.LOAD2~q\ & (((\screenArea[0][14]~q\ & !\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[1][14]~q\,
	datac => \screenArea[0][14]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector36~2_combout\);

-- Location: LCCOMB_X40_Y31_N4
\Selector36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~3_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][14]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][14]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][14]~q\,
	datad => \screenArea[3][14]~q\,
	combout => \Selector36~3_combout\);

-- Location: LCCOMB_X40_Y31_N10
\Selector36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~4_combout\ = (\Selector36~3_combout\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \screenArea[4][14]~q\,
	datac => \Selector36~3_combout\,
	combout => \Selector36~4_combout\);

-- Location: LCCOMB_X41_Y33_N30
\Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][12]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][12]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][12]~q\,
	datad => \screenArea[6][12]~q\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X42_Y33_N24
\Selector39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][11]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][11]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[0][11]~q\,
	datad => \screenArea[4][11]~q\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X42_Y33_N22
\Selector40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (\scanStateVariable.LOAD1~q\ & (\screenArea[6][10]~q\ & ((\scanStateVariable.LOAD7~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][10]~q\) # ((\screenArea[6][10]~q\ & \scanStateVariable.LOAD7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \screenArea[6][10]~q\,
	datac => \screenArea[0][10]~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X41_Y33_N14
\Selector40~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][10]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][10]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[3][10]~q\,
	datad => \screenArea[2][10]~q\,
	combout => \Selector40~3_combout\);

-- Location: LCCOMB_X42_Y33_N4
\Selector40~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~4_combout\ = (\Selector40~3_combout\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \screenArea[7][10]~q\,
	datad => \Selector40~3_combout\,
	combout => \Selector40~4_combout\);

-- Location: LCCOMB_X42_Y33_N18
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\screenArea[5][10]~q\ & ((\scanStateVariable.LOAD6~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][10]~q\)))) # (!\screenArea[5][10]~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][10]~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][10]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X41_Y33_N26
\Selector41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][9]~q\) # ((\screenArea[7][9]~q\ & \scanStateVariable.LOAD8~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\screenArea[7][9]~q\ & ((\scanStateVariable.LOAD8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \screenArea[7][9]~q\,
	datac => \screenArea[3][9]~q\,
	datad => \scanStateVariable.LOAD8~q\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X41_Y33_N28
\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\screenArea[2][9]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\screenArea[6][9]~q\ & \scanStateVariable.LOAD7~q\)))) # (!\screenArea[2][9]~q\ & (((\screenArea[6][9]~q\ & \scanStateVariable.LOAD7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][9]~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[6][9]~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X39_Y36_N22
\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][6]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][6]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & (\screenArea[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][6]~q\,
	datad => \screenArea[6][6]~q\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X38_Y32_N20
\Selector45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\screenArea[2][5]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\screenArea[0][5]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\screenArea[2][5]~q\ & (((\screenArea[0][5]~q\ & !\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][5]~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[0][5]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X38_Y32_N0
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\screenArea[4][5]~q\ & ((\scanStateVariable.LOAD5~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][5]~q\)))) # (!\screenArea[4][5]~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[4][5]~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \scanStateVariable.LOAD5~q\,
	datad => \screenArea[1][5]~q\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X39_Y36_N24
\Selector45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][5]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][5]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][5]~q\,
	datad => \screenArea[7][5]~q\,
	combout => \Selector45~3_combout\);

-- Location: LCCOMB_X38_Y32_N4
\Selector45~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~4_combout\ = (\Selector45~3_combout\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][5]~q\,
	datad => \Selector45~3_combout\,
	combout => \Selector45~4_combout\);

-- Location: LCCOMB_X41_Y32_N22
\Selector47~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & (\screenArea[1][3]~q\))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][3]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[1][3]~q\,
	datad => \screenArea[0][3]~q\,
	combout => \Selector47~3_combout\);

-- Location: LCCOMB_X41_Y32_N4
\Selector47~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~4_combout\ = (\Selector47~3_combout\) # ((\screenArea[7][3]~q\ & \scanStateVariable.LOAD8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screenArea[7][3]~q\,
	datac => \Selector47~3_combout\,
	datad => \scanStateVariable.LOAD8~q\,
	combout => \Selector47~4_combout\);

-- Location: LCCOMB_X40_Y32_N28
\Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][2]~q\) # ((\screenArea[7][2]~q\ & \scanStateVariable.LOAD8~q\)))) # (!\scanStateVariable.LOAD5~q\ & (((\screenArea[7][2]~q\ & \scanStateVariable.LOAD8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \screenArea[4][2]~q\,
	datac => \screenArea[7][2]~q\,
	datad => \scanStateVariable.LOAD8~q\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X40_Y32_N16
\Selector48~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~3_combout\ = (\screenArea[0][2]~q\ & (((\screenArea[1][2]~q\ & \scanStateVariable.LOAD2~q\)) # (!\scanStateVariable.LOAD1~q\))) # (!\screenArea[0][2]~q\ & (\screenArea[1][2]~q\ & (\scanStateVariable.LOAD2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][2]~q\,
	datab => \screenArea[1][2]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector48~3_combout\);

-- Location: LCCOMB_X40_Y32_N18
\Selector48~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~4_combout\ = (\Selector48~3_combout\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector48~3_combout\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \screenArea[6][2]~q\,
	combout => \Selector48~4_combout\);

-- Location: LCCOMB_X40_Y32_N26
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\screenArea[5][2]~q\ & ((\scanStateVariable.LOAD6~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][2]~q\)))) # (!\screenArea[5][2]~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][2]~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][2]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X39_Y33_N26
\Selector49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][1]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][1]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][1]~q\,
	datad => \screenArea[5][1]~q\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X40_Y34_N8
\Selector49~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~3_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][1]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][1]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][1]~q\,
	datad => \screenArea[2][1]~q\,
	combout => \Selector49~3_combout\);

-- Location: LCCOMB_X40_Y34_N14
\Selector49~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~4_combout\ = (\Selector49~3_combout\) # ((\screenArea[6][1]~q\ & \scanStateVariable.LOAD7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][1]~q\,
	datac => \Selector49~3_combout\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector49~4_combout\);

-- Location: LCCOMB_X40_Y34_N0
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\screenArea[7][1]~q\ & ((\scanStateVariable.LOAD8~q\) # ((\screenArea[4][1]~q\ & \scanStateVariable.LOAD5~q\)))) # (!\screenArea[7][1]~q\ & (\screenArea[4][1]~q\ & (\scanStateVariable.LOAD5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[7][1]~q\,
	datab => \screenArea[4][1]~q\,
	datac => \scanStateVariable.LOAD5~q\,
	datad => \scanStateVariable.LOAD8~q\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X40_Y36_N28
\Selector50~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~5_combout\ = (\WideOr13~2_combout\) # (((\WideOr4~5_combout\ & !\LessThan5~1_combout\)) # (!\WideOr4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~2_combout\,
	datab => \WideOr4~4_combout\,
	datac => \WideOr4~5_combout\,
	datad => \LessThan5~1_combout\,
	combout => \Selector50~5_combout\);

-- Location: LCCOMB_X40_Y34_N12
\Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][0]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][0]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][0]~q\,
	datad => \screenArea[7][0]~q\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X40_Y34_N28
\Selector50~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][0]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][0]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][0]~q\,
	datad => \screenArea[1][0]~q\,
	combout => \Selector50~3_combout\);

-- Location: LCCOMB_X40_Y34_N26
\Selector50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][0]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][0]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][0]~q\,
	datad => \screenArea[5][0]~q\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X39_Y34_N14
\Selector50~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][0]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][0]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][0]~q\,
	datad => \screenArea[3][0]~q\,
	combout => \Selector50~2_combout\);

-- Location: LCCOMB_X40_Y34_N2
\Selector50~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~4_combout\ = (\Selector50~0_combout\) # ((\Selector50~3_combout\) # ((\Selector50~1_combout\) # (\Selector50~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \Selector50~3_combout\,
	datac => \Selector50~1_combout\,
	datad => \Selector50~2_combout\,
	combout => \Selector50~4_combout\);

-- Location: LCCOMB_X39_Y36_N2
\Selector50~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~6_combout\ = (\Selector50~4_combout\) # ((\Selector50~5_combout\ & screenAreaLatch(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector50~5_combout\,
	datac => screenAreaLatch(0),
	datad => \Selector50~4_combout\,
	combout => \Selector50~6_combout\);

-- Location: FF_X39_Y36_N3
\screenAreaLatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector50~6_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(0));

-- Location: LCCOMB_X40_Y34_N18
\Selector49~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][1]~q\) # ((screenAreaLatch(0) & \WideOr4~5_combout\)))) # (!\scanStateVariable.LOAD2~q\ & (screenAreaLatch(0) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => screenAreaLatch(0),
	datac => \screenArea[1][1]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector49~2_combout\);

-- Location: LCCOMB_X40_Y34_N20
\Selector49~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~5_combout\ = (\Selector49~1_combout\) # ((\Selector49~4_combout\) # ((\Selector49~0_combout\) # (\Selector49~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~1_combout\,
	datab => \Selector49~4_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector49~2_combout\,
	combout => \Selector49~5_combout\);

-- Location: LCCOMB_X41_Y35_N18
\serial_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~7_combout\ = ((\LessThan5~0_combout\) # ((!\scanStateVariable.SHIFT2~q\ & !\scanStateVariable.SHIFT1~q\))) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT2~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.SHIFT1~q\,
	datad => \LessThan5~0_combout\,
	combout => \serial_data~7_combout\);

-- Location: LCCOMB_X41_Y35_N26
\serial_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~4_combout\ = ((\LessThan5~0_combout\) # ((!\scanStateVariable.SHIFT7~q\ & !\scanStateVariable.SHIFT8~q\))) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT7~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.SHIFT8~q\,
	datad => \LessThan5~0_combout\,
	combout => \serial_data~4_combout\);

-- Location: LCCOMB_X41_Y35_N8
\serial_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~9_combout\ = (\WideOr4~1_combout\ & (\WideOr4~0_combout\ & (\serial_data~4_combout\ & !\WideOr13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~1_combout\,
	datab => \WideOr4~0_combout\,
	datac => \serial_data~4_combout\,
	datad => \WideOr13~2_combout\,
	combout => \serial_data~9_combout\);

-- Location: LCCOMB_X42_Y35_N10
\serial_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~5_combout\ = ((\LessThan5~0_combout\) # ((!\scanStateVariable.SHIFT5~q\ & !\scanStateVariable.SHIFT6~q\))) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.SHIFT5~q\,
	datac => \scanStateVariable.SHIFT6~q\,
	datad => \LessThan5~0_combout\,
	combout => \serial_data~5_combout\);

-- Location: LCCOMB_X42_Y35_N18
\serial_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~6_combout\ = (\serial_data~5_combout\ & ((\LessThan5~1_combout\) # ((!\scanStateVariable.SHIFT3~q\ & !\scanStateVariable.SHIFT4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT3~q\,
	datab => \scanStateVariable.SHIFT4~q\,
	datac => \LessThan5~1_combout\,
	datad => \serial_data~5_combout\,
	combout => \serial_data~6_combout\);

-- Location: LCCOMB_X41_Y35_N2
\serial_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~8_combout\ = (\CPU_RESETN~input_o\ & (\serial_data~7_combout\ & (\serial_data~9_combout\ & \serial_data~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_RESETN~input_o\,
	datab => \serial_data~7_combout\,
	datac => \serial_data~9_combout\,
	datad => \serial_data~6_combout\,
	combout => \serial_data~8_combout\);

-- Location: FF_X40_Y34_N21
\screenAreaLatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector49~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(1));

-- Location: LCCOMB_X40_Y32_N14
\Selector48~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~2_combout\ = (\screenArea[2][2]~q\ & ((\scanStateVariable.LOAD3~q\) # ((screenAreaLatch(1) & \WideOr4~5_combout\)))) # (!\screenArea[2][2]~q\ & (screenAreaLatch(1) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][2]~q\,
	datab => screenAreaLatch(1),
	datac => \scanStateVariable.LOAD3~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector48~2_combout\);

-- Location: LCCOMB_X40_Y32_N24
\Selector48~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~5_combout\ = (\Selector48~1_combout\) # ((\Selector48~4_combout\) # ((\Selector48~0_combout\) # (\Selector48~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~1_combout\,
	datab => \Selector48~4_combout\,
	datac => \Selector48~0_combout\,
	datad => \Selector48~2_combout\,
	combout => \Selector48~5_combout\);

-- Location: FF_X40_Y32_N25
\screenAreaLatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector48~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(2));

-- Location: LCCOMB_X40_Y32_N2
\Selector47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\screenArea[4][3]~q\ & ((\scanStateVariable.LOAD5~q\) # ((screenAreaLatch(2) & \WideOr4~5_combout\)))) # (!\screenArea[4][3]~q\ & (screenAreaLatch(2) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[4][3]~q\,
	datab => screenAreaLatch(2),
	datac => \scanStateVariable.LOAD5~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X40_Y32_N4
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][3]~q\) # ((\screenArea[5][3]~q\ & \scanStateVariable.LOAD6~q\)))) # (!\scanStateVariable.LOAD3~q\ & (((\screenArea[5][3]~q\ & \scanStateVariable.LOAD6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \screenArea[2][3]~q\,
	datac => \screenArea[5][3]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X40_Y32_N22
\Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][3]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][3]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][3]~q\,
	datad => \screenArea[6][3]~q\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X40_Y32_N12
\Selector47~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~5_combout\ = (\Selector47~4_combout\) # ((\Selector47~2_combout\) # ((\Selector47~0_combout\) # (\Selector47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~4_combout\,
	datab => \Selector47~2_combout\,
	datac => \Selector47~0_combout\,
	datad => \Selector47~1_combout\,
	combout => \Selector47~5_combout\);

-- Location: FF_X40_Y32_N13
\screenAreaLatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector47~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(3));

-- Location: LCCOMB_X39_Y36_N14
\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][4]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][4]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][4]~q\,
	datad => \screenArea[7][4]~q\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X38_Y32_N22
\Selector46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][4]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][4]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][4]~q\,
	datad => \screenArea[4][4]~q\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X39_Y32_N12
\Selector46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][4]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][4]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][4]~q\,
	datad => \screenArea[2][4]~q\,
	combout => \Selector46~2_combout\);

-- Location: LCCOMB_X38_Y32_N30
\Selector46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (\screenArea[1][4]~q\ & ((\scanStateVariable.LOAD2~q\) # ((\screenArea[0][4]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\screenArea[1][4]~q\ & (((\screenArea[0][4]~q\ & !\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[1][4]~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[0][4]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X38_Y32_N18
\Selector46~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~4_combout\ = (\Selector46~1_combout\) # ((\Selector46~2_combout\) # (\Selector46~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~1_combout\,
	datab => \Selector46~2_combout\,
	datad => \Selector46~3_combout\,
	combout => \Selector46~4_combout\);

-- Location: LCCOMB_X38_Y32_N6
\Selector46~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~5_combout\ = (\Selector46~0_combout\) # ((\Selector46~4_combout\) # ((screenAreaLatch(3) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(3),
	datab => \Selector46~0_combout\,
	datac => \Selector46~4_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector46~5_combout\);

-- Location: FF_X38_Y32_N7
\screenAreaLatch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector46~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(4));

-- Location: LCCOMB_X38_Y32_N12
\Selector45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (screenAreaLatch(4) & ((\WideOr4~5_combout\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][5]~q\)))) # (!screenAreaLatch(4) & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(4),
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][5]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X38_Y32_N16
\Selector45~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~5_combout\ = (\Selector45~1_combout\) # ((\Selector45~0_combout\) # ((\Selector45~4_combout\) # (\Selector45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~1_combout\,
	datab => \Selector45~0_combout\,
	datac => \Selector45~4_combout\,
	datad => \Selector45~2_combout\,
	combout => \Selector45~5_combout\);

-- Location: FF_X38_Y32_N17
\screenAreaLatch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector45~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(5));

-- Location: LCCOMB_X40_Y33_N26
\Selector44~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][6]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][6]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][6]~q\,
	datad => \screenArea[1][6]~q\,
	combout => \Selector44~3_combout\);

-- Location: LCCOMB_X40_Y33_N4
\Selector44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][6]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][6]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][6]~q\,
	datad => \screenArea[4][6]~q\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X40_Y33_N12
\Selector44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][6]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][6]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][6]~q\,
	datad => \screenArea[2][6]~q\,
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X40_Y33_N28
\Selector44~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~4_combout\ = (\Selector44~3_combout\) # ((\Selector44~1_combout\) # (\Selector44~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~3_combout\,
	datab => \Selector44~1_combout\,
	datac => \Selector44~2_combout\,
	combout => \Selector44~4_combout\);

-- Location: LCCOMB_X40_Y33_N22
\Selector44~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~5_combout\ = (\Selector44~0_combout\) # ((\Selector44~4_combout\) # ((screenAreaLatch(5) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => screenAreaLatch(5),
	datac => \Selector44~4_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector44~5_combout\);

-- Location: FF_X40_Y33_N23
\screenAreaLatch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector44~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(6));

-- Location: LCCOMB_X40_Y33_N6
\Selector43~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][7]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][7]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[0][7]~q\,
	datad => \screenArea[1][7]~q\,
	combout => \Selector43~3_combout\);

-- Location: LCCOMB_X40_Y33_N0
\Selector43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][7]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][7]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][7]~q\,
	datad => \screenArea[4][7]~q\,
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X41_Y33_N24
\Selector43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][7]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][7]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[3][7]~q\,
	datad => \screenArea[2][7]~q\,
	combout => \Selector43~2_combout\);

-- Location: LCCOMB_X40_Y33_N16
\Selector43~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~4_combout\ = (\Selector43~3_combout\) # ((\Selector43~1_combout\) # (\Selector43~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~3_combout\,
	datab => \Selector43~1_combout\,
	datad => \Selector43~2_combout\,
	combout => \Selector43~4_combout\);

-- Location: LCCOMB_X39_Y36_N16
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][7]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][7]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & (\screenArea[7][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][7]~q\,
	datad => \screenArea[6][7]~q\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X40_Y33_N10
\Selector43~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~5_combout\ = (\Selector43~4_combout\) # ((\Selector43~0_combout\) # ((screenAreaLatch(6) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(6),
	datab => \Selector43~4_combout\,
	datac => \Selector43~0_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector43~5_combout\);

-- Location: FF_X40_Y33_N11
\screenAreaLatch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector43~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(7));

-- Location: LCCOMB_X41_Y33_N10
\Selector42~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][8]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][8]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][8]~q\,
	datad => \screenArea[1][8]~q\,
	combout => \Selector42~3_combout\);

-- Location: LCCOMB_X41_Y33_N16
\Selector42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][8]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][8]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[5][8]~q\,
	datad => \screenArea[4][8]~q\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X42_Y33_N26
\Selector42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][8]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][8]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[3][8]~q\,
	datad => \screenArea[2][8]~q\,
	combout => \Selector42~2_combout\);

-- Location: LCCOMB_X41_Y33_N18
\Selector42~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~4_combout\ = (\Selector42~3_combout\) # ((\Selector42~1_combout\) # (\Selector42~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~3_combout\,
	datab => \Selector42~1_combout\,
	datad => \Selector42~2_combout\,
	combout => \Selector42~4_combout\);

-- Location: LCCOMB_X39_Y34_N12
\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][8]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][8]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (((\scanStateVariable.LOAD8~q\ & \screenArea[7][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \screenArea[6][8]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \screenArea[7][8]~q\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X41_Y33_N6
\Selector42~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~5_combout\ = (\Selector42~4_combout\) # ((\Selector42~0_combout\) # ((screenAreaLatch(7) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(7),
	datab => \Selector42~4_combout\,
	datac => \Selector42~0_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector42~5_combout\);

-- Location: FF_X41_Y33_N7
\screenAreaLatch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector42~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(8));

-- Location: LCCOMB_X41_Y33_N4
\Selector41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (screenAreaLatch(8) & ((\WideOr4~5_combout\) # ((\screenArea[0][9]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!screenAreaLatch(8) & (\screenArea[0][9]~q\ & (!\scanStateVariable.LOAD1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(8),
	datab => \screenArea[0][9]~q\,
	datac => \scanStateVariable.LOAD1~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X41_Y33_N0
\Selector41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~3_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][9]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][9]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][9]~q\,
	datad => \screenArea[5][9]~q\,
	combout => \Selector41~3_combout\);

-- Location: LCCOMB_X41_Y33_N22
\Selector41~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~4_combout\ = (\Selector41~3_combout\) # ((\screenArea[1][9]~q\ & \scanStateVariable.LOAD2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[1][9]~q\,
	datab => \Selector41~3_combout\,
	datad => \scanStateVariable.LOAD2~q\,
	combout => \Selector41~4_combout\);

-- Location: LCCOMB_X41_Y33_N12
\Selector41~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~5_combout\ = (\Selector41~1_combout\) # ((\Selector41~0_combout\) # ((\Selector41~2_combout\) # (\Selector41~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~1_combout\,
	datab => \Selector41~0_combout\,
	datac => \Selector41~2_combout\,
	datad => \Selector41~4_combout\,
	combout => \Selector41~5_combout\);

-- Location: FF_X41_Y33_N13
\screenAreaLatch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector41~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(9));

-- Location: LCCOMB_X43_Y33_N18
\Selector40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][10]~q\) # ((screenAreaLatch(9) & \WideOr4~5_combout\)))) # (!\scanStateVariable.LOAD2~q\ & (((screenAreaLatch(9) & \WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[1][10]~q\,
	datac => screenAreaLatch(9),
	datad => \WideOr4~5_combout\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X42_Y33_N10
\Selector40~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~5_combout\ = (\Selector40~2_combout\) # ((\Selector40~4_combout\) # ((\Selector40~0_combout\) # (\Selector40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~2_combout\,
	datab => \Selector40~4_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector40~1_combout\,
	combout => \Selector40~5_combout\);

-- Location: FF_X42_Y33_N11
\screenAreaLatch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector40~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(10));

-- Location: LCCOMB_X43_Y33_N30
\Selector39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = (screenAreaLatch(10) & ((\WideOr4~5_combout\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][11]~q\)))) # (!screenAreaLatch(10) & (\scanStateVariable.LOAD2~q\ & (\screenArea[1][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(10),
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[1][11]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X37_Y32_N10
\Selector39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~3_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][11]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][11]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][11]~q\,
	datad => \screenArea[3][11]~q\,
	combout => \Selector39~3_combout\);

-- Location: LCCOMB_X37_Y32_N24
\Selector39~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~4_combout\ = (\Selector39~3_combout\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][11]~q\,
	datad => \Selector39~3_combout\,
	combout => \Selector39~4_combout\);

-- Location: LCCOMB_X42_Y33_N20
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][11]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][11]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (((\scanStateVariable.LOAD6~q\ & \screenArea[5][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \screenArea[6][11]~q\,
	datac => \scanStateVariable.LOAD6~q\,
	datad => \screenArea[5][11]~q\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X41_Y32_N2
\Selector39~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~5_combout\ = (\Selector39~1_combout\) # ((\Selector39~2_combout\) # ((\Selector39~4_combout\) # (\Selector39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~1_combout\,
	datab => \Selector39~2_combout\,
	datac => \Selector39~4_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~5_combout\);

-- Location: FF_X41_Y32_N3
\screenAreaLatch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector39~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(11));

-- Location: LCCOMB_X42_Y33_N12
\Selector38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~2_combout\ = (screenAreaLatch(11) & ((\WideOr4~5_combout\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][12]~q\)))) # (!screenAreaLatch(11) & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(11),
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][12]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector38~2_combout\);

-- Location: LCCOMB_X37_Y32_N0
\Selector38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~3_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][12]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][12]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][12]~q\,
	datad => \screenArea[3][12]~q\,
	combout => \Selector38~3_combout\);

-- Location: LCCOMB_X37_Y32_N6
\Selector38~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~4_combout\ = (\Selector38~3_combout\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][12]~q\,
	datad => \Selector38~3_combout\,
	combout => \Selector38~4_combout\);

-- Location: LCCOMB_X43_Y33_N14
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][12]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][12]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[4][12]~q\,
	datad => \screenArea[1][12]~q\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X41_Y32_N12
\Selector38~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~5_combout\ = (\Selector38~1_combout\) # ((\Selector38~2_combout\) # ((\Selector38~4_combout\) # (\Selector38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~1_combout\,
	datab => \Selector38~2_combout\,
	datac => \Selector38~4_combout\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~5_combout\);

-- Location: FF_X41_Y32_N13
\screenAreaLatch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector38~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(12));

-- Location: LCCOMB_X43_Y33_N0
\Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][13]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][13]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[3][13]~q\,
	datad => \screenArea[2][13]~q\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X43_Y33_N28
\Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][13]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][13]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[5][13]~q\,
	datad => \screenArea[4][13]~q\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X43_Y33_N22
\Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~3_combout\ = (\scanStateVariable.LOAD1~q\ & (((\screenArea[1][13]~q\ & \scanStateVariable.LOAD2~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][13]~q\) # ((\screenArea[1][13]~q\ & \scanStateVariable.LOAD2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \screenArea[0][13]~q\,
	datac => \screenArea[1][13]~q\,
	datad => \scanStateVariable.LOAD2~q\,
	combout => \Selector37~3_combout\);

-- Location: LCCOMB_X43_Y33_N2
\Selector37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~4_combout\ = (\Selector37~2_combout\) # ((\Selector37~1_combout\) # (\Selector37~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~2_combout\,
	datab => \Selector37~1_combout\,
	datad => \Selector37~3_combout\,
	combout => \Selector37~4_combout\);

-- Location: LCCOMB_X39_Y34_N18
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][13]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][13]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][13]~q\,
	datad => \screenArea[7][13]~q\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X43_Y33_N16
\Selector37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~5_combout\ = (\Selector37~4_combout\) # ((\Selector37~0_combout\) # ((screenAreaLatch(12) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(12),
	datab => \Selector37~4_combout\,
	datac => \Selector37~0_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector37~5_combout\);

-- Location: FF_X43_Y33_N17
\screenAreaLatch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector37~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(13));

-- Location: LCCOMB_X40_Y31_N8
\Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][14]~q\) # ((\WideOr4~5_combout\ & screenAreaLatch(13))))) # (!\scanStateVariable.LOAD8~q\ & (((\WideOr4~5_combout\ & screenAreaLatch(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \screenArea[7][14]~q\,
	datac => \WideOr4~5_combout\,
	datad => screenAreaLatch(13),
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X40_Y31_N20
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][14]~q\) # ((\screenArea[5][14]~q\ & \scanStateVariable.LOAD6~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\screenArea[5][14]~q\ & ((\scanStateVariable.LOAD6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \screenArea[5][14]~q\,
	datac => \screenArea[6][14]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X40_Y31_N24
\Selector36~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~5_combout\ = (\Selector36~2_combout\) # ((\Selector36~4_combout\) # ((\Selector36~1_combout\) # (\Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~2_combout\,
	datab => \Selector36~4_combout\,
	datac => \Selector36~1_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector36~5_combout\);

-- Location: FF_X40_Y31_N25
\screenAreaLatch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector36~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(14));

-- Location: LCCOMB_X41_Y32_N30
\Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (screenAreaLatch(14) & ((\WideOr4~5_combout\) # ((\screenArea[3][15]~q\ & \scanStateVariable.LOAD4~q\)))) # (!screenAreaLatch(14) & (\screenArea[3][15]~q\ & (\scanStateVariable.LOAD4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(14),
	datab => \screenArea[3][15]~q\,
	datac => \scanStateVariable.LOAD4~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X40_Y31_N16
\Selector35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][15]~q\) # ((\screenArea[0][15]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\screenArea[0][15]~q\ & ((!\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \screenArea[0][15]~q\,
	datac => \screenArea[7][15]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector35~2_combout\);

-- Location: LCCOMB_X40_Y31_N2
\Selector35~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~5_combout\ = (\Selector35~0_combout\) # ((\Selector35~4_combout\) # ((\Selector35~1_combout\) # (\Selector35~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datab => \Selector35~4_combout\,
	datac => \Selector35~1_combout\,
	datad => \Selector35~2_combout\,
	combout => \Selector35~5_combout\);

-- Location: FF_X40_Y31_N3
\screenAreaLatch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector35~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(15));

-- Location: LCCOMB_X42_Y31_N10
\Selector34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (screenAreaLatch(15) & ((\WideOr4~5_combout\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][16]~q\)))) # (!screenAreaLatch(15) & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(15),
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][16]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector34~2_combout\);

-- Location: LCCOMB_X42_Y31_N20
\Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\screenArea[2][16]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\screenArea[1][16]~q\ & \scanStateVariable.LOAD2~q\)))) # (!\screenArea[2][16]~q\ & (\screenArea[1][16]~q\ & ((\scanStateVariable.LOAD2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][16]~q\,
	datab => \screenArea[1][16]~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \scanStateVariable.LOAD2~q\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X39_Y31_N20
\Selector34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~3_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][16]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][16]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & (\screenArea[7][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][16]~q\,
	datad => \screenArea[6][16]~q\,
	combout => \Selector34~3_combout\);

-- Location: LCCOMB_X39_Y31_N8
\Selector34~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~4_combout\ = (\Selector34~3_combout\) # ((\screenArea[4][16]~q\ & \scanStateVariable.LOAD5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[4][16]~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datad => \Selector34~3_combout\,
	combout => \Selector34~4_combout\);

-- Location: LCCOMB_X42_Y31_N30
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][16]~q\))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][16]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][16]~q\,
	datad => \screenArea[0][16]~q\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X42_Y31_N16
\Selector34~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~5_combout\ = (\Selector34~2_combout\) # ((\Selector34~1_combout\) # ((\Selector34~4_combout\) # (\Selector34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~2_combout\,
	datab => \Selector34~1_combout\,
	datac => \Selector34~4_combout\,
	datad => \Selector34~0_combout\,
	combout => \Selector34~5_combout\);

-- Location: FF_X42_Y31_N17
\screenAreaLatch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector34~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(16));

-- Location: LCCOMB_X42_Y31_N22
\Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\screenArea[5][17]~q\ & ((\scanStateVariable.LOAD6~q\) # ((screenAreaLatch(16) & \WideOr4~5_combout\)))) # (!\screenArea[5][17]~q\ & (screenAreaLatch(16) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][17]~q\,
	datab => screenAreaLatch(16),
	datac => \scanStateVariable.LOAD6~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X39_Y31_N30
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][17]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][17]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[6][17]~q\,
	datad => \screenArea[4][17]~q\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X42_Y31_N26
\Selector33~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~5_combout\ = (\Selector33~4_combout\) # ((\Selector33~2_combout\) # ((\Selector33~1_combout\) # (\Selector33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~4_combout\,
	datab => \Selector33~2_combout\,
	datac => \Selector33~1_combout\,
	datad => \Selector33~0_combout\,
	combout => \Selector33~5_combout\);

-- Location: FF_X42_Y31_N27
\screenAreaLatch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector33~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(17));

-- Location: LCCOMB_X42_Y31_N28
\Selector32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (screenAreaLatch(17) & ((\WideOr4~5_combout\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][18]~q\)))) # (!screenAreaLatch(17) & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(17),
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][18]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X38_Y31_N16
\Selector32~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~5_combout\ = (\Selector32~1_combout\) # ((\Selector32~4_combout\) # ((\Selector32~0_combout\) # (\Selector32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~1_combout\,
	datab => \Selector32~4_combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector32~2_combout\,
	combout => \Selector32~5_combout\);

-- Location: FF_X38_Y31_N17
\screenAreaLatch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector32~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(18));

-- Location: LCCOMB_X41_Y31_N10
\Selector31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][19]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][19]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[3][19]~q\,
	datad => \screenArea[2][19]~q\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X41_Y31_N8
\Selector31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][19]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][19]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[5][19]~q\,
	datad => \screenArea[4][19]~q\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X41_Y31_N30
\Selector31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][19]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][19]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][19]~q\,
	datad => \screenArea[1][19]~q\,
	combout => \Selector31~3_combout\);

-- Location: LCCOMB_X41_Y31_N12
\Selector31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~4_combout\ = (\Selector31~2_combout\) # ((\Selector31~1_combout\) # (\Selector31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~2_combout\,
	datab => \Selector31~1_combout\,
	datad => \Selector31~3_combout\,
	combout => \Selector31~4_combout\);

-- Location: LCCOMB_X41_Y31_N6
\Selector31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~5_combout\ = (\Selector31~0_combout\) # ((\Selector31~4_combout\) # ((screenAreaLatch(18) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => screenAreaLatch(18),
	datac => \Selector31~4_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector31~5_combout\);

-- Location: FF_X41_Y31_N7
\screenAreaLatch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector31~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(19));

-- Location: LCCOMB_X38_Y31_N30
\Selector30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~5_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][20]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][20]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD2~q\ & (\screenArea[1][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[1][20]~q\,
	datad => \screenArea[3][20]~q\,
	combout => \Selector30~5_combout\);

-- Location: LCCOMB_X38_Y31_N18
\Selector30~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~7_combout\ = (\Selector30~5_combout\) # ((screenAreaLatch(19) & ((!\WideOr4~3_combout\) # (!\WideOr4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(19),
	datab => \WideOr4~2_combout\,
	datac => \Selector30~5_combout\,
	datad => \WideOr4~3_combout\,
	combout => \Selector30~7_combout\);

-- Location: LCCOMB_X40_Y31_N28
\Selector30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~6_combout\ = (\Selector30~2_combout\) # ((\Selector30~4_combout\) # ((\Selector30~3_combout\) # (\Selector30~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~2_combout\,
	datab => \Selector30~4_combout\,
	datac => \Selector30~3_combout\,
	datad => \Selector30~7_combout\,
	combout => \Selector30~6_combout\);

-- Location: FF_X40_Y31_N29
\screenAreaLatch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector30~6_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(20));

-- Location: LCCOMB_X41_Y34_N4
\Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][21]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][21]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][21]~q\,
	datad => \screenArea[4][21]~q\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X41_Y34_N20
\Selector29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\screenArea[3][21]~q\ & ((\scanStateVariable.LOAD4~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][21]~q\)))) # (!\screenArea[3][21]~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[3][21]~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][21]~q\,
	datad => \scanStateVariable.LOAD4~q\,
	combout => \Selector29~2_combout\);

-- Location: LCCOMB_X41_Y34_N22
\Selector29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][21]~q\) # ((\screenArea[0][21]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\scanStateVariable.LOAD2~q\ & (((\screenArea[0][21]~q\ & !\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[1][21]~q\,
	datac => \screenArea[0][21]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector29~3_combout\);

-- Location: LCCOMB_X41_Y34_N26
\Selector29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~4_combout\ = (\Selector29~1_combout\) # ((\Selector29~2_combout\) # (\Selector29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~1_combout\,
	datab => \Selector29~2_combout\,
	datad => \Selector29~3_combout\,
	combout => \Selector29~4_combout\);

-- Location: LCCOMB_X41_Y31_N0
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][21]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][21]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][21]~q\,
	datad => \screenArea[7][21]~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X41_Y34_N6
\Selector29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~5_combout\ = (\Selector29~4_combout\) # ((\Selector29~0_combout\) # ((screenAreaLatch(20) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(20),
	datab => \Selector29~4_combout\,
	datac => \Selector29~0_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector29~5_combout\);

-- Location: FF_X41_Y34_N7
\screenAreaLatch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector29~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(21));

-- Location: LCCOMB_X41_Y34_N14
\Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\screenArea[7][22]~q\ & ((\scanStateVariable.LOAD8~q\) # ((\WideOr4~5_combout\ & screenAreaLatch(21))))) # (!\screenArea[7][22]~q\ & (((\WideOr4~5_combout\ & screenAreaLatch(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[7][22]~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \WideOr4~5_combout\,
	datad => screenAreaLatch(21),
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X41_Y34_N10
\Selector28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~5_combout\ = (\Selector28~4_combout\) # ((\Selector28~2_combout\) # ((\Selector28~0_combout\) # (\Selector28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~4_combout\,
	datab => \Selector28~2_combout\,
	datac => \Selector28~0_combout\,
	datad => \Selector28~1_combout\,
	combout => \Selector28~5_combout\);

-- Location: FF_X41_Y34_N11
\screenAreaLatch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector28~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(22));

-- Location: LCCOMB_X37_Y34_N2
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][23]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][23]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (((\scanStateVariable.LOAD7~q\ & \screenArea[6][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \screenArea[7][23]~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \screenArea[6][23]~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X42_Y34_N6
\Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][23]~q\) # ((\screenArea[0][23]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\scanStateVariable.LOAD2~q\ & (((\screenArea[0][23]~q\ & !\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[1][23]~q\,
	datac => \screenArea[0][23]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector27~3_combout\);

-- Location: LCCOMB_X42_Y34_N30
\Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][23]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][23]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][23]~q\,
	datad => \screenArea[2][23]~q\,
	combout => \Selector27~2_combout\);

-- Location: LCCOMB_X42_Y34_N26
\Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][23]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][23]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[5][23]~q\,
	datad => \screenArea[4][23]~q\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X42_Y34_N22
\Selector27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~4_combout\ = (\Selector27~3_combout\) # ((\Selector27~2_combout\) # (\Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~3_combout\,
	datab => \Selector27~2_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector27~4_combout\);

-- Location: LCCOMB_X42_Y34_N0
\Selector27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~5_combout\ = (\Selector27~0_combout\) # ((\Selector27~4_combout\) # ((screenAreaLatch(22) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(22),
	datab => \WideOr4~5_combout\,
	datac => \Selector27~0_combout\,
	datad => \Selector27~4_combout\,
	combout => \Selector27~5_combout\);

-- Location: FF_X42_Y34_N1
\screenAreaLatch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector27~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(23));

-- Location: LCCOMB_X42_Y34_N18
\Selector26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~5_combout\ = (\Selector26~0_combout\) # ((\Selector26~4_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \Selector26~4_combout\,
	datac => \WideOr4~5_combout\,
	datad => screenAreaLatch(23),
	combout => \Selector26~5_combout\);

-- Location: FF_X42_Y34_N19
\screenAreaLatch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector26~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(24));

-- Location: LCCOMB_X37_Y34_N30
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][25]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][25]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[7][25]~q\,
	datad => \screenArea[6][25]~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X38_Y32_N26
\Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~5_combout\ = (\Selector25~4_combout\) # ((\Selector25~0_combout\) # ((screenAreaLatch(24) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~4_combout\,
	datab => screenAreaLatch(24),
	datac => \Selector25~0_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector25~5_combout\);

-- Location: FF_X38_Y32_N27
\screenAreaLatch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector25~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(25));

-- Location: LCCOMB_X39_Y32_N0
\Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (screenAreaLatch(25) & ((\WideOr4~5_combout\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][26]~q\)))) # (!screenAreaLatch(25) & (\scanStateVariable.LOAD2~q\ & (\screenArea[1][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(25),
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[1][26]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X39_Y32_N28
\Selector24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~5_combout\ = (\Selector24~0_combout\) # ((\Selector24~4_combout\) # ((\Selector24~1_combout\) # (\Selector24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Selector24~4_combout\,
	datac => \Selector24~1_combout\,
	datad => \Selector24~2_combout\,
	combout => \Selector24~5_combout\);

-- Location: FF_X39_Y32_N29
\screenAreaLatch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector24~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(26));

-- Location: LCCOMB_X39_Y35_N10
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\screenArea[7][27]~q\ & ((\scanStateVariable.LOAD8~q\) # ((\screenArea[6][27]~q\ & \scanStateVariable.LOAD7~q\)))) # (!\screenArea[7][27]~q\ & (\screenArea[6][27]~q\ & ((\scanStateVariable.LOAD7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[7][27]~q\,
	datab => \screenArea[6][27]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X37_Y32_N20
\Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][27]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][27]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][27]~q\,
	datad => \screenArea[3][27]~q\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X39_Y35_N4
\Selector23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\screenArea[0][27]~q\ & (((\screenArea[1][27]~q\ & \scanStateVariable.LOAD2~q\)) # (!\scanStateVariable.LOAD1~q\))) # (!\screenArea[0][27]~q\ & (((\screenArea[1][27]~q\ & \scanStateVariable.LOAD2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][27]~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[1][27]~q\,
	datad => \scanStateVariable.LOAD2~q\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X39_Y33_N14
\Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][27]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][27]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (((\scanStateVariable.LOAD6~q\ & \screenArea[5][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \screenArea[4][27]~q\,
	datac => \scanStateVariable.LOAD6~q\,
	datad => \screenArea[5][27]~q\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X39_Y35_N14
\Selector23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (\Selector23~2_combout\) # ((\Selector23~3_combout\) # (\Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector23~2_combout\,
	datac => \Selector23~3_combout\,
	datad => \Selector23~1_combout\,
	combout => \Selector23~4_combout\);

-- Location: LCCOMB_X39_Y35_N24
\Selector23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (\Selector23~0_combout\) # ((\Selector23~4_combout\) # ((screenAreaLatch(26) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(26),
	datab => \Selector23~0_combout\,
	datac => \Selector23~4_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector23~5_combout\);

-- Location: FF_X39_Y35_N25
\screenAreaLatch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector23~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(27));

-- Location: LCCOMB_X39_Y35_N22
\Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\screenArea[1][28]~q\ & ((\scanStateVariable.LOAD2~q\) # ((screenAreaLatch(27) & \WideOr4~5_combout\)))) # (!\screenArea[1][28]~q\ & (screenAreaLatch(27) & (\WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[1][28]~q\,
	datab => screenAreaLatch(27),
	datac => \WideOr4~5_combout\,
	datad => \scanStateVariable.LOAD2~q\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X39_Y35_N20
\Selector22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][28]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][28]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[0][28]~q\,
	datad => \screenArea[7][28]~q\,
	combout => \Selector22~3_combout\);

-- Location: LCCOMB_X39_Y35_N18
\Selector22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = (\Selector22~3_combout\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \screenArea[3][28]~q\,
	datad => \Selector22~3_combout\,
	combout => \Selector22~4_combout\);

-- Location: LCCOMB_X39_Y33_N22
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][28]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][28]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][28]~q\,
	datad => \screenArea[5][28]~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X39_Y35_N6
\Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\screenArea[2][28]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\screenArea[6][28]~q\ & \scanStateVariable.LOAD7~q\)))) # (!\screenArea[2][28]~q\ & (\screenArea[6][28]~q\ & ((\scanStateVariable.LOAD7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][28]~q\,
	datab => \screenArea[6][28]~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X39_Y35_N30
\Selector22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = (\Selector22~2_combout\) # ((\Selector22~4_combout\) # ((\Selector22~0_combout\) # (\Selector22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~2_combout\,
	datab => \Selector22~4_combout\,
	datac => \Selector22~0_combout\,
	datad => \Selector22~1_combout\,
	combout => \Selector22~5_combout\);

-- Location: FF_X39_Y35_N31
\screenAreaLatch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector22~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(28));

-- Location: LCCOMB_X37_Y35_N26
\Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\screenArea[7][29]~q\ & ((\scanStateVariable.LOAD8~q\) # ((screenAreaLatch(28) & \WideOr4~5_combout\)))) # (!\screenArea[7][29]~q\ & (screenAreaLatch(28) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[7][29]~q\,
	datab => screenAreaLatch(28),
	datac => \scanStateVariable.LOAD8~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X37_Y35_N6
\Selector21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~5_combout\ = (\Selector21~2_combout\) # ((\Selector21~4_combout\) # ((\Selector21~0_combout\) # (\Selector21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~2_combout\,
	datab => \Selector21~4_combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector21~1_combout\,
	combout => \Selector21~5_combout\);

-- Location: FF_X37_Y35_N7
\screenAreaLatch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector21~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(29));

-- Location: LCCOMB_X38_Y35_N16
\screenArea[7][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][30]~feeder_combout\ = \screenArea[7][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][29]~q\,
	combout => \screenArea[7][30]~feeder_combout\);

-- Location: FF_X38_Y35_N17
\screenArea[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][30]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][30]~q\);

-- Location: LCCOMB_X37_Y35_N20
\Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (screenAreaLatch(29) & ((\WideOr4~5_combout\) # ((\screenArea[7][30]~q\ & \scanStateVariable.LOAD8~q\)))) # (!screenAreaLatch(29) & (\screenArea[7][30]~q\ & (\scanStateVariable.LOAD8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(29),
	datab => \screenArea[7][30]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector20~2_combout\);

-- Location: LCCOMB_X36_Y35_N12
\screenArea[0][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][30]~feeder_combout\ = \screenArea[0][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][29]~q\,
	combout => \screenArea[0][30]~feeder_combout\);

-- Location: FF_X36_Y35_N13
\screenArea[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][30]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][30]~q\);

-- Location: LCCOMB_X39_Y35_N16
\screenArea[6][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][30]~feeder_combout\ = \screenArea[6][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][29]~q\,
	combout => \screenArea[6][30]~feeder_combout\);

-- Location: FF_X39_Y35_N17
\screenArea[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][30]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][30]~q\);

-- Location: LCCOMB_X37_Y35_N12
\Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\screenArea[0][30]~q\ & (((\scanStateVariable.LOAD7~q\ & \screenArea[6][30]~q\)) # (!\scanStateVariable.LOAD1~q\))) # (!\screenArea[0][30]~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][30]~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][30]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector20~1_combout\);

-- Location: FF_X37_Y35_N29
\screenArea[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \screenArea[2][29]~q\,
	sload => VCC,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][30]~q\);

-- Location: LCCOMB_X37_Y35_N8
\Selector20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = (\screenArea[5][30]~q\ & ((\scanStateVariable.LOAD6~q\) # ((\screenArea[4][30]~q\ & \scanStateVariable.LOAD5~q\)))) # (!\screenArea[5][30]~q\ & (\screenArea[4][30]~q\ & ((\scanStateVariable.LOAD5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][30]~q\,
	datab => \screenArea[4][30]~q\,
	datac => \scanStateVariable.LOAD6~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector20~3_combout\);

-- Location: LCCOMB_X37_Y35_N14
\Selector20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = (\Selector20~3_combout\) # ((\screenArea[2][30]~q\ & \scanStateVariable.LOAD3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][30]~q\,
	datab => \Selector20~3_combout\,
	datad => \scanStateVariable.LOAD3~q\,
	combout => \Selector20~4_combout\);

-- Location: LCCOMB_X37_Y35_N18
\Selector20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~5_combout\ = (\Selector20~0_combout\) # ((\Selector20~2_combout\) # ((\Selector20~1_combout\) # (\Selector20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \Selector20~2_combout\,
	datac => \Selector20~1_combout\,
	datad => \Selector20~4_combout\,
	combout => \Selector20~5_combout\);

-- Location: FF_X37_Y35_N19
\screenAreaLatch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector20~5_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(30));

-- Location: LCCOMB_X38_Y35_N30
\Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = ((screenAreaLatch(30) & ((!\WideOr4~2_combout\) # (!\WideOr4~3_combout\)))) # (!\Selector51~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~3_combout\,
	datab => \WideOr4~3_combout\,
	datac => \WideOr4~2_combout\,
	datad => screenAreaLatch(30),
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X38_Y35_N12
\screenArea[3][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][31]~feeder_combout\ = \screenArea[3][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][30]~q\,
	combout => \screenArea[3][31]~feeder_combout\);

-- Location: FF_X38_Y35_N13
\screenArea[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[3][31]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][31]~q\);

-- Location: LCCOMB_X38_Y35_N6
\screenArea[2][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][31]~feeder_combout\ = \screenArea[2][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][30]~q\,
	combout => \screenArea[2][31]~feeder_combout\);

-- Location: FF_X38_Y35_N7
\screenArea[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[2][31]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][31]~q\);

-- Location: LCCOMB_X38_Y35_N10
\Selector51~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~4_combout\ = (\screenArea[3][31]~q\ & (!\scanStateVariable.LOAD4~q\ & ((!\scanStateVariable.LOAD3~q\) # (!\screenArea[2][31]~q\)))) # (!\screenArea[3][31]~q\ & (((!\scanStateVariable.LOAD3~q\)) # (!\screenArea[2][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[3][31]~q\,
	datab => \screenArea[2][31]~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \scanStateVariable.LOAD4~q\,
	combout => \Selector51~4_combout\);

-- Location: LCCOMB_X38_Y35_N20
\screenArea[6][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][31]~feeder_combout\ = \screenArea[6][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][30]~q\,
	combout => \screenArea[6][31]~feeder_combout\);

-- Location: FF_X38_Y35_N21
\screenArea[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[6][31]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][31]~q\);

-- Location: LCCOMB_X38_Y35_N14
\screenArea[7][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][31]~feeder_combout\ = \screenArea[7][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][30]~q\,
	combout => \screenArea[7][31]~feeder_combout\);

-- Location: FF_X38_Y35_N15
\screenArea[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[7][31]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][31]~q\);

-- Location: LCCOMB_X38_Y35_N4
\Selector51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~2_combout\ = (\screenArea[6][31]~q\ & (!\scanStateVariable.LOAD7~q\ & ((!\scanStateVariable.LOAD8~q\) # (!\screenArea[7][31]~q\)))) # (!\screenArea[6][31]~q\ & (((!\scanStateVariable.LOAD8~q\)) # (!\screenArea[7][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][31]~q\,
	datab => \screenArea[7][31]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector51~2_combout\);

-- Location: LCCOMB_X38_Y35_N24
\screenArea[0][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][31]~feeder_combout\ = \screenArea[0][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][30]~q\,
	combout => \screenArea[0][31]~feeder_combout\);

-- Location: FF_X38_Y35_N25
\screenArea[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[0][31]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][31]~q\);

-- Location: LCCOMB_X38_Y35_N2
\screenArea[1][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][31]~feeder_combout\ = \screenArea[1][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][30]~q\,
	combout => \screenArea[1][31]~feeder_combout\);

-- Location: FF_X38_Y35_N3
\screenArea[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \screenArea[1][31]~feeder_combout\,
	ena => \screenArea[0][31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][31]~q\);

-- Location: LCCOMB_X38_Y35_N8
\Selector51~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~5_combout\ = (\screenArea[0][31]~q\ & (\scanStateVariable.LOAD1~q\ & ((!\scanStateVariable.LOAD2~q\) # (!\screenArea[1][31]~q\)))) # (!\screenArea[0][31]~q\ & (((!\scanStateVariable.LOAD2~q\) # (!\screenArea[1][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][31]~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[1][31]~q\,
	datad => \scanStateVariable.LOAD2~q\,
	combout => \Selector51~5_combout\);

-- Location: LCCOMB_X38_Y35_N22
\Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector19~3_combout\) # (((!\Selector51~5_combout\) # (!\Selector51~2_combout\)) # (!\Selector51~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~3_combout\,
	datab => \Selector51~4_combout\,
	datac => \Selector51~2_combout\,
	datad => \Selector51~5_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X38_Y35_N23
\screenAreaLatch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector19~2_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(31));

-- Location: LCCOMB_X38_Y35_N18
\Selector51~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~6_combout\ = (\Selector51~5_combout\ & (\Selector51~3_combout\ & (\Selector51~2_combout\ & \Selector51~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~5_combout\,
	datab => \Selector51~3_combout\,
	datac => \Selector51~2_combout\,
	datad => \Selector51~4_combout\,
	combout => \Selector51~6_combout\);

-- Location: LCCOMB_X38_Y35_N28
\Selector51~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~7_combout\ = ((screenAreaLatch(31) & ((!\WideOr4~3_combout\) # (!\WideOr4~2_combout\)))) # (!\Selector51~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(31),
	datab => \WideOr4~2_combout\,
	datac => \Selector51~6_combout\,
	datad => \WideOr4~3_combout\,
	combout => \Selector51~7_combout\);

-- Location: FF_X38_Y35_N29
serial_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector51~7_combout\,
	ena => \serial_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_data~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_GPIO(19) <= \GPIO[19]~output_o\;

ww_GPIO(18) <= \GPIO[18]~output_o\;

ww_GPIO(17) <= \GPIO[17]~output_o\;

ww_GPIO(16) <= \GPIO[16]~output_o\;

ww_GPIO(15) <= \GPIO[15]~output_o\;

ww_GPIO(14) <= \GPIO[14]~output_o\;

ww_GPIO(13) <= \GPIO[13]~output_o\;

ww_GPIO(12) <= \GPIO[12]~output_o\;

ww_GPIO(11) <= \GPIO[11]~output_o\;

ww_GPIO(10) <= \GPIO[10]~output_o\;

ww_GPIO(9) <= \GPIO[9]~output_o\;

ww_GPIO(8) <= \GPIO[8]~output_o\;

ww_GPIO(7) <= \GPIO[7]~output_o\;

ww_GPIO(6) <= \GPIO[6]~output_o\;

ww_GPIO(5) <= \GPIO[5]~output_o\;

ww_GPIO(4) <= \GPIO[4]~output_o\;

ww_GPIO(3) <= \GPIO[3]~output_o\;

ww_GPIO(2) <= \GPIO[2]~output_o\;

ww_GPIO(1) <= \GPIO[1]~output_o\;

ww_GPIO(0) <= \GPIO[0]~output_o\;
END structure;


