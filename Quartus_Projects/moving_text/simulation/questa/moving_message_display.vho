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

-- DATE "03/03/2024 00:59:37"

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
	CLK_50MHz : IN std_logic;
	LEDR : OUT std_logic_vector(0 TO 9);
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
-- CLK_50MHz	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLK_50MHz : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 TO 9);
SIGNAL ww_GPIO : std_logic_vector(0 TO 19);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \shiftRegisterClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
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
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[0]~1_combout\ : std_logic;
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
SIGNAL \TEST_CLK_PROC:drtcount[21]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[22]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[22]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[22]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[23]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[23]~q\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \CHAR_CLK~0_combout\ : std_logic;
SIGNAL \CHAR_CLK~q\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[0]~1_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[0]~q\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[0]~2\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[1]~1_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[1]~q\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[1]~2\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[2]~1_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[2]~q\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[2]~2\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[3]~1_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[3]~q\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[3]~2\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[4]~1_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[4]~q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \shiftRegisterClk~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterClk~q\ : std_logic;
SIGNAL \shiftRegisterClk~clkctrl_outclk\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[0]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[0]~1_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW1~q\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD2~q\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK2~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT2~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT2~q\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW2~q\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD4~q\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK4~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT4~q\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW4~q\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD5~q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK5~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT5~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT5~q\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW5~q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD6~q\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK6~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT6~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT6~q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW6~q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD7~q\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK7~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT7~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT7~q\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW7~q\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD8~q\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK8~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT8~q\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW8~q\ : std_logic;
SIGNAL \WideOr13~1_combout\ : std_logic;
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
SIGNAL \LINE_SACN_PROC:scanCount[7]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[8]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[8]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[8]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[9]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[9]~q\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD1~q\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK1~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT1~q\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD3~q\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK3~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT3~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.SHIFT3~q\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr4~3_combout\ : std_logic;
SIGNAL \WideOr4~5_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[0]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[0]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[1]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[1]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[1]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[2]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[2]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[2]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[3]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[3]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[3]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[4]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[4]~q\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[4]~2\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[5]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[5]~q\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW3~q\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
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
SIGNAL \shiftedColumnState.COL1~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ : std_logic;
SIGNAL \ascii_char[0]~0_combout\ : std_logic;
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
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\ : std_logic;
SIGNAL \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \shiftStateVariable~0_combout\ : std_logic;
SIGNAL \shiftStateVariable~q\ : std_logic;
SIGNAL \screenArea[7][0]~3_combout\ : std_logic;
SIGNAL \shiftedColumnState.COL1~q\ : std_logic;
SIGNAL \shiftedColumnState.COL2~0_combout\ : std_logic;
SIGNAL \shiftedColumnState.COL2~q\ : std_logic;
SIGNAL \shiftedColumnState.COL3~q\ : std_logic;
SIGNAL \shiftedColumnState.COL4~feeder_combout\ : std_logic;
SIGNAL \shiftedColumnState.COL4~q\ : std_logic;
SIGNAL \shiftedColumnState.COL5~q\ : std_logic;
SIGNAL \shiftedColumnState.COL6~q\ : std_logic;
SIGNAL \shiftedColumnState.COL7~q\ : std_logic;
SIGNAL \Selector5~28_combout\ : std_logic;
SIGNAL \screenArea[6][0]~4_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~5_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Selector2~66_combout\ : std_logic;
SIGNAL \Selector2~23_combout\ : std_logic;
SIGNAL \Selector2~32_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector2~40_combout\ : std_logic;
SIGNAL \Selector2~36_combout\ : std_logic;
SIGNAL \Selector2~37_combout\ : std_logic;
SIGNAL \Selector2~38_combout\ : std_logic;
SIGNAL \Selector2~39_combout\ : std_logic;
SIGNAL \Selector2~41_combout\ : std_logic;
SIGNAL \Selector2~71_combout\ : std_logic;
SIGNAL \Selector2~22_combout\ : std_logic;
SIGNAL \Selector2~33_combout\ : std_logic;
SIGNAL \Selector2~34_combout\ : std_logic;
SIGNAL \Selector2~35_combout\ : std_logic;
SIGNAL \Selector2~42_combout\ : std_logic;
SIGNAL \Selector6~69_combout\ : std_logic;
SIGNAL \Selector6~89_combout\ : std_logic;
SIGNAL \Selector2~69_combout\ : std_logic;
SIGNAL \Selector2~30_combout\ : std_logic;
SIGNAL \Selector2~28_combout\ : std_logic;
SIGNAL \Selector2~24_combout\ : std_logic;
SIGNAL \Selector2~26_combout\ : std_logic;
SIGNAL \Selector2~25_combout\ : std_logic;
SIGNAL \Selector2~27_combout\ : std_logic;
SIGNAL \Selector2~29_combout\ : std_logic;
SIGNAL \Selector2~31_combout\ : std_logic;
SIGNAL \Selector4~34_combout\ : std_logic;
SIGNAL \Selector2~17_combout\ : std_logic;
SIGNAL \Selector2~16_combout\ : std_logic;
SIGNAL \Selector2~70_combout\ : std_logic;
SIGNAL \Selector2~56_combout\ : std_logic;
SIGNAL \Selector2~68_combout\ : std_logic;
SIGNAL \Selector4~33_combout\ : std_logic;
SIGNAL \Selector2~57_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector2~61_combout\ : std_logic;
SIGNAL \Selector2~59_combout\ : std_logic;
SIGNAL \Selector2~58_combout\ : std_logic;
SIGNAL \Selector2~60_combout\ : std_logic;
SIGNAL \Selector2~62_combout\ : std_logic;
SIGNAL \Selector2~72_combout\ : std_logic;
SIGNAL \Selector2~73_combout\ : std_logic;
SIGNAL \Selector2~52_combout\ : std_logic;
SIGNAL \Selector2~51_combout\ : std_logic;
SIGNAL \Selector2~53_combout\ : std_logic;
SIGNAL \Selector6~39_combout\ : std_logic;
SIGNAL \Selector6~97_combout\ : std_logic;
SIGNAL \Selector2~54_combout\ : std_logic;
SIGNAL \Selector2~55_combout\ : std_logic;
SIGNAL \Selector2~63_combout\ : std_logic;
SIGNAL \Selector2~45_combout\ : std_logic;
SIGNAL \Selector6~90_combout\ : std_logic;
SIGNAL \Selector2~46_combout\ : std_logic;
SIGNAL \Selector5~29_combout\ : std_logic;
SIGNAL \Selector4~38_combout\ : std_logic;
SIGNAL \Selector2~48_combout\ : std_logic;
SIGNAL \Selector2~21_combout\ : std_logic;
SIGNAL \Selector3~12_combout\ : std_logic;
SIGNAL \Selector2~47_combout\ : std_logic;
SIGNAL \Selector2~49_combout\ : std_logic;
SIGNAL \Selector2~43_combout\ : std_logic;
SIGNAL \Selector2~67_combout\ : std_logic;
SIGNAL \Selector2~44_combout\ : std_logic;
SIGNAL \Selector2~50_combout\ : std_logic;
SIGNAL \Selector2~64_combout\ : std_logic;
SIGNAL \Selector2~65_combout\ : std_logic;
SIGNAL \screenArea[2][0]~q\ : std_logic;
SIGNAL \screenArea[2][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][1]~q\ : std_logic;
SIGNAL \screenArea[2][2]~q\ : std_logic;
SIGNAL \screenArea[2][3]~q\ : std_logic;
SIGNAL \screenArea[2][4]~q\ : std_logic;
SIGNAL \screenArea[2][5]~q\ : std_logic;
SIGNAL \screenArea[2][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][6]~q\ : std_logic;
SIGNAL \screenArea[2][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][7]~q\ : std_logic;
SIGNAL \screenArea[2][8]~q\ : std_logic;
SIGNAL \screenArea[2][9]~q\ : std_logic;
SIGNAL \screenArea[2][10]~q\ : std_logic;
SIGNAL \screenArea[2][11]~q\ : std_logic;
SIGNAL \screenArea[2][12]~q\ : std_logic;
SIGNAL \screenArea[2][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][13]~q\ : std_logic;
SIGNAL \screenArea[2][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][14]~q\ : std_logic;
SIGNAL \screenArea[2][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][15]~q\ : std_logic;
SIGNAL \screenArea[2][16]~q\ : std_logic;
SIGNAL \screenArea[2][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][17]~q\ : std_logic;
SIGNAL \screenArea[2][18]~q\ : std_logic;
SIGNAL \screenArea[2][19]~q\ : std_logic;
SIGNAL \screenArea[2][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][20]~q\ : std_logic;
SIGNAL \screenArea[2][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][21]~q\ : std_logic;
SIGNAL \screenArea[2][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][22]~q\ : std_logic;
SIGNAL \screenArea[2][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][23]~q\ : std_logic;
SIGNAL \screenArea[2][24]~q\ : std_logic;
SIGNAL \screenArea[2][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][25]~q\ : std_logic;
SIGNAL \screenArea[2][26]~q\ : std_logic;
SIGNAL \screenArea[2][27]~q\ : std_logic;
SIGNAL \screenArea[2][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[2][28]~q\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Selector5~43_combout\ : std_logic;
SIGNAL \Selector5~42_combout\ : std_logic;
SIGNAL \Selector5~44_combout\ : std_logic;
SIGNAL \Selector5~40_combout\ : std_logic;
SIGNAL \Selector4~31_combout\ : std_logic;
SIGNAL \Selector4~32_combout\ : std_logic;
SIGNAL \Selector5~38_combout\ : std_logic;
SIGNAL \Selector5~70_combout\ : std_logic;
SIGNAL \Selector5~39_combout\ : std_logic;
SIGNAL \Selector5~41_combout\ : std_logic;
SIGNAL \Selector5~45_combout\ : std_logic;
SIGNAL \Selector5~31_combout\ : std_logic;
SIGNAL \Selector5~30_combout\ : std_logic;
SIGNAL \Selector5~32_combout\ : std_logic;
SIGNAL \Selector5~35_combout\ : std_logic;
SIGNAL \Selector5~33_combout\ : std_logic;
SIGNAL \Selector5~69_combout\ : std_logic;
SIGNAL \Selector5~34_combout\ : std_logic;
SIGNAL \Selector5~36_combout\ : std_logic;
SIGNAL \Selector5~37_combout\ : std_logic;
SIGNAL \Selector6~68_combout\ : std_logic;
SIGNAL \Selector5~74_combout\ : std_logic;
SIGNAL \Selector5~75_combout\ : std_logic;
SIGNAL \Selector3~14_combout\ : std_logic;
SIGNAL \Selector5~56_combout\ : std_logic;
SIGNAL \Selector5~61_combout\ : std_logic;
SIGNAL \Selector6~88_combout\ : std_logic;
SIGNAL \Selector5~62_combout\ : std_logic;
SIGNAL \Selector5~59_combout\ : std_logic;
SIGNAL \Selector5~57_combout\ : std_logic;
SIGNAL \Selector5~58_combout\ : std_logic;
SIGNAL \Selector5~60_combout\ : std_logic;
SIGNAL \Selector5~63_combout\ : std_logic;
SIGNAL \Selector5~15_combout\ : std_logic;
SIGNAL \Selector5~12_combout\ : std_logic;
SIGNAL \Selector5~11_combout\ : std_logic;
SIGNAL \Selector5~24_combout\ : std_logic;
SIGNAL \Selector5~14_combout\ : std_logic;
SIGNAL \Selector5~25_combout\ : std_logic;
SIGNAL \Selector5~46_combout\ : std_logic;
SIGNAL \Selector1~21_combout\ : std_logic;
SIGNAL \Selector5~47_combout\ : std_logic;
SIGNAL \Selector5~76_combout\ : std_logic;
SIGNAL \Selector5~77_combout\ : std_logic;
SIGNAL \Selector5~48_combout\ : std_logic;
SIGNAL \Selector5~71_combout\ : std_logic;
SIGNAL \Selector5~49_combout\ : std_logic;
SIGNAL \Selector5~51_combout\ : std_logic;
SIGNAL \Selector5~22_combout\ : std_logic;
SIGNAL \Selector5~23_combout\ : std_logic;
SIGNAL \Selector5~73_combout\ : std_logic;
SIGNAL \Selector5~54_combout\ : std_logic;
SIGNAL \Selector5~55_combout\ : std_logic;
SIGNAL \Selector5~64_combout\ : std_logic;
SIGNAL \Selector5~65_combout\ : std_logic;
SIGNAL \Selector5~66_combout\ : std_logic;
SIGNAL \screenArea[5][0]~q\ : std_logic;
SIGNAL \screenArea[5][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][1]~q\ : std_logic;
SIGNAL \screenArea[5][2]~q\ : std_logic;
SIGNAL \screenArea[5][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][3]~q\ : std_logic;
SIGNAL \screenArea[5][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][4]~q\ : std_logic;
SIGNAL \screenArea[5][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][5]~q\ : std_logic;
SIGNAL \screenArea[5][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][6]~q\ : std_logic;
SIGNAL \screenArea[5][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][7]~q\ : std_logic;
SIGNAL \screenArea[5][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][8]~q\ : std_logic;
SIGNAL \screenArea[5][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][9]~q\ : std_logic;
SIGNAL \screenArea[5][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][10]~q\ : std_logic;
SIGNAL \screenArea[5][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][11]~q\ : std_logic;
SIGNAL \screenArea[5][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][12]~q\ : std_logic;
SIGNAL \screenArea[5][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][13]~q\ : std_logic;
SIGNAL \screenArea[5][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][14]~q\ : std_logic;
SIGNAL \screenArea[5][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][15]~q\ : std_logic;
SIGNAL \screenArea[5][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][16]~q\ : std_logic;
SIGNAL \screenArea[5][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][17]~q\ : std_logic;
SIGNAL \screenArea[5][18]~q\ : std_logic;
SIGNAL \screenArea[5][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][19]~q\ : std_logic;
SIGNAL \screenArea[5][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][20]~q\ : std_logic;
SIGNAL \screenArea[5][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][21]~q\ : std_logic;
SIGNAL \screenArea[5][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][22]~q\ : std_logic;
SIGNAL \screenArea[5][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][23]~q\ : std_logic;
SIGNAL \screenArea[5][24]~q\ : std_logic;
SIGNAL \screenArea[5][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][25]~q\ : std_logic;
SIGNAL \screenArea[5][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][26]~q\ : std_logic;
SIGNAL \screenArea[5][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][27]~q\ : std_logic;
SIGNAL \screenArea[5][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][28]~q\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector6~91_combout\ : std_logic;
SIGNAL \Selector0~38_combout\ : std_logic;
SIGNAL \Selector0~37_combout\ : std_logic;
SIGNAL \Selector0~42_combout\ : std_logic;
SIGNAL \Selector0~43_combout\ : std_logic;
SIGNAL \Selector0~40_combout\ : std_logic;
SIGNAL \Selector0~39_combout\ : std_logic;
SIGNAL \Selector0~33_combout\ : std_logic;
SIGNAL \Selector0~34_combout\ : std_logic;
SIGNAL \Selector0~35_combout\ : std_logic;
SIGNAL \Selector0~31_combout\ : std_logic;
SIGNAL \Selector0~27_combout\ : std_logic;
SIGNAL \Selector6~52_combout\ : std_logic;
SIGNAL \Selector0~28_combout\ : std_logic;
SIGNAL \Selector0~29_combout\ : std_logic;
SIGNAL \Selector0~30_combout\ : std_logic;
SIGNAL \Selector0~32_combout\ : std_logic;
SIGNAL \Selector0~46_combout\ : std_logic;
SIGNAL \Selector0~47_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~41_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Selector0~8_combout\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \Selector0~23_combout\ : std_logic;
SIGNAL \Selector0~24_combout\ : std_logic;
SIGNAL \Selector0~17_combout\ : std_logic;
SIGNAL \Selector0~18_combout\ : std_logic;
SIGNAL \Selector0~19_combout\ : std_logic;
SIGNAL \Selector0~20_combout\ : std_logic;
SIGNAL \Selector6~49_combout\ : std_logic;
SIGNAL \Selector5~50_combout\ : std_logic;
SIGNAL \Selector0~21_combout\ : std_logic;
SIGNAL \Selector0~15_combout\ : std_logic;
SIGNAL \Selector6~51_combout\ : std_logic;
SIGNAL \Selector0~14_combout\ : std_logic;
SIGNAL \Selector0~16_combout\ : std_logic;
SIGNAL \Selector0~22_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector0~11_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \Selector0~12_combout\ : std_logic;
SIGNAL \Selector0~44_combout\ : std_logic;
SIGNAL \Selector0~45_combout\ : std_logic;
SIGNAL \Selector0~13_combout\ : std_logic;
SIGNAL \Selector0~25_combout\ : std_logic;
SIGNAL \Selector0~26_combout\ : std_logic;
SIGNAL \Selector0~36_combout\ : std_logic;
SIGNAL \screenArea[0][0]~2_combout\ : std_logic;
SIGNAL \screenArea[0][0]~q\ : std_logic;
SIGNAL \screenArea[0][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][1]~q\ : std_logic;
SIGNAL \screenArea[0][2]~q\ : std_logic;
SIGNAL \screenArea[0][3]~q\ : std_logic;
SIGNAL \screenArea[0][4]~q\ : std_logic;
SIGNAL \screenArea[0][5]~q\ : std_logic;
SIGNAL \screenArea[0][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][6]~q\ : std_logic;
SIGNAL \screenArea[0][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][7]~q\ : std_logic;
SIGNAL \screenArea[0][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][8]~q\ : std_logic;
SIGNAL \screenArea[0][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][9]~q\ : std_logic;
SIGNAL \screenArea[0][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][10]~q\ : std_logic;
SIGNAL \screenArea[0][11]~q\ : std_logic;
SIGNAL \screenArea[0][12]~q\ : std_logic;
SIGNAL \screenArea[0][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][13]~q\ : std_logic;
SIGNAL \screenArea[0][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][14]~q\ : std_logic;
SIGNAL \screenArea[0][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][15]~q\ : std_logic;
SIGNAL \screenArea[0][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][16]~q\ : std_logic;
SIGNAL \screenArea[0][17]~q\ : std_logic;
SIGNAL \screenArea[0][18]~q\ : std_logic;
SIGNAL \screenArea[0][19]~q\ : std_logic;
SIGNAL \screenArea[0][20]~q\ : std_logic;
SIGNAL \screenArea[0][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][21]~q\ : std_logic;
SIGNAL \screenArea[0][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][22]~q\ : std_logic;
SIGNAL \screenArea[0][23]~q\ : std_logic;
SIGNAL \screenArea[0][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][24]~q\ : std_logic;
SIGNAL \screenArea[0][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[0][25]~q\ : std_logic;
SIGNAL \screenArea[0][26]~q\ : std_logic;
SIGNAL \screenArea[0][27]~q\ : std_logic;
SIGNAL \screenArea[0][28]~q\ : std_logic;
SIGNAL \Selector3~60_combout\ : std_logic;
SIGNAL \Selector3~51_combout\ : std_logic;
SIGNAL \Selector3~50_combout\ : std_logic;
SIGNAL \Selector3~52_combout\ : std_logic;
SIGNAL \Selector3~46_combout\ : std_logic;
SIGNAL \Selector3~47_combout\ : std_logic;
SIGNAL \Selector3~48_combout\ : std_logic;
SIGNAL \Selector3~65_combout\ : std_logic;
SIGNAL \Selector3~66_combout\ : std_logic;
SIGNAL \Selector3~44_combout\ : std_logic;
SIGNAL \Selector3~43_combout\ : std_logic;
SIGNAL \Selector3~45_combout\ : std_logic;
SIGNAL \Selector3~49_combout\ : std_logic;
SIGNAL \Selector3~55_combout\ : std_logic;
SIGNAL \Selector3~56_combout\ : std_logic;
SIGNAL \Selector3~57_combout\ : std_logic;
SIGNAL \Selector3~26_combout\ : std_logic;
SIGNAL \Selector3~53_combout\ : std_logic;
SIGNAL \Selector3~54_combout\ : std_logic;
SIGNAL \Selector4~37_combout\ : std_logic;
SIGNAL \Selector3~58_combout\ : std_logic;
SIGNAL \Selector3~59_combout\ : std_logic;
SIGNAL \Selector3~24_combout\ : std_logic;
SIGNAL \Selector3~23_combout\ : std_logic;
SIGNAL \Selector3~25_combout\ : std_logic;
SIGNAL \Selector3~64_combout\ : std_logic;
SIGNAL \Selector3~27_combout\ : std_logic;
SIGNAL \Selector3~28_combout\ : std_logic;
SIGNAL \Selector3~29_combout\ : std_logic;
SIGNAL \Selector3~30_combout\ : std_logic;
SIGNAL \Selector3~31_combout\ : std_logic;
SIGNAL \Selector3~32_combout\ : std_logic;
SIGNAL \Selector3~36_combout\ : std_logic;
SIGNAL \Selector3~35_combout\ : std_logic;
SIGNAL \Selector3~37_combout\ : std_logic;
SIGNAL \Selector5~67_combout\ : std_logic;
SIGNAL \Selector3~33_combout\ : std_logic;
SIGNAL \Selector3~34_combout\ : std_logic;
SIGNAL \Selector3~38_combout\ : std_logic;
SIGNAL \Selector3~39_combout\ : std_logic;
SIGNAL \Selector3~40_combout\ : std_logic;
SIGNAL \Selector3~41_combout\ : std_logic;
SIGNAL \Selector3~42_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Selector3~15_combout\ : std_logic;
SIGNAL \Selector3~16_combout\ : std_logic;
SIGNAL \Selector3~19_combout\ : std_logic;
SIGNAL \Selector3~13_combout\ : std_logic;
SIGNAL \Selector3~20_combout\ : std_logic;
SIGNAL \Selector5~53_combout\ : std_logic;
SIGNAL \Selector3~21_combout\ : std_logic;
SIGNAL \Selector3~17_combout\ : std_logic;
SIGNAL \Selector5~27_combout\ : std_logic;
SIGNAL \Selector3~62_combout\ : std_logic;
SIGNAL \Selector3~18_combout\ : std_logic;
SIGNAL \Selector3~22_combout\ : std_logic;
SIGNAL \Selector3~63_combout\ : std_logic;
SIGNAL \Selector3~61_combout\ : std_logic;
SIGNAL \screenArea[3][0]~q\ : std_logic;
SIGNAL \screenArea[3][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][1]~q\ : std_logic;
SIGNAL \screenArea[3][2]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][2]~q\ : std_logic;
SIGNAL \screenArea[3][3]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][3]~q\ : std_logic;
SIGNAL \screenArea[3][4]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][4]~q\ : std_logic;
SIGNAL \screenArea[3][5]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][5]~q\ : std_logic;
SIGNAL \screenArea[3][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][6]~q\ : std_logic;
SIGNAL \screenArea[3][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][7]~q\ : std_logic;
SIGNAL \screenArea[3][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][8]~q\ : std_logic;
SIGNAL \screenArea[3][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][9]~q\ : std_logic;
SIGNAL \screenArea[3][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][10]~q\ : std_logic;
SIGNAL \screenArea[3][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][11]~q\ : std_logic;
SIGNAL \screenArea[3][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][12]~q\ : std_logic;
SIGNAL \screenArea[3][13]~feeder_combout\ : std_logic;
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
SIGNAL \screenArea[3][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][19]~q\ : std_logic;
SIGNAL \screenArea[3][20]~q\ : std_logic;
SIGNAL \screenArea[3][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][21]~q\ : std_logic;
SIGNAL \screenArea[3][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][22]~q\ : std_logic;
SIGNAL \screenArea[3][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][23]~q\ : std_logic;
SIGNAL \screenArea[3][24]~q\ : std_logic;
SIGNAL \screenArea[3][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][25]~q\ : std_logic;
SIGNAL \screenArea[3][26]~q\ : std_logic;
SIGNAL \screenArea[3][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][27]~q\ : std_logic;
SIGNAL \screenArea[3][28]~q\ : std_logic;
SIGNAL \Selector4~61_combout\ : std_logic;
SIGNAL \Selector4~62_combout\ : std_logic;
SIGNAL \Selector4~63_combout\ : std_logic;
SIGNAL \Selector4~64_combout\ : std_logic;
SIGNAL \Selector5~52_combout\ : std_logic;
SIGNAL \Selector4~73_combout\ : std_logic;
SIGNAL \Selector4~65_combout\ : std_logic;
SIGNAL \Selector4~66_combout\ : std_logic;
SIGNAL \Selector4~47_combout\ : std_logic;
SIGNAL \Selector4~48_combout\ : std_logic;
SIGNAL \Selector6~67_combout\ : std_logic;
SIGNAL \Selector4~45_combout\ : std_logic;
SIGNAL \Selector4~46_combout\ : std_logic;
SIGNAL \Selector4~70_combout\ : std_logic;
SIGNAL \Selector4~49_combout\ : std_logic;
SIGNAL \Selector4~35_combout\ : std_logic;
SIGNAL \Selector4~69_combout\ : std_logic;
SIGNAL \Selector4~36_combout\ : std_logic;
SIGNAL \Selector4~16_combout\ : std_logic;
SIGNAL \Selector4~17_combout\ : std_logic;
SIGNAL \Selector4~75_combout\ : std_logic;
SIGNAL \Selector4~12_combout\ : std_logic;
SIGNAL \Selector4~13_combout\ : std_logic;
SIGNAL \Selector4~74_combout\ : std_logic;
SIGNAL \Selector4~39_combout\ : std_logic;
SIGNAL \Selector4~40_combout\ : std_logic;
SIGNAL \Selector4~42_combout\ : std_logic;
SIGNAL \Selector4~43_combout\ : std_logic;
SIGNAL \Selector4~41_combout\ : std_logic;
SIGNAL \Selector4~44_combout\ : std_logic;
SIGNAL \Selector4~50_combout\ : std_logic;
SIGNAL \Selector4~51_combout\ : std_logic;
SIGNAL \Selector5~72_combout\ : std_logic;
SIGNAL \Selector4~52_combout\ : std_logic;
SIGNAL \Selector4~53_combout\ : std_logic;
SIGNAL \Selector4~25_combout\ : std_logic;
SIGNAL \Selector4~24_combout\ : std_logic;
SIGNAL \Selector4~21_combout\ : std_logic;
SIGNAL \Selector4~22_combout\ : std_logic;
SIGNAL \Selector4~28_combout\ : std_logic;
SIGNAL \Selector4~29_combout\ : std_logic;
SIGNAL \Selector4~57_combout\ : std_logic;
SIGNAL \Selector4~76_combout\ : std_logic;
SIGNAL \Selector4~58_combout\ : std_logic;
SIGNAL \Selector4~55_combout\ : std_logic;
SIGNAL \Selector4~30_combout\ : std_logic;
SIGNAL \Selector4~71_combout\ : std_logic;
SIGNAL \Selector4~54_combout\ : std_logic;
SIGNAL \Selector4~56_combout\ : std_logic;
SIGNAL \Selector4~59_combout\ : std_logic;
SIGNAL \Selector4~60_combout\ : std_logic;
SIGNAL \Selector4~72_combout\ : std_logic;
SIGNAL \Selector4~67_combout\ : std_logic;
SIGNAL \Selector4~68_combout\ : std_logic;
SIGNAL \screenArea[4][0]~q\ : std_logic;
SIGNAL \screenArea[4][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][1]~q\ : std_logic;
SIGNAL \screenArea[4][2]~q\ : std_logic;
SIGNAL \screenArea[4][3]~q\ : std_logic;
SIGNAL \screenArea[4][4]~q\ : std_logic;
SIGNAL \screenArea[4][5]~q\ : std_logic;
SIGNAL \screenArea[4][6]~q\ : std_logic;
SIGNAL \screenArea[4][7]~q\ : std_logic;
SIGNAL \screenArea[4][8]~q\ : std_logic;
SIGNAL \screenArea[4][9]~q\ : std_logic;
SIGNAL \screenArea[4][10]~q\ : std_logic;
SIGNAL \screenArea[4][11]~q\ : std_logic;
SIGNAL \screenArea[4][12]~q\ : std_logic;
SIGNAL \screenArea[4][13]~q\ : std_logic;
SIGNAL \screenArea[4][14]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][14]~q\ : std_logic;
SIGNAL \screenArea[4][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][15]~q\ : std_logic;
SIGNAL \screenArea[4][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][16]~q\ : std_logic;
SIGNAL \screenArea[4][17]~q\ : std_logic;
SIGNAL \screenArea[4][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][18]~q\ : std_logic;
SIGNAL \screenArea[4][19]~q\ : std_logic;
SIGNAL \screenArea[4][20]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][20]~q\ : std_logic;
SIGNAL \screenArea[4][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][21]~q\ : std_logic;
SIGNAL \screenArea[4][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][22]~q\ : std_logic;
SIGNAL \screenArea[4][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][23]~q\ : std_logic;
SIGNAL \screenArea[4][24]~q\ : std_logic;
SIGNAL \screenArea[4][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][25]~q\ : std_logic;
SIGNAL \screenArea[4][26]~q\ : std_logic;
SIGNAL \screenArea[4][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][27]~q\ : std_logic;
SIGNAL \screenArea[4][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[4][28]~q\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \Selector6~84_combout\ : std_logic;
SIGNAL \Selector6~83_combout\ : std_logic;
SIGNAL \Selector6~94_combout\ : std_logic;
SIGNAL \Selector6~85_combout\ : std_logic;
SIGNAL \Selector6~95_combout\ : std_logic;
SIGNAL \Selector6~86_combout\ : std_logic;
SIGNAL \Selector6~26_combout\ : std_logic;
SIGNAL \Selector6~25_combout\ : std_logic;
SIGNAL \Selector6~96_combout\ : std_logic;
SIGNAL \Selector6~87_combout\ : std_logic;
SIGNAL \Selector6~81_combout\ : std_logic;
SIGNAL \Selector6~104_combout\ : std_logic;
SIGNAL \Selector6~105_combout\ : std_logic;
SIGNAL \Selector6~102_combout\ : std_logic;
SIGNAL \Selector6~103_combout\ : std_logic;
SIGNAL \Selector6~100_combout\ : std_logic;
SIGNAL \Selector6~71_combout\ : std_logic;
SIGNAL \Selector6~70_combout\ : std_logic;
SIGNAL \Selector6~72_combout\ : std_logic;
SIGNAL \Selector6~101_combout\ : std_logic;
SIGNAL \Selector6~48_combout\ : std_logic;
SIGNAL \Selector6~54_combout\ : std_logic;
SIGNAL \Selector6~106_combout\ : std_logic;
SIGNAL \Selector6~107_combout\ : std_logic;
SIGNAL \Selector6~50_combout\ : std_logic;
SIGNAL \Selector6~53_combout\ : std_logic;
SIGNAL \Selector6~55_combout\ : std_logic;
SIGNAL \Selector6~59_combout\ : std_logic;
SIGNAL \Selector6~60_combout\ : std_logic;
SIGNAL \Selector5~26_combout\ : std_logic;
SIGNAL \Selector6~61_combout\ : std_logic;
SIGNAL \Selector6~62_combout\ : std_logic;
SIGNAL \Selector6~63_combout\ : std_logic;
SIGNAL \Selector6~64_combout\ : std_logic;
SIGNAL \Selector6~57_combout\ : std_logic;
SIGNAL \Selector6~56_combout\ : std_logic;
SIGNAL \Selector6~92_combout\ : std_logic;
SIGNAL \Selector6~58_combout\ : std_logic;
SIGNAL \Selector6~65_combout\ : std_logic;
SIGNAL \Selector6~66_combout\ : std_logic;
SIGNAL \Selector6~75_combout\ : std_logic;
SIGNAL \Selector6~76_combout\ : std_logic;
SIGNAL \Selector6~77_combout\ : std_logic;
SIGNAL \Selector6~78_combout\ : std_logic;
SIGNAL \Selector6~93_combout\ : std_logic;
SIGNAL \Selector6~79_combout\ : std_logic;
SIGNAL \Selector6~73_combout\ : std_logic;
SIGNAL \Selector6~98_combout\ : std_logic;
SIGNAL \Selector6~99_combout\ : std_logic;
SIGNAL \Selector6~74_combout\ : std_logic;
SIGNAL \Selector6~80_combout\ : std_logic;
SIGNAL \Selector6~82_combout\ : std_logic;
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
SIGNAL \screenArea[6][8]~q\ : std_logic;
SIGNAL \screenArea[6][9]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][9]~q\ : std_logic;
SIGNAL \screenArea[6][10]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][10]~q\ : std_logic;
SIGNAL \screenArea[6][11]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][11]~q\ : std_logic;
SIGNAL \screenArea[6][12]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][12]~q\ : std_logic;
SIGNAL \screenArea[6][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][13]~q\ : std_logic;
SIGNAL \screenArea[6][14]~q\ : std_logic;
SIGNAL \screenArea[6][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][15]~q\ : std_logic;
SIGNAL \screenArea[6][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][16]~q\ : std_logic;
SIGNAL \screenArea[6][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][17]~q\ : std_logic;
SIGNAL \screenArea[6][18]~q\ : std_logic;
SIGNAL \screenArea[6][19]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][19]~q\ : std_logic;
SIGNAL \screenArea[6][20]~q\ : std_logic;
SIGNAL \screenArea[6][21]~q\ : std_logic;
SIGNAL \screenArea[6][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][22]~q\ : std_logic;
SIGNAL \screenArea[6][23]~q\ : std_logic;
SIGNAL \screenArea[6][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][24]~q\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \Selector7~8_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Selector7~13_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Selector7~14_combout\ : std_logic;
SIGNAL \Selector7~10_combout\ : std_logic;
SIGNAL \Selector7~11_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Selector7~12_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Selector7~9_combout\ : std_logic;
SIGNAL \Selector7~15_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Selector7~17_combout\ : std_logic;
SIGNAL \Selector7~16_combout\ : std_logic;
SIGNAL \screenArea[7][0]~q\ : std_logic;
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
SIGNAL \screenArea[7][7]~q\ : std_logic;
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
SIGNAL \screenArea[7][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][15]~q\ : std_logic;
SIGNAL \screenArea[7][16]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][16]~q\ : std_logic;
SIGNAL \screenArea[7][17]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][17]~q\ : std_logic;
SIGNAL \screenArea[7][18]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][18]~q\ : std_logic;
SIGNAL \screenArea[7][19]~q\ : std_logic;
SIGNAL \screenArea[7][20]~q\ : std_logic;
SIGNAL \screenArea[7][21]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][21]~q\ : std_logic;
SIGNAL \screenArea[7][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][22]~q\ : std_logic;
SIGNAL \screenArea[7][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][23]~q\ : std_logic;
SIGNAL \screenArea[7][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][24]~q\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \Selector29~4_combout\ : std_logic;
SIGNAL \Selector1~46_combout\ : std_logic;
SIGNAL \Selector5~68_combout\ : std_logic;
SIGNAL \Selector1~51_combout\ : std_logic;
SIGNAL \Selector1~15_combout\ : std_logic;
SIGNAL \Selector1~14_combout\ : std_logic;
SIGNAL \Selector1~52_combout\ : std_logic;
SIGNAL \Selector1~45_combout\ : std_logic;
SIGNAL \Selector1~47_combout\ : std_logic;
SIGNAL \Selector1~50_combout\ : std_logic;
SIGNAL \Selector1~22_combout\ : std_logic;
SIGNAL \Selector1~48_combout\ : std_logic;
SIGNAL \Selector1~23_combout\ : std_logic;
SIGNAL \Selector1~24_combout\ : std_logic;
SIGNAL \Selector1~40_combout\ : std_logic;
SIGNAL \Selector1~19_combout\ : std_logic;
SIGNAL \Selector1~18_combout\ : std_logic;
SIGNAL \Selector1~53_combout\ : std_logic;
SIGNAL \Selector1~41_combout\ : std_logic;
SIGNAL \Selector1~37_combout\ : std_logic;
SIGNAL \Selector1~38_combout\ : std_logic;
SIGNAL \Selector1~39_combout\ : std_logic;
SIGNAL \Selector1~54_combout\ : std_logic;
SIGNAL \Selector1~55_combout\ : std_logic;
SIGNAL \Selector1~32_combout\ : std_logic;
SIGNAL \Selector1~33_combout\ : std_logic;
SIGNAL \Selector1~34_combout\ : std_logic;
SIGNAL \Selector1~35_combout\ : std_logic;
SIGNAL \Selector1~49_combout\ : std_logic;
SIGNAL \Selector1~36_combout\ : std_logic;
SIGNAL \Selector1~42_combout\ : std_logic;
SIGNAL \Selector1~28_combout\ : std_logic;
SIGNAL \Selector1~27_combout\ : std_logic;
SIGNAL \Selector1~29_combout\ : std_logic;
SIGNAL \Selector1~25_combout\ : std_logic;
SIGNAL \Selector1~26_combout\ : std_logic;
SIGNAL \Selector1~20_combout\ : std_logic;
SIGNAL \Selector1~30_combout\ : std_logic;
SIGNAL \Selector1~31_combout\ : std_logic;
SIGNAL \Selector1~43_combout\ : std_logic;
SIGNAL \Selector1~44_combout\ : std_logic;
SIGNAL \screenArea[1][0]~1_combout\ : std_logic;
SIGNAL \screenArea[1][0]~q\ : std_logic;
SIGNAL \screenArea[1][1]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][1]~q\ : std_logic;
SIGNAL \screenArea[1][2]~q\ : std_logic;
SIGNAL \screenArea[1][3]~q\ : std_logic;
SIGNAL \screenArea[1][4]~q\ : std_logic;
SIGNAL \screenArea[1][5]~q\ : std_logic;
SIGNAL \screenArea[1][6]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][6]~q\ : std_logic;
SIGNAL \screenArea[1][7]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][7]~q\ : std_logic;
SIGNAL \screenArea[1][8]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][8]~q\ : std_logic;
SIGNAL \screenArea[1][9]~q\ : std_logic;
SIGNAL \screenArea[1][10]~q\ : std_logic;
SIGNAL \screenArea[1][11]~q\ : std_logic;
SIGNAL \screenArea[1][12]~q\ : std_logic;
SIGNAL \screenArea[1][13]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][13]~q\ : std_logic;
SIGNAL \screenArea[1][14]~q\ : std_logic;
SIGNAL \screenArea[1][15]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][15]~q\ : std_logic;
SIGNAL \screenArea[1][16]~feeder_combout\ : std_logic;
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
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector30~3_combout\ : std_logic;
SIGNAL \Selector30~4_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector33~4_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \Selector43~4_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \Selector48~3_combout\ : std_logic;
SIGNAL \Selector48~2_combout\ : std_logic;
SIGNAL \Selector48~4_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector50~3_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \Selector50~4_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Selector50~5_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~6_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \Selector49~3_combout\ : std_logic;
SIGNAL \Selector49~4_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \Selector49~5_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~5_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~4_combout\ : std_logic;
SIGNAL \Selector47~5_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \Selector46~4_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~5_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector45~4_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~5_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \Selector44~4_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector44~5_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector43~5_combout\ : std_logic;
SIGNAL \Selector42~2_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \Selector42~3_combout\ : std_logic;
SIGNAL \Selector42~4_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~5_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~3_combout\ : std_logic;
SIGNAL \Selector41~4_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~5_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \Selector40~4_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector40~5_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector39~3_combout\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \Selector39~4_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~5_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \Selector38~3_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector38~4_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~5_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~3_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \Selector37~4_combout\ : std_logic;
SIGNAL \Selector37~5_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector36~3_combout\ : std_logic;
SIGNAL \Selector36~4_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~5_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~3_combout\ : std_logic;
SIGNAL \Selector35~4_combout\ : std_logic;
SIGNAL \Selector35~5_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector34~3_combout\ : std_logic;
SIGNAL \Selector34~4_combout\ : std_logic;
SIGNAL \Selector34~5_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~5_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~5_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~3_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Selector31~4_combout\ : std_logic;
SIGNAL \Selector31~5_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~5_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector29~5_combout\ : std_logic;
SIGNAL \Selector28~5_combout\ : std_logic;
SIGNAL \Selector28~7_combout\ : std_logic;
SIGNAL \Selector28~4_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \screenArea[1][22]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][22]~q\ : std_logic;
SIGNAL \Selector28~3_combout\ : std_logic;
SIGNAL \Selector28~6_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \screenArea[1][23]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][23]~q\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \Selector27~4_combout\ : std_logic;
SIGNAL \Selector27~5_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \screenArea[1][24]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][24]~q\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \Selector26~5_combout\ : std_logic;
SIGNAL \screenArea[6][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][25]~q\ : std_logic;
SIGNAL \screenArea[7][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][25]~q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \screenArea[1][25]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][25]~q\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Selector25~5_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \screenArea[1][26]~q\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \screenArea[6][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][26]~q\ : std_logic;
SIGNAL \screenArea[7][26]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][26]~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~5_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \screenArea[1][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][27]~q\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \screenArea[6][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][27]~q\ : std_logic;
SIGNAL \screenArea[7][27]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][27]~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \screenArea[1][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][28]~q\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \screenArea[6][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][28]~q\ : std_logic;
SIGNAL \screenArea[7][28]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][28]~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \screenArea[2][29]~q\ : std_logic;
SIGNAL \screenArea[3][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][29]~q\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \screenArea[4][29]~q\ : std_logic;
SIGNAL \screenArea[5][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][29]~q\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \screenArea[0][29]~q\ : std_logic;
SIGNAL \screenArea[1][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][29]~q\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \screenArea[6][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][29]~q\ : std_logic;
SIGNAL \screenArea[7][29]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][29]~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~5_combout\ : std_logic;
SIGNAL \screenArea[5][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][30]~q\ : std_logic;
SIGNAL \screenArea[4][30]~q\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \screenArea[2][30]~q\ : std_logic;
SIGNAL \screenArea[3][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][30]~q\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \screenArea[0][30]~q\ : std_logic;
SIGNAL \screenArea[1][30]~q\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \screenArea[6][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][30]~q\ : std_logic;
SIGNAL \screenArea[7][30]~feeder_combout\ : std_logic;
SIGNAL \screenArea[7][30]~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~5_combout\ : std_logic;
SIGNAL \screenArea[4][31]~q\ : std_logic;
SIGNAL \screenArea[5][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[5][31]~q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \screenArea[2][31]~q\ : std_logic;
SIGNAL \screenArea[3][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[3][31]~q\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \screenArea[0][31]~q\ : std_logic;
SIGNAL \screenArea[1][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[1][31]~q\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \screenArea[7][31]~q\ : std_logic;
SIGNAL \screenArea[6][31]~feeder_combout\ : std_logic;
SIGNAL \screenArea[6][31]~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \serial_data~0_combout\ : std_logic;
SIGNAL \serial_data~q\ : std_logic;
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

ww_CLK_50MHz <= CLK_50MHz;
LEDR <= ww_LEDR;
GPIO <= ww_GPIO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\shiftRegisterClk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \shiftRegisterClk~q\);

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
\ALT_INV_shiftStateVariable~q\ <= NOT \shiftStateVariable~q\;
\ALT_INV_output_enable~q\ <= NOT \output_enable~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

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
	i => \shiftRegisterClk~q\,
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
\CLK_50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHz,
	o => \CLK_50MHz~input_o\);

-- Location: CLKCTRL_G19
\CLK_50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X47_Y50_N8
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

-- Location: FF_X47_Y50_N9
\TEST_CLK_PROC:drtcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[0]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[0]~q\);

-- Location: LCCOMB_X47_Y50_N10
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

-- Location: FF_X47_Y50_N11
\TEST_CLK_PROC:drtcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[1]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[1]~q\);

-- Location: LCCOMB_X47_Y50_N12
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

-- Location: FF_X47_Y50_N13
\TEST_CLK_PROC:drtcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[2]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[2]~q\);

-- Location: LCCOMB_X47_Y50_N14
\TEST_CLK_PROC:drtcount[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[3]~1_combout\ = (\TEST_CLK_PROC:drtcount[3]~q\ & (!\TEST_CLK_PROC:drtcount[2]~2\)) # (!\TEST_CLK_PROC:drtcount[3]~q\ & ((\TEST_CLK_PROC:drtcount[2]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[3]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[2]~2\) # (!\TEST_CLK_PROC:drtcount[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[3]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[2]~2\,
	combout => \TEST_CLK_PROC:drtcount[3]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[3]~2\);

-- Location: FF_X47_Y50_N15
\TEST_CLK_PROC:drtcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[3]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[3]~q\);

-- Location: LCCOMB_X47_Y50_N16
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

-- Location: FF_X47_Y50_N17
\TEST_CLK_PROC:drtcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[4]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[4]~q\);

-- Location: LCCOMB_X47_Y50_N18
\TEST_CLK_PROC:drtcount[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[5]~1_combout\ = (\TEST_CLK_PROC:drtcount[5]~q\ & (!\TEST_CLK_PROC:drtcount[4]~2\)) # (!\TEST_CLK_PROC:drtcount[5]~q\ & ((\TEST_CLK_PROC:drtcount[4]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[5]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[4]~2\) # (!\TEST_CLK_PROC:drtcount[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[5]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[4]~2\,
	combout => \TEST_CLK_PROC:drtcount[5]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[5]~2\);

-- Location: FF_X47_Y50_N19
\TEST_CLK_PROC:drtcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[5]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[5]~q\);

-- Location: LCCOMB_X47_Y50_N20
\TEST_CLK_PROC:drtcount[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[6]~1_combout\ = (\TEST_CLK_PROC:drtcount[6]~q\ & (\TEST_CLK_PROC:drtcount[5]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[6]~q\ & (!\TEST_CLK_PROC:drtcount[5]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[6]~2\ = CARRY((\TEST_CLK_PROC:drtcount[6]~q\ & !\TEST_CLK_PROC:drtcount[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[6]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[5]~2\,
	combout => \TEST_CLK_PROC:drtcount[6]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[6]~2\);

-- Location: FF_X47_Y50_N21
\TEST_CLK_PROC:drtcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[6]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[6]~q\);

-- Location: LCCOMB_X47_Y50_N22
\TEST_CLK_PROC:drtcount[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[7]~1_combout\ = (\TEST_CLK_PROC:drtcount[7]~q\ & (!\TEST_CLK_PROC:drtcount[6]~2\)) # (!\TEST_CLK_PROC:drtcount[7]~q\ & ((\TEST_CLK_PROC:drtcount[6]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[7]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[6]~2\) # (!\TEST_CLK_PROC:drtcount[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[7]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[6]~2\,
	combout => \TEST_CLK_PROC:drtcount[7]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[7]~2\);

-- Location: FF_X47_Y50_N23
\TEST_CLK_PROC:drtcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[7]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[7]~q\);

-- Location: LCCOMB_X47_Y50_N24
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

-- Location: FF_X47_Y50_N25
\TEST_CLK_PROC:drtcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[8]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[8]~q\);

-- Location: LCCOMB_X47_Y50_N26
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

-- Location: FF_X47_Y50_N27
\TEST_CLK_PROC:drtcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[9]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[9]~q\);

-- Location: LCCOMB_X47_Y50_N28
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

-- Location: FF_X47_Y50_N29
\TEST_CLK_PROC:drtcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[10]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[10]~q\);

-- Location: LCCOMB_X47_Y50_N30
\TEST_CLK_PROC:drtcount[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[11]~1_combout\ = (\TEST_CLK_PROC:drtcount[11]~q\ & (!\TEST_CLK_PROC:drtcount[10]~2\)) # (!\TEST_CLK_PROC:drtcount[11]~q\ & ((\TEST_CLK_PROC:drtcount[10]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[11]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[10]~2\) # (!\TEST_CLK_PROC:drtcount[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[11]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[10]~2\,
	combout => \TEST_CLK_PROC:drtcount[11]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[11]~2\);

-- Location: FF_X47_Y50_N31
\TEST_CLK_PROC:drtcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[11]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[11]~q\);

-- Location: LCCOMB_X47_Y49_N0
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

-- Location: FF_X47_Y49_N1
\TEST_CLK_PROC:drtcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[12]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[12]~q\);

-- Location: LCCOMB_X47_Y49_N2
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

-- Location: FF_X47_Y49_N3
\TEST_CLK_PROC:drtcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[13]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[13]~q\);

-- Location: LCCOMB_X47_Y49_N4
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

-- Location: FF_X47_Y49_N5
\TEST_CLK_PROC:drtcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[14]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[14]~q\);

-- Location: LCCOMB_X47_Y49_N6
\TEST_CLK_PROC:drtcount[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[15]~1_combout\ = (\TEST_CLK_PROC:drtcount[15]~q\ & (!\TEST_CLK_PROC:drtcount[14]~2\)) # (!\TEST_CLK_PROC:drtcount[15]~q\ & ((\TEST_CLK_PROC:drtcount[14]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[15]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[14]~2\) # (!\TEST_CLK_PROC:drtcount[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[15]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[14]~2\,
	combout => \TEST_CLK_PROC:drtcount[15]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[15]~2\);

-- Location: FF_X47_Y49_N7
\TEST_CLK_PROC:drtcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[15]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[15]~q\);

-- Location: LCCOMB_X47_Y49_N8
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

-- Location: FF_X47_Y49_N9
\TEST_CLK_PROC:drtcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[16]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[16]~q\);

-- Location: LCCOMB_X47_Y49_N10
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

-- Location: FF_X47_Y49_N11
\TEST_CLK_PROC:drtcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[17]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[17]~q\);

-- Location: LCCOMB_X47_Y49_N12
\TEST_CLK_PROC:drtcount[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[18]~1_combout\ = (\TEST_CLK_PROC:drtcount[18]~q\ & (\TEST_CLK_PROC:drtcount[17]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[18]~q\ & (!\TEST_CLK_PROC:drtcount[17]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[18]~2\ = CARRY((\TEST_CLK_PROC:drtcount[18]~q\ & !\TEST_CLK_PROC:drtcount[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[18]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[17]~2\,
	combout => \TEST_CLK_PROC:drtcount[18]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[18]~2\);

-- Location: FF_X47_Y49_N13
\TEST_CLK_PROC:drtcount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[18]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[18]~q\);

-- Location: LCCOMB_X47_Y49_N14
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

-- Location: FF_X47_Y49_N15
\TEST_CLK_PROC:drtcount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[19]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[19]~q\);

-- Location: LCCOMB_X47_Y49_N16
\TEST_CLK_PROC:drtcount[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[20]~1_combout\ = (\TEST_CLK_PROC:drtcount[20]~q\ & (\TEST_CLK_PROC:drtcount[19]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[20]~q\ & (!\TEST_CLK_PROC:drtcount[19]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[20]~2\ = CARRY((\TEST_CLK_PROC:drtcount[20]~q\ & !\TEST_CLK_PROC:drtcount[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[20]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[19]~2\,
	combout => \TEST_CLK_PROC:drtcount[20]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[20]~2\);

-- Location: FF_X47_Y49_N17
\TEST_CLK_PROC:drtcount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[20]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[20]~q\);

-- Location: LCCOMB_X47_Y49_N18
\TEST_CLK_PROC:drtcount[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[21]~1_combout\ = (\TEST_CLK_PROC:drtcount[21]~q\ & (!\TEST_CLK_PROC:drtcount[20]~2\)) # (!\TEST_CLK_PROC:drtcount[21]~q\ & ((\TEST_CLK_PROC:drtcount[20]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[21]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[20]~2\) # (!\TEST_CLK_PROC:drtcount[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[21]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[20]~2\,
	combout => \TEST_CLK_PROC:drtcount[21]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[21]~2\);

-- Location: FF_X47_Y49_N19
\TEST_CLK_PROC:drtcount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[21]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[21]~q\);

-- Location: LCCOMB_X47_Y49_N20
\TEST_CLK_PROC:drtcount[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[22]~1_combout\ = (\TEST_CLK_PROC:drtcount[22]~q\ & (\TEST_CLK_PROC:drtcount[21]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[22]~q\ & (!\TEST_CLK_PROC:drtcount[21]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[22]~2\ = CARRY((\TEST_CLK_PROC:drtcount[22]~q\ & !\TEST_CLK_PROC:drtcount[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[22]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[21]~2\,
	combout => \TEST_CLK_PROC:drtcount[22]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[22]~2\);

-- Location: FF_X47_Y49_N21
\TEST_CLK_PROC:drtcount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[22]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[22]~q\);

-- Location: LCCOMB_X47_Y49_N22
\TEST_CLK_PROC:drtcount[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[23]~1_combout\ = \TEST_CLK_PROC:drtcount[23]~q\ $ (\TEST_CLK_PROC:drtcount[22]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[23]~q\,
	cin => \TEST_CLK_PROC:drtcount[22]~2\,
	combout => \TEST_CLK_PROC:drtcount[23]~1_combout\);

-- Location: FF_X47_Y49_N23
\TEST_CLK_PROC:drtcount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[23]~1_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[23]~q\);

-- Location: LCCOMB_X47_Y49_N28
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\TEST_CLK_PROC:drtcount[18]~q\ & (!\TEST_CLK_PROC:drtcount[16]~q\ & !\TEST_CLK_PROC:drtcount[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[18]~q\,
	datac => \TEST_CLK_PROC:drtcount[16]~q\,
	datad => \TEST_CLK_PROC:drtcount[17]~q\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X47_Y50_N6
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!\TEST_CLK_PROC:drtcount[7]~q\ & !\TEST_CLK_PROC:drtcount[8]~q\)) # (!\TEST_CLK_PROC:drtcount[10]~q\)) # (!\TEST_CLK_PROC:drtcount[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[7]~q\,
	datab => \TEST_CLK_PROC:drtcount[8]~q\,
	datac => \TEST_CLK_PROC:drtcount[9]~q\,
	datad => \TEST_CLK_PROC:drtcount[10]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y49_N24
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!\TEST_CLK_PROC:drtcount[11]~q\ & \LessThan0~0_combout\)) # (!\TEST_CLK_PROC:drtcount[12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[12]~q\,
	datac => \TEST_CLK_PROC:drtcount[11]~q\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y49_N30
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!\TEST_CLK_PROC:drtcount[13]~q\ & (!\TEST_CLK_PROC:drtcount[14]~q\ & \LessThan0~1_combout\))) # (!\TEST_CLK_PROC:drtcount[15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[15]~q\,
	datab => \TEST_CLK_PROC:drtcount[13]~q\,
	datac => \TEST_CLK_PROC:drtcount[14]~q\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X47_Y49_N26
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((\LessThan0~3_combout\ & \LessThan0~2_combout\)) # (!\TEST_CLK_PROC:drtcount[19]~q\)) # (!\TEST_CLK_PROC:drtcount[20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \TEST_CLK_PROC:drtcount[20]~q\,
	datac => \LessThan0~2_combout\,
	datad => \TEST_CLK_PROC:drtcount[19]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X46_Y49_N0
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\TEST_CLK_PROC:drtcount[23]~q\ & ((\TEST_CLK_PROC:drtcount[21]~q\) # ((\TEST_CLK_PROC:drtcount[22]~q\) # (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[21]~q\,
	datab => \TEST_CLK_PROC:drtcount[23]~q\,
	datac => \TEST_CLK_PROC:drtcount[22]~q\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X47_Y50_N4
\CHAR_CLK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHAR_CLK~0_combout\ = \CHAR_CLK~q\ $ (\LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHAR_CLK~q\,
	datad => \LessThan0~5_combout\,
	combout => \CHAR_CLK~0_combout\);

-- Location: FF_X47_Y50_N5
CHAR_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CHAR_CLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHAR_CLK~q\);

-- Location: LCCOMB_X44_Y1_N6
\p74HC595_CLK_PROC:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p74HC595_CLK_PROC:counter[0]~1_combout\ = \p74HC595_CLK_PROC:counter[0]~q\ $ (VCC)
-- \p74HC595_CLK_PROC:counter[0]~2\ = CARRY(\p74HC595_CLK_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p74HC595_CLK_PROC:counter[0]~q\,
	datad => VCC,
	combout => \p74HC595_CLK_PROC:counter[0]~1_combout\,
	cout => \p74HC595_CLK_PROC:counter[0]~2\);

-- Location: FF_X44_Y1_N7
\p74HC595_CLK_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \p74HC595_CLK_PROC:counter[0]~1_combout\,
	sclr => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[0]~q\);

-- Location: LCCOMB_X44_Y1_N8
\p74HC595_CLK_PROC:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p74HC595_CLK_PROC:counter[1]~1_combout\ = (\p74HC595_CLK_PROC:counter[1]~q\ & (!\p74HC595_CLK_PROC:counter[0]~2\)) # (!\p74HC595_CLK_PROC:counter[1]~q\ & ((\p74HC595_CLK_PROC:counter[0]~2\) # (GND)))
-- \p74HC595_CLK_PROC:counter[1]~2\ = CARRY((!\p74HC595_CLK_PROC:counter[0]~2\) # (!\p74HC595_CLK_PROC:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p74HC595_CLK_PROC:counter[1]~q\,
	datad => VCC,
	cin => \p74HC595_CLK_PROC:counter[0]~2\,
	combout => \p74HC595_CLK_PROC:counter[1]~1_combout\,
	cout => \p74HC595_CLK_PROC:counter[1]~2\);

-- Location: FF_X44_Y1_N9
\p74HC595_CLK_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \p74HC595_CLK_PROC:counter[1]~1_combout\,
	sclr => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[1]~q\);

-- Location: LCCOMB_X44_Y1_N10
\p74HC595_CLK_PROC:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p74HC595_CLK_PROC:counter[2]~1_combout\ = (\p74HC595_CLK_PROC:counter[2]~q\ & (\p74HC595_CLK_PROC:counter[1]~2\ $ (GND))) # (!\p74HC595_CLK_PROC:counter[2]~q\ & (!\p74HC595_CLK_PROC:counter[1]~2\ & VCC))
-- \p74HC595_CLK_PROC:counter[2]~2\ = CARRY((\p74HC595_CLK_PROC:counter[2]~q\ & !\p74HC595_CLK_PROC:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p74HC595_CLK_PROC:counter[2]~q\,
	datad => VCC,
	cin => \p74HC595_CLK_PROC:counter[1]~2\,
	combout => \p74HC595_CLK_PROC:counter[2]~1_combout\,
	cout => \p74HC595_CLK_PROC:counter[2]~2\);

-- Location: FF_X44_Y1_N11
\p74HC595_CLK_PROC:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \p74HC595_CLK_PROC:counter[2]~1_combout\,
	sclr => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[2]~q\);

-- Location: LCCOMB_X44_Y1_N12
\p74HC595_CLK_PROC:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p74HC595_CLK_PROC:counter[3]~1_combout\ = (\p74HC595_CLK_PROC:counter[3]~q\ & (!\p74HC595_CLK_PROC:counter[2]~2\)) # (!\p74HC595_CLK_PROC:counter[3]~q\ & ((\p74HC595_CLK_PROC:counter[2]~2\) # (GND)))
-- \p74HC595_CLK_PROC:counter[3]~2\ = CARRY((!\p74HC595_CLK_PROC:counter[2]~2\) # (!\p74HC595_CLK_PROC:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p74HC595_CLK_PROC:counter[3]~q\,
	datad => VCC,
	cin => \p74HC595_CLK_PROC:counter[2]~2\,
	combout => \p74HC595_CLK_PROC:counter[3]~1_combout\,
	cout => \p74HC595_CLK_PROC:counter[3]~2\);

-- Location: FF_X44_Y1_N13
\p74HC595_CLK_PROC:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \p74HC595_CLK_PROC:counter[3]~1_combout\,
	sclr => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[3]~q\);

-- Location: LCCOMB_X44_Y1_N14
\p74HC595_CLK_PROC:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p74HC595_CLK_PROC:counter[4]~1_combout\ = \p74HC595_CLK_PROC:counter[4]~q\ $ (!\p74HC595_CLK_PROC:counter[3]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p74HC595_CLK_PROC:counter[4]~q\,
	cin => \p74HC595_CLK_PROC:counter[3]~2\,
	combout => \p74HC595_CLK_PROC:counter[4]~1_combout\);

-- Location: FF_X44_Y1_N15
\p74HC595_CLK_PROC:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \p74HC595_CLK_PROC:counter[4]~1_combout\,
	sclr => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[4]~q\);

-- Location: LCCOMB_X44_Y1_N18
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\p74HC595_CLK_PROC:counter[4]~q\ & ((\p74HC595_CLK_PROC:counter[2]~q\) # (\p74HC595_CLK_PROC:counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p74HC595_CLK_PROC:counter[2]~q\,
	datac => \p74HC595_CLK_PROC:counter[4]~q\,
	datad => \p74HC595_CLK_PROC:counter[3]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X44_Y1_N0
\shiftRegisterClk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shiftRegisterClk~feeder_combout\ = \LessThan3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan3~0_combout\,
	combout => \shiftRegisterClk~feeder_combout\);

-- Location: FF_X44_Y1_N1
shiftRegisterClk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \shiftRegisterClk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterClk~q\);

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X44_Y24_N12
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

-- Location: LCCOMB_X45_Y23_N12
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

-- Location: LCCOMB_X46_Y24_N16
\Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\scanStateVariable.SHIFT1~q\) # ((\scanStateVariable.SHOW1~q\ & !\LessThan5~2_combout\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & (((\scanStateVariable.SHOW1~q\ & 
-- !\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \scanStateVariable.SHIFT1~q\,
	datac => \scanStateVariable.SHOW1~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X46_Y24_N17
\scanStateVariable.SHOW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW1~q\);

-- Location: LCCOMB_X47_Y24_N10
\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\scanStateVariable.SHOW1~q\ & \LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW1~q\,
	datac => \LessThan5~2_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X47_Y24_N11
\scanStateVariable.LOAD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD2~q\);

-- Location: LCCOMB_X47_Y24_N20
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\scanStateVariable.LOAD2~q\) # ((!\LINE_SACN_PROC:registerSerialData[5]~q\ & \scanStateVariable.SHIFT2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datac => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datad => \scanStateVariable.SHIFT2~q\,
	combout => \Selector56~0_combout\);

-- Location: FF_X47_Y24_N21
\scanStateVariable.CLOCK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK2~q\);

-- Location: LCCOMB_X46_Y24_N12
\scanStateVariable.SHIFT2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.SHIFT2~feeder_combout\ = \scanStateVariable.CLOCK2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.CLOCK2~q\,
	combout => \scanStateVariable.SHIFT2~feeder_combout\);

-- Location: FF_X46_Y24_N13
\scanStateVariable.SHIFT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT2~q\);

-- Location: LCCOMB_X46_Y24_N22
\Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\scanStateVariable.SHIFT2~q\) # ((\scanStateVariable.SHOW2~q\ & !\LessThan5~2_combout\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & (((\scanStateVariable.SHOW2~q\ & 
-- !\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \scanStateVariable.SHIFT2~q\,
	datac => \scanStateVariable.SHOW2~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X46_Y24_N23
\scanStateVariable.SHOW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW2~q\);

-- Location: LCCOMB_X47_Y24_N26
\Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\LessThan5~2_combout\ & \scanStateVariable.SHOW3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan5~2_combout\,
	datad => \scanStateVariable.SHOW3~q\,
	combout => \Selector63~0_combout\);

-- Location: FF_X47_Y24_N27
\scanStateVariable.LOAD4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD4~q\);

-- Location: LCCOMB_X47_Y24_N24
\Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\scanStateVariable.LOAD4~q\) # ((\scanStateVariable.SHIFT4~q\ & !\LINE_SACN_PROC:registerSerialData[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT4~q\,
	datac => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datad => \scanStateVariable.LOAD4~q\,
	combout => \Selector64~0_combout\);

-- Location: FF_X47_Y24_N25
\scanStateVariable.CLOCK4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK4~q\);

-- Location: FF_X46_Y24_N9
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT4~q\);

-- Location: LCCOMB_X46_Y24_N14
\Selector66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\scanStateVariable.SHIFT4~q\) # ((!\LessThan5~2_combout\ & \scanStateVariable.SHOW4~q\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & (!\LessThan5~2_combout\ & 
-- (\scanStateVariable.SHOW4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \LessThan5~2_combout\,
	datac => \scanStateVariable.SHOW4~q\,
	datad => \scanStateVariable.SHIFT4~q\,
	combout => \Selector66~0_combout\);

-- Location: FF_X46_Y24_N15
\scanStateVariable.SHOW4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW4~q\);

-- Location: LCCOMB_X46_Y24_N4
\WideOr13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (!\scanStateVariable.SHOW2~q\ & (!\scanStateVariable.SHOW3~q\ & (!\scanStateVariable.SHOW4~q\ & !\scanStateVariable.SHOW1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW2~q\,
	datab => \scanStateVariable.SHOW3~q\,
	datac => \scanStateVariable.SHOW4~q\,
	datad => \scanStateVariable.SHOW1~q\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X47_Y23_N6
\Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\scanStateVariable.SHOW4~q\ & \LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW4~q\,
	datac => \LessThan5~2_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X47_Y23_N7
\scanStateVariable.LOAD5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD5~q\);

-- Location: LCCOMB_X45_Y24_N8
\Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\scanStateVariable.LOAD5~q\) # ((!\LINE_SACN_PROC:registerSerialData[5]~q\ & \scanStateVariable.SHIFT5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datad => \scanStateVariable.SHIFT5~q\,
	combout => \Selector68~0_combout\);

-- Location: FF_X45_Y24_N9
\scanStateVariable.CLOCK5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK5~q\);

-- Location: LCCOMB_X46_Y24_N18
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

-- Location: FF_X46_Y24_N19
\scanStateVariable.SHIFT5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT5~q\);

-- Location: LCCOMB_X45_Y24_N22
\Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\scanStateVariable.SHIFT5~q\) # ((\scanStateVariable.SHOW5~q\ & !\LessThan5~2_combout\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & (((\scanStateVariable.SHOW5~q\ & 
-- !\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \scanStateVariable.SHIFT5~q\,
	datac => \scanStateVariable.SHOW5~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X45_Y24_N23
\scanStateVariable.SHOW5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector70~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW5~q\);

-- Location: LCCOMB_X45_Y24_N28
\Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\scanStateVariable.SHOW5~q\ & \LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW5~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X45_Y24_N29
\scanStateVariable.LOAD6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD6~q\);

-- Location: LCCOMB_X45_Y24_N2
\Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\scanStateVariable.LOAD6~q\) # ((\scanStateVariable.SHIFT6~q\ & !\LINE_SACN_PROC:registerSerialData[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datac => \scanStateVariable.SHIFT6~q\,
	datad => \LINE_SACN_PROC:registerSerialData[5]~q\,
	combout => \Selector72~0_combout\);

-- Location: FF_X45_Y24_N3
\scanStateVariable.CLOCK6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK6~q\);

-- Location: LCCOMB_X46_Y24_N20
\scanStateVariable.SHIFT6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.SHIFT6~feeder_combout\ = \scanStateVariable.CLOCK6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scanStateVariable.CLOCK6~q\,
	combout => \scanStateVariable.SHIFT6~feeder_combout\);

-- Location: FF_X46_Y24_N21
\scanStateVariable.SHIFT6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT6~q\);

-- Location: LCCOMB_X45_Y24_N12
\Selector74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\scanStateVariable.SHIFT6~q\ & ((\LINE_SACN_PROC:registerSerialData[5]~q\) # ((\scanStateVariable.SHOW6~q\ & !\LessThan5~2_combout\)))) # (!\scanStateVariable.SHIFT6~q\ & (((\scanStateVariable.SHOW6~q\ & 
-- !\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT6~q\,
	datab => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datac => \scanStateVariable.SHOW6~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector74~0_combout\);

-- Location: FF_X45_Y24_N13
\scanStateVariable.SHOW6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW6~q\);

-- Location: LCCOMB_X45_Y24_N26
\Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\scanStateVariable.SHOW6~q\ & \LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW6~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector75~0_combout\);

-- Location: FF_X45_Y24_N27
\scanStateVariable.LOAD7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD7~q\);

-- Location: LCCOMB_X45_Y24_N4
\Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\scanStateVariable.LOAD7~q\) # ((\scanStateVariable.SHIFT7~q\ & !\LINE_SACN_PROC:registerSerialData[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datac => \scanStateVariable.SHIFT7~q\,
	datad => \LINE_SACN_PROC:registerSerialData[5]~q\,
	combout => \Selector76~0_combout\);

-- Location: FF_X45_Y24_N5
\scanStateVariable.CLOCK7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK7~q\);

-- Location: LCCOMB_X46_Y24_N2
\scanStateVariable.SHIFT7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.SHIFT7~feeder_combout\ = \scanStateVariable.CLOCK7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.CLOCK7~q\,
	combout => \scanStateVariable.SHIFT7~feeder_combout\);

-- Location: FF_X46_Y24_N3
\scanStateVariable.SHIFT7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT7~q\);

-- Location: LCCOMB_X45_Y24_N20
\Selector78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\scanStateVariable.SHIFT7~q\) # ((\scanStateVariable.SHOW7~q\ & !\LessThan5~2_combout\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & (((\scanStateVariable.SHOW7~q\ & 
-- !\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \scanStateVariable.SHIFT7~q\,
	datac => \scanStateVariable.SHOW7~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X45_Y24_N21
\scanStateVariable.SHOW7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector78~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW7~q\);

-- Location: LCCOMB_X49_Y25_N16
\Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\scanStateVariable.SHOW7~q\ & \LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW7~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector79~0_combout\);

-- Location: FF_X49_Y25_N17
\scanStateVariable.LOAD8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector79~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD8~q\);

-- Location: LCCOMB_X45_Y24_N10
\Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\scanStateVariable.LOAD8~q\) # ((!\LINE_SACN_PROC:registerSerialData[5]~q\ & \scanStateVariable.SHIFT8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \scanStateVariable.SHIFT8~q\,
	combout => \Selector80~0_combout\);

-- Location: FF_X45_Y24_N11
\scanStateVariable.CLOCK8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK8~q\);

-- Location: FF_X46_Y24_N29
\scanStateVariable.SHIFT8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \scanStateVariable.CLOCK8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT8~q\);

-- Location: LCCOMB_X45_Y24_N14
\Selector82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\scanStateVariable.SHIFT8~q\) # ((\scanStateVariable.SHOW8~q\ & !\LessThan5~2_combout\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & (((\scanStateVariable.SHOW8~q\ & 
-- !\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \scanStateVariable.SHIFT8~q\,
	datac => \scanStateVariable.SHOW8~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector82~0_combout\);

-- Location: FF_X45_Y24_N15
\scanStateVariable.SHOW8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector82~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW8~q\);

-- Location: LCCOMB_X45_Y24_N18
\WideOr13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~1_combout\ = (!\scanStateVariable.SHOW5~q\ & (!\scanStateVariable.SHOW7~q\ & (!\scanStateVariable.SHOW8~q\ & !\scanStateVariable.SHOW6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW5~q\,
	datab => \scanStateVariable.SHOW7~q\,
	datac => \scanStateVariable.SHOW8~q\,
	datad => \scanStateVariable.SHOW6~q\,
	combout => \WideOr13~1_combout\);

-- Location: LCCOMB_X46_Y24_N30
\WideOr13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~2_combout\ = (!\WideOr13~1_combout\) # (!\WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr13~0_combout\,
	datad => \WideOr13~1_combout\,
	combout => \WideOr13~2_combout\);

-- Location: FF_X45_Y23_N13
\LINE_SACN_PROC:scanCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[0]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[0]~q\);

-- Location: LCCOMB_X45_Y23_N14
\LINE_SACN_PROC:scanCount[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[1]~1_combout\ = (\LINE_SACN_PROC:scanCount[1]~q\ & (!\LINE_SACN_PROC:scanCount[0]~2\)) # (!\LINE_SACN_PROC:scanCount[1]~q\ & ((\LINE_SACN_PROC:scanCount[0]~2\) # (GND)))
-- \LINE_SACN_PROC:scanCount[1]~2\ = CARRY((!\LINE_SACN_PROC:scanCount[0]~2\) # (!\LINE_SACN_PROC:scanCount[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[1]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[0]~2\,
	combout => \LINE_SACN_PROC:scanCount[1]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[1]~2\);

-- Location: FF_X45_Y23_N15
\LINE_SACN_PROC:scanCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[1]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[1]~q\);

-- Location: LCCOMB_X45_Y23_N16
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

-- Location: FF_X45_Y23_N17
\LINE_SACN_PROC:scanCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[2]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[2]~q\);

-- Location: LCCOMB_X45_Y23_N18
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

-- Location: FF_X45_Y23_N19
\LINE_SACN_PROC:scanCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[3]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[3]~q\);

-- Location: LCCOMB_X45_Y23_N20
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

-- Location: FF_X45_Y23_N21
\LINE_SACN_PROC:scanCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[4]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[4]~q\);

-- Location: LCCOMB_X45_Y23_N22
\LINE_SACN_PROC:scanCount[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[5]~1_combout\ = (\LINE_SACN_PROC:scanCount[5]~q\ & (!\LINE_SACN_PROC:scanCount[4]~2\)) # (!\LINE_SACN_PROC:scanCount[5]~q\ & ((\LINE_SACN_PROC:scanCount[4]~2\) # (GND)))
-- \LINE_SACN_PROC:scanCount[5]~2\ = CARRY((!\LINE_SACN_PROC:scanCount[4]~2\) # (!\LINE_SACN_PROC:scanCount[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[5]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[4]~2\,
	combout => \LINE_SACN_PROC:scanCount[5]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[5]~2\);

-- Location: FF_X45_Y23_N23
\LINE_SACN_PROC:scanCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[5]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[5]~q\);

-- Location: LCCOMB_X45_Y23_N24
\LINE_SACN_PROC:scanCount[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[6]~1_combout\ = (\LINE_SACN_PROC:scanCount[6]~q\ & (\LINE_SACN_PROC:scanCount[5]~2\ $ (GND))) # (!\LINE_SACN_PROC:scanCount[6]~q\ & (!\LINE_SACN_PROC:scanCount[5]~2\ & VCC))
-- \LINE_SACN_PROC:scanCount[6]~2\ = CARRY((\LINE_SACN_PROC:scanCount[6]~q\ & !\LINE_SACN_PROC:scanCount[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[6]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[5]~2\,
	combout => \LINE_SACN_PROC:scanCount[6]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[6]~2\);

-- Location: FF_X45_Y23_N25
\LINE_SACN_PROC:scanCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[6]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[6]~q\);

-- Location: LCCOMB_X45_Y23_N26
\LINE_SACN_PROC:scanCount[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[7]~1_combout\ = (\LINE_SACN_PROC:scanCount[7]~q\ & (!\LINE_SACN_PROC:scanCount[6]~2\)) # (!\LINE_SACN_PROC:scanCount[7]~q\ & ((\LINE_SACN_PROC:scanCount[6]~2\) # (GND)))
-- \LINE_SACN_PROC:scanCount[7]~2\ = CARRY((!\LINE_SACN_PROC:scanCount[6]~2\) # (!\LINE_SACN_PROC:scanCount[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[7]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[6]~2\,
	combout => \LINE_SACN_PROC:scanCount[7]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[7]~2\);

-- Location: FF_X45_Y23_N27
\LINE_SACN_PROC:scanCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[7]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[7]~q\);

-- Location: LCCOMB_X45_Y23_N28
\LINE_SACN_PROC:scanCount[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[8]~1_combout\ = (\LINE_SACN_PROC:scanCount[8]~q\ & (\LINE_SACN_PROC:scanCount[7]~2\ $ (GND))) # (!\LINE_SACN_PROC:scanCount[8]~q\ & (!\LINE_SACN_PROC:scanCount[7]~2\ & VCC))
-- \LINE_SACN_PROC:scanCount[8]~2\ = CARRY((\LINE_SACN_PROC:scanCount[8]~q\ & !\LINE_SACN_PROC:scanCount[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:scanCount[8]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:scanCount[7]~2\,
	combout => \LINE_SACN_PROC:scanCount[8]~1_combout\,
	cout => \LINE_SACN_PROC:scanCount[8]~2\);

-- Location: FF_X45_Y23_N29
\LINE_SACN_PROC:scanCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[8]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[8]~q\);

-- Location: LCCOMB_X45_Y23_N30
\LINE_SACN_PROC:scanCount[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:scanCount[9]~1_combout\ = \LINE_SACN_PROC:scanCount[9]~q\ $ (\LINE_SACN_PROC:scanCount[8]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[9]~q\,
	cin => \LINE_SACN_PROC:scanCount[8]~2\,
	combout => \LINE_SACN_PROC:scanCount[9]~1_combout\);

-- Location: FF_X45_Y23_N31
\LINE_SACN_PROC:scanCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:scanCount[9]~1_combout\,
	sclr => \LessThan5~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[9]~q\);

-- Location: LCCOMB_X45_Y23_N8
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\LINE_SACN_PROC:scanCount[0]~q\ & (!\LINE_SACN_PROC:scanCount[3]~q\ & (!\LINE_SACN_PROC:scanCount[1]~q\ & !\LINE_SACN_PROC:scanCount[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[0]~q\,
	datab => \LINE_SACN_PROC:scanCount[3]~q\,
	datac => \LINE_SACN_PROC:scanCount[1]~q\,
	datad => \LINE_SACN_PROC:scanCount[2]~q\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X45_Y23_N10
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (!\LINE_SACN_PROC:scanCount[7]~q\ & (!\LINE_SACN_PROC:scanCount[6]~q\ & (!\LINE_SACN_PROC:scanCount[5]~q\ & !\LINE_SACN_PROC:scanCount[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[7]~q\,
	datab => \LINE_SACN_PROC:scanCount[6]~q\,
	datac => \LINE_SACN_PROC:scanCount[5]~q\,
	datad => \LINE_SACN_PROC:scanCount[4]~q\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X45_Y23_N0
\LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\LINE_SACN_PROC:scanCount[9]~q\ & (\LINE_SACN_PROC:scanCount[8]~q\ & ((!\LessThan5~1_combout\) # (!\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[9]~q\,
	datab => \LINE_SACN_PROC:scanCount[8]~q\,
	datac => \LessThan5~0_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X47_Y24_N12
\Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (!\scanStateVariable.SHOW8~q\) # (!\LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan5~2_combout\,
	datad => \scanStateVariable.SHOW8~q\,
	combout => \Selector51~0_combout\);

-- Location: FF_X47_Y24_N13
\scanStateVariable.LOAD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD1~q\);

-- Location: LCCOMB_X47_Y24_N14
\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = ((!\LINE_SACN_PROC:registerSerialData[5]~q\ & \scanStateVariable.SHIFT1~q\)) # (!\scanStateVariable.LOAD1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datac => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datad => \scanStateVariable.SHIFT1~q\,
	combout => \Selector52~0_combout\);

-- Location: FF_X47_Y24_N15
\scanStateVariable.CLOCK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK1~q\);

-- Location: FF_X46_Y24_N11
\scanStateVariable.SHIFT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \scanStateVariable.CLOCK1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT1~q\);

-- Location: LCCOMB_X47_Y24_N0
\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\LessThan5~2_combout\ & \scanStateVariable.SHOW2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan5~2_combout\,
	datad => \scanStateVariable.SHOW2~q\,
	combout => \Selector59~0_combout\);

-- Location: FF_X47_Y24_N1
\scanStateVariable.LOAD3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD3~q\);

-- Location: LCCOMB_X47_Y24_N22
\Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\scanStateVariable.LOAD3~q\) # ((\scanStateVariable.SHIFT3~q\ & !\LINE_SACN_PROC:registerSerialData[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHIFT3~q\,
	datac => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datad => \scanStateVariable.LOAD3~q\,
	combout => \Selector60~0_combout\);

-- Location: FF_X47_Y24_N23
\scanStateVariable.CLOCK3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK3~q\);

-- Location: LCCOMB_X46_Y24_N6
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

-- Location: FF_X46_Y24_N7
\scanStateVariable.SHIFT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.SHIFT3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT3~q\);

-- Location: LCCOMB_X46_Y24_N8
\WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (!\scanStateVariable.SHIFT1~q\ & (!\scanStateVariable.SHIFT2~q\ & (!\scanStateVariable.SHIFT4~q\ & !\scanStateVariable.SHIFT3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT1~q\,
	datab => \scanStateVariable.SHIFT2~q\,
	datac => \scanStateVariable.SHIFT4~q\,
	datad => \scanStateVariable.SHIFT3~q\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X46_Y24_N28
\WideOr4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~3_combout\ = (!\scanStateVariable.SHIFT6~q\ & (!\scanStateVariable.SHIFT5~q\ & (!\scanStateVariable.SHIFT8~q\ & !\scanStateVariable.SHIFT7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT6~q\,
	datab => \scanStateVariable.SHIFT5~q\,
	datac => \scanStateVariable.SHIFT8~q\,
	datad => \scanStateVariable.SHIFT7~q\,
	combout => \WideOr4~3_combout\);

-- Location: LCCOMB_X46_Y24_N10
\WideOr4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~5_combout\ = (!\WideOr4~3_combout\) # (!\WideOr4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~2_combout\,
	datad => \WideOr4~3_combout\,
	combout => \WideOr4~5_combout\);

-- Location: FF_X44_Y24_N13
\LINE_SACN_PROC:registerSerialData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[0]~1_combout\,
	sclr => \LINE_SACN_PROC:registerSerialData[5]~q\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[0]~q\);

-- Location: LCCOMB_X44_Y24_N14
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

-- Location: FF_X44_Y24_N15
\LINE_SACN_PROC:registerSerialData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[1]~1_combout\,
	sclr => \LINE_SACN_PROC:registerSerialData[5]~q\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[1]~q\);

-- Location: LCCOMB_X44_Y24_N16
\LINE_SACN_PROC:registerSerialData[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[2]~1_combout\ = (\LINE_SACN_PROC:registerSerialData[2]~q\ & (\LINE_SACN_PROC:registerSerialData[1]~2\ $ (GND))) # (!\LINE_SACN_PROC:registerSerialData[2]~q\ & (!\LINE_SACN_PROC:registerSerialData[1]~2\ & VCC))
-- \LINE_SACN_PROC:registerSerialData[2]~2\ = CARRY((\LINE_SACN_PROC:registerSerialData[2]~q\ & !\LINE_SACN_PROC:registerSerialData[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:registerSerialData[2]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:registerSerialData[1]~2\,
	combout => \LINE_SACN_PROC:registerSerialData[2]~1_combout\,
	cout => \LINE_SACN_PROC:registerSerialData[2]~2\);

-- Location: FF_X44_Y24_N17
\LINE_SACN_PROC:registerSerialData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[2]~1_combout\,
	sclr => \LINE_SACN_PROC:registerSerialData[5]~q\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[2]~q\);

-- Location: LCCOMB_X44_Y24_N18
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

-- Location: FF_X44_Y24_N19
\LINE_SACN_PROC:registerSerialData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[3]~1_combout\,
	sclr => \LINE_SACN_PROC:registerSerialData[5]~q\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[3]~q\);

-- Location: LCCOMB_X44_Y24_N20
\LINE_SACN_PROC:registerSerialData[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[4]~1_combout\ = (\LINE_SACN_PROC:registerSerialData[4]~q\ & (\LINE_SACN_PROC:registerSerialData[3]~2\ $ (GND))) # (!\LINE_SACN_PROC:registerSerialData[4]~q\ & (!\LINE_SACN_PROC:registerSerialData[3]~2\ & VCC))
-- \LINE_SACN_PROC:registerSerialData[4]~2\ = CARRY((\LINE_SACN_PROC:registerSerialData[4]~q\ & !\LINE_SACN_PROC:registerSerialData[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datad => VCC,
	cin => \LINE_SACN_PROC:registerSerialData[3]~2\,
	combout => \LINE_SACN_PROC:registerSerialData[4]~1_combout\,
	cout => \LINE_SACN_PROC:registerSerialData[4]~2\);

-- Location: FF_X44_Y24_N21
\LINE_SACN_PROC:registerSerialData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[4]~1_combout\,
	sclr => \LINE_SACN_PROC:registerSerialData[5]~q\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[4]~q\);

-- Location: LCCOMB_X44_Y24_N22
\LINE_SACN_PROC:registerSerialData[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LINE_SACN_PROC:registerSerialData[5]~1_combout\ = \LINE_SACN_PROC:registerSerialData[5]~q\ $ (\LINE_SACN_PROC:registerSerialData[4]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	cin => \LINE_SACN_PROC:registerSerialData[4]~2\,
	combout => \LINE_SACN_PROC:registerSerialData[5]~1_combout\);

-- Location: FF_X44_Y24_N23
\LINE_SACN_PROC:registerSerialData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \LINE_SACN_PROC:registerSerialData[5]~1_combout\,
	sclr => \LINE_SACN_PROC:registerSerialData[5]~q\,
	ena => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:registerSerialData[5]~q\);

-- Location: LCCOMB_X46_Y24_N0
\Selector62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\scanStateVariable.SHIFT3~q\) # ((\scanStateVariable.SHOW3~q\ & !\LessThan5~2_combout\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & (((\scanStateVariable.SHOW3~q\ & 
-- !\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \scanStateVariable.SHIFT3~q\,
	datac => \scanStateVariable.SHOW3~q\,
	datad => \LessThan5~2_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X46_Y24_N1
\scanStateVariable.SHOW3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW3~q\);

-- Location: LCCOMB_X45_Y24_N16
\WideOr4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (!\scanStateVariable.CLOCK8~q\ & (!\scanStateVariable.CLOCK7~q\ & (!\scanStateVariable.CLOCK5~q\ & !\scanStateVariable.CLOCK6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.CLOCK8~q\,
	datab => \scanStateVariable.CLOCK7~q\,
	datac => \scanStateVariable.CLOCK5~q\,
	datad => \scanStateVariable.CLOCK6~q\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X47_Y24_N6
\WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\scanStateVariable.CLOCK3~q\ & (!\scanStateVariable.CLOCK4~q\ & (!\scanStateVariable.CLOCK1~q\ & !\scanStateVariable.CLOCK2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.CLOCK3~q\,
	datab => \scanStateVariable.CLOCK4~q\,
	datac => \scanStateVariable.CLOCK1~q\,
	datad => \scanStateVariable.CLOCK2~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X47_Y24_N28
WideOr4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (((!\WideOr4~3_combout\) # (!\WideOr4~0_combout\)) # (!\WideOr4~2_combout\)) # (!\WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~1_combout\,
	datab => \WideOr4~2_combout\,
	datac => \WideOr4~0_combout\,
	datad => \WideOr4~3_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X47_Y24_N8
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\scanStateVariable.SHOW3~q\) # ((row_driver(5) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW3~q\,
	datac => row_driver(5),
	datad => \WideOr4~combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X47_Y24_N9
\row_driver[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(5));

-- Location: LCCOMB_X47_Y24_N30
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\scanStateVariable.SHOW2~q\) # ((row_driver(6) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW2~q\,
	datac => row_driver(6),
	datad => \WideOr4~combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X47_Y24_N31
\row_driver[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(6));

-- Location: LCCOMB_X47_Y24_N16
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\scanStateVariable.SHOW1~q\) # ((row_driver(7) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW1~q\,
	datac => row_driver(7),
	datad => \WideOr4~combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X47_Y24_N17
\row_driver[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(7));

-- Location: LCCOMB_X45_Y24_N24
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

-- Location: FF_X45_Y24_N25
\row_driver[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(0));

-- Location: LCCOMB_X45_Y24_N30
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\scanStateVariable.SHOW7~q\) # ((row_driver(1) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW7~q\,
	datac => row_driver(1),
	datad => \WideOr4~combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X45_Y24_N31
\row_driver[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(1));

-- Location: LCCOMB_X46_Y24_N24
\WideOr4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~4_combout\ = (\WideOr4~1_combout\ & \WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr4~1_combout\,
	datad => \WideOr4~0_combout\,
	combout => \WideOr4~4_combout\);

-- Location: LCCOMB_X46_Y27_N24
\WideOr13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~3_combout\ = (!\scanStateVariable.LOAD5~q\ & (!\scanStateVariable.LOAD4~q\ & (!\scanStateVariable.LOAD2~q\ & !\scanStateVariable.LOAD3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \scanStateVariable.LOAD3~q\,
	combout => \WideOr13~3_combout\);

-- Location: LCCOMB_X46_Y27_N22
\WideOr13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~4_combout\ = (!\scanStateVariable.LOAD7~q\ & (!\scanStateVariable.LOAD6~q\ & (!\scanStateVariable.LOAD8~q\ & \WideOr13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \WideOr13~3_combout\,
	combout => \WideOr13~4_combout\);

-- Location: LCCOMB_X46_Y23_N28
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ((\serial_clk~q\ & ((\WideOr13~2_combout\) # (!\WideOr13~4_combout\)))) # (!\WideOr4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~4_combout\,
	datab => \WideOr13~4_combout\,
	datac => \serial_clk~q\,
	datad => \WideOr13~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X46_Y23_N29
serial_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_clk~q\);

-- Location: LCCOMB_X45_Y24_N0
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\scanStateVariable.SHOW6~q\) # ((row_driver(2) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW6~q\,
	datac => row_driver(2),
	datad => \WideOr4~combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X45_Y24_N1
\row_driver[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(2));

-- Location: LCCOMB_X47_Y24_N18
\Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (\parallel_load~q\ & (((!\WideOr13~4_combout\) # (!\WideOr4~1_combout\)) # (!\WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \parallel_load~q\,
	datac => \WideOr4~1_combout\,
	datad => \WideOr13~4_combout\,
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X47_Y24_N2
\Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~3_combout\) # ((\WideOr4~5_combout\ & ((\LINE_SACN_PROC:registerSerialData[5]~q\) # (\parallel_load~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \WideOr4~5_combout\,
	datac => \parallel_load~q\,
	datad => \Selector18~3_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X47_Y24_N3
parallel_load : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parallel_load~q\);

-- Location: LCCOMB_X45_Y24_N6
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\scanStateVariable.SHOW5~q\) # ((row_driver(3) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW5~q\,
	datac => row_driver(3),
	datad => \WideOr4~combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X45_Y24_N7
\row_driver[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(3));

-- Location: LCCOMB_X47_Y24_N4
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\scanStateVariable.LOAD1~q\ & (\WideOr13~4_combout\ & ((\output_enable~q\) # (!\WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \WideOr4~combout\,
	datac => \output_enable~q\,
	datad => \WideOr13~4_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X47_Y24_N5
output_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_enable~q\);

-- Location: LCCOMB_X47_Y23_N24
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\scanStateVariable.SHOW4~q\) # ((\WideOr4~combout\ & row_driver(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW4~q\,
	datab => \WideOr4~combout\,
	datac => row_driver(4),
	combout => \Selector11~0_combout\);

-- Location: FF_X47_Y23_N25
\row_driver[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(4));

-- Location: LCCOMB_X59_Y27_N0
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

-- Location: LCCOMB_X51_Y28_N12
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ (GND)
-- \Add2~1\ = CARRY(!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X51_Y28_N8
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (!\Add2~0_combout\ & (((\LessThan1~0_combout\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \LessThan1~0_combout\,
	combout => \Add2~2_combout\);

-- Location: FF_X51_Y28_N9
\SCREEN_AREA_SHIFT_PROC:stringIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\);

-- Location: LCCOMB_X51_Y28_N14
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (!\Add2~1\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\Add2~1\) # (GND)))
-- \Add2~4\ = CARRY((!\Add2~1\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

-- Location: LCCOMB_X51_Y28_N6
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (\Add2~3_combout\ & (((\LessThan1~0_combout\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \Add2~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Add2~5_combout\);

-- Location: FF_X51_Y28_N7
\SCREEN_AREA_SHIFT_PROC:stringIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Add2~5_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\);

-- Location: LCCOMB_X51_Y28_N16
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (\Add2~4\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (!\Add2~4\ & VCC))
-- \Add2~7\ = CARRY((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & !\Add2~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X51_Y28_N24
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~6_combout\ & (((\LessThan1~0_combout\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \LessThan1~0_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \Add2~6_combout\,
	combout => \Add2~8_combout\);

-- Location: FF_X51_Y28_N25
\SCREEN_AREA_SHIFT_PROC:stringIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\);

-- Location: LCCOMB_X51_Y28_N18
\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (!\Add2~7\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((\Add2~7\) # (GND)))
-- \Add2~10\ = CARRY((!\Add2~7\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

-- Location: LCCOMB_X51_Y28_N30
\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (\Add2~9_combout\ & (((\LessThan1~0_combout\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \LessThan1~0_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \Add2~9_combout\,
	combout => \Add2~11_combout\);

-- Location: FF_X51_Y28_N31
\SCREEN_AREA_SHIFT_PROC:stringIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Add2~11_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\);

-- Location: LCCOMB_X51_Y28_N28
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X51_Y28_N20
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\Add2~10\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (!\Add2~10\ & VCC))
-- \Add2~13\ = CARRY((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & !\Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => VCC,
	cin => \Add2~10\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X51_Y28_N26
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add2~12_combout\ & (((\LessThan1~0_combout\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \LessThan1~0_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \Add2~12_combout\,
	combout => \Add2~14_combout\);

-- Location: FF_X51_Y28_N27
\SCREEN_AREA_SHIFT_PROC:stringIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\);

-- Location: LCCOMB_X51_Y28_N22
\Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ $ (\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	cin => \Add2~13\,
	combout => \Add2~15_combout\);

-- Location: LCCOMB_X51_Y28_N4
\Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (\Add2~15_combout\ & ((\LessThan1~0_combout\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~15_combout\,
	datab => \LessThan1~0_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	combout => \Add2~17_combout\);

-- Location: FF_X51_Y28_N5
\SCREEN_AREA_SHIFT_PROC:stringIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Add2~17_combout\,
	ena => \ALT_INV_shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\);

-- Location: LCCOMB_X51_Y28_N10
\ascii_char[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ascii_char[0]~0_combout\ = (!\shiftStateVariable~q\ & (((\LessThan1~0_combout\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftStateVariable~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \LessThan1~0_combout\,
	combout => \ascii_char[0]~0_combout\);

-- Location: LCCOMB_X50_Y28_N12
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1_combout\ = \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\ $ (VCC)
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\ = CARRY(\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\,
	datad => VCC,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\);

-- Location: FF_X50_Y28_N13
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~q\);

-- Location: LCCOMB_X50_Y28_N14
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[0]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\);

-- Location: FF_X50_Y28_N15
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~q\);

-- Location: LCCOMB_X50_Y28_N16
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[1]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\);

-- Location: FF_X50_Y28_N17
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~q\);

-- Location: LCCOMB_X50_Y28_N18
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[2]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~2\);

-- Location: FF_X50_Y28_N19
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[3]~q\);

-- Location: LCCOMB_X50_Y28_N20
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

-- Location: FF_X50_Y28_N21
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\);

-- Location: LCCOMB_X50_Y28_N22
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

-- Location: FF_X50_Y28_N23
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\);

-- Location: LCCOMB_X50_Y28_N24
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

-- Location: FF_X50_Y28_N25
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\);

-- Location: LCCOMB_X50_Y28_N26
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~2\);

-- Location: FF_X50_Y28_N27
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\);

-- Location: LCCOMB_X50_Y28_N28
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

-- Location: FF_X50_Y28_N29
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\);

-- Location: LCCOMB_X50_Y28_N30
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

-- Location: FF_X50_Y28_N31
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\);

-- Location: LCCOMB_X50_Y27_N0
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

-- Location: FF_X50_Y27_N1
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\);

-- Location: LCCOMB_X50_Y27_N2
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

-- Location: FF_X50_Y27_N3
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\);

-- Location: LCCOMB_X50_Y27_N4
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

-- Location: FF_X50_Y27_N5
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\);

-- Location: LCCOMB_X50_Y27_N6
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

-- Location: FF_X51_Y27_N1
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~1_combout\,
	sclr => \LessThan2~5_combout\,
	sload => VCC,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\);

-- Location: LCCOMB_X50_Y27_N8
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ & (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\ $ (GND))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\ & VCC))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\ = CARRY((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\);

-- Location: FF_X51_Y27_N3
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~1_combout\,
	sclr => \LessThan2~5_combout\,
	sload => VCC,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\);

-- Location: LCCOMB_X50_Y27_N10
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~2\);

-- Location: FF_X51_Y27_N29
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~1_combout\,
	sclr => \LessThan2~5_combout\,
	sload => VCC,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\);

-- Location: LCCOMB_X50_Y27_N12
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

-- Location: FF_X50_Y27_N13
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\);

-- Location: LCCOMB_X50_Y27_N14
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~2\);

-- Location: FF_X50_Y27_N15
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\);

-- Location: LCCOMB_X50_Y27_N16
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

-- Location: FF_X50_Y27_N17
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\);

-- Location: LCCOMB_X50_Y27_N18
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\) # (GND)))
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\ = CARRY((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\,
	datad => VCC,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1_combout\,
	cout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\);

-- Location: FF_X50_Y27_N19
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\);

-- Location: LCCOMB_X50_Y27_N20
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\ = \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\,
	cin => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~2\,
	combout => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\);

-- Location: FF_X50_Y27_N21
\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~1_combout\,
	sclr => \LessThan2~5_combout\,
	ena => \shiftStateVariable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\);

-- Location: LCCOMB_X50_Y28_N0
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[7]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[6]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X50_Y28_N10
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\ & \LessThan2~0_combout\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[8]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[9]~q\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X50_Y27_N22
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ((!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\ & \LessThan2~1_combout\))) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[11]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[10]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[12]~q\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X51_Y27_N12
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\ & (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\ & !\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[15]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[14]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[13]~q\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X50_Y27_N28
\LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (((\LessThan2~2_combout\ & \LessThan2~3_combout\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[16]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[17]~q\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X50_Y27_N30
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\ & ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\) # ((\SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\) # (!\LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[19]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[18]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:shiftSpeedCounter[20]~q\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X51_Y27_N18
\shiftStateVariable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shiftStateVariable~0_combout\ = (\ascii_char[0]~0_combout\) # ((\shiftStateVariable~q\ & ((!\LessThan2~5_combout\) # (!\shiftedColumnState.COL7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii_char[0]~0_combout\,
	datab => \shiftedColumnState.COL7~q\,
	datac => \shiftStateVariable~q\,
	datad => \LessThan2~5_combout\,
	combout => \shiftStateVariable~0_combout\);

-- Location: FF_X51_Y27_N19
shiftStateVariable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \shiftStateVariable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftStateVariable~q\);

-- Location: LCCOMB_X50_Y27_N24
\screenArea[7][0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][0]~3_combout\ = (\shiftStateVariable~q\ & \LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftStateVariable~q\,
	datac => \LessThan2~5_combout\,
	combout => \screenArea[7][0]~3_combout\);

-- Location: FF_X59_Y27_N1
\shiftedColumnState.COL1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \shiftedColumnState.COL1~0_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL1~q\);

-- Location: LCCOMB_X59_Y27_N22
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

-- Location: FF_X59_Y27_N23
\shiftedColumnState.COL2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \shiftedColumnState.COL2~0_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL2~q\);

-- Location: FF_X57_Y28_N9
\shiftedColumnState.COL3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL2~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL3~q\);

-- Location: LCCOMB_X59_Y27_N12
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

-- Location: FF_X59_Y27_N13
\shiftedColumnState.COL4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \shiftedColumnState.COL4~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL4~q\);

-- Location: FF_X59_Y27_N17
\shiftedColumnState.COL5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL4~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL5~q\);

-- Location: FF_X59_Y27_N15
\shiftedColumnState.COL6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL5~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL6~q\);

-- Location: FF_X59_Y27_N5
\shiftedColumnState.COL7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \shiftedColumnState.COL6~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftedColumnState.COL7~q\);

-- Location: LCCOMB_X59_Y27_N18
\Selector5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~28_combout\ = (!\shiftedColumnState.COL6~q\ & !\shiftedColumnState.COL5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shiftedColumnState.COL6~q\,
	datad => \shiftedColumnState.COL5~q\,
	combout => \Selector5~28_combout\);

-- Location: LCCOMB_X58_Y27_N14
\screenArea[6][0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][0]~4_combout\ = (!\shiftedColumnState.COL3~q\ & (!\shiftedColumnState.COL2~q\ & (!\shiftedColumnState.COL4~q\ & \Selector5~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => \shiftedColumnState.COL2~q\,
	datac => \shiftedColumnState.COL4~q\,
	datad => \Selector5~28_combout\,
	combout => \screenArea[6][0]~4_combout\);

-- Location: LCCOMB_X56_Y29_N2
\Mux57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X57_Y30_N30
\Mux53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X59_Y28_N0
\Mux57~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ (((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X59_Y28_N18
\Mux57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X59_Y28_N26
\Mux57~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\) # (\Mux57~1_combout\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\Mux57~2_combout\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \Mux57~2_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datad => \Mux57~1_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X56_Y29_N20
\Mux57~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((\Mux57~3_combout\ & ((!\Mux53~0_combout\))) # (!\Mux57~3_combout\ & (!\Mux57~0_combout\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (((!\Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datab => \Mux57~0_combout\,
	datac => \Mux53~0_combout\,
	datad => \Mux57~3_combout\,
	combout => \Mux57~4_combout\);

-- Location: FF_X56_Y29_N21
\ascii_char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Mux57~4_combout\,
	ena => \ascii_char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(1));

-- Location: LCCOMB_X52_Y29_N18
\Mux58~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & 
-- \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	combout => \Mux58~4_combout\);

-- Location: LCCOMB_X52_Y28_N30
\Mux58~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X52_Y28_N28
\Mux58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X52_Y28_N0
\Mux58~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((!\Mux58~1_combout\))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (\Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \Mux58~2_combout\,
	datad => \Mux58~1_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X52_Y29_N4
\Mux58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X56_Y29_N12
\Mux58~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~5_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\Mux58~3_combout\ & (!\Mux58~4_combout\)) # (!\Mux58~3_combout\ & ((\Mux58~0_combout\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (((!\Mux58~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \Mux58~4_combout\,
	datac => \Mux58~3_combout\,
	datad => \Mux58~0_combout\,
	combout => \Mux58~5_combout\);

-- Location: FF_X56_Y29_N13
\ascii_char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Mux58~5_combout\,
	ena => \ascii_char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(0));

-- Location: LCCOMB_X52_Y29_N22
\Mux56~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X52_Y28_N26
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

-- Location: LCCOMB_X52_Y28_N24
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

-- Location: LCCOMB_X52_Y28_N10
\Mux56~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (!\Mux56~1_combout\)) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\Mux56~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \Mux56~1_combout\,
	datad => \Mux56~2_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X52_Y29_N0
\Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & 
-- (((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X56_Y29_N28
\Mux56~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\Mux56~3_combout\ & (\Mux56~4_combout\)) # (!\Mux56~3_combout\ & ((!\Mux56~0_combout\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (((!\Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \Mux56~4_combout\,
	datac => \Mux56~3_combout\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~5_combout\);

-- Location: FF_X56_Y29_N29
\ascii_char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Mux56~5_combout\,
	ena => \ascii_char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(2));

-- Location: LCCOMB_X50_Y28_N4
\Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X50_Y28_N2
\Mux55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X50_Y28_N6
\Mux55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\Mux55~1_combout\ & ((!\Mux55~0_combout\))) # (!\Mux55~1_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((\Mux55~0_combout\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datac => \Mux55~0_combout\,
	datad => \Mux55~1_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X50_Y28_N8
\Mux55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux55~0_combout\ & (!\Mux55~1_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))) # (!\Mux55~0_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datac => \Mux55~0_combout\,
	datad => \Mux55~1_combout\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X51_Y28_N0
\Mux55~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = \Mux55~2_combout\ $ (((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & \Mux55~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \Mux55~3_combout\,
	datad => \Mux55~2_combout\,
	combout => \Mux55~4_combout\);

-- Location: FF_X56_Y29_N19
\ascii_char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \Mux55~4_combout\,
	sload => VCC,
	ena => \ascii_char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(3));

-- Location: LCCOMB_X57_Y29_N0
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (!ascii_char(2) & !ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X52_Y28_N4
\Mux53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & 
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
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X59_Y28_N12
\Mux53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & 
-- (((\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X59_Y28_N14
\Mux53~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ (!\Mux53~1_combout\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ $ (!\Mux53~1_combout\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \Mux53~1_combout\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X56_Y28_N24
\Mux53~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\Mux53~3_combout\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # ((\Mux53~2_combout\) # (\Mux53~1_combout\)))) # (!\Mux53~3_combout\ & (\Mux53~1_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ $ (\Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datab => \Mux53~2_combout\,
	datac => \Mux53~3_combout\,
	datad => \Mux53~1_combout\,
	combout => \Mux53~4_combout\);

-- Location: FF_X56_Y28_N25
\ascii_char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Mux53~4_combout\,
	ena => \ascii_char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(5));

-- Location: LCCOMB_X52_Y29_N12
\Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & 
-- ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X52_Y29_N10
\Mux54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))) 
-- # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X52_Y29_N28
\Mux54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & \Mux54~1_combout\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & ((\Mux54~1_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\)) # (!\Mux54~1_combout\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \Mux54~1_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X52_Y29_N26
\Mux54~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\Mux54~0_combout\ & ((\Mux54~2_combout\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # (!\Mux54~1_combout\)))) # (!\Mux54~0_combout\ & (!\Mux54~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Mux54~2_combout\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \Mux54~1_combout\,
	combout => \Mux54~3_combout\);

-- Location: FF_X56_Y29_N31
\ascii_char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \Mux54~3_combout\,
	sload => VCC,
	ena => \ascii_char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(4));

-- Location: LCCOMB_X55_Y28_N4
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (!ascii_char(5) & !ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(5),
	datad => ascii_char(4),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X55_Y26_N12
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (!ascii_char(1) & (!ascii_char(0) & (\Mux0~6_combout\ & \Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => \Mux0~6_combout\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X56_Y30_N18
\Mux49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (ascii_char(2) & (((!ascii_char(1)) # (!ascii_char(4))) # (!ascii_char(0)))) # (!ascii_char(2) & ((ascii_char(0)) # ((ascii_char(4)) # (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X56_Y30_N4
\Selector2~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~66_combout\ = (!ascii_char(3) & (!ascii_char(5) & !\Mux49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datad => \Mux49~0_combout\,
	combout => \Selector2~66_combout\);

-- Location: LCCOMB_X57_Y26_N8
\Selector2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~23_combout\ = (\shiftedColumnState.COL7~q\ & (((\Selector2~66_combout\)))) # (!\shiftedColumnState.COL7~q\ & (\Mux0~8_combout\ & (\screenArea[6][0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \Mux0~8_combout\,
	datac => \screenArea[6][0]~4_combout\,
	datad => \Selector2~66_combout\,
	combout => \Selector2~23_combout\);

-- Location: LCCOMB_X59_Y27_N30
\Selector2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~32_combout\ = (!\shiftedColumnState.COL4~q\ & (!\shiftedColumnState.COL6~q\ & (!\shiftedColumnState.COL3~q\ & !\shiftedColumnState.COL5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL4~q\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \shiftedColumnState.COL3~q\,
	datad => \shiftedColumnState.COL5~q\,
	combout => \Selector2~32_combout\);

-- Location: LCCOMB_X52_Y28_N12
\Mux52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\) # (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & 
-- (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X52_Y28_N18
\Mux52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))) # 
-- (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & ((\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X52_Y28_N14
\Mux52~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (((\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\) # (\Mux52~1_combout\)))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\ & (\Mux52~2_combout\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~2_combout\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[3]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datad => \Mux52~1_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X59_Y28_N4
\Mux52~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\) # ((!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ $ (!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X59_Y28_N2
\Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\ $ (((!\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\))))) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\ & 
-- (\SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\ & (!\SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\ & !\SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCREEN_AREA_SHIFT_PROC:stringIndex[2]~q\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[1]~q\,
	datac => \SCREEN_AREA_SHIFT_PROC:stringIndex[0]~q\,
	datad => \SCREEN_AREA_SHIFT_PROC:stringIndex[5]~q\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X56_Y28_N30
\Mux52~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~5_combout\ = (\Mux52~3_combout\ & (\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\ & (\Mux52~4_combout\))) # (!\Mux52~3_combout\ & (((\Mux52~0_combout\)) # (!\SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \SCREEN_AREA_SHIFT_PROC:stringIndex[4]~q\,
	datac => \Mux52~4_combout\,
	datad => \Mux52~0_combout\,
	combout => \Mux52~5_combout\);

-- Location: FF_X56_Y28_N31
\ascii_char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Mux52~5_combout\,
	ena => \ascii_char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ascii_char(6));

-- Location: LCCOMB_X56_Y28_N12
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

-- Location: LCCOMB_X59_Y26_N6
\Selector2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~40_combout\ = (ascii_char(1) & (ascii_char(2) $ (((!ascii_char(0) & !ascii_char(3)))))) # (!ascii_char(1) & (ascii_char(0) & (!ascii_char(2) & !ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector2~40_combout\);

-- Location: LCCOMB_X59_Y26_N26
\Selector2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~36_combout\ = (ascii_char(3) & (!ascii_char(1) & (ascii_char(0) & ascii_char(2)))) # (!ascii_char(3) & ((ascii_char(0) & ((!ascii_char(2)))) # (!ascii_char(0) & ((ascii_char(1)) # (ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector2~36_combout\);

-- Location: LCCOMB_X59_Y26_N8
\Selector2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~37_combout\ = (ascii_char(2) & (((ascii_char(1) & !ascii_char(0))) # (!ascii_char(3)))) # (!ascii_char(2) & ((ascii_char(1) & (!ascii_char(0) & !ascii_char(3))) # (!ascii_char(1) & (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector2~37_combout\);

-- Location: LCCOMB_X59_Y26_N10
\Selector2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~38_combout\ = (ascii_char(2) & ((ascii_char(1) $ (!ascii_char(0))) # (!ascii_char(3)))) # (!ascii_char(2) & (((ascii_char(3)) # (!ascii_char(0))) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector2~38_combout\);

-- Location: LCCOMB_X59_Y26_N20
\Selector2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~39_combout\ = (ascii_char(4) & (!ascii_char(5) & ((\Selector2~38_combout\)))) # (!ascii_char(4) & ((ascii_char(5)) # ((\Selector2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Selector2~37_combout\,
	datad => \Selector2~38_combout\,
	combout => \Selector2~39_combout\);

-- Location: LCCOMB_X59_Y26_N12
\Selector2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~41_combout\ = (ascii_char(5) & ((\Selector2~39_combout\ & (\Selector2~40_combout\)) # (!\Selector2~39_combout\ & ((\Selector2~36_combout\))))) # (!ascii_char(5) & (((\Selector2~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~40_combout\,
	datab => ascii_char(5),
	datac => \Selector2~36_combout\,
	datad => \Selector2~39_combout\,
	combout => \Selector2~41_combout\);

-- Location: LCCOMB_X57_Y29_N6
\Selector2~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~71_combout\ = (!ascii_char(2) & (!ascii_char(1) & ascii_char(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector2~71_combout\);

-- Location: LCCOMB_X56_Y29_N6
\Selector2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~22_combout\ = (ascii_char(4) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector2~22_combout\);

-- Location: LCCOMB_X57_Y29_N20
\Selector2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~33_combout\ = (ascii_char(0) & ((ascii_char(1) $ (!ascii_char(3))) # (!ascii_char(4)))) # (!ascii_char(0) & (ascii_char(3) & ((ascii_char(4)) # (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector2~33_combout\);

-- Location: LCCOMB_X57_Y29_N2
\Selector2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~34_combout\ = (\Selector2~71_combout\ & ((\Selector2~22_combout\) # ((ascii_char(2) & \Selector2~33_combout\)))) # (!\Selector2~71_combout\ & (ascii_char(2) & ((\Selector2~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~71_combout\,
	datab => ascii_char(2),
	datac => \Selector2~22_combout\,
	datad => \Selector2~33_combout\,
	combout => \Selector2~34_combout\);

-- Location: LCCOMB_X57_Y29_N16
\Selector2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~35_combout\ = (!\Add0~0_combout\ & ((\Selector2~34_combout\) # ((!ascii_char(4) & \Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Mux0~6_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector2~34_combout\,
	combout => \Selector2~35_combout\);

-- Location: LCCOMB_X58_Y26_N30
\Selector2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~42_combout\ = (\Selector2~32_combout\ & ((\Selector2~35_combout\) # ((\Add0~0_combout\ & \Selector2~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~32_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector2~41_combout\,
	datad => \Selector2~35_combout\,
	combout => \Selector2~42_combout\);

-- Location: LCCOMB_X56_Y29_N8
\Selector6~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~69_combout\ = ascii_char(0) $ (ascii_char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector6~69_combout\);

-- Location: LCCOMB_X55_Y26_N20
\Selector6~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~89_combout\ = (!ascii_char(4) & ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector6~89_combout\);

-- Location: LCCOMB_X55_Y26_N2
\Selector2~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~69_combout\ = (\Selector6~89_combout\ & ((ascii_char(3) & ((ascii_char(1)) # (ascii_char(0)))) # (!ascii_char(3) & ((!ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => \Selector6~89_combout\,
	combout => \Selector2~69_combout\);

-- Location: LCCOMB_X55_Y26_N10
\Selector2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~30_combout\ = (\Selector2~69_combout\) # ((\Mux0~6_combout\ & ((!ascii_char(4)) # (!\Selector6~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~69_combout\,
	datab => ascii_char(4),
	datac => \Mux0~6_combout\,
	datad => \Selector2~69_combout\,
	combout => \Selector2~30_combout\);

-- Location: LCCOMB_X54_Y26_N6
\Selector2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~28_combout\ = (ascii_char(2) & ((ascii_char(1) & ((ascii_char(0)) # (ascii_char(3)))) # (!ascii_char(1) & ((!ascii_char(3)))))) # (!ascii_char(2) & (!ascii_char(1) & (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector2~28_combout\);

-- Location: LCCOMB_X54_Y26_N22
\Selector2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~24_combout\ = (ascii_char(2) & (!ascii_char(1) & (ascii_char(0) $ (!ascii_char(3))))) # (!ascii_char(2) & (!ascii_char(3) & ((ascii_char(1)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector2~24_combout\);

-- Location: LCCOMB_X54_Y26_N14
\Selector2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~26_combout\ = (ascii_char(2) & (ascii_char(0) $ (((!ascii_char(3) & ascii_char(1)))))) # (!ascii_char(2) & (ascii_char(3) $ (((ascii_char(0) & ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector2~26_combout\);

-- Location: LCCOMB_X54_Y26_N20
\Selector2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~25_combout\ = (ascii_char(0) & ((ascii_char(2) & (!ascii_char(3))) # (!ascii_char(2) & ((!ascii_char(1)))))) # (!ascii_char(0) & (ascii_char(1) & ((ascii_char(2)) # (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector2~25_combout\);

-- Location: LCCOMB_X54_Y26_N16
\Selector2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~27_combout\ = (ascii_char(5) & (!ascii_char(4))) # (!ascii_char(5) & ((ascii_char(4) & (\Selector2~26_combout\)) # (!ascii_char(4) & ((\Selector2~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => \Selector2~26_combout\,
	datad => \Selector2~25_combout\,
	combout => \Selector2~27_combout\);

-- Location: LCCOMB_X54_Y26_N12
\Selector2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~29_combout\ = (ascii_char(5) & ((\Selector2~27_combout\ & (\Selector2~28_combout\)) # (!\Selector2~27_combout\ & ((\Selector2~24_combout\))))) # (!ascii_char(5) & (((\Selector2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~28_combout\,
	datab => ascii_char(5),
	datac => \Selector2~24_combout\,
	datad => \Selector2~27_combout\,
	combout => \Selector2~29_combout\);

-- Location: LCCOMB_X54_Y26_N10
\Selector2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~31_combout\ = (\shiftedColumnState.COL6~q\ & ((\Add0~0_combout\ & ((\Selector2~29_combout\))) # (!\Add0~0_combout\ & (\Selector2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \Selector2~30_combout\,
	datad => \Selector2~29_combout\,
	combout => \Selector2~31_combout\);

-- Location: LCCOMB_X59_Y27_N4
\Selector4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~34_combout\ = (\shiftedColumnState.COL4~q\ & (!\shiftedColumnState.COL6~q\ & !\shiftedColumnState.COL5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL4~q\,
	datac => \shiftedColumnState.COL6~q\,
	datad => \shiftedColumnState.COL5~q\,
	combout => \Selector4~34_combout\);

-- Location: LCCOMB_X56_Y30_N26
\Selector2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~17_combout\ = (ascii_char(2) & (((ascii_char(4))) # (!ascii_char(3)))) # (!ascii_char(2) & ((ascii_char(0)) # (ascii_char(3) $ (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Selector2~17_combout\);

-- Location: LCCOMB_X56_Y30_N24
\Selector2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~16_combout\ = (ascii_char(3) & ((ascii_char(2) $ (ascii_char(4))))) # (!ascii_char(3) & ((ascii_char(2)) # ((!ascii_char(0) & ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Selector2~16_combout\);

-- Location: LCCOMB_X56_Y30_N12
\Selector2~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~70_combout\ = (ascii_char(1) & (\Selector2~17_combout\)) # (!ascii_char(1) & ((\Selector2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datac => \Selector2~17_combout\,
	datad => \Selector2~16_combout\,
	combout => \Selector2~70_combout\);

-- Location: LCCOMB_X57_Y30_N18
\Selector2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~56_combout\ = (\Selector4~34_combout\ & (\Selector2~70_combout\ & (ascii_char(5) $ (ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(6),
	datac => \Selector4~34_combout\,
	datad => \Selector2~70_combout\,
	combout => \Selector2~56_combout\);

-- Location: LCCOMB_X59_Y27_N24
\Selector2~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~68_combout\ = (\shiftedColumnState.COL4~q\ & (\Selector5~28_combout\ & (ascii_char(5) $ (!ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL4~q\,
	datab => \Selector5~28_combout\,
	datac => ascii_char(5),
	datad => ascii_char(6),
	combout => \Selector2~68_combout\);

-- Location: LCCOMB_X57_Y30_N6
\Selector4~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~33_combout\ = (!ascii_char(2) & (ascii_char(1) & ascii_char(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector4~33_combout\);

-- Location: LCCOMB_X57_Y30_N4
\Selector2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~57_combout\ = (\Selector4~33_combout\ & ((ascii_char(3) & (!ascii_char(5) & !ascii_char(0))) # (!ascii_char(3) & (ascii_char(5) & ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datac => ascii_char(0),
	datad => \Selector4~33_combout\,
	combout => \Selector2~57_combout\);

-- Location: LCCOMB_X56_Y25_N2
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (ascii_char(2) & ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datad => ascii_char(4),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X58_Y26_N24
\Selector2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~61_combout\ = (ascii_char(5) & (!ascii_char(1) & ((ascii_char(3)) # (!ascii_char(0))))) # (!ascii_char(5) & (!ascii_char(0) & ((ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(5),
	combout => \Selector2~61_combout\);

-- Location: LCCOMB_X55_Y26_N26
\Selector2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~59_combout\ = (ascii_char(5) & ((ascii_char(3) & (!ascii_char(1) & ascii_char(0))) # (!ascii_char(3) & (ascii_char(1) & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector2~59_combout\);

-- Location: LCCOMB_X55_Y26_N4
\Selector2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~58_combout\ = (!ascii_char(2) & ((ascii_char(1) & (ascii_char(3) $ (ascii_char(0)))) # (!ascii_char(1) & (!ascii_char(3) & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector2~58_combout\);

-- Location: LCCOMB_X55_Y26_N16
\Selector2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~60_combout\ = (\Selector2~59_combout\ & ((\Selector6~89_combout\) # ((\Selector2~58_combout\ & \Mux0~7_combout\)))) # (!\Selector2~59_combout\ & (((\Selector2~58_combout\ & \Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~59_combout\,
	datab => \Selector6~89_combout\,
	datac => \Selector2~58_combout\,
	datad => \Mux0~7_combout\,
	combout => \Selector2~60_combout\);

-- Location: LCCOMB_X58_Y26_N22
\Selector2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~62_combout\ = (\Selector2~57_combout\) # ((\Selector2~60_combout\) # ((\Mux4~0_combout\ & \Selector2~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~57_combout\,
	datab => \Mux4~0_combout\,
	datac => \Selector2~61_combout\,
	datad => \Selector2~60_combout\,
	combout => \Selector2~62_combout\);

-- Location: LCCOMB_X58_Y26_N0
\Selector2~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~72_combout\ = (ascii_char(4) & ((ascii_char(1) & (!ascii_char(5) & !ascii_char(3))) # (!ascii_char(1) & (ascii_char(5) $ (ascii_char(3)))))) # (!ascii_char(4) & ((ascii_char(1) & (ascii_char(5) $ (ascii_char(3)))) # (!ascii_char(1) & 
-- (ascii_char(5) & ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => ascii_char(3),
	combout => \Selector2~72_combout\);

-- Location: LCCOMB_X58_Y26_N2
\Selector2~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~73_combout\ = (\Selector2~72_combout\ & ((ascii_char(2) & (ascii_char(5) $ (!ascii_char(4)))) # (!ascii_char(2) & ((!ascii_char(4)) # (!ascii_char(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => \Selector2~72_combout\,
	combout => \Selector2~73_combout\);

-- Location: LCCOMB_X58_Y26_N4
\Selector2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~52_combout\ = (ascii_char(4) & (((!ascii_char(2) & !ascii_char(3))))) # (!ascii_char(4) & (ascii_char(1) $ (((ascii_char(2) & ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector2~52_combout\);

-- Location: LCCOMB_X58_Y26_N6
\Selector2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~51_combout\ = (ascii_char(2) & (((ascii_char(4) & ascii_char(1))) # (!ascii_char(3)))) # (!ascii_char(2) & (ascii_char(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector2~51_combout\);

-- Location: LCCOMB_X58_Y26_N14
\Selector2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~53_combout\ = (ascii_char(0) & (!\Add0~0_combout\ & (\Selector2~52_combout\))) # (!ascii_char(0) & ((\Add0~0_combout\) # ((\Selector2~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \Add0~0_combout\,
	datac => \Selector2~52_combout\,
	datad => \Selector2~51_combout\,
	combout => \Selector2~53_combout\);

-- Location: LCCOMB_X57_Y27_N20
\Selector6~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~39_combout\ = (ascii_char(4) & (ascii_char(5) & (ascii_char(3) $ (!ascii_char(1))))) # (!ascii_char(4) & (!ascii_char(5) & (ascii_char(3) & !ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector6~39_combout\);

-- Location: LCCOMB_X57_Y27_N30
\Selector6~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~97_combout\ = (ascii_char(2) & \Selector6~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => \Selector6~39_combout\,
	combout => \Selector6~97_combout\);

-- Location: LCCOMB_X58_Y26_N16
\Selector2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~54_combout\ = (\Add0~0_combout\ & ((\Selector2~53_combout\ & ((\Selector6~97_combout\))) # (!\Selector2~53_combout\ & (\Selector2~73_combout\)))) # (!\Add0~0_combout\ & (((\Selector2~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector2~73_combout\,
	datac => \Selector2~53_combout\,
	datad => \Selector6~97_combout\,
	combout => \Selector2~54_combout\);

-- Location: LCCOMB_X58_Y26_N10
\Selector2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~55_combout\ = (\shiftedColumnState.COL3~q\ & (!\shiftedColumnState.COL4~q\ & (\Selector5~28_combout\ & \Selector2~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => \shiftedColumnState.COL4~q\,
	datac => \Selector5~28_combout\,
	datad => \Selector2~54_combout\,
	combout => \Selector2~55_combout\);

-- Location: LCCOMB_X58_Y26_N8
\Selector2~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~63_combout\ = (\Selector2~56_combout\) # ((\Selector2~55_combout\) # ((\Selector2~68_combout\ & \Selector2~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~56_combout\,
	datab => \Selector2~68_combout\,
	datac => \Selector2~62_combout\,
	datad => \Selector2~55_combout\,
	combout => \Selector2~63_combout\);

-- Location: LCCOMB_X58_Y26_N12
\Selector2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~45_combout\ = (ascii_char(1) & (!ascii_char(3) & ((ascii_char(2)) # (ascii_char(0))))) # (!ascii_char(1) & (((ascii_char(0)) # (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector2~45_combout\);

-- Location: LCCOMB_X58_Y26_N20
\Selector6~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~90_combout\ = (!ascii_char(2) & !ascii_char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector6~90_combout\);

-- Location: LCCOMB_X58_Y26_N26
\Selector2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~46_combout\ = (\Selector2~45_combout\ & (!\Selector6~90_combout\ & (!ascii_char(4) & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~45_combout\,
	datab => \Selector6~90_combout\,
	datac => ascii_char(4),
	datad => \Add0~0_combout\,
	combout => \Selector2~46_combout\);

-- Location: LCCOMB_X59_Y27_N14
\Selector5~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~29_combout\ = (!\shiftedColumnState.COL6~q\ & \shiftedColumnState.COL5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shiftedColumnState.COL6~q\,
	datad => \shiftedColumnState.COL5~q\,
	combout => \Selector5~29_combout\);

-- Location: LCCOMB_X56_Y25_N8
\Selector4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~38_combout\ = (ascii_char(6) & ascii_char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(6),
	datad => ascii_char(5),
	combout => \Selector4~38_combout\);

-- Location: LCCOMB_X57_Y27_N26
\Selector2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~48_combout\ = (ascii_char(1) & (ascii_char(3) & (ascii_char(0) & ascii_char(2)))) # (!ascii_char(1) & (ascii_char(3) $ (((ascii_char(0)) # (ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector2~48_combout\);

-- Location: LCCOMB_X58_Y27_N20
\Selector2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~21_combout\ = (!ascii_char(4) & ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(0),
	combout => \Selector2~21_combout\);

-- Location: LCCOMB_X58_Y27_N8
\Selector3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~12_combout\ = (ascii_char(2) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector3~12_combout\);

-- Location: LCCOMB_X58_Y27_N28
\Selector2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~47_combout\ = (\Selector2~21_combout\ & (\Selector4~38_combout\ & (ascii_char(1) $ (\Selector3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => \Selector2~21_combout\,
	datac => \Selector3~12_combout\,
	datad => \Selector4~38_combout\,
	combout => \Selector2~47_combout\);

-- Location: LCCOMB_X58_Y27_N30
\Selector2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~49_combout\ = (\Selector2~47_combout\) # ((\Selector4~38_combout\ & (ascii_char(4) & \Selector2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~38_combout\,
	datab => ascii_char(4),
	datac => \Selector2~48_combout\,
	datad => \Selector2~47_combout\,
	combout => \Selector2~49_combout\);

-- Location: LCCOMB_X57_Y27_N0
\Selector2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~43_combout\ = (ascii_char(1) & (ascii_char(0) $ (((!ascii_char(2)) # (!ascii_char(3)))))) # (!ascii_char(1) & ((ascii_char(3)) # ((ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector2~43_combout\);

-- Location: LCCOMB_X58_Y27_N2
\Selector2~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~67_combout\ = (!ascii_char(5) & (!ascii_char(6) & (\Selector3~12_combout\ & \Selector2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(6),
	datac => \Selector3~12_combout\,
	datad => \Selector2~21_combout\,
	combout => \Selector2~67_combout\);

-- Location: LCCOMB_X58_Y27_N10
\Selector2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~44_combout\ = (\Selector2~67_combout\) # ((!\Add0~0_combout\ & (ascii_char(4) & \Selector2~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector2~43_combout\,
	datad => \Selector2~67_combout\,
	combout => \Selector2~44_combout\);

-- Location: LCCOMB_X58_Y26_N28
\Selector2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~50_combout\ = (\Selector5~29_combout\ & ((\Selector2~46_combout\) # ((\Selector2~49_combout\) # (\Selector2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~46_combout\,
	datab => \Selector5~29_combout\,
	datac => \Selector2~49_combout\,
	datad => \Selector2~44_combout\,
	combout => \Selector2~50_combout\);

-- Location: LCCOMB_X58_Y26_N18
\Selector2~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~64_combout\ = (\Selector2~42_combout\) # ((\Selector2~31_combout\) # ((\Selector2~63_combout\) # (\Selector2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~42_combout\,
	datab => \Selector2~31_combout\,
	datac => \Selector2~63_combout\,
	datad => \Selector2~50_combout\,
	combout => \Selector2~64_combout\);

-- Location: LCCOMB_X57_Y26_N26
\Selector2~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~65_combout\ = (\Selector2~23_combout\) # ((!\shiftedColumnState.COL7~q\ & (!\screenArea[6][0]~4_combout\ & \Selector2~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \screenArea[6][0]~4_combout\,
	datac => \Selector2~23_combout\,
	datad => \Selector2~64_combout\,
	combout => \Selector2~65_combout\);

-- Location: FF_X57_Y26_N27
\screenArea[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Selector2~65_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][0]~q\);

-- Location: LCCOMB_X51_Y26_N22
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

-- Location: FF_X51_Y26_N23
\screenArea[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][1]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][1]~q\);

-- Location: FF_X51_Y26_N27
\screenArea[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][1]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][2]~q\);

-- Location: FF_X51_Y26_N3
\screenArea[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][2]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][3]~q\);

-- Location: FF_X50_Y26_N15
\screenArea[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][3]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][4]~q\);

-- Location: FF_X50_Y26_N19
\screenArea[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][4]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][5]~q\);

-- Location: LCCOMB_X51_Y25_N12
\screenArea[2][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][6]~feeder_combout\ = \screenArea[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][5]~q\,
	combout => \screenArea[2][6]~feeder_combout\);

-- Location: FF_X51_Y25_N13
\screenArea[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][6]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][6]~q\);

-- Location: LCCOMB_X51_Y25_N22
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

-- Location: FF_X51_Y25_N23
\screenArea[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][7]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][7]~q\);

-- Location: FF_X51_Y24_N31
\screenArea[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][7]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][8]~q\);

-- Location: FF_X50_Y23_N5
\screenArea[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][8]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][9]~q\);

-- Location: FF_X50_Y23_N19
\screenArea[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][9]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][10]~q\);

-- Location: FF_X46_Y25_N9
\screenArea[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][10]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][11]~q\);

-- Location: FF_X46_Y25_N11
\screenArea[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][11]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][12]~q\);

-- Location: LCCOMB_X49_Y25_N30
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

-- Location: FF_X49_Y25_N31
\screenArea[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][13]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][13]~q\);

-- Location: LCCOMB_X49_Y25_N4
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

-- Location: FF_X49_Y25_N5
\screenArea[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][14]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][14]~q\);

-- Location: LCCOMB_X49_Y25_N20
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

-- Location: FF_X49_Y25_N21
\screenArea[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][15]~q\);

-- Location: FF_X50_Y25_N11
\screenArea[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][15]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][16]~q\);

-- Location: LCCOMB_X47_Y25_N14
\screenArea[2][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][17]~feeder_combout\ = \screenArea[2][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][16]~q\,
	combout => \screenArea[2][17]~feeder_combout\);

-- Location: FF_X47_Y25_N15
\screenArea[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][17]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][17]~q\);

-- Location: FF_X47_Y25_N19
\screenArea[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][17]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][18]~q\);

-- Location: FF_X46_Y27_N9
\screenArea[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][18]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][19]~q\);

-- Location: LCCOMB_X46_Y27_N20
\screenArea[2][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][20]~feeder_combout\ = \screenArea[2][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][19]~q\,
	combout => \screenArea[2][20]~feeder_combout\);

-- Location: FF_X46_Y27_N21
\screenArea[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][20]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][20]~q\);

-- Location: LCCOMB_X49_Y24_N10
\screenArea[2][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][21]~feeder_combout\ = \screenArea[2][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][20]~q\,
	combout => \screenArea[2][21]~feeder_combout\);

-- Location: FF_X49_Y24_N11
\screenArea[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][21]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][21]~q\);

-- Location: LCCOMB_X49_Y24_N12
\screenArea[2][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][22]~feeder_combout\ = \screenArea[2][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[2][21]~q\,
	combout => \screenArea[2][22]~feeder_combout\);

-- Location: FF_X49_Y24_N13
\screenArea[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][22]~q\);

-- Location: LCCOMB_X49_Y23_N4
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

-- Location: FF_X49_Y23_N5
\screenArea[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][23]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][23]~q\);

-- Location: FF_X49_Y23_N29
\screenArea[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][23]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][24]~q\);

-- Location: LCCOMB_X45_Y26_N22
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

-- Location: FF_X45_Y26_N23
\screenArea[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][25]~q\);

-- Location: FF_X45_Y26_N13
\screenArea[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][25]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][26]~q\);

-- Location: FF_X47_Y26_N11
\screenArea[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][26]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][27]~q\);

-- Location: LCCOMB_X47_Y26_N14
\screenArea[2][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[2][28]~feeder_combout\ = \screenArea[2][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[2][27]~q\,
	combout => \screenArea[2][28]~feeder_combout\);

-- Location: FF_X47_Y26_N15
\screenArea[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[2][28]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][28]~q\);

-- Location: LCCOMB_X57_Y28_N26
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!ascii_char(5) & !ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(5),
	datad => ascii_char(3),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X56_Y27_N22
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (ascii_char(0) & (ascii_char(1) & (\Mux4~1_combout\ & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => \Mux4~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X59_Y26_N14
\Selector5~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~43_combout\ = (ascii_char(2) & (ascii_char(1) & (!ascii_char(0)))) # (!ascii_char(2) & (!ascii_char(3) & ((!ascii_char(0)) # (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector5~43_combout\);

-- Location: LCCOMB_X59_Y26_N16
\Selector5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~42_combout\ = ascii_char(2) $ (((ascii_char(1) & (ascii_char(0) $ (ascii_char(3)))) # (!ascii_char(1) & ((ascii_char(3)) # (!ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector5~42_combout\);

-- Location: LCCOMB_X59_Y26_N28
\Selector5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~44_combout\ = (!\Add0~0_combout\ & ((ascii_char(4) & ((\Selector5~42_combout\))) # (!ascii_char(4) & (\Selector5~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Selector5~43_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector5~42_combout\,
	combout => \Selector5~44_combout\);

-- Location: LCCOMB_X59_Y28_N30
\Selector5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~40_combout\ = (ascii_char(2) & (ascii_char(0) & ((!ascii_char(1)) # (!ascii_char(5))))) # (!ascii_char(2) & (!ascii_char(5) & ((!ascii_char(1)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(5),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector5~40_combout\);

-- Location: LCCOMB_X57_Y25_N18
\Selector4~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~31_combout\ = (ascii_char(3) & (ascii_char(1) & ((ascii_char(2))))) # (!ascii_char(3) & (ascii_char(1) $ (ascii_char(0) $ (ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector4~31_combout\);

-- Location: LCCOMB_X57_Y25_N4
\Selector4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~32_combout\ = (!ascii_char(4) & \Selector4~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => \Selector4~31_combout\,
	combout => \Selector4~32_combout\);

-- Location: LCCOMB_X57_Y25_N10
\Selector5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~38_combout\ = (ascii_char(1) & ((ascii_char(2) & ((ascii_char(5)))) # (!ascii_char(2) & (!ascii_char(0))))) # (!ascii_char(1) & (ascii_char(0) $ (ascii_char(5) $ (ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(5),
	datad => ascii_char(2),
	combout => \Selector5~38_combout\);

-- Location: LCCOMB_X57_Y25_N12
\Selector5~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~70_combout\ = (ascii_char(4) & (((!\Selector5~38_combout\)))) # (!ascii_char(4) & (!ascii_char(0) & (!ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(5),
	datad => \Selector5~38_combout\,
	combout => \Selector5~70_combout\);

-- Location: LCCOMB_X57_Y25_N16
\Selector5~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~39_combout\ = (ascii_char(5) & ((\Selector4~32_combout\) # ((!ascii_char(3) & \Selector5~70_combout\)))) # (!ascii_char(5) & (!ascii_char(3) & ((\Selector5~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(3),
	datac => \Selector4~32_combout\,
	datad => \Selector5~70_combout\,
	combout => \Selector5~39_combout\);

-- Location: LCCOMB_X58_Y28_N24
\Selector5~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~41_combout\ = (\Add0~0_combout\ & ((\Selector5~39_combout\) # ((\Selector5~40_combout\ & \Selector2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~40_combout\,
	datab => \Selector2~22_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector5~39_combout\,
	combout => \Selector5~41_combout\);

-- Location: LCCOMB_X58_Y28_N14
\Selector5~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~45_combout\ = (\shiftedColumnState.COL6~q\ & ((\Selector5~44_combout\) # (\Selector5~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datac => \Selector5~44_combout\,
	datad => \Selector5~41_combout\,
	combout => \Selector5~45_combout\);

-- Location: LCCOMB_X59_Y28_N22
\Selector5~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~31_combout\ = (ascii_char(3) & (!ascii_char(1) & (!ascii_char(2) & ascii_char(0)))) # (!ascii_char(3) & (ascii_char(2) & ((ascii_char(1)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector5~31_combout\);

-- Location: LCCOMB_X59_Y28_N24
\Selector5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~30_combout\ = (ascii_char(3) & (!ascii_char(1) & (ascii_char(2) & ascii_char(0)))) # (!ascii_char(3) & (((!ascii_char(2) & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector5~30_combout\);

-- Location: LCCOMB_X59_Y28_N8
\Selector5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~32_combout\ = (!\Add0~0_combout\ & ((ascii_char(4) & ((\Selector5~30_combout\))) # (!ascii_char(4) & (\Selector5~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Add0~0_combout\,
	datac => \Selector5~31_combout\,
	datad => \Selector5~30_combout\,
	combout => \Selector5~32_combout\);

-- Location: LCCOMB_X57_Y25_N14
\Selector5~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~35_combout\ = (ascii_char(1) & (((!ascii_char(4) & ascii_char(3))))) # (!ascii_char(1) & (!ascii_char(2) & (ascii_char(4) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector5~35_combout\);

-- Location: LCCOMB_X57_Y25_N6
\Selector5~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~33_combout\ = (ascii_char(1) & (!ascii_char(2) & (ascii_char(0) $ (ascii_char(3))))) # (!ascii_char(1) & (ascii_char(0) & (ascii_char(2) & ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector5~33_combout\);

-- Location: LCCOMB_X57_Y25_N2
\Selector5~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~69_combout\ = (\Mux4~0_combout\ & ((ascii_char(1) & (ascii_char(3) & ascii_char(0))) # (!ascii_char(1) & (!ascii_char(3) & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => \Mux4~0_combout\,
	combout => \Selector5~69_combout\);

-- Location: LCCOMB_X57_Y25_N28
\Selector5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~34_combout\ = (ascii_char(5) & ((\Selector5~69_combout\) # ((!ascii_char(4) & \Selector5~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => \Selector5~33_combout\,
	datad => \Selector5~69_combout\,
	combout => \Selector5~34_combout\);

-- Location: LCCOMB_X57_Y25_N20
\Selector5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~36_combout\ = (\Selector5~34_combout\) # ((!ascii_char(5) & (\Selector5~35_combout\ & ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector5~35_combout\,
	datac => ascii_char(0),
	datad => \Selector5~34_combout\,
	combout => \Selector5~36_combout\);

-- Location: LCCOMB_X58_Y28_N30
\Selector5~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~37_combout\ = (\Selector5~29_combout\ & ((\Selector5~32_combout\) # ((\Add0~0_combout\ & \Selector5~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~29_combout\,
	datab => \Selector5~32_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector5~36_combout\,
	combout => \Selector5~37_combout\);

-- Location: LCCOMB_X57_Y25_N24
\Selector6~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~68_combout\ = (!ascii_char(2) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector6~68_combout\);

-- Location: LCCOMB_X57_Y25_N0
\Selector5~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~74_combout\ = (ascii_char(5) & (ascii_char(2) & ((ascii_char(3)) # (!ascii_char(0))))) # (!ascii_char(5) & (ascii_char(0) $ (((ascii_char(3)) # (!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector5~74_combout\);

-- Location: LCCOMB_X57_Y25_N30
\Selector5~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~75_combout\ = (\Selector5~74_combout\ & (ascii_char(1) $ (ascii_char(3) $ (!ascii_char(5))))) # (!\Selector5~74_combout\ & (ascii_char(1) & (!ascii_char(3) & !ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(5),
	datad => \Selector5~74_combout\,
	combout => \Selector5~75_combout\);

-- Location: LCCOMB_X57_Y29_N14
\Selector3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~14_combout\ = (!ascii_char(4) & (ascii_char(5) $ (!ascii_char(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(4),
	datac => ascii_char(5),
	datad => ascii_char(6),
	combout => \Selector3~14_combout\);

-- Location: LCCOMB_X57_Y25_N22
\Selector5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~56_combout\ = (\Selector3~14_combout\ & ((\Selector5~75_combout\) # ((ascii_char(5) & \Selector6~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector6~68_combout\,
	datac => \Selector5~75_combout\,
	datad => \Selector3~14_combout\,
	combout => \Selector5~56_combout\);

-- Location: LCCOMB_X55_Y30_N12
\Selector5~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~61_combout\ = (ascii_char(0) & (ascii_char(2) $ (((ascii_char(1)) # (!ascii_char(3)))))) # (!ascii_char(0) & (((ascii_char(2) & !ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector5~61_combout\);

-- Location: LCCOMB_X55_Y30_N18
\Selector6~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~88_combout\ = (ascii_char(3) & !ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector6~88_combout\);

-- Location: LCCOMB_X55_Y30_N28
\Selector5~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~62_combout\ = (ascii_char(5) & (\Selector5~61_combout\)) # (!ascii_char(5) & (((ascii_char(2) & \Selector6~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~61_combout\,
	datab => ascii_char(5),
	datac => ascii_char(2),
	datad => \Selector6~88_combout\,
	combout => \Selector5~62_combout\);

-- Location: LCCOMB_X57_Y30_N20
\Selector5~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~59_combout\ = (ascii_char(1) & ((ascii_char(3) & ((ascii_char(0)) # (!ascii_char(2)))) # (!ascii_char(3) & ((ascii_char(2)))))) # (!ascii_char(1) & (((ascii_char(3) & ascii_char(2))) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector5~59_combout\);

-- Location: LCCOMB_X59_Y28_N16
\Selector5~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~57_combout\ = ascii_char(3) $ (((ascii_char(1) & (ascii_char(0))) # (!ascii_char(1) & ((!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector5~57_combout\);

-- Location: LCCOMB_X58_Y28_N6
\Selector5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~58_combout\ = (\Selector5~57_combout\ & (ascii_char(4) & (!ascii_char(0)))) # (!\Selector5~57_combout\ & (((\Selector4~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => \Selector4~33_combout\,
	datad => \Selector5~57_combout\,
	combout => \Selector5~58_combout\);

-- Location: LCCOMB_X58_Y28_N8
\Selector5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~60_combout\ = (!\Add0~0_combout\ & ((\Selector5~58_combout\) # ((!ascii_char(4) & \Selector5~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Add0~0_combout\,
	datac => \Selector5~59_combout\,
	datad => \Selector5~58_combout\,
	combout => \Selector5~60_combout\);

-- Location: LCCOMB_X58_Y28_N26
\Selector5~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~63_combout\ = (\Selector5~60_combout\) # ((\Selector5~62_combout\ & (\Add0~0_combout\ & ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~62_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector5~60_combout\,
	datad => ascii_char(4),
	combout => \Selector5~63_combout\);

-- Location: LCCOMB_X58_Y29_N16
\Selector5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~15_combout\ = (ascii_char(3) & (ascii_char(5) & (ascii_char(0) $ (ascii_char(2))))) # (!ascii_char(3) & ((ascii_char(0) & ((!ascii_char(5)))) # (!ascii_char(0) & (!ascii_char(2) & ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(5),
	combout => \Selector5~15_combout\);

-- Location: LCCOMB_X58_Y29_N4
\Selector5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~12_combout\ = (!ascii_char(0) & (ascii_char(5) & (ascii_char(2) $ (ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(5),
	combout => \Selector5~12_combout\);

-- Location: LCCOMB_X58_Y29_N2
\Selector5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~11_combout\ = (ascii_char(2) & (ascii_char(3) $ (((ascii_char(0) & ascii_char(5)))))) # (!ascii_char(2) & (!ascii_char(3) & (ascii_char(0) $ (ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(5),
	combout => \Selector5~11_combout\);

-- Location: LCCOMB_X58_Y29_N8
\Selector5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~24_combout\ = (ascii_char(1) & (ascii_char(4))) # (!ascii_char(1) & ((ascii_char(4) & (\Selector5~12_combout\)) # (!ascii_char(4) & ((\Selector5~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => \Selector5~12_combout\,
	datad => \Selector5~11_combout\,
	combout => \Selector5~24_combout\);

-- Location: LCCOMB_X58_Y29_N6
\Selector5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~14_combout\ = (ascii_char(0) & (ascii_char(2) & (ascii_char(3) $ (ascii_char(5))))) # (!ascii_char(0) & (ascii_char(3) & (!ascii_char(2) & ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(5),
	combout => \Selector5~14_combout\);

-- Location: LCCOMB_X58_Y29_N30
\Selector5~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~25_combout\ = (ascii_char(1) & ((\Selector5~24_combout\ & (\Selector5~15_combout\)) # (!\Selector5~24_combout\ & ((\Selector5~14_combout\))))) # (!ascii_char(1) & (((\Selector5~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~15_combout\,
	datab => ascii_char(1),
	datac => \Selector5~24_combout\,
	datad => \Selector5~14_combout\,
	combout => \Selector5~25_combout\);

-- Location: LCCOMB_X57_Y29_N22
\Selector5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~46_combout\ = (ascii_char(0) & (ascii_char(1) $ (((ascii_char(3) & ascii_char(2)))))) # (!ascii_char(0) & (ascii_char(1) & (!ascii_char(3) & ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector5~46_combout\);

-- Location: LCCOMB_X57_Y29_N24
\Selector1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~21_combout\ = (ascii_char(1) & ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector1~21_combout\);

-- Location: LCCOMB_X57_Y29_N4
\Selector5~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~47_combout\ = (ascii_char(4) & (\Mux0~6_combout\ & ((!\Selector1~21_combout\)))) # (!ascii_char(4) & (((\Selector5~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Mux0~6_combout\,
	datac => \Selector5~46_combout\,
	datad => \Selector1~21_combout\,
	combout => \Selector5~47_combout\);

-- Location: LCCOMB_X56_Y29_N14
\Selector5~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~76_combout\ = (ascii_char(1) & (ascii_char(4) $ (((ascii_char(0)) # (ascii_char(3)))))) # (!ascii_char(1) & (ascii_char(4) & (ascii_char(0) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => ascii_char(1),
	combout => \Selector5~76_combout\);

-- Location: LCCOMB_X57_Y28_N30
\Selector5~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~77_combout\ = (ascii_char(0) & ((ascii_char(2) & ((\Selector5~76_combout\))) # (!ascii_char(2) & (!ascii_char(3))))) # (!ascii_char(0) & (\Selector5~76_combout\ & (ascii_char(2) $ (ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(3),
	datad => \Selector5~76_combout\,
	combout => \Selector5~77_combout\);

-- Location: LCCOMB_X56_Y29_N26
\Selector5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~48_combout\ = (ascii_char(0) & ((ascii_char(4) & (!ascii_char(1))) # (!ascii_char(4) & ((ascii_char(2)))))) # (!ascii_char(0) & ((ascii_char(1)) # ((ascii_char(4)) # (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector5~48_combout\);

-- Location: LCCOMB_X56_Y29_N4
\Selector5~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~71_combout\ = (!ascii_char(3) & (\Selector5~48_combout\ & !ascii_char(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(3),
	datac => \Selector5~48_combout\,
	datad => ascii_char(5),
	combout => \Selector5~71_combout\);

-- Location: LCCOMB_X57_Y28_N0
\Selector5~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~49_combout\ = (!ascii_char(5) & (\Selector2~22_combout\ & ((!\Selector6~69_combout\) # (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(2),
	datac => \Selector6~69_combout\,
	datad => \Selector2~22_combout\,
	combout => \Selector5~49_combout\);

-- Location: LCCOMB_X57_Y28_N10
\Selector5~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~51_combout\ = (\Selector5~71_combout\) # ((\Selector5~49_combout\) # ((\Selector5~77_combout\ & ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~77_combout\,
	datab => ascii_char(5),
	datac => \Selector5~71_combout\,
	datad => \Selector5~49_combout\,
	combout => \Selector5~51_combout\);

-- Location: LCCOMB_X56_Y26_N26
\Selector5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~22_combout\ = (ascii_char(1) & ((ascii_char(0) & (!ascii_char(3) & ascii_char(4))) # (!ascii_char(0) & ((ascii_char(4)) # (!ascii_char(3)))))) # (!ascii_char(1) & ((ascii_char(3) $ (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector5~22_combout\);

-- Location: LCCOMB_X56_Y26_N28
\Selector5~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~23_combout\ = (ascii_char(0) & (ascii_char(3) $ (((!ascii_char(4)) # (!ascii_char(1)))))) # (!ascii_char(0) & (ascii_char(4) & ((!ascii_char(3)) # (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector5~23_combout\);

-- Location: LCCOMB_X56_Y26_N18
\Selector5~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~73_combout\ = (ascii_char(2) & ((\Selector5~23_combout\))) # (!ascii_char(2) & (\Selector5~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => \Selector5~22_combout\,
	datad => \Selector5~23_combout\,
	combout => \Selector5~73_combout\);

-- Location: LCCOMB_X57_Y28_N8
\Selector5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~54_combout\ = (\Add0~0_combout\ & ((\Selector5~51_combout\) # ((\shiftedColumnState.COL3~q\)))) # (!\Add0~0_combout\ & (((!\shiftedColumnState.COL3~q\ & \Selector5~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~51_combout\,
	datab => \Add0~0_combout\,
	datac => \shiftedColumnState.COL3~q\,
	datad => \Selector5~73_combout\,
	combout => \Selector5~54_combout\);

-- Location: LCCOMB_X58_Y28_N28
\Selector5~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~55_combout\ = (\shiftedColumnState.COL3~q\ & ((\Selector5~54_combout\ & (\Selector5~25_combout\)) # (!\Selector5~54_combout\ & ((\Selector5~47_combout\))))) # (!\shiftedColumnState.COL3~q\ & (((\Selector5~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~25_combout\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \Selector5~47_combout\,
	datad => \Selector5~54_combout\,
	combout => \Selector5~55_combout\);

-- Location: LCCOMB_X58_Y28_N16
\Selector5~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~64_combout\ = (\shiftedColumnState.COL4~q\ & ((\Selector5~56_combout\) # ((\Selector5~63_combout\)))) # (!\shiftedColumnState.COL4~q\ & (((\Selector5~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL4~q\,
	datab => \Selector5~56_combout\,
	datac => \Selector5~63_combout\,
	datad => \Selector5~55_combout\,
	combout => \Selector5~64_combout\);

-- Location: LCCOMB_X58_Y28_N2
\Selector5~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~65_combout\ = (\Selector5~45_combout\) # ((\Selector5~37_combout\) # ((\Selector5~28_combout\ & \Selector5~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~28_combout\,
	datab => \Selector5~45_combout\,
	datac => \Selector5~37_combout\,
	datad => \Selector5~64_combout\,
	combout => \Selector5~65_combout\);

-- Location: LCCOMB_X58_Y28_N0
\Selector5~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~66_combout\ = (!\shiftedColumnState.COL7~q\ & ((\screenArea[6][0]~4_combout\ & (\Mux4~2_combout\)) # (!\screenArea[6][0]~4_combout\ & ((\Selector5~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \Mux4~2_combout\,
	datac => \screenArea[6][0]~4_combout\,
	datad => \Selector5~65_combout\,
	combout => \Selector5~66_combout\);

-- Location: FF_X58_Y28_N1
\screenArea[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Selector5~66_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][0]~q\);

-- Location: LCCOMB_X51_Y26_N8
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

-- Location: FF_X51_Y26_N9
\screenArea[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][1]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][1]~q\);

-- Location: FF_X51_Y26_N19
\screenArea[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[5][1]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][2]~q\);

-- Location: LCCOMB_X51_Y26_N12
\screenArea[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][3]~feeder_combout\ = \screenArea[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][2]~q\,
	combout => \screenArea[5][3]~feeder_combout\);

-- Location: FF_X51_Y26_N13
\screenArea[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][3]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][3]~q\);

-- Location: LCCOMB_X49_Y26_N28
\screenArea[5][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][4]~feeder_combout\ = \screenArea[5][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][3]~q\,
	combout => \screenArea[5][4]~feeder_combout\);

-- Location: FF_X49_Y26_N29
\screenArea[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][4]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][4]~q\);

-- Location: LCCOMB_X50_Y26_N16
\screenArea[5][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][5]~feeder_combout\ = \screenArea[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][4]~q\,
	combout => \screenArea[5][5]~feeder_combout\);

-- Location: FF_X50_Y26_N17
\screenArea[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][5]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][5]~q\);

-- Location: LCCOMB_X51_Y25_N26
\screenArea[5][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][6]~feeder_combout\ = \screenArea[5][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][5]~q\,
	combout => \screenArea[5][6]~feeder_combout\);

-- Location: FF_X51_Y25_N27
\screenArea[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][6]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][6]~q\);

-- Location: LCCOMB_X50_Y24_N10
\screenArea[5][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][7]~feeder_combout\ = \screenArea[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][6]~q\,
	combout => \screenArea[5][7]~feeder_combout\);

-- Location: FF_X50_Y24_N11
\screenArea[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][7]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][7]~q\);

-- Location: LCCOMB_X51_Y24_N0
\screenArea[5][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][8]~feeder_combout\ = \screenArea[5][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][7]~q\,
	combout => \screenArea[5][8]~feeder_combout\);

-- Location: FF_X51_Y24_N1
\screenArea[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][8]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][8]~q\);

-- Location: LCCOMB_X50_Y23_N2
\screenArea[5][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][9]~feeder_combout\ = \screenArea[5][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][8]~q\,
	combout => \screenArea[5][9]~feeder_combout\);

-- Location: FF_X50_Y23_N3
\screenArea[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][9]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][9]~q\);

-- Location: LCCOMB_X50_Y23_N10
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

-- Location: FF_X50_Y23_N11
\screenArea[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][10]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][10]~q\);

-- Location: LCCOMB_X46_Y25_N16
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

-- Location: FF_X46_Y25_N17
\screenArea[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][11]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][11]~q\);

-- Location: LCCOMB_X46_Y25_N28
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

-- Location: FF_X46_Y25_N29
\screenArea[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][12]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][12]~q\);

-- Location: LCCOMB_X45_Y27_N8
\screenArea[5][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][13]~feeder_combout\ = \screenArea[5][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][12]~q\,
	combout => \screenArea[5][13]~feeder_combout\);

-- Location: FF_X45_Y27_N9
\screenArea[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][13]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][13]~q\);

-- Location: LCCOMB_X45_Y27_N20
\screenArea[5][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][14]~feeder_combout\ = \screenArea[5][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][13]~q\,
	combout => \screenArea[5][14]~feeder_combout\);

-- Location: FF_X45_Y27_N21
\screenArea[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][14]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][14]~q\);

-- Location: LCCOMB_X50_Y25_N4
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

-- Location: FF_X50_Y25_N5
\screenArea[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][15]~q\);

-- Location: LCCOMB_X50_Y25_N28
\screenArea[5][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][16]~feeder_combout\ = \screenArea[5][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][15]~q\,
	combout => \screenArea[5][16]~feeder_combout\);

-- Location: FF_X50_Y25_N29
\screenArea[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][16]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][16]~q\);

-- Location: LCCOMB_X47_Y25_N26
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

-- Location: FF_X47_Y25_N27
\screenArea[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][17]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][17]~q\);

-- Location: FF_X47_Y25_N7
\screenArea[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[5][17]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][18]~q\);

-- Location: LCCOMB_X50_Y24_N22
\screenArea[5][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][19]~feeder_combout\ = \screenArea[5][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][18]~q\,
	combout => \screenArea[5][19]~feeder_combout\);

-- Location: FF_X50_Y24_N23
\screenArea[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][19]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][19]~q\);

-- Location: LCCOMB_X50_Y24_N16
\screenArea[5][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][20]~feeder_combout\ = \screenArea[5][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][19]~q\,
	combout => \screenArea[5][20]~feeder_combout\);

-- Location: FF_X50_Y24_N17
\screenArea[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][20]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][20]~q\);

-- Location: LCCOMB_X49_Y24_N24
\screenArea[5][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][21]~feeder_combout\ = \screenArea[5][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][20]~q\,
	combout => \screenArea[5][21]~feeder_combout\);

-- Location: FF_X49_Y24_N25
\screenArea[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][21]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][21]~q\);

-- Location: LCCOMB_X49_Y24_N18
\screenArea[5][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][22]~feeder_combout\ = \screenArea[5][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][21]~q\,
	combout => \screenArea[5][22]~feeder_combout\);

-- Location: FF_X49_Y24_N19
\screenArea[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][22]~q\);

-- Location: LCCOMB_X49_Y23_N14
\screenArea[5][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][23]~feeder_combout\ = \screenArea[5][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][22]~q\,
	combout => \screenArea[5][23]~feeder_combout\);

-- Location: FF_X49_Y23_N15
\screenArea[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][23]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][23]~q\);

-- Location: FF_X49_Y23_N21
\screenArea[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[5][23]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][24]~q\);

-- Location: LCCOMB_X45_Y26_N20
\screenArea[5][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][25]~feeder_combout\ = \screenArea[5][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][24]~q\,
	combout => \screenArea[5][25]~feeder_combout\);

-- Location: FF_X45_Y26_N21
\screenArea[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][25]~q\);

-- Location: LCCOMB_X45_Y26_N4
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

-- Location: FF_X45_Y26_N5
\screenArea[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][26]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][26]~q\);

-- Location: LCCOMB_X47_Y26_N18
\screenArea[5][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][27]~feeder_combout\ = \screenArea[5][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][26]~q\,
	combout => \screenArea[5][27]~feeder_combout\);

-- Location: FF_X47_Y26_N19
\screenArea[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][27]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][27]~q\);

-- Location: LCCOMB_X47_Y26_N28
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

-- Location: FF_X47_Y26_N29
\screenArea[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][28]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][28]~q\);

-- Location: LCCOMB_X47_Y26_N30
\Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][28]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][28]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][28]~q\,
	datad => \screenArea[5][28]~q\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X59_Y26_N22
\Selector6~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~91_combout\ = ascii_char(4) $ (!ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~91_combout\);

-- Location: LCCOMB_X59_Y26_N4
\Selector0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~38_combout\ = (ascii_char(4) & (!ascii_char(2) & (ascii_char(0) & ascii_char(1)))) # (!ascii_char(4) & (ascii_char(2) & (!ascii_char(0) & !ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector0~38_combout\);

-- Location: LCCOMB_X59_Y26_N30
\Selector0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~37_combout\ = (ascii_char(4) & (((ascii_char(1) & ascii_char(0))) # (!ascii_char(5)))) # (!ascii_char(4) & (!ascii_char(5) & ((ascii_char(1)) # (ascii_char(0)))))

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
	combout => \Selector0~37_combout\);

-- Location: LCCOMB_X59_Y26_N0
\Selector0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~42_combout\ = (ascii_char(1) & ((ascii_char(4) & (!ascii_char(5) & !ascii_char(0))) # (!ascii_char(4) & ((!ascii_char(0)) # (!ascii_char(5)))))) # (!ascii_char(1) & ((ascii_char(5) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => ascii_char(0),
	combout => \Selector0~42_combout\);

-- Location: LCCOMB_X59_Y26_N2
\Selector0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~43_combout\ = (\Selector0~42_combout\ & ((ascii_char(4)) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => \Selector0~42_combout\,
	combout => \Selector0~43_combout\);

-- Location: LCCOMB_X59_Y26_N18
\Selector0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~40_combout\ = (ascii_char(2) & (\Selector0~37_combout\ & (ascii_char(3)))) # (!ascii_char(2) & (((\Selector0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~37_combout\,
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => \Selector0~43_combout\,
	combout => \Selector0~40_combout\);

-- Location: LCCOMB_X59_Y26_N24
\Selector0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~39_combout\ = (\Add0~0_combout\ & (((\Selector0~40_combout\)))) # (!\Add0~0_combout\ & (!\Selector6~91_combout\ & (\Selector0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~91_combout\,
	datac => \Selector0~38_combout\,
	datad => \Selector0~40_combout\,
	combout => \Selector0~39_combout\);

-- Location: LCCOMB_X56_Y26_N16
\Selector0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~33_combout\ = (ascii_char(3) & (ascii_char(1) $ (((ascii_char(0)) # (!ascii_char(4)))))) # (!ascii_char(3) & (((!ascii_char(4))) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Selector0~33_combout\);

-- Location: LCCOMB_X56_Y26_N10
\Selector0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~34_combout\ = (ascii_char(1) & (!ascii_char(3) & ((ascii_char(0)) # (ascii_char(4))))) # (!ascii_char(1) & (ascii_char(4) & ((!ascii_char(3)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector0~34_combout\);

-- Location: LCCOMB_X56_Y26_N20
\Selector0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~35_combout\ = (!ascii_char(5) & ((ascii_char(2) & (\Selector0~33_combout\)) # (!ascii_char(2) & ((\Selector0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => \Selector0~33_combout\,
	datac => ascii_char(5),
	datad => \Selector0~34_combout\,
	combout => \Selector0~35_combout\);

-- Location: LCCOMB_X57_Y29_N30
\Selector0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~31_combout\ = (ascii_char(3) & ((ascii_char(1) & ((ascii_char(2)))) # (!ascii_char(1) & (!ascii_char(0) & !ascii_char(2))))) # (!ascii_char(3) & (((ascii_char(0)) # (!ascii_char(2))) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector0~31_combout\);

-- Location: LCCOMB_X57_Y29_N26
\Selector0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~27_combout\ = (ascii_char(3) & (ascii_char(2) & (!ascii_char(1) & !\Add0~0_combout\))) # (!ascii_char(3) & ((ascii_char(2) & (ascii_char(1) $ (\Add0~0_combout\))) # (!ascii_char(2) & (!ascii_char(1) & !\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => \Add0~0_combout\,
	combout => \Selector0~27_combout\);

-- Location: LCCOMB_X57_Y29_N18
\Selector6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~52_combout\ = (!ascii_char(1) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector6~52_combout\);

-- Location: LCCOMB_X57_Y29_N8
\Selector0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~28_combout\ = (ascii_char(4) & (\Mux0~6_combout\ & (!ascii_char(1) & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Mux0~6_combout\,
	datac => ascii_char(1),
	datad => \Add0~0_combout\,
	combout => \Selector0~28_combout\);

-- Location: LCCOMB_X57_Y29_N10
\Selector0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~29_combout\ = (\Selector0~28_combout\) # ((!\Add0~0_combout\ & (\Selector6~52_combout\ & \Selector6~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~52_combout\,
	datac => \Selector0~28_combout\,
	datad => \Selector6~89_combout\,
	combout => \Selector0~29_combout\);

-- Location: LCCOMB_X57_Y29_N28
\Selector0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~30_combout\ = (ascii_char(0) & (ascii_char(4) & (\Selector0~27_combout\))) # (!ascii_char(0) & (((\Selector0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => \Selector0~27_combout\,
	datad => \Selector0~29_combout\,
	combout => \Selector0~30_combout\);

-- Location: LCCOMB_X57_Y29_N12
\Selector0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~32_combout\ = (ascii_char(5) & ((\Selector0~30_combout\) # ((\Selector3~14_combout\ & \Selector0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~14_combout\,
	datab => ascii_char(5),
	datac => \Selector0~31_combout\,
	datad => \Selector0~30_combout\,
	combout => \Selector0~32_combout\);

-- Location: LCCOMB_X56_Y28_N8
\Selector0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~46_combout\ = (ascii_char(4) & ((ascii_char(2) $ (!ascii_char(0))) # (!ascii_char(3)))) # (!ascii_char(4) & ((ascii_char(2)) # ((ascii_char(3) & ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector0~46_combout\);

-- Location: LCCOMB_X56_Y28_N6
\Selector0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~47_combout\ = (ascii_char(5) & (!ascii_char(4) & ((!ascii_char(3)) # (!\Selector0~46_combout\)))) # (!ascii_char(5) & (((\Selector0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Selector0~46_combout\,
	datad => ascii_char(3),
	combout => \Selector0~47_combout\);

-- Location: LCCOMB_X56_Y28_N4
\Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (ascii_char(5) & (ascii_char(2) & (!ascii_char(4)))) # (!ascii_char(5) & (!ascii_char(0) & (ascii_char(2) $ (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => ascii_char(0),
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X56_Y28_N18
\Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (ascii_char(4) & ((ascii_char(0) & ((!ascii_char(2)))) # (!ascii_char(0) & (!ascii_char(5))))) # (!ascii_char(4) & ((ascii_char(2)) # (ascii_char(5) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X56_Y28_N26
\Selector0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~41_combout\ = (ascii_char(3) & (\Selector0~5_combout\)) # (!ascii_char(3) & ((\Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(3),
	datac => \Selector0~5_combout\,
	datad => \Selector0~4_combout\,
	combout => \Selector0~41_combout\);

-- Location: LCCOMB_X56_Y28_N10
\Selector0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = (ascii_char(2) & (ascii_char(1) & (ascii_char(4) & !ascii_char(0)))) # (!ascii_char(2) & (ascii_char(0) & ((ascii_char(1)) # (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector0~7_combout\);

-- Location: LCCOMB_X56_Y28_N0
\Selector0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~8_combout\ = (\Add0~0_combout\ & (((!ascii_char(1))))) # (!\Add0~0_combout\ & (\Selector0~7_combout\ & (ascii_char(3) $ (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => \Selector0~7_combout\,
	combout => \Selector0~8_combout\);

-- Location: LCCOMB_X56_Y28_N2
\Selector0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = (\Add0~0_combout\ & ((\Selector0~8_combout\ & (\Selector0~47_combout\)) # (!\Selector0~8_combout\ & ((\Selector0~41_combout\))))) # (!\Add0~0_combout\ & (((\Selector0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~47_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector0~41_combout\,
	datad => \Selector0~8_combout\,
	combout => \Selector0~9_combout\);

-- Location: LCCOMB_X56_Y29_N18
\Selector0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~23_combout\ = (ascii_char(4) & (ascii_char(3) & ascii_char(0))) # (!ascii_char(4) & ((ascii_char(3)) # (ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector0~23_combout\);

-- Location: LCCOMB_X56_Y29_N16
\Selector0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~24_combout\ = (!\Add0~0_combout\ & (!ascii_char(2) & (\Selector0~23_combout\ & ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(2),
	datac => \Selector0~23_combout\,
	datad => ascii_char(1),
	combout => \Selector0~24_combout\);

-- Location: LCCOMB_X55_Y26_N22
\Selector0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~17_combout\ = (ascii_char(0) & ((ascii_char(5) & ((ascii_char(2)))) # (!ascii_char(5) & (!ascii_char(3))))) # (!ascii_char(0) & (ascii_char(3) & (ascii_char(5) $ (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector0~17_combout\);

-- Location: LCCOMB_X55_Y26_N0
\Selector0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~18_combout\ = (ascii_char(2) & (((!ascii_char(3))))) # (!ascii_char(2) & (ascii_char(5) & (ascii_char(3) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector0~18_combout\);

-- Location: LCCOMB_X55_Y26_N14
\Selector0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~19_combout\ = (!ascii_char(4) & ((ascii_char(1) & (\Selector0~17_combout\)) # (!ascii_char(1) & ((\Selector0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => \Selector0~17_combout\,
	datad => \Selector0~18_combout\,
	combout => \Selector0~19_combout\);

-- Location: LCCOMB_X56_Y26_N30
\Selector0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~20_combout\ = (!ascii_char(5) & ((ascii_char(2) & ((!ascii_char(4)))) # (!ascii_char(2) & (!ascii_char(0) & ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(4),
	combout => \Selector0~20_combout\);

-- Location: LCCOMB_X56_Y26_N0
\Selector6~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~49_combout\ = (ascii_char(5) & (!ascii_char(2) & (!ascii_char(3) & !ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(2),
	datac => ascii_char(3),
	datad => ascii_char(4),
	combout => \Selector6~49_combout\);

-- Location: LCCOMB_X55_Y29_N12
\Selector5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~50_combout\ = (ascii_char(1) & ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector5~50_combout\);

-- Location: LCCOMB_X56_Y26_N4
\Selector0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~21_combout\ = (\Selector0~20_combout\ & (((\Selector6~49_combout\ & !ascii_char(0))) # (!\Selector5~50_combout\))) # (!\Selector0~20_combout\ & (\Selector6~49_combout\ & (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~20_combout\,
	datab => \Selector6~49_combout\,
	datac => ascii_char(0),
	datad => \Selector5~50_combout\,
	combout => \Selector0~21_combout\);

-- Location: LCCOMB_X56_Y26_N14
\Selector0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~15_combout\ = (ascii_char(2) & (!ascii_char(1) & ((!ascii_char(5)) # (!ascii_char(3))))) # (!ascii_char(2) & (!ascii_char(3) & ((!ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(5),
	combout => \Selector0~15_combout\);

-- Location: LCCOMB_X56_Y26_N2
\Selector6~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~51_combout\ = ascii_char(3) $ (!ascii_char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector6~51_combout\);

-- Location: LCCOMB_X56_Y26_N24
\Selector0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~14_combout\ = (!ascii_char(5) & (ascii_char(2) & (!ascii_char(0) & \Selector6~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => \Selector6~51_combout\,
	combout => \Selector0~14_combout\);

-- Location: LCCOMB_X56_Y26_N12
\Selector0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~16_combout\ = (ascii_char(4) & ((\Selector0~14_combout\) # ((ascii_char(0) & \Selector0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => \Selector0~15_combout\,
	datad => \Selector0~14_combout\,
	combout => \Selector0~16_combout\);

-- Location: LCCOMB_X56_Y26_N6
\Selector0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~22_combout\ = (\Add0~0_combout\ & ((\Selector0~19_combout\) # ((\Selector0~21_combout\) # (\Selector0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~19_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector0~21_combout\,
	datad => \Selector0~16_combout\,
	combout => \Selector0~22_combout\);

-- Location: LCCOMB_X56_Y25_N10
\Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\Add0~0_combout\) # ((ascii_char(0) $ (!ascii_char(3))) # (!\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => \Add0~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \Selector0~6_combout\);

-- Location: LCCOMB_X56_Y25_N30
\Selector0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~11_combout\ = (ascii_char(3)) # (((ascii_char(0) & !ascii_char(4))) # (!ascii_char(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector0~11_combout\);

-- Location: LCCOMB_X56_Y25_N28
\Selector0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = (ascii_char(4) & ((ascii_char(0)) # ((ascii_char(2) & ascii_char(3))))) # (!ascii_char(4) & (ascii_char(0) & ((ascii_char(2)) # (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector0~10_combout\);

-- Location: LCCOMB_X56_Y25_N4
\Selector0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~12_combout\ = (ascii_char(1) & (!ascii_char(5) & (\Selector0~11_combout\))) # (!ascii_char(1) & ((ascii_char(5)) # ((\Selector0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(5),
	datac => \Selector0~11_combout\,
	datad => \Selector0~10_combout\,
	combout => \Selector0~12_combout\);

-- Location: LCCOMB_X56_Y25_N20
\Selector0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~44_combout\ = (ascii_char(3) & (\Add0~0_combout\ $ (((ascii_char(0)) # (!ascii_char(2)))))) # (!ascii_char(3) & (((\Add0~0_combout\ & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => \Add0~0_combout\,
	datad => ascii_char(0),
	combout => \Selector0~44_combout\);

-- Location: LCCOMB_X56_Y25_N18
\Selector0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~45_combout\ = (\Selector0~44_combout\ & (ascii_char(4) $ (((!ascii_char(0) & !ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => \Selector0~44_combout\,
	combout => \Selector0~45_combout\);

-- Location: LCCOMB_X56_Y25_N26
\Selector0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~13_combout\ = (ascii_char(5) & ((\Selector0~12_combout\ & (!\Selector0~6_combout\)) # (!\Selector0~12_combout\ & ((\Selector0~45_combout\))))) # (!ascii_char(5) & (((\Selector0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~6_combout\,
	datab => ascii_char(5),
	datac => \Selector0~12_combout\,
	datad => \Selector0~45_combout\,
	combout => \Selector0~13_combout\);

-- Location: LCCOMB_X57_Y26_N6
\Selector0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~25_combout\ = (\shiftedColumnState.COL3~q\ & ((\Selector0~24_combout\) # ((\Selector0~22_combout\)))) # (!\shiftedColumnState.COL3~q\ & (((\Selector0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~24_combout\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \Selector0~22_combout\,
	datad => \Selector0~13_combout\,
	combout => \Selector0~25_combout\);

-- Location: LCCOMB_X57_Y26_N20
\Selector0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~26_combout\ = (!\shiftedColumnState.COL5~q\ & ((\shiftedColumnState.COL4~q\ & (\Selector0~9_combout\)) # (!\shiftedColumnState.COL4~q\ & ((\Selector0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \shiftedColumnState.COL4~q\,
	datac => \Selector0~9_combout\,
	datad => \Selector0~25_combout\,
	combout => \Selector0~26_combout\);

-- Location: LCCOMB_X57_Y26_N18
\Selector0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~36_combout\ = (\Selector0~26_combout\) # ((\shiftedColumnState.COL5~q\ & ((\Selector0~35_combout\) # (\Selector0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \Selector0~35_combout\,
	datac => \Selector0~32_combout\,
	datad => \Selector0~26_combout\,
	combout => \Selector0~36_combout\);

-- Location: LCCOMB_X57_Y26_N28
\screenArea[0][0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][0]~2_combout\ = (\shiftedColumnState.COL6~q\ & (\Selector0~39_combout\)) # (!\shiftedColumnState.COL6~q\ & ((\Selector0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~39_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datad => \Selector0~36_combout\,
	combout => \screenArea[0][0]~2_combout\);

-- Location: FF_X57_Y26_N29
\screenArea[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][0]~2_combout\,
	asdata => \Mux0~8_combout\,
	sload => \screenArea[6][0]~4_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][0]~q\);

-- Location: LCCOMB_X49_Y26_N26
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

-- Location: FF_X49_Y26_N27
\screenArea[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][1]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][1]~q\);

-- Location: FF_X51_Y26_N15
\screenArea[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][1]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][2]~q\);

-- Location: FF_X51_Y26_N21
\screenArea[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][2]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][3]~q\);

-- Location: FF_X50_Y26_N31
\screenArea[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][3]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][4]~q\);

-- Location: FF_X50_Y26_N7
\screenArea[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][4]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][5]~q\);

-- Location: LCCOMB_X49_Y26_N30
\screenArea[0][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][6]~feeder_combout\ = \screenArea[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][5]~q\,
	combout => \screenArea[0][6]~feeder_combout\);

-- Location: FF_X49_Y26_N31
\screenArea[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][6]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][6]~q\);

-- Location: LCCOMB_X50_Y24_N14
\screenArea[0][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][7]~feeder_combout\ = \screenArea[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][6]~q\,
	combout => \screenArea[0][7]~feeder_combout\);

-- Location: FF_X50_Y24_N15
\screenArea[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][7]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][7]~q\);

-- Location: LCCOMB_X51_Y24_N10
\screenArea[0][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][8]~feeder_combout\ = \screenArea[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][7]~q\,
	combout => \screenArea[0][8]~feeder_combout\);

-- Location: FF_X51_Y24_N11
\screenArea[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][8]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][8]~q\);

-- Location: LCCOMB_X50_Y23_N6
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

-- Location: FF_X50_Y23_N7
\screenArea[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][9]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][9]~q\);

-- Location: LCCOMB_X50_Y23_N24
\screenArea[0][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][10]~feeder_combout\ = \screenArea[0][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][9]~q\,
	combout => \screenArea[0][10]~feeder_combout\);

-- Location: FF_X50_Y23_N25
\screenArea[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][10]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][10]~q\);

-- Location: FF_X46_Y25_N5
\screenArea[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][10]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][11]~q\);

-- Location: FF_X46_Y25_N25
\screenArea[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][11]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][12]~q\);

-- Location: LCCOMB_X45_Y27_N2
\screenArea[0][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][13]~feeder_combout\ = \screenArea[0][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][12]~q\,
	combout => \screenArea[0][13]~feeder_combout\);

-- Location: FF_X45_Y27_N3
\screenArea[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][13]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][13]~q\);

-- Location: LCCOMB_X45_Y27_N18
\screenArea[0][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][14]~feeder_combout\ = \screenArea[0][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][13]~q\,
	combout => \screenArea[0][14]~feeder_combout\);

-- Location: FF_X45_Y27_N19
\screenArea[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][14]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][14]~q\);

-- Location: LCCOMB_X50_Y25_N0
\screenArea[0][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][15]~feeder_combout\ = \screenArea[0][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][14]~q\,
	combout => \screenArea[0][15]~feeder_combout\);

-- Location: FF_X50_Y25_N1
\screenArea[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][15]~q\);

-- Location: LCCOMB_X51_Y25_N18
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

-- Location: FF_X51_Y25_N19
\screenArea[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][16]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][16]~q\);

-- Location: FF_X47_Y25_N23
\screenArea[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][16]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][17]~q\);

-- Location: FF_X47_Y25_N17
\screenArea[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][17]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][18]~q\);

-- Location: FF_X50_Y24_N31
\screenArea[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][18]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][19]~q\);

-- Location: FF_X50_Y24_N1
\screenArea[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][19]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][20]~q\);

-- Location: LCCOMB_X46_Y26_N22
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

-- Location: FF_X46_Y26_N23
\screenArea[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][21]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][21]~q\);

-- Location: LCCOMB_X46_Y26_N6
\screenArea[0][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][22]~feeder_combout\ = \screenArea[0][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][21]~q\,
	combout => \screenArea[0][22]~feeder_combout\);

-- Location: FF_X46_Y26_N7
\screenArea[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][22]~q\);

-- Location: FF_X49_Y23_N25
\screenArea[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][22]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][23]~q\);

-- Location: LCCOMB_X47_Y23_N2
\screenArea[0][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][24]~feeder_combout\ = \screenArea[0][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[0][23]~q\,
	combout => \screenArea[0][24]~feeder_combout\);

-- Location: FF_X47_Y23_N3
\screenArea[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][24]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][24]~q\);

-- Location: LCCOMB_X46_Y26_N26
\screenArea[0][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[0][25]~feeder_combout\ = \screenArea[0][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[0][24]~q\,
	combout => \screenArea[0][25]~feeder_combout\);

-- Location: FF_X46_Y26_N27
\screenArea[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[0][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][25]~q\);

-- Location: FF_X46_Y26_N9
\screenArea[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][25]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][26]~q\);

-- Location: FF_X46_Y26_N25
\screenArea[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][26]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][27]~q\);

-- Location: FF_X49_Y26_N7
\screenArea[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][27]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][28]~q\);

-- Location: LCCOMB_X57_Y26_N30
\Selector3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~60_combout\ = (!\screenArea[6][0]~4_combout\ & (!\shiftedColumnState.COL4~q\ & (!\shiftedColumnState.COL7~q\ & \Selector5~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][0]~4_combout\,
	datab => \shiftedColumnState.COL4~q\,
	datac => \shiftedColumnState.COL7~q\,
	datad => \Selector5~28_combout\,
	combout => \Selector3~60_combout\);

-- Location: LCCOMB_X54_Y29_N8
\Selector3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~51_combout\ = (ascii_char(1) & (ascii_char(2) $ (((ascii_char(0) & ascii_char(3)))))) # (!ascii_char(1) & (ascii_char(0) & (ascii_char(2) & ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector3~51_combout\);

-- Location: LCCOMB_X54_Y29_N2
\Selector3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~50_combout\ = (ascii_char(3)) # ((ascii_char(0) & (ascii_char(1) & !ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector3~50_combout\);

-- Location: LCCOMB_X54_Y29_N22
\Selector3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~52_combout\ = (!\Add0~0_combout\ & ((ascii_char(4) & (!\Selector3~51_combout\)) # (!ascii_char(4) & ((!\Selector3~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector3~51_combout\,
	datad => \Selector3~50_combout\,
	combout => \Selector3~52_combout\);

-- Location: LCCOMB_X54_Y29_N18
\Selector3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~46_combout\ = (!ascii_char(4) & (ascii_char(2) & ascii_char(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector3~46_combout\);

-- Location: LCCOMB_X54_Y29_N20
\Selector3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~47_combout\ = (ascii_char(2) & ((ascii_char(3) $ (!ascii_char(1))))) # (!ascii_char(2) & ((ascii_char(4) & ((!ascii_char(1)))) # (!ascii_char(4) & ((ascii_char(3)) # (ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector3~47_combout\);

-- Location: LCCOMB_X54_Y29_N10
\Selector3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~48_combout\ = (ascii_char(0) & (((\Selector3~47_combout\ & !\Add0~0_combout\)))) # (!ascii_char(0) & ((\Selector3~46_combout\) # ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \Selector3~46_combout\,
	datac => \Selector3~47_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector3~48_combout\);

-- Location: LCCOMB_X54_Y29_N12
\Selector3~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~65_combout\ = ascii_char(5) $ (((ascii_char(4) & (!ascii_char(3) & !ascii_char(2))) # (!ascii_char(4) & ((ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(5),
	combout => \Selector3~65_combout\);

-- Location: LCCOMB_X54_Y29_N14
\Selector3~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~66_combout\ = (ascii_char(1) & (\Selector3~65_combout\ & ((ascii_char(3)) # (!ascii_char(2))))) # (!ascii_char(1) & (ascii_char(2) & ((ascii_char(3)) # (\Selector3~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => \Selector3~65_combout\,
	combout => \Selector3~66_combout\);

-- Location: LCCOMB_X54_Y29_N26
\Selector3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~44_combout\ = (ascii_char(3) & (ascii_char(1) $ (((!ascii_char(2) & ascii_char(4)))))) # (!ascii_char(3) & (ascii_char(4) & ((!ascii_char(1)) # (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector3~44_combout\);

-- Location: LCCOMB_X54_Y29_N28
\Selector3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~43_combout\ = (ascii_char(2) & (ascii_char(3) & (ascii_char(4) $ (ascii_char(1))))) # (!ascii_char(2) & (!ascii_char(3) & ((ascii_char(1)) # (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector3~43_combout\);

-- Location: LCCOMB_X54_Y29_N24
\Selector3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~45_combout\ = (ascii_char(5) & ((\Selector3~43_combout\))) # (!ascii_char(5) & (\Selector3~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datac => \Selector3~44_combout\,
	datad => \Selector3~43_combout\,
	combout => \Selector3~45_combout\);

-- Location: LCCOMB_X54_Y29_N4
\Selector3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~49_combout\ = (\Selector3~48_combout\ & ((\Selector3~66_combout\) # ((!\Add0~0_combout\)))) # (!\Selector3~48_combout\ & (((\Add0~0_combout\ & \Selector3~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~48_combout\,
	datab => \Selector3~66_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector3~45_combout\,
	combout => \Selector3~49_combout\);

-- Location: LCCOMB_X55_Y29_N14
\Selector3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~55_combout\ = (ascii_char(1) & (!ascii_char(0) & (ascii_char(3) $ (ascii_char(2))))) # (!ascii_char(1) & ((ascii_char(3) & (!ascii_char(0) & ascii_char(2))) # (!ascii_char(3) & (ascii_char(0) & !ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector3~55_combout\);

-- Location: LCCOMB_X55_Y29_N0
\Selector3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~56_combout\ = (ascii_char(1) & (ascii_char(0) $ (((ascii_char(3)) # (!ascii_char(2)))))) # (!ascii_char(1) & (!ascii_char(2) & (ascii_char(0) & !ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector3~56_combout\);

-- Location: LCCOMB_X55_Y29_N26
\Selector3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~57_combout\ = (ascii_char(4) & (\Selector3~55_combout\)) # (!ascii_char(4) & ((\Selector3~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(4),
	datac => \Selector3~55_combout\,
	datad => \Selector3~56_combout\,
	combout => \Selector3~57_combout\);

-- Location: LCCOMB_X55_Y29_N2
\Selector3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~26_combout\ = (ascii_char(1) & ((ascii_char(2)) # (!ascii_char(0)))) # (!ascii_char(1) & ((ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector3~26_combout\);

-- Location: LCCOMB_X54_Y29_N0
\Selector3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~53_combout\ = (ascii_char(3) & ((ascii_char(1) $ (!ascii_char(0))) # (!ascii_char(2)))) # (!ascii_char(3) & (((!ascii_char(0)) # (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector3~53_combout\);

-- Location: LCCOMB_X54_Y29_N30
\Selector3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~54_combout\ = (ascii_char(4) & (((\Selector3~53_combout\)))) # (!ascii_char(4) & (\Selector3~26_combout\ & (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~26_combout\,
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => \Selector3~53_combout\,
	combout => \Selector3~54_combout\);

-- Location: LCCOMB_X56_Y30_N8
\Selector4~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~37_combout\ = (!ascii_char(6) & !ascii_char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(6),
	datad => ascii_char(5),
	combout => \Selector4~37_combout\);

-- Location: LCCOMB_X54_Y29_N16
\Selector3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~58_combout\ = (\Selector4~38_combout\ & ((\Selector3~57_combout\) # ((\Selector3~54_combout\ & \Selector4~37_combout\)))) # (!\Selector4~38_combout\ & (((\Selector3~54_combout\ & \Selector4~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~38_combout\,
	datab => \Selector3~57_combout\,
	datac => \Selector3~54_combout\,
	datad => \Selector4~37_combout\,
	combout => \Selector3~58_combout\);

-- Location: LCCOMB_X54_Y29_N6
\Selector3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~59_combout\ = (\shiftedColumnState.COL3~q\ & (((\Selector3~49_combout\)))) # (!\shiftedColumnState.COL3~q\ & ((\Selector3~52_combout\) # ((\Selector3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~52_combout\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \Selector3~49_combout\,
	datad => \Selector3~58_combout\,
	combout => \Selector3~59_combout\);

-- Location: LCCOMB_X58_Y29_N14
\Selector3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~24_combout\ = (ascii_char(5) & ((ascii_char(0) & (ascii_char(1) & !ascii_char(3))) # (!ascii_char(0) & ((ascii_char(3)))))) # (!ascii_char(5) & (ascii_char(1) $ ((ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(5),
	combout => \Selector3~24_combout\);

-- Location: LCCOMB_X58_Y29_N0
\Selector3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~23_combout\ = (ascii_char(3) & (ascii_char(1) $ (((ascii_char(5)))))) # (!ascii_char(3) & (((ascii_char(0) & !ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(5),
	combout => \Selector3~23_combout\);

-- Location: LCCOMB_X58_Y29_N20
\Selector3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~25_combout\ = (ascii_char(2) & ((\Selector3~23_combout\))) # (!ascii_char(2) & (\Selector3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datac => \Selector3~24_combout\,
	datad => \Selector3~23_combout\,
	combout => \Selector3~25_combout\);

-- Location: LCCOMB_X58_Y29_N26
\Selector3~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~64_combout\ = (ascii_char(0) & (!ascii_char(3) & ((ascii_char(2)) # (!ascii_char(1))))) # (!ascii_char(0) & (ascii_char(1) $ (((!ascii_char(2) & ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector3~64_combout\);

-- Location: LCCOMB_X58_Y29_N18
\Selector3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~27_combout\ = (ascii_char(2) & ((ascii_char(0) & ((ascii_char(1)) # (ascii_char(3)))) # (!ascii_char(0) & ((!ascii_char(3)))))) # (!ascii_char(2) & (ascii_char(1) $ (((ascii_char(0) & !ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector3~27_combout\);

-- Location: LCCOMB_X58_Y29_N24
\Selector3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~28_combout\ = (ascii_char(3) & ((ascii_char(5) & (!\Selector3~64_combout\)) # (!ascii_char(5) & ((\Selector3~27_combout\))))) # (!ascii_char(3) & ((ascii_char(5) & ((\Selector3~27_combout\))) # (!ascii_char(5) & (!\Selector3~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(5),
	datac => \Selector3~64_combout\,
	datad => \Selector3~27_combout\,
	combout => \Selector3~28_combout\);

-- Location: LCCOMB_X58_Y29_N22
\Selector3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~29_combout\ = (\Add0~0_combout\ & ((ascii_char(4) & (\Selector3~25_combout\)) # (!ascii_char(4) & ((\Selector3~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector3~25_combout\,
	datac => ascii_char(4),
	datad => \Selector3~28_combout\,
	combout => \Selector3~29_combout\);

-- Location: LCCOMB_X58_Y29_N12
\Selector3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~30_combout\ = (ascii_char(3) & (((!ascii_char(2) & ascii_char(1))))) # (!ascii_char(3) & (ascii_char(4) & (ascii_char(2) $ (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector3~30_combout\);

-- Location: LCCOMB_X58_Y29_N10
\Selector3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~31_combout\ = (ascii_char(0) & (\Selector3~30_combout\)) # (!ascii_char(0) & (((\Selector2~22_combout\ & !\Selector6~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~30_combout\,
	datab => ascii_char(0),
	datac => \Selector2~22_combout\,
	datad => \Selector6~90_combout\,
	combout => \Selector3~31_combout\);

-- Location: LCCOMB_X58_Y29_N28
\Selector3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~32_combout\ = (\Selector4~34_combout\ & ((\Selector3~29_combout\) # ((!\Add0~0_combout\ & \Selector3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector4~34_combout\,
	datac => \Selector3~29_combout\,
	datad => \Selector3~31_combout\,
	combout => \Selector3~32_combout\);

-- Location: LCCOMB_X54_Y26_N26
\Selector3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~36_combout\ = (ascii_char(0) & (ascii_char(2) $ (ascii_char(3) $ (ascii_char(1))))) # (!ascii_char(0) & (((!ascii_char(3))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector3~36_combout\);

-- Location: LCCOMB_X54_Y26_N28
\Selector3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~35_combout\ = (ascii_char(2) & ((ascii_char(0) & ((!ascii_char(1)) # (!ascii_char(3)))) # (!ascii_char(0) & ((ascii_char(1)))))) # (!ascii_char(2) & (!ascii_char(3) & ((!ascii_char(1)) # (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector3~35_combout\);

-- Location: LCCOMB_X54_Y26_N8
\Selector3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~37_combout\ = (\Add0~0_combout\ & (!ascii_char(4))) # (!\Add0~0_combout\ & ((ascii_char(4) & (\Selector3~36_combout\)) # (!ascii_char(4) & ((\Selector3~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector3~36_combout\,
	datad => \Selector3~35_combout\,
	combout => \Selector3~37_combout\);

-- Location: LCCOMB_X55_Y29_N28
\Selector5~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~67_combout\ = ascii_char(1) $ (ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector5~67_combout\);

-- Location: LCCOMB_X54_Y26_N0
\Selector3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~33_combout\ = (ascii_char(2) & ((ascii_char(3) & (ascii_char(0))) # (!ascii_char(3) & ((ascii_char(1)))))) # (!ascii_char(2) & (ascii_char(3) $ (((ascii_char(0) & ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector3~33_combout\);

-- Location: LCCOMB_X54_Y26_N30
\Selector3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~34_combout\ = (ascii_char(5) & (\Selector5~67_combout\ & (\Selector6~88_combout\))) # (!ascii_char(5) & (((\Selector3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector5~67_combout\,
	datac => \Selector6~88_combout\,
	datad => \Selector3~33_combout\,
	combout => \Selector3~34_combout\);

-- Location: LCCOMB_X55_Y29_N16
\Selector3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~38_combout\ = (ascii_char(5) & (ascii_char(0) $ ((ascii_char(3))))) # (!ascii_char(5) & (((!ascii_char(3) & \Selector3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(5),
	datad => \Selector3~26_combout\,
	combout => \Selector3~38_combout\);

-- Location: LCCOMB_X54_Y26_N2
\Selector3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~39_combout\ = (\Selector3~38_combout\ & (((ascii_char(2) & ascii_char(1))) # (!ascii_char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(5),
	datad => \Selector3~38_combout\,
	combout => \Selector3~39_combout\);

-- Location: LCCOMB_X54_Y26_N24
\Selector3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~40_combout\ = (\Add0~0_combout\ & ((\Selector3~37_combout\ & ((\Selector3~39_combout\))) # (!\Selector3~37_combout\ & (\Selector3~34_combout\)))) # (!\Add0~0_combout\ & (\Selector3~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector3~37_combout\,
	datac => \Selector3~34_combout\,
	datad => \Selector3~39_combout\,
	combout => \Selector3~40_combout\);

-- Location: LCCOMB_X57_Y26_N10
\Selector3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~41_combout\ = (\Selector2~66_combout\ & ((\screenArea[6][0]~4_combout\) # ((\shiftedColumnState.COL6~q\ & \Selector3~40_combout\)))) # (!\Selector2~66_combout\ & (\shiftedColumnState.COL6~q\ & ((\Selector3~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~66_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \screenArea[6][0]~4_combout\,
	datad => \Selector3~40_combout\,
	combout => \Selector3~41_combout\);

-- Location: LCCOMB_X57_Y26_N4
\Selector3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~42_combout\ = (\shiftedColumnState.COL7~q\ & (((\Mux0~8_combout\)))) # (!\shiftedColumnState.COL7~q\ & ((\Selector3~32_combout\) # ((\Selector3~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \Selector3~32_combout\,
	datac => \Mux0~8_combout\,
	datad => \Selector3~41_combout\,
	combout => \Selector3~42_combout\);

-- Location: LCCOMB_X55_Y29_N22
\Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = ascii_char(0) $ (ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X55_Y29_N6
\Selector3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~15_combout\ = (ascii_char(1) & (((ascii_char(0) & !ascii_char(3))))) # (!ascii_char(1) & ((ascii_char(2) & (ascii_char(0) & ascii_char(3))) # (!ascii_char(2) & ((!ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector3~15_combout\);

-- Location: LCCOMB_X55_Y29_N20
\Selector3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~16_combout\ = (ascii_char(4) & (((\Selector3~15_combout\)))) # (!ascii_char(4) & (\Selector5~50_combout\ & (!\Mux14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~50_combout\,
	datab => ascii_char(4),
	datac => \Mux14~6_combout\,
	datad => \Selector3~15_combout\,
	combout => \Selector3~16_combout\);

-- Location: LCCOMB_X55_Y27_N22
\Selector3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~19_combout\ = (ascii_char(1) & (((!ascii_char(2) & !ascii_char(0))))) # (!ascii_char(1) & ((ascii_char(0) & ((!ascii_char(2)))) # (!ascii_char(0) & (ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector3~19_combout\);

-- Location: LCCOMB_X55_Y27_N24
\Selector3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~13_combout\ = (!ascii_char(5) & ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datad => ascii_char(2),
	combout => \Selector3~13_combout\);

-- Location: LCCOMB_X55_Y27_N28
\Selector3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~20_combout\ = (ascii_char(4) & (ascii_char(0) & ((ascii_char(1)) # (!ascii_char(3))))) # (!ascii_char(4) & (ascii_char(1) & (ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector3~20_combout\);

-- Location: LCCOMB_X56_Y29_N0
\Selector5~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~53_combout\ = (ascii_char(4) & !ascii_char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector5~53_combout\);

-- Location: LCCOMB_X55_Y27_N18
\Selector3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~21_combout\ = (\Selector3~19_combout\ & ((\Selector5~53_combout\) # ((\Selector3~13_combout\ & \Selector3~20_combout\)))) # (!\Selector3~19_combout\ & (\Selector3~13_combout\ & (\Selector3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~19_combout\,
	datab => \Selector3~13_combout\,
	datac => \Selector3~20_combout\,
	datad => \Selector5~53_combout\,
	combout => \Selector3~21_combout\);

-- Location: LCCOMB_X59_Y27_N2
\Selector3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~17_combout\ = (ascii_char(3) & (ascii_char(2) $ (((!ascii_char(0)))))) # (!ascii_char(3) & (((!ascii_char(1))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector3~17_combout\);

-- Location: LCCOMB_X59_Y27_N10
\Selector5~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~27_combout\ = (ascii_char(0)) # (!ascii_char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector5~27_combout\);

-- Location: LCCOMB_X59_Y27_N20
\Selector3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~62_combout\ = (ascii_char(3) & (ascii_char(4) & (ascii_char(2) $ (!\Selector5~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => \Selector5~27_combout\,
	combout => \Selector3~62_combout\);

-- Location: LCCOMB_X59_Y27_N6
\Selector3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~18_combout\ = (ascii_char(5) & ((\Selector3~62_combout\) # ((!ascii_char(4) & \Selector3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => \Selector3~17_combout\,
	datac => ascii_char(5),
	datad => \Selector3~62_combout\,
	combout => \Selector3~18_combout\);

-- Location: LCCOMB_X58_Y27_N0
\Selector3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~22_combout\ = (\Add0~0_combout\ & (((\Selector3~21_combout\) # (\Selector3~18_combout\)))) # (!\Add0~0_combout\ & (\Selector3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector3~16_combout\,
	datac => \Selector3~21_combout\,
	datad => \Selector3~18_combout\,
	combout => \Selector3~22_combout\);

-- Location: LCCOMB_X58_Y27_N24
\Selector3~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~63_combout\ = (!\shiftedColumnState.COL7~q\ & (\shiftedColumnState.COL5~q\ & (!\shiftedColumnState.COL6~q\ & \Selector3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL7~q\,
	datab => \shiftedColumnState.COL5~q\,
	datac => \shiftedColumnState.COL6~q\,
	datad => \Selector3~22_combout\,
	combout => \Selector3~63_combout\);

-- Location: LCCOMB_X57_Y26_N16
\Selector3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~61_combout\ = (\Selector3~42_combout\) # ((\Selector3~63_combout\) # ((\Selector3~60_combout\ & \Selector3~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~60_combout\,
	datab => \Selector3~59_combout\,
	datac => \Selector3~42_combout\,
	datad => \Selector3~63_combout\,
	combout => \Selector3~61_combout\);

-- Location: FF_X57_Y26_N17
\screenArea[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Selector3~61_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][0]~q\);

-- Location: LCCOMB_X49_Y25_N24
\screenArea[3][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][1]~feeder_combout\ = \screenArea[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][0]~q\,
	combout => \screenArea[3][1]~feeder_combout\);

-- Location: FF_X49_Y25_N25
\screenArea[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][1]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][1]~q\);

-- Location: LCCOMB_X51_Y26_N6
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

-- Location: FF_X51_Y26_N7
\screenArea[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][2]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][2]~q\);

-- Location: LCCOMB_X51_Y26_N24
\screenArea[3][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][3]~feeder_combout\ = \screenArea[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][2]~q\,
	combout => \screenArea[3][3]~feeder_combout\);

-- Location: FF_X51_Y26_N25
\screenArea[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][3]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][3]~q\);

-- Location: LCCOMB_X50_Y26_N20
\screenArea[3][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][4]~feeder_combout\ = \screenArea[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][3]~q\,
	combout => \screenArea[3][4]~feeder_combout\);

-- Location: FF_X50_Y26_N21
\screenArea[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][4]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][4]~q\);

-- Location: LCCOMB_X50_Y26_N10
\screenArea[3][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][5]~feeder_combout\ = \screenArea[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][4]~q\,
	combout => \screenArea[3][5]~feeder_combout\);

-- Location: FF_X50_Y26_N11
\screenArea[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][5]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][5]~q\);

-- Location: LCCOMB_X49_Y26_N14
\screenArea[3][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][6]~feeder_combout\ = \screenArea[3][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][5]~q\,
	combout => \screenArea[3][6]~feeder_combout\);

-- Location: FF_X49_Y26_N15
\screenArea[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][6]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][6]~q\);

-- Location: LCCOMB_X50_Y27_N26
\screenArea[3][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][7]~feeder_combout\ = \screenArea[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][6]~q\,
	combout => \screenArea[3][7]~feeder_combout\);

-- Location: FF_X50_Y27_N27
\screenArea[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][7]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][7]~q\);

-- Location: LCCOMB_X51_Y24_N16
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

-- Location: FF_X51_Y24_N17
\screenArea[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][8]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][8]~q\);

-- Location: LCCOMB_X50_Y23_N20
\screenArea[3][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][9]~feeder_combout\ = \screenArea[3][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][8]~q\,
	combout => \screenArea[3][9]~feeder_combout\);

-- Location: FF_X50_Y23_N21
\screenArea[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][9]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][9]~q\);

-- Location: LCCOMB_X50_Y23_N0
\screenArea[3][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][10]~feeder_combout\ = \screenArea[3][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][9]~q\,
	combout => \screenArea[3][10]~feeder_combout\);

-- Location: FF_X50_Y23_N1
\screenArea[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][10]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][10]~q\);

-- Location: LCCOMB_X46_Y25_N0
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

-- Location: FF_X46_Y25_N1
\screenArea[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][11]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][11]~q\);

-- Location: LCCOMB_X46_Y25_N18
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

-- Location: FF_X46_Y25_N19
\screenArea[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][12]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][12]~q\);

-- Location: LCCOMB_X49_Y25_N12
\screenArea[3][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][13]~feeder_combout\ = \screenArea[3][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][12]~q\,
	combout => \screenArea[3][13]~feeder_combout\);

-- Location: FF_X49_Y25_N13
\screenArea[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][13]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][13]~q\);

-- Location: LCCOMB_X49_Y25_N18
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

-- Location: FF_X49_Y25_N19
\screenArea[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][14]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][14]~q\);

-- Location: LCCOMB_X50_Y25_N12
\screenArea[3][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][15]~feeder_combout\ = \screenArea[3][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][14]~q\,
	combout => \screenArea[3][15]~feeder_combout\);

-- Location: FF_X50_Y25_N13
\screenArea[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][15]~q\);

-- Location: LCCOMB_X50_Y25_N16
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

-- Location: FF_X50_Y25_N17
\screenArea[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][16]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][16]~q\);

-- Location: LCCOMB_X47_Y25_N20
\screenArea[3][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][17]~feeder_combout\ = \screenArea[3][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][16]~q\,
	combout => \screenArea[3][17]~feeder_combout\);

-- Location: FF_X47_Y25_N21
\screenArea[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][17]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][17]~q\);

-- Location: LCCOMB_X49_Y25_N22
\screenArea[3][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][18]~feeder_combout\ = \screenArea[3][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][17]~q\,
	combout => \screenArea[3][18]~feeder_combout\);

-- Location: FF_X49_Y25_N23
\screenArea[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][18]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][18]~q\);

-- Location: LCCOMB_X46_Y27_N0
\screenArea[3][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][19]~feeder_combout\ = \screenArea[3][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][18]~q\,
	combout => \screenArea[3][19]~feeder_combout\);

-- Location: FF_X46_Y27_N1
\screenArea[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][19]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][19]~q\);

-- Location: FF_X50_Y24_N19
\screenArea[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[3][19]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][20]~q\);

-- Location: LCCOMB_X46_Y27_N18
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

-- Location: FF_X46_Y27_N19
\screenArea[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][21]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][21]~q\);

-- Location: LCCOMB_X46_Y27_N12
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

-- Location: FF_X46_Y27_N13
\screenArea[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][22]~q\);

-- Location: LCCOMB_X49_Y23_N30
\screenArea[3][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][23]~feeder_combout\ = \screenArea[3][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][22]~q\,
	combout => \screenArea[3][23]~feeder_combout\);

-- Location: FF_X49_Y23_N31
\screenArea[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][23]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][23]~q\);

-- Location: FF_X49_Y23_N27
\screenArea[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[3][23]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][24]~q\);

-- Location: LCCOMB_X45_Y26_N8
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

-- Location: FF_X45_Y26_N9
\screenArea[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][25]~q\);

-- Location: FF_X45_Y26_N3
\screenArea[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[3][25]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][26]~q\);

-- Location: LCCOMB_X47_Y26_N2
\screenArea[3][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][27]~feeder_combout\ = \screenArea[3][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][26]~q\,
	combout => \screenArea[3][27]~feeder_combout\);

-- Location: FF_X47_Y26_N3
\screenArea[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][27]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][27]~q\);

-- Location: FF_X49_Y26_N13
\screenArea[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[3][27]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][28]~q\);

-- Location: LCCOMB_X57_Y30_N14
\Selector4~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~61_combout\ = (ascii_char(0) & (ascii_char(3) $ (ascii_char(1) $ (ascii_char(2))))) # (!ascii_char(0) & (((!ascii_char(3) & ascii_char(1))) # (!ascii_char(2))))

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
	combout => \Selector4~61_combout\);

-- Location: LCCOMB_X57_Y30_N16
\Selector4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~62_combout\ = (ascii_char(2) & (ascii_char(1) & ((!ascii_char(3)) # (!ascii_char(0))))) # (!ascii_char(2) & ((ascii_char(0) & ((!ascii_char(1)))) # (!ascii_char(0) & (!ascii_char(3)))))

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
	combout => \Selector4~62_combout\);

-- Location: LCCOMB_X57_Y30_N22
\Selector4~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~63_combout\ = (!\Add0~0_combout\ & ((ascii_char(4) & (\Selector4~61_combout\)) # (!ascii_char(4) & ((\Selector4~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector4~61_combout\,
	datad => \Selector4~62_combout\,
	combout => \Selector4~63_combout\);

-- Location: LCCOMB_X57_Y30_N8
\Selector4~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~64_combout\ = (ascii_char(0) & (ascii_char(4) $ (((!ascii_char(1) & !ascii_char(2)))))) # (!ascii_char(0) & ((ascii_char(1) & ((ascii_char(2)) # (!ascii_char(4)))) # (!ascii_char(1) & ((!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector4~64_combout\);

-- Location: LCCOMB_X57_Y30_N0
\Selector5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~52_combout\ = (ascii_char(2) & ((ascii_char(0)))) # (!ascii_char(2) & ((!ascii_char(0)) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => ascii_char(1),
	datad => ascii_char(0),
	combout => \Selector5~52_combout\);

-- Location: LCCOMB_X57_Y30_N10
\Selector4~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~73_combout\ = (!ascii_char(5) & (!ascii_char(6) & (\Selector2~22_combout\ & \Selector5~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(6),
	datac => \Selector2~22_combout\,
	datad => \Selector5~52_combout\,
	combout => \Selector4~73_combout\);

-- Location: LCCOMB_X57_Y30_N2
\Selector4~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~65_combout\ = (\Selector4~73_combout\) # ((\Add0~0_combout\ & (\Mux4~1_combout\ & \Selector4~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \Selector4~64_combout\,
	datad => \Selector4~73_combout\,
	combout => \Selector4~65_combout\);

-- Location: LCCOMB_X57_Y30_N28
\Selector4~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~66_combout\ = (\Selector4~63_combout\) # ((\Selector4~65_combout\) # ((\Selector4~38_combout\ & \Selector4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~38_combout\,
	datab => \Selector4~32_combout\,
	datac => \Selector4~63_combout\,
	datad => \Selector4~65_combout\,
	combout => \Selector4~66_combout\);

-- Location: LCCOMB_X56_Y25_N14
\Selector4~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~47_combout\ = (\Selector4~38_combout\ & ((ascii_char(0) & ((ascii_char(3)))) # (!ascii_char(0) & (!ascii_char(1) & !ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => \Selector4~38_combout\,
	combout => \Selector4~47_combout\);

-- Location: LCCOMB_X56_Y25_N24
\Selector4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~48_combout\ = (!\Add0~0_combout\ & ((ascii_char(1) & (!ascii_char(3) & !ascii_char(0))) # (!ascii_char(1) & (ascii_char(3) & ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => \Add0~0_combout\,
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector4~48_combout\);

-- Location: LCCOMB_X55_Y25_N4
\Selector6~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~67_combout\ = (ascii_char(0) & !ascii_char(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector6~67_combout\);

-- Location: LCCOMB_X55_Y25_N18
\Selector4~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~45_combout\ = (ascii_char(2) & (ascii_char(4) $ (((ascii_char(0)) # (!ascii_char(1)))))) # (!ascii_char(2) & (!ascii_char(0) & (!ascii_char(1) & ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector4~45_combout\);

-- Location: LCCOMB_X55_Y25_N16
\Selector4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~46_combout\ = (ascii_char(5) & (ascii_char(1) & (\Selector6~67_combout\))) # (!ascii_char(5) & (((\Selector4~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(5),
	datac => \Selector6~67_combout\,
	datad => \Selector4~45_combout\,
	combout => \Selector4~46_combout\);

-- Location: LCCOMB_X55_Y25_N20
\Selector4~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~70_combout\ = (!ascii_char(3) & (\Selector4~46_combout\ & (ascii_char(6) $ (!ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => ascii_char(3),
	datac => ascii_char(5),
	datad => \Selector4~46_combout\,
	combout => \Selector4~70_combout\);

-- Location: LCCOMB_X56_Y25_N22
\Selector4~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~49_combout\ = (\Selector4~70_combout\) # ((\Mux4~0_combout\ & ((\Selector4~47_combout\) # (\Selector4~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~47_combout\,
	datab => \Mux4~0_combout\,
	datac => \Selector4~48_combout\,
	datad => \Selector4~70_combout\,
	combout => \Selector4~49_combout\);

-- Location: LCCOMB_X57_Y30_N26
\Selector4~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~35_combout\ = (ascii_char(1) & (ascii_char(2) & ((ascii_char(4)) # (ascii_char(3))))) # (!ascii_char(1) & (!ascii_char(4) & (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector4~35_combout\);

-- Location: LCCOMB_X57_Y30_N24
\Selector4~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~69_combout\ = (ascii_char(3) & ((\Selector4~33_combout\) # ((!ascii_char(4) & ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => \Selector4~33_combout\,
	combout => \Selector4~69_combout\);

-- Location: LCCOMB_X57_Y30_N12
\Selector4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~36_combout\ = (!\Add0~0_combout\ & ((\Selector4~69_combout\) # ((!ascii_char(0) & \Selector4~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(0),
	datac => \Selector4~35_combout\,
	datad => \Selector4~69_combout\,
	combout => \Selector4~36_combout\);

-- Location: LCCOMB_X56_Y30_N22
\Selector4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~16_combout\ = (ascii_char(2) & (!ascii_char(4) & ((ascii_char(1)) # (ascii_char(0))))) # (!ascii_char(2) & (ascii_char(4) $ (((!ascii_char(1) & !ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Selector4~16_combout\);

-- Location: LCCOMB_X56_Y30_N28
\Selector4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~17_combout\ = (ascii_char(1) & (!ascii_char(0) & (ascii_char(2) & !ascii_char(4)))) # (!ascii_char(1) & ((ascii_char(2) & ((ascii_char(4)))) # (!ascii_char(2) & (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Selector4~17_combout\);

-- Location: LCCOMB_X56_Y30_N10
\Selector4~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~75_combout\ = (ascii_char(3) & ((\Selector4~17_combout\))) # (!ascii_char(3) & (\Selector4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datac => \Selector4~16_combout\,
	datad => \Selector4~17_combout\,
	combout => \Selector4~75_combout\);

-- Location: LCCOMB_X56_Y30_N14
\Selector4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~12_combout\ = (ascii_char(4) & (!ascii_char(1) & (ascii_char(0) $ (!ascii_char(3))))) # (!ascii_char(4) & (ascii_char(1) $ (((!ascii_char(0) & !ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector4~12_combout\);

-- Location: LCCOMB_X56_Y30_N20
\Selector4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~13_combout\ = (ascii_char(0) & (((!ascii_char(4))))) # (!ascii_char(0) & (ascii_char(1) $ (((!ascii_char(4) & !ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector4~13_combout\);

-- Location: LCCOMB_X56_Y30_N30
\Selector4~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~74_combout\ = (ascii_char(2) & ((\Selector4~13_combout\))) # (!ascii_char(2) & (\Selector4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(2),
	datac => \Selector4~12_combout\,
	datad => \Selector4~13_combout\,
	combout => \Selector4~74_combout\);

-- Location: LCCOMB_X56_Y30_N2
\Selector4~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~39_combout\ = (\Selector4~75_combout\ & ((\Selector4~38_combout\) # ((\Selector4~37_combout\ & \Selector4~74_combout\)))) # (!\Selector4~75_combout\ & (\Selector4~37_combout\ & (\Selector4~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~75_combout\,
	datab => \Selector4~37_combout\,
	datac => \Selector4~74_combout\,
	datad => \Selector4~38_combout\,
	combout => \Selector4~39_combout\);

-- Location: LCCOMB_X56_Y30_N16
\Selector4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~40_combout\ = (\Selector4~34_combout\ & ((\Selector4~36_combout\) # (\Selector4~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~34_combout\,
	datac => \Selector4~36_combout\,
	datad => \Selector4~39_combout\,
	combout => \Selector4~40_combout\);

-- Location: LCCOMB_X55_Y29_N24
\Selector4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~42_combout\ = (!\Add0~0_combout\ & ((ascii_char(1) & ((!ascii_char(0)))) # (!ascii_char(1) & (ascii_char(2) & ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => \Add0~0_combout\,
	datad => ascii_char(0),
	combout => \Selector4~42_combout\);

-- Location: LCCOMB_X55_Y29_N30
\Selector4~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~43_combout\ = (\Selector4~42_combout\) # ((\Mux14~6_combout\ & (!\Selector5~67_combout\ & \Selector4~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~6_combout\,
	datab => \Selector5~67_combout\,
	datac => \Selector4~38_combout\,
	datad => \Selector4~42_combout\,
	combout => \Selector4~43_combout\);

-- Location: LCCOMB_X55_Y29_N18
\Selector4~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~41_combout\ = (\Selector6~67_combout\ & (\Selector4~37_combout\ & (ascii_char(1) $ (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => \Selector6~67_combout\,
	datad => \Selector4~37_combout\,
	combout => \Selector4~41_combout\);

-- Location: LCCOMB_X55_Y29_N8
\Selector4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~44_combout\ = (ascii_char(3) & ((\Selector4~41_combout\) # ((!ascii_char(4) & \Selector4~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => \Selector4~43_combout\,
	datad => \Selector4~41_combout\,
	combout => \Selector4~44_combout\);

-- Location: LCCOMB_X57_Y28_N4
\Selector4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~50_combout\ = (\Selector4~40_combout\) # ((\Selector5~29_combout\ & ((\Selector4~49_combout\) # (\Selector4~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~49_combout\,
	datab => \Selector5~29_combout\,
	datac => \Selector4~40_combout\,
	datad => \Selector4~44_combout\,
	combout => \Selector4~50_combout\);

-- Location: LCCOMB_X55_Y25_N22
\Selector4~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~51_combout\ = ascii_char(1) $ (((ascii_char(3)) # (!ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector4~51_combout\);

-- Location: LCCOMB_X55_Y25_N14
\Selector5~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~72_combout\ = (ascii_char(2) & !ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datac => ascii_char(0),
	combout => \Selector5~72_combout\);

-- Location: LCCOMB_X55_Y25_N0
\Selector4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~52_combout\ = (ascii_char(4) & (!ascii_char(1) & !ascii_char(3))) # (!ascii_char(4) & (ascii_char(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector4~52_combout\);

-- Location: LCCOMB_X55_Y25_N6
\Selector4~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~53_combout\ = (\Selector4~51_combout\ & ((\Selector5~72_combout\) # ((\Selector6~67_combout\ & \Selector4~52_combout\)))) # (!\Selector4~51_combout\ & (((\Selector6~67_combout\ & \Selector4~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~51_combout\,
	datab => \Selector5~72_combout\,
	datac => \Selector6~67_combout\,
	datad => \Selector4~52_combout\,
	combout => \Selector4~53_combout\);

-- Location: LCCOMB_X58_Y28_N10
\Selector4~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~25_combout\ = (ascii_char(0) & (!ascii_char(1) & (ascii_char(2) $ (!ascii_char(3))))) # (!ascii_char(0) & (ascii_char(2) & (ascii_char(3) $ (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector4~25_combout\);

-- Location: LCCOMB_X58_Y28_N4
\Selector4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~24_combout\ = (ascii_char(3) & (ascii_char(1) & (ascii_char(2) $ (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector4~24_combout\);

-- Location: LCCOMB_X58_Y28_N12
\Selector4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~21_combout\ = (ascii_char(2) & ((ascii_char(3) & (!ascii_char(0) & !ascii_char(1))) # (!ascii_char(3) & (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector4~21_combout\);

-- Location: LCCOMB_X58_Y28_N22
\Selector4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~22_combout\ = (ascii_char(0) & (((!ascii_char(3) & ascii_char(1))))) # (!ascii_char(0) & (ascii_char(2) & (ascii_char(3) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Selector4~22_combout\);

-- Location: LCCOMB_X58_Y28_N20
\Selector4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~28_combout\ = (ascii_char(5) & (((ascii_char(4))))) # (!ascii_char(5) & ((ascii_char(4) & ((\Selector4~22_combout\))) # (!ascii_char(4) & (\Selector4~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~21_combout\,
	datab => ascii_char(5),
	datac => \Selector4~22_combout\,
	datad => ascii_char(4),
	combout => \Selector4~28_combout\);

-- Location: LCCOMB_X58_Y28_N18
\Selector4~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~29_combout\ = (ascii_char(5) & ((\Selector4~28_combout\ & (\Selector4~25_combout\)) # (!\Selector4~28_combout\ & ((\Selector4~24_combout\))))) # (!ascii_char(5) & (((\Selector4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~25_combout\,
	datab => ascii_char(5),
	datac => \Selector4~24_combout\,
	datad => \Selector4~28_combout\,
	combout => \Selector4~29_combout\);

-- Location: LCCOMB_X58_Y25_N22
\Selector4~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~57_combout\ = (ascii_char(2) & ((ascii_char(1) & ((ascii_char(4)))) # (!ascii_char(1) & (!ascii_char(0) & !ascii_char(4))))) # (!ascii_char(2) & (ascii_char(0) & (ascii_char(1) $ (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector4~57_combout\);

-- Location: LCCOMB_X58_Y25_N10
\Selector4~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~76_combout\ = (ascii_char(1) & (ascii_char(4) & (ascii_char(0) $ (!ascii_char(2))))) # (!ascii_char(1) & ((ascii_char(0) & ((!ascii_char(2)))) # (!ascii_char(0) & (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector4~76_combout\);

-- Location: LCCOMB_X58_Y25_N8
\Selector4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~58_combout\ = (ascii_char(3) & ((\Selector4~76_combout\))) # (!ascii_char(3) & (!\Selector4~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datac => \Selector4~57_combout\,
	datad => \Selector4~76_combout\,
	combout => \Selector4~58_combout\);

-- Location: LCCOMB_X57_Y28_N16
\Selector4~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~55_combout\ = (ascii_char(4) & (ascii_char(1))) # (!ascii_char(4) & ((ascii_char(2) & (ascii_char(1))) # (!ascii_char(2) & ((!ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector4~55_combout\);

-- Location: LCCOMB_X57_Y28_N20
\Selector4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~30_combout\ = (ascii_char(4) & (!ascii_char(3) & ascii_char(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector4~30_combout\);

-- Location: LCCOMB_X57_Y28_N14
\Selector4~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~71_combout\ = (ascii_char(5) & ((ascii_char(0) & (!ascii_char(4))) # (!ascii_char(0) & ((\Selector4~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => ascii_char(5),
	datad => \Selector4~30_combout\,
	combout => \Selector4~71_combout\);

-- Location: LCCOMB_X57_Y28_N2
\Selector4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~54_combout\ = (\Mux4~1_combout\ & ((ascii_char(0) & ((\Selector6~89_combout\) # (!ascii_char(1)))) # (!ascii_char(0) & ((ascii_char(1)) # (!\Selector6~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => \Mux4~1_combout\,
	datad => \Selector6~89_combout\,
	combout => \Selector4~54_combout\);

-- Location: LCCOMB_X57_Y28_N6
\Selector4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~56_combout\ = (\Selector5~49_combout\) # ((\Selector4~54_combout\) # ((\Selector4~55_combout\ & \Selector4~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~55_combout\,
	datab => \Selector5~49_combout\,
	datac => \Selector4~71_combout\,
	datad => \Selector4~54_combout\,
	combout => \Selector4~56_combout\);

-- Location: LCCOMB_X57_Y28_N28
\Selector4~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~59_combout\ = (\shiftedColumnState.COL3~q\ & (\Add0~0_combout\)) # (!\shiftedColumnState.COL3~q\ & ((\Add0~0_combout\ & ((\Selector4~56_combout\))) # (!\Add0~0_combout\ & (\Selector4~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => \Add0~0_combout\,
	datac => \Selector4~58_combout\,
	datad => \Selector4~56_combout\,
	combout => \Selector4~59_combout\);

-- Location: LCCOMB_X57_Y28_N18
\Selector4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~60_combout\ = (\shiftedColumnState.COL3~q\ & ((\Selector4~59_combout\ & ((\Selector4~29_combout\))) # (!\Selector4~59_combout\ & (\Selector4~53_combout\)))) # (!\shiftedColumnState.COL3~q\ & (((\Selector4~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~53_combout\,
	datab => \Selector4~29_combout\,
	datac => \shiftedColumnState.COL3~q\,
	datad => \Selector4~59_combout\,
	combout => \Selector4~60_combout\);

-- Location: LCCOMB_X57_Y28_N24
\Selector4~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~72_combout\ = (!\shiftedColumnState.COL5~q\ & (!\shiftedColumnState.COL4~q\ & (!\shiftedColumnState.COL6~q\ & \Selector4~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \shiftedColumnState.COL4~q\,
	datac => \shiftedColumnState.COL6~q\,
	datad => \Selector4~60_combout\,
	combout => \Selector4~72_combout\);

-- Location: LCCOMB_X57_Y28_N12
\Selector4~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~67_combout\ = (\Selector4~50_combout\) # ((\Selector4~72_combout\) # ((\Selector4~66_combout\ & \shiftedColumnState.COL6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~66_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datac => \Selector4~50_combout\,
	datad => \Selector4~72_combout\,
	combout => \Selector4~67_combout\);

-- Location: LCCOMB_X57_Y28_N22
\Selector4~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~68_combout\ = (!\shiftedColumnState.COL7~q\ & ((\screenArea[6][0]~4_combout\ & (\Mux4~2_combout\)) # (!\screenArea[6][0]~4_combout\ & ((\Selector4~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][0]~4_combout\,
	datab => \shiftedColumnState.COL7~q\,
	datac => \Mux4~2_combout\,
	datad => \Selector4~67_combout\,
	combout => \Selector4~68_combout\);

-- Location: FF_X57_Y28_N23
\screenArea[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Selector4~68_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][0]~q\);

-- Location: LCCOMB_X49_Y26_N8
\screenArea[4][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][1]~feeder_combout\ = \screenArea[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][0]~q\,
	combout => \screenArea[4][1]~feeder_combout\);

-- Location: FF_X49_Y26_N9
\screenArea[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][1]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][1]~q\);

-- Location: FF_X51_Y26_N31
\screenArea[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][1]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][2]~q\);

-- Location: FF_X51_Y26_N29
\screenArea[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][2]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][3]~q\);

-- Location: FF_X49_Y26_N19
\screenArea[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][3]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][4]~q\);

-- Location: FF_X50_Y26_N1
\screenArea[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][4]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][5]~q\);

-- Location: FF_X49_Y26_N25
\screenArea[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][5]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][6]~q\);

-- Location: FF_X51_Y24_N23
\screenArea[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][6]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][7]~q\);

-- Location: FF_X51_Y24_N27
\screenArea[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][7]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][8]~q\);

-- Location: FF_X50_Y23_N9
\screenArea[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][8]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][9]~q\);

-- Location: FF_X50_Y23_N31
\screenArea[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][9]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][10]~q\);

-- Location: FF_X46_Y25_N23
\screenArea[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][10]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][11]~q\);

-- Location: FF_X46_Y25_N13
\screenArea[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][11]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][12]~q\);

-- Location: FF_X45_Y27_N1
\screenArea[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][12]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][13]~q\);

-- Location: LCCOMB_X45_Y27_N10
\screenArea[4][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][14]~feeder_combout\ = \screenArea[4][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][13]~q\,
	combout => \screenArea[4][14]~feeder_combout\);

-- Location: FF_X45_Y27_N11
\screenArea[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][14]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][14]~q\);

-- Location: LCCOMB_X50_Y25_N18
\screenArea[4][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][15]~feeder_combout\ = \screenArea[4][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][14]~q\,
	combout => \screenArea[4][15]~feeder_combout\);

-- Location: FF_X50_Y25_N19
\screenArea[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][15]~q\);

-- Location: LCCOMB_X50_Y25_N2
\screenArea[4][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][16]~feeder_combout\ = \screenArea[4][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[4][15]~q\,
	combout => \screenArea[4][16]~feeder_combout\);

-- Location: FF_X50_Y25_N3
\screenArea[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][16]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][16]~q\);

-- Location: FF_X47_Y25_N3
\screenArea[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][16]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][17]~q\);

-- Location: LCCOMB_X46_Y25_N2
\screenArea[4][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][18]~feeder_combout\ = \screenArea[4][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][17]~q\,
	combout => \screenArea[4][18]~feeder_combout\);

-- Location: FF_X46_Y25_N3
\screenArea[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][18]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][18]~q\);

-- Location: FF_X50_Y24_N21
\screenArea[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][18]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][19]~q\);

-- Location: LCCOMB_X46_Y27_N14
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

-- Location: FF_X46_Y27_N15
\screenArea[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][20]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][20]~q\);

-- Location: LCCOMB_X46_Y27_N16
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

-- Location: FF_X46_Y27_N17
\screenArea[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][21]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][21]~q\);

-- Location: LCCOMB_X46_Y27_N26
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

-- Location: FF_X46_Y27_N27
\screenArea[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][22]~q\);

-- Location: LCCOMB_X49_Y23_N8
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

-- Location: FF_X49_Y23_N9
\screenArea[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][23]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][23]~q\);

-- Location: FF_X49_Y23_N17
\screenArea[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][23]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][24]~q\);

-- Location: LCCOMB_X45_Y26_N26
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

-- Location: FF_X45_Y26_N27
\screenArea[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][25]~q\);

-- Location: FF_X45_Y26_N31
\screenArea[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][25]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][26]~q\);

-- Location: LCCOMB_X47_Y26_N22
\screenArea[4][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[4][27]~feeder_combout\ = \screenArea[4][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[4][26]~q\,
	combout => \screenArea[4][27]~feeder_combout\);

-- Location: FF_X47_Y26_N23
\screenArea[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][27]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][27]~q\);

-- Location: LCCOMB_X49_Y26_N2
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

-- Location: FF_X49_Y26_N3
\screenArea[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[4][28]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][28]~q\);

-- Location: LCCOMB_X49_Y26_N12
\Selector22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][28]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][28]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][28]~q\,
	datad => \screenArea[4][28]~q\,
	combout => \Selector22~3_combout\);

-- Location: LCCOMB_X49_Y26_N24
\Selector22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = (\Selector22~3_combout\) # ((\screenArea[0][28]~q\ & !\scanStateVariable.LOAD1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[0][28]~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datad => \Selector22~3_combout\,
	combout => \Selector22~4_combout\);

-- Location: LCCOMB_X58_Y25_N4
\Selector6~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~84_combout\ = (ascii_char(1) & ((ascii_char(0) & ((!ascii_char(2)))) # (!ascii_char(0) & ((ascii_char(2)) # (!ascii_char(4)))))) # (!ascii_char(1) & (((ascii_char(4) & ascii_char(2))) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector6~84_combout\);

-- Location: LCCOMB_X58_Y25_N18
\Selector6~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~83_combout\ = ascii_char(2) $ (((!ascii_char(0)) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector6~83_combout\);

-- Location: LCCOMB_X58_Y25_N20
\Selector6~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~94_combout\ = (ascii_char(3) & (((ascii_char(4) & \Selector6~83_combout\)))) # (!ascii_char(3) & (\Selector6~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => \Selector6~84_combout\,
	datac => ascii_char(4),
	datad => \Selector6~83_combout\,
	combout => \Selector6~94_combout\);

-- Location: LCCOMB_X58_Y27_N22
\Selector6~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~85_combout\ = (!ascii_char(4) & (ascii_char(1) $ (((!ascii_char(3) & !ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Selector6~85_combout\);

-- Location: LCCOMB_X58_Y27_N26
\Selector6~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~95_combout\ = (!ascii_char(3) & (!ascii_char(2) & ((\Selector2~21_combout\) # (!\Selector5~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => \Selector5~27_combout\,
	datad => \Selector2~21_combout\,
	combout => \Selector6~95_combout\);

-- Location: LCCOMB_X58_Y27_N4
\Selector6~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~86_combout\ = (ascii_char(5) & ((\Selector6~95_combout\) # ((\Selector6~85_combout\ & ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~85_combout\,
	datab => ascii_char(5),
	datac => \Selector6~95_combout\,
	datad => ascii_char(2),
	combout => \Selector6~86_combout\);

-- Location: LCCOMB_X56_Y30_N0
\Selector6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~26_combout\ = (ascii_char(4) & ((ascii_char(2)) # (ascii_char(3) $ (ascii_char(1))))) # (!ascii_char(4) & (ascii_char(3) & ((ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector6~26_combout\);

-- Location: LCCOMB_X59_Y27_N28
\Selector6~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~25_combout\ = (ascii_char(3) & (!ascii_char(2) & ((ascii_char(4))))) # (!ascii_char(3) & ((ascii_char(2) $ (!ascii_char(4))) # (!ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(3),
	datac => ascii_char(1),
	datad => ascii_char(4),
	combout => \Selector6~25_combout\);

-- Location: LCCOMB_X56_Y27_N24
\Selector6~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~96_combout\ = (!ascii_char(5) & ((ascii_char(0) & (\Selector6~26_combout\)) # (!ascii_char(0) & ((\Selector6~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~26_combout\,
	datab => \Selector6~25_combout\,
	datac => ascii_char(5),
	datad => ascii_char(0),
	combout => \Selector6~96_combout\);

-- Location: LCCOMB_X56_Y27_N12
\Selector6~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~87_combout\ = (\Add0~0_combout\ & (((\Selector6~86_combout\) # (\Selector6~96_combout\)))) # (!\Add0~0_combout\ & (\Selector6~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~94_combout\,
	datac => \Selector6~86_combout\,
	datad => \Selector6~96_combout\,
	combout => \Selector6~87_combout\);

-- Location: LCCOMB_X59_Y27_N26
\Selector6~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~81_combout\ = (\shiftedColumnState.COL4~q\ & !\shiftedColumnState.COL5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL4~q\,
	datad => \shiftedColumnState.COL5~q\,
	combout => \Selector6~81_combout\);

-- Location: LCCOMB_X56_Y27_N4
\Selector6~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~104_combout\ = (ascii_char(6) & ((ascii_char(1) & ((ascii_char(0)))) # (!ascii_char(1) & (!ascii_char(3))))) # (!ascii_char(6) & (ascii_char(3) $ (((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector6~104_combout\);

-- Location: LCCOMB_X56_Y27_N30
\Selector6~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~105_combout\ = (\Selector6~104_combout\ & (ascii_char(2) $ (((ascii_char(0) & !ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => \Selector6~104_combout\,
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector6~105_combout\);

-- Location: LCCOMB_X59_Y27_N8
\Selector6~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~102_combout\ = (ascii_char(0) & (ascii_char(2) $ (ascii_char(1) $ (!ascii_char(6))))) # (!ascii_char(0) & (((ascii_char(1) & !ascii_char(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(6),
	combout => \Selector6~102_combout\);

-- Location: LCCOMB_X56_Y27_N10
\Selector6~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~103_combout\ = (\Selector6~102_combout\ & ((ascii_char(2) & ((ascii_char(3)))) # (!ascii_char(2) & ((ascii_char(6)) # (!ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => \Selector6~102_combout\,
	datac => ascii_char(6),
	datad => ascii_char(3),
	combout => \Selector6~103_combout\);

-- Location: LCCOMB_X56_Y27_N2
\Selector6~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~100_combout\ = (ascii_char(5) & ((ascii_char(4) & (\Selector6~105_combout\)) # (!ascii_char(4) & ((\Selector6~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~105_combout\,
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => \Selector6~103_combout\,
	combout => \Selector6~100_combout\);

-- Location: LCCOMB_X56_Y27_N26
\Selector6~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~71_combout\ = (!ascii_char(5) & (!ascii_char(1) & (!ascii_char(2) & !ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector6~71_combout\);

-- Location: LCCOMB_X56_Y27_N20
\Selector6~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~70_combout\ = (ascii_char(4) & ((ascii_char(3) & (!ascii_char(0) & !ascii_char(1))) # (!ascii_char(3) & (ascii_char(0) & ascii_char(1))))) # (!ascii_char(4) & ((ascii_char(3) & (ascii_char(0) & ascii_char(1))) # (!ascii_char(3) & (ascii_char(0) 
-- $ (ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(1),
	combout => \Selector6~70_combout\);

-- Location: LCCOMB_X56_Y27_N28
\Selector6~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~72_combout\ = (\Selector6~71_combout\ & ((\Selector2~21_combout\) # ((\Selector6~70_combout\ & \Selector3~13_combout\)))) # (!\Selector6~71_combout\ & (\Selector6~70_combout\ & ((\Selector3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~71_combout\,
	datab => \Selector6~70_combout\,
	datac => \Selector2~21_combout\,
	datad => \Selector3~13_combout\,
	combout => \Selector6~72_combout\);

-- Location: LCCOMB_X56_Y27_N8
\Selector6~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~101_combout\ = (\shiftedColumnState.COL5~q\ & ((\Selector6~100_combout\) # (\Selector6~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL5~q\,
	datab => \Selector6~100_combout\,
	datad => \Selector6~72_combout\,
	combout => \Selector6~101_combout\);

-- Location: LCCOMB_X59_Y27_N16
\Selector6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~48_combout\ = (!\shiftedColumnState.COL5~q\ & !\shiftedColumnState.COL4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shiftedColumnState.COL5~q\,
	datad => \shiftedColumnState.COL4~q\,
	combout => \Selector6~48_combout\);

-- Location: LCCOMB_X56_Y27_N14
\Selector6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~54_combout\ = (ascii_char(4) & (((!ascii_char(1) & !ascii_char(3))))) # (!ascii_char(4) & ((ascii_char(3) & ((ascii_char(1)))) # (!ascii_char(3) & (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~54_combout\);

-- Location: LCCOMB_X56_Y27_N16
\Selector6~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~106_combout\ = (ascii_char(4) & ((ascii_char(1) & ((!ascii_char(3)))) # (!ascii_char(1) & (ascii_char(5) & ascii_char(3))))) # (!ascii_char(4) & (ascii_char(5) $ (ascii_char(1) $ (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Selector6~106_combout\);

-- Location: LCCOMB_X56_Y27_N6
\Selector6~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~107_combout\ = (\Selector6~106_combout\ & (ascii_char(2) $ (((ascii_char(5)) # (!ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => \Selector6~106_combout\,
	combout => \Selector6~107_combout\);

-- Location: LCCOMB_X57_Y27_N24
\Selector6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~50_combout\ = (!ascii_char(1) & \Selector6~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(1),
	datad => \Selector6~49_combout\,
	combout => \Selector6~50_combout\);

-- Location: LCCOMB_X57_Y27_N2
\Selector6~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~53_combout\ = (ascii_char(0) & (((\Selector6~107_combout\)))) # (!ascii_char(0) & ((\Selector6~97_combout\) # ((\Selector6~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~97_combout\,
	datab => ascii_char(0),
	datac => \Selector6~107_combout\,
	datad => \Selector6~50_combout\,
	combout => \Selector6~53_combout\);

-- Location: LCCOMB_X57_Y27_N8
\Selector6~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~55_combout\ = (\Add0~0_combout\ & (((\Selector6~53_combout\)))) # (!\Add0~0_combout\ & (\Selector6~54_combout\ & (ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~54_combout\,
	datab => ascii_char(0),
	datac => \Add0~0_combout\,
	datad => \Selector6~53_combout\,
	combout => \Selector6~55_combout\);

-- Location: LCCOMB_X57_Y27_N14
\Selector6~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~59_combout\ = (ascii_char(0) & ((ascii_char(4) & ((!ascii_char(3)))) # (!ascii_char(4) & (!ascii_char(2))))) # (!ascii_char(0) & (ascii_char(3) & ((ascii_char(2)) # (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~59_combout\);

-- Location: LCCOMB_X57_Y27_N12
\Selector6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~60_combout\ = (ascii_char(5) & (((!ascii_char(1))))) # (!ascii_char(5) & (((ascii_char(4) & !ascii_char(1))) # (!\Selector6~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Selector6~59_combout\,
	datad => ascii_char(1),
	combout => \Selector6~60_combout\);

-- Location: LCCOMB_X57_Y27_N4
\Selector5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~26_combout\ = (!ascii_char(2) & !ascii_char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector5~26_combout\);

-- Location: LCCOMB_X57_Y27_N18
\Selector6~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~61_combout\ = (ascii_char(0) & ((ascii_char(2)) # ((ascii_char(4) & ascii_char(3))))) # (!ascii_char(0) & (ascii_char(4) $ (((!ascii_char(2) & !ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => ascii_char(3),
	combout => \Selector6~61_combout\);

-- Location: LCCOMB_X57_Y27_N16
\Selector6~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~62_combout\ = (ascii_char(2) & (!ascii_char(4))) # (!ascii_char(2) & ((ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector6~62_combout\);

-- Location: LCCOMB_X57_Y27_N6
\Selector6~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~63_combout\ = (\Add0~0_combout\ & (((!ascii_char(3) & \Selector6~62_combout\)))) # (!\Add0~0_combout\ & (\Selector6~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector6~61_combout\,
	datac => ascii_char(3),
	datad => \Selector6~62_combout\,
	combout => \Selector6~63_combout\);

-- Location: LCCOMB_X57_Y27_N22
\Selector6~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~64_combout\ = (\Selector6~63_combout\) # ((\Add0~0_combout\ & (\Selector5~26_combout\ & \Selector2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector5~26_combout\,
	datac => \Selector2~22_combout\,
	datad => \Selector6~63_combout\,
	combout => \Selector6~64_combout\);

-- Location: LCCOMB_X58_Y27_N12
\Selector6~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~57_combout\ = (!ascii_char(3) & ((!ascii_char(0)) # (!ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector6~57_combout\);

-- Location: LCCOMB_X58_Y27_N6
\Selector6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~56_combout\ = (ascii_char(4) & ((ascii_char(0) & ((ascii_char(3)))) # (!ascii_char(0) & (ascii_char(2) & !ascii_char(3))))) # (!ascii_char(4) & ((ascii_char(0) & ((!ascii_char(3)) # (!ascii_char(2)))) # (!ascii_char(0) & ((ascii_char(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector6~56_combout\);

-- Location: LCCOMB_X58_Y27_N16
\Selector6~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~92_combout\ = ascii_char(2) $ (((ascii_char(5) $ (!ascii_char(6))) # (!\Selector6~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(6),
	datac => ascii_char(2),
	datad => \Selector6~56_combout\,
	combout => \Selector6~92_combout\);

-- Location: LCCOMB_X58_Y27_N18
\Selector6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~58_combout\ = (\Add0~0_combout\ & ((\Selector6~92_combout\ & (\Selector6~57_combout\)) # (!\Selector6~92_combout\ & ((\Selector2~21_combout\))))) # (!\Add0~0_combout\ & (((\Selector6~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~57_combout\,
	datab => \Selector2~21_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector6~92_combout\,
	combout => \Selector6~58_combout\);

-- Location: LCCOMB_X57_Y27_N28
\Selector6~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~65_combout\ = (\Selector6~60_combout\ & (((\Selector6~64_combout\)) # (!ascii_char(5)))) # (!\Selector6~60_combout\ & (ascii_char(5) & ((\Selector6~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~60_combout\,
	datab => ascii_char(5),
	datac => \Selector6~64_combout\,
	datad => \Selector6~58_combout\,
	combout => \Selector6~65_combout\);

-- Location: LCCOMB_X57_Y27_N10
\Selector6~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~66_combout\ = (\Selector6~48_combout\ & ((\shiftedColumnState.COL3~q\ & (\Selector6~55_combout\)) # (!\shiftedColumnState.COL3~q\ & ((\Selector6~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL3~q\,
	datab => \Selector6~48_combout\,
	datac => \Selector6~55_combout\,
	datad => \Selector6~65_combout\,
	combout => \Selector6~66_combout\);

-- Location: LCCOMB_X55_Y25_N30
\Selector6~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~75_combout\ = (!ascii_char(4) & (!ascii_char(0) & (ascii_char(3) $ (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector6~75_combout\);

-- Location: LCCOMB_X55_Y25_N28
\Selector6~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~76_combout\ = (ascii_char(3) & (((ascii_char(4) & !ascii_char(0))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector6~76_combout\);

-- Location: LCCOMB_X55_Y25_N26
\Selector6~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~77_combout\ = (ascii_char(1) & (((\Selector6~76_combout\ & !\Add0~0_combout\)))) # (!ascii_char(1) & ((\Selector6~75_combout\) # ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~75_combout\,
	datab => \Selector6~76_combout\,
	datac => ascii_char(1),
	datad => \Add0~0_combout\,
	combout => \Selector6~77_combout\);

-- Location: LCCOMB_X54_Y28_N4
\Selector6~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~78_combout\ = (ascii_char(2)) # ((ascii_char(4) & ascii_char(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector6~78_combout\);

-- Location: LCCOMB_X54_Y28_N10
\Selector6~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~93_combout\ = (!ascii_char(2) & (!ascii_char(0) & (!ascii_char(3) & \Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => \Mux0~7_combout\,
	combout => \Selector6~93_combout\);

-- Location: LCCOMB_X54_Y28_N6
\Selector6~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~79_combout\ = (\Selector6~93_combout\) # ((ascii_char(5) & (ascii_char(3) & \Selector6~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(3),
	datac => \Selector6~78_combout\,
	datad => \Selector6~93_combout\,
	combout => \Selector6~79_combout\);

-- Location: LCCOMB_X55_Y25_N10
\Selector6~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~73_combout\ = (ascii_char(5) & (ascii_char(4) & (ascii_char(0) & !ascii_char(2)))) # (!ascii_char(5) & (!ascii_char(0) & ((ascii_char(2)) # (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector6~73_combout\);

-- Location: LCCOMB_X54_Y28_N16
\Selector6~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~98_combout\ = (ascii_char(0) & (ascii_char(2) $ (((ascii_char(5)) # (!ascii_char(4)))))) # (!ascii_char(0) & (ascii_char(5) & (!ascii_char(4) & ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(0),
	combout => \Selector6~98_combout\);

-- Location: LCCOMB_X54_Y28_N18
\Selector6~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~99_combout\ = (!ascii_char(3) & (\Selector6~98_combout\ & ((ascii_char(5)) # (ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => \Selector6~98_combout\,
	combout => \Selector6~99_combout\);

-- Location: LCCOMB_X55_Y25_N12
\Selector6~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~74_combout\ = (\Selector6~99_combout\) # ((\Selector6~73_combout\ & ascii_char(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~73_combout\,
	datab => ascii_char(3),
	datad => \Selector6~99_combout\,
	combout => \Selector6~74_combout\);

-- Location: LCCOMB_X55_Y25_N24
\Selector6~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~80_combout\ = (\Selector6~77_combout\ & (((\Selector6~79_combout\)) # (!\Add0~0_combout\))) # (!\Selector6~77_combout\ & (\Add0~0_combout\ & ((\Selector6~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~77_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector6~79_combout\,
	datad => \Selector6~74_combout\,
	combout => \Selector6~80_combout\);

-- Location: LCCOMB_X56_Y27_N18
\Selector6~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~82_combout\ = (\Selector6~101_combout\) # ((\Selector6~66_combout\) # ((\Selector6~81_combout\ & \Selector6~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~81_combout\,
	datab => \Selector6~101_combout\,
	datac => \Selector6~66_combout\,
	datad => \Selector6~80_combout\,
	combout => \Selector6~82_combout\);

-- Location: LCCOMB_X56_Y27_N0
\screenArea[6][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][0]~0_combout\ = (\shiftedColumnState.COL6~q\ & (\Selector6~87_combout\)) # (!\shiftedColumnState.COL6~q\ & ((\Selector6~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~87_combout\,
	datab => \shiftedColumnState.COL6~q\,
	datad => \Selector6~82_combout\,
	combout => \screenArea[6][0]~0_combout\);

-- Location: FF_X56_Y27_N1
\screenArea[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][0]~0_combout\,
	asdata => \Mux4~2_combout\,
	sload => \screenArea[6][0]~4_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][0]~q\);

-- Location: LCCOMB_X49_Y25_N14
\screenArea[6][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][1]~feeder_combout\ = \screenArea[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][0]~q\,
	combout => \screenArea[6][1]~feeder_combout\);

-- Location: FF_X49_Y25_N15
\screenArea[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][1]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][1]~q\);

-- Location: LCCOMB_X51_Y25_N4
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

-- Location: FF_X51_Y25_N5
\screenArea[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][2]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][2]~q\);

-- Location: LCCOMB_X51_Y25_N30
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

-- Location: FF_X51_Y25_N31
\screenArea[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][3]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][3]~q\);

-- Location: LCCOMB_X51_Y23_N30
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

-- Location: FF_X51_Y23_N31
\screenArea[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][4]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][4]~q\);

-- Location: LCCOMB_X51_Y23_N4
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

-- Location: FF_X51_Y23_N5
\screenArea[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][5]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][5]~q\);

-- Location: LCCOMB_X51_Y23_N26
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

-- Location: FF_X51_Y23_N27
\screenArea[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][6]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][6]~q\);

-- Location: LCCOMB_X52_Y24_N0
\screenArea[6][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][7]~feeder_combout\ = \screenArea[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][6]~q\,
	combout => \screenArea[6][7]~feeder_combout\);

-- Location: FF_X52_Y24_N1
\screenArea[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][7]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][7]~q\);

-- Location: FF_X51_Y24_N13
\screenArea[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[6][7]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][8]~q\);

-- Location: LCCOMB_X49_Y27_N22
\screenArea[6][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][9]~feeder_combout\ = \screenArea[6][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][8]~q\,
	combout => \screenArea[6][9]~feeder_combout\);

-- Location: FF_X49_Y27_N23
\screenArea[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][9]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][9]~q\);

-- Location: LCCOMB_X49_Y27_N4
\screenArea[6][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][10]~feeder_combout\ = \screenArea[6][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][9]~q\,
	combout => \screenArea[6][10]~feeder_combout\);

-- Location: FF_X49_Y27_N5
\screenArea[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][10]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][10]~q\);

-- Location: LCCOMB_X49_Y27_N30
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

-- Location: FF_X49_Y27_N31
\screenArea[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][11]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][11]~q\);

-- Location: LCCOMB_X49_Y27_N8
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

-- Location: FF_X49_Y27_N9
\screenArea[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][12]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][12]~q\);

-- Location: LCCOMB_X49_Y27_N26
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

-- Location: FF_X49_Y27_N27
\screenArea[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][13]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][13]~q\);

-- Location: FF_X45_Y27_N13
\screenArea[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[6][13]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][14]~q\);

-- Location: LCCOMB_X49_Y25_N6
\screenArea[6][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][15]~feeder_combout\ = \screenArea[6][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][14]~q\,
	combout => \screenArea[6][15]~feeder_combout\);

-- Location: FF_X49_Y25_N7
\screenArea[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][15]~q\);

-- Location: LCCOMB_X46_Y23_N4
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

-- Location: FF_X46_Y23_N5
\screenArea[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][16]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][16]~q\);

-- Location: LCCOMB_X46_Y23_N22
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

-- Location: FF_X46_Y23_N23
\screenArea[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][17]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][17]~q\);

-- Location: FF_X47_Y25_N5
\screenArea[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[6][17]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][18]~q\);

-- Location: LCCOMB_X49_Y24_N0
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

-- Location: FF_X49_Y24_N1
\screenArea[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][19]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][19]~q\);

-- Location: FF_X50_Y24_N9
\screenArea[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[6][19]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][20]~q\);

-- Location: FF_X46_Y27_N3
\screenArea[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[6][20]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][21]~q\);

-- Location: LCCOMB_X49_Y24_N4
\screenArea[6][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][22]~feeder_combout\ = \screenArea[6][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][21]~q\,
	combout => \screenArea[6][22]~feeder_combout\);

-- Location: FF_X49_Y24_N5
\screenArea[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][22]~q\);

-- Location: FF_X49_Y23_N19
\screenArea[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[6][22]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][23]~q\);

-- Location: LCCOMB_X46_Y23_N8
\screenArea[6][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][24]~feeder_combout\ = \screenArea[6][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][23]~q\,
	combout => \screenArea[6][24]~feeder_combout\);

-- Location: FF_X46_Y23_N9
\screenArea[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][24]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][24]~q\);

-- Location: LCCOMB_X56_Y25_N16
\Mux46~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = (ascii_char(1) & (((ascii_char(0) & ascii_char(5))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(2),
	datac => ascii_char(0),
	datad => ascii_char(5),
	combout => \Mux46~5_combout\);

-- Location: LCCOMB_X56_Y25_N0
\Mux46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (ascii_char(4) & ((ascii_char(1)) # ((!ascii_char(0))))) # (!ascii_char(4) & ((ascii_char(5) & (!ascii_char(1))) # (!ascii_char(5) & ((ascii_char(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(0),
	datad => ascii_char(5),
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X55_Y25_N8
\Mux46~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (ascii_char(6) & (\Mux46~5_combout\ & (\Mux46~3_combout\ & ascii_char(2)))) # (!ascii_char(6) & ((\Mux46~5_combout\ & ((\Mux46~3_combout\) # (ascii_char(2)))) # (!\Mux46~5_combout\ & (\Mux46~3_combout\ $ (!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(6),
	datab => \Mux46~5_combout\,
	datac => \Mux46~3_combout\,
	datad => ascii_char(2),
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X54_Y25_N28
\Mux46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (ascii_char(5) & (ascii_char(0) $ (((ascii_char(2)) # (!ascii_char(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => ascii_char(5),
	datad => ascii_char(2),
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X54_Y25_N6
\Selector7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = (ascii_char(1) & (!ascii_char(3) & (!\Add0~0_combout\ & \Mux46~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => \Add0~0_combout\,
	datad => \Mux46~2_combout\,
	combout => \Selector7~7_combout\);

-- Location: LCCOMB_X55_Y25_N2
\Selector7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~8_combout\ = (\shiftedColumnState.COL6~q\ & ((\Selector7~7_combout\) # ((\Mux46~4_combout\ & ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Mux46~4_combout\,
	datac => \Selector7~7_combout\,
	datad => ascii_char(3),
	combout => \Selector7~8_combout\);

-- Location: LCCOMB_X54_Y27_N12
\Mux38~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (ascii_char(1) & (((!ascii_char(2) & ascii_char(3))))) # (!ascii_char(1) & ((ascii_char(3)) # ((!ascii_char(0) & !ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X54_Y27_N18
\Mux38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (ascii_char(1) & (!ascii_char(0) & (!ascii_char(2) & !ascii_char(3)))) # (!ascii_char(1) & (((ascii_char(2) & ascii_char(3))) # (!ascii_char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X54_Y27_N14
\Selector7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~13_combout\ = (!ascii_char(4) & ((ascii_char(5) & (!\Mux38~4_combout\)) # (!ascii_char(5) & ((\Mux38~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~4_combout\,
	datab => ascii_char(5),
	datac => ascii_char(4),
	datad => \Mux38~3_combout\,
	combout => \Selector7~13_combout\);

-- Location: LCCOMB_X54_Y27_N6
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

-- Location: LCCOMB_X54_Y27_N16
\Selector7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~14_combout\ = (\Selector7~13_combout\) # ((ascii_char(4) & (!ascii_char(5) & \Mux38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(5),
	datac => \Selector7~13_combout\,
	datad => \Mux38~2_combout\,
	combout => \Selector7~14_combout\);

-- Location: LCCOMB_X55_Y27_N0
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

-- Location: LCCOMB_X55_Y27_N10
\Selector7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~11_combout\ = (!ascii_char(3) & (\Selector7~10_combout\ & (ascii_char(0) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => \Selector7~10_combout\,
	combout => \Selector7~11_combout\);

-- Location: LCCOMB_X55_Y27_N8
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (ascii_char(3) & (!ascii_char(0) & (ascii_char(2) $ (!ascii_char(1))))) # (!ascii_char(3) & (ascii_char(2) & (ascii_char(0) $ (ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X55_Y27_N4
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (ascii_char(3) & (ascii_char(2) $ (ascii_char(4) $ (!ascii_char(0))))) # (!ascii_char(3) & (ascii_char(0) & ((ascii_char(2)) # (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(0),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X55_Y27_N2
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (ascii_char(5) & (!ascii_char(4))) # (!ascii_char(5) & ((\Mux14~2_combout\) # ((ascii_char(4) & ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => \Mux14~2_combout\,
	datad => ascii_char(1),
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X55_Y27_N6
\Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (ascii_char(5) & (\Mux14~4_combout\ & (ascii_char(0) $ (!\Mux14~3_combout\)))) # (!ascii_char(5) & (((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(5),
	datac => \Mux14~4_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X54_Y27_N8
\Selector7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~12_combout\ = (\shiftedColumnState.COL6~q\ & ((\Selector7~11_combout\) # ((\shiftedColumnState.COL2~q\ & \Mux14~5_combout\)))) # (!\shiftedColumnState.COL6~q\ & (\shiftedColumnState.COL2~q\ & ((\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \shiftedColumnState.COL2~q\,
	datac => \Selector7~11_combout\,
	datad => \Mux14~5_combout\,
	combout => \Selector7~12_combout\);

-- Location: LCCOMB_X55_Y27_N12
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (ascii_char(5) & ((ascii_char(1) & (ascii_char(2))) # (!ascii_char(1) & ((!ascii_char(3)))))) # (!ascii_char(5) & (ascii_char(2) & (ascii_char(3) & !ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(2),
	datac => ascii_char(3),
	datad => ascii_char(1),
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X55_Y27_N30
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

-- Location: LCCOMB_X55_Y27_N16
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

-- Location: LCCOMB_X55_Y27_N26
\Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (ascii_char(4) & ((ascii_char(0) & ((\Mux22~4_combout\))) # (!ascii_char(0) & (\Mux22~3_combout\)))) # (!ascii_char(4) & (!ascii_char(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(0),
	datac => \Mux22~3_combout\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X55_Y27_N20
\Mux22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (ascii_char(3) & ((ascii_char(2) & (ascii_char(1) & !ascii_char(5))) # (!ascii_char(2) & ((ascii_char(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => ascii_char(3),
	datad => ascii_char(5),
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X55_Y27_N14
\Mux22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (ascii_char(4) & (((\Mux22~5_combout\)))) # (!ascii_char(4) & ((\Mux22~5_combout\ & ((!\Mux22~6_combout\))) # (!\Mux22~5_combout\ & (\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => ascii_char(4),
	datac => \Mux22~5_combout\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X54_Y27_N10
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (ascii_char(0) & (!ascii_char(2) & ((!ascii_char(3)) # (!ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X54_Y27_N30
\Mux30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (ascii_char(1) & (!ascii_char(2) & ((ascii_char(0)) # (ascii_char(3))))) # (!ascii_char(1) & (ascii_char(3) $ (((!ascii_char(0) & !ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X54_Y27_N4
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

-- Location: LCCOMB_X54_Y27_N0
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (ascii_char(5) & (!ascii_char(4))) # (!ascii_char(5) & ((ascii_char(4) & ((\Mux38~2_combout\))) # (!ascii_char(4) & (\Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => ascii_char(4),
	datac => \Mux30~3_combout\,
	datad => \Mux38~2_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X54_Y27_N20
\Mux30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (ascii_char(5) & ((\Mux30~4_combout\ & ((!\Mux30~5_combout\))) # (!\Mux30~4_combout\ & (\Mux30~2_combout\)))) # (!ascii_char(5) & (((\Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => ascii_char(5),
	datac => \Mux30~5_combout\,
	datad => \Mux30~4_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X54_Y27_N2
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

-- Location: LCCOMB_X54_Y27_N26
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

-- Location: LCCOMB_X59_Y28_N6
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (ascii_char(3) & (ascii_char(1) $ (((ascii_char(2)) # (!ascii_char(4)))))) # (!ascii_char(3) & (ascii_char(1) & (ascii_char(2) & !ascii_char(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X54_Y28_N28
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (ascii_char(3) & (ascii_char(1) $ (((ascii_char(2)))))) # (!ascii_char(3) & (((ascii_char(4) & !ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X55_Y28_N12
\Selector7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\shiftedColumnState.COL3~q\ & ((ascii_char(0) & ((\Mux22~0_combout\))) # (!ascii_char(0) & (!\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \shiftedColumnState.COL3~q\,
	datac => \Mux22~1_combout\,
	datad => \Mux22~0_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X54_Y27_N22
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (ascii_char(1) & (ascii_char(2) $ (((ascii_char(0)) # (!ascii_char(3)))))) # (!ascii_char(1) & ((ascii_char(0) & (ascii_char(2) $ (!ascii_char(3)))) # (!ascii_char(0) & (ascii_char(2) & !ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X54_Y27_N28
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (ascii_char(0) & (ascii_char(2) $ ((ascii_char(1))))) # (!ascii_char(0) & (((ascii_char(1)) # (!ascii_char(3))) # (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(3),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X54_Y27_N24
\Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\shiftedColumnState.COL4~q\ & ((ascii_char(4) & ((\Mux30~0_combout\))) # (!ascii_char(4) & (\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \shiftedColumnState.COL4~q\,
	datac => ascii_char(4),
	datad => \Mux30~0_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X59_Y28_N10
\Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (ascii_char(0) & ((ascii_char(3) $ (!ascii_char(4))) # (!ascii_char(2)))) # (!ascii_char(0) & (ascii_char(3) & (ascii_char(2) $ (!ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X59_Y28_N20
\Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (ascii_char(3) & (ascii_char(4) & (ascii_char(0) $ (ascii_char(2))))) # (!ascii_char(3) & (!ascii_char(2) & (ascii_char(0) $ (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(0),
	datac => ascii_char(2),
	datad => ascii_char(4),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X59_Y28_N28
\Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\shiftedColumnState.COL5~q\ & ((ascii_char(1) & ((\Mux38~0_combout\))) # (!ascii_char(1) & (!\Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~1_combout\,
	datab => ascii_char(1),
	datac => \shiftedColumnState.COL5~q\,
	datad => \Mux38~0_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X58_Y25_N30
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

-- Location: LCCOMB_X58_Y25_N24
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

-- Location: LCCOMB_X58_Y25_N12
\Selector7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\shiftedColumnState.COL2~q\ & ((ascii_char(3) & (!\Mux14~1_combout\)) # (!ascii_char(3) & ((\Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => \shiftedColumnState.COL2~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X55_Y28_N18
\Selector7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = (\Selector7~4_combout\) # ((\Selector7~3_combout\) # ((\Selector7~2_combout\) # (\Selector7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~4_combout\,
	datab => \Selector7~3_combout\,
	datac => \Selector7~2_combout\,
	datad => \Selector7~5_combout\,
	combout => \Selector7~6_combout\);

-- Location: LCCOMB_X55_Y28_N2
\Selector7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~17_combout\ = (ascii_char(5) & (!ascii_char(6) & \Selector7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(5),
	datac => ascii_char(6),
	datad => \Selector7~6_combout\,
	combout => \Selector7~17_combout\);

-- Location: LCCOMB_X55_Y28_N10
\Selector7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~16_combout\ = (\Selector7~8_combout\) # ((\Selector7~17_combout\) # ((\Add0~0_combout\ & \Selector7~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~8_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector7~15_combout\,
	datad => \Selector7~17_combout\,
	combout => \Selector7~16_combout\);

-- Location: FF_X55_Y28_N11
\screenArea[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Selector7~16_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][0]~q\);

-- Location: FF_X50_Y26_N29
\screenArea[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[7][0]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][1]~q\);

-- Location: LCCOMB_X51_Y25_N6
\screenArea[7][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][2]~feeder_combout\ = \screenArea[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][1]~q\,
	combout => \screenArea[7][2]~feeder_combout\);

-- Location: FF_X51_Y25_N7
\screenArea[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][2]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][2]~q\);

-- Location: LCCOMB_X51_Y25_N28
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

-- Location: FF_X51_Y25_N29
\screenArea[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][3]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][3]~q\);

-- Location: LCCOMB_X51_Y23_N24
\screenArea[7][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][4]~feeder_combout\ = \screenArea[7][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][3]~q\,
	combout => \screenArea[7][4]~feeder_combout\);

-- Location: FF_X51_Y23_N25
\screenArea[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][4]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][4]~q\);

-- Location: LCCOMB_X51_Y23_N18
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

-- Location: FF_X51_Y23_N19
\screenArea[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][5]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][5]~q\);

-- Location: LCCOMB_X51_Y23_N28
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

-- Location: FF_X51_Y23_N29
\screenArea[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][6]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][6]~q\);

-- Location: FF_X51_Y24_N5
\screenArea[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[7][6]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][7]~q\);

-- Location: FF_X51_Y24_N29
\screenArea[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[7][7]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][8]~q\);

-- Location: LCCOMB_X49_Y27_N28
\screenArea[7][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][9]~feeder_combout\ = \screenArea[7][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][8]~q\,
	combout => \screenArea[7][9]~feeder_combout\);

-- Location: FF_X49_Y27_N29
\screenArea[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][9]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][9]~q\);

-- Location: LCCOMB_X49_Y27_N18
\screenArea[7][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][10]~feeder_combout\ = \screenArea[7][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][9]~q\,
	combout => \screenArea[7][10]~feeder_combout\);

-- Location: FF_X49_Y27_N19
\screenArea[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][10]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][10]~q\);

-- Location: LCCOMB_X49_Y27_N24
\screenArea[7][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][11]~feeder_combout\ = \screenArea[7][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][10]~q\,
	combout => \screenArea[7][11]~feeder_combout\);

-- Location: FF_X49_Y27_N25
\screenArea[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][11]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][11]~q\);

-- Location: LCCOMB_X49_Y27_N10
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

-- Location: FF_X49_Y27_N11
\screenArea[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][12]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][12]~q\);

-- Location: LCCOMB_X49_Y27_N0
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

-- Location: FF_X49_Y27_N1
\screenArea[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][13]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][13]~q\);

-- Location: LCCOMB_X45_Y27_N26
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

-- Location: FF_X45_Y27_N27
\screenArea[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][14]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][14]~q\);

-- Location: LCCOMB_X49_Y25_N0
\screenArea[7][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][15]~feeder_combout\ = \screenArea[7][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][14]~q\,
	combout => \screenArea[7][15]~feeder_combout\);

-- Location: FF_X49_Y25_N1
\screenArea[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][15]~q\);

-- Location: LCCOMB_X46_Y23_N6
\screenArea[7][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][16]~feeder_combout\ = \screenArea[7][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][15]~q\,
	combout => \screenArea[7][16]~feeder_combout\);

-- Location: FF_X46_Y23_N7
\screenArea[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][16]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][16]~q\);

-- Location: LCCOMB_X46_Y23_N24
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

-- Location: FF_X46_Y23_N25
\screenArea[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][17]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][17]~q\);

-- Location: LCCOMB_X46_Y25_N6
\screenArea[7][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][18]~feeder_combout\ = \screenArea[7][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][17]~q\,
	combout => \screenArea[7][18]~feeder_combout\);

-- Location: FF_X46_Y25_N7
\screenArea[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][18]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][18]~q\);

-- Location: FF_X50_Y25_N21
\screenArea[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[7][18]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][19]~q\);

-- Location: FF_X50_Y24_N3
\screenArea[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[7][19]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][20]~q\);

-- Location: LCCOMB_X49_Y24_N22
\screenArea[7][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][21]~feeder_combout\ = \screenArea[7][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][20]~q\,
	combout => \screenArea[7][21]~feeder_combout\);

-- Location: FF_X49_Y24_N23
\screenArea[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][21]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][21]~q\);

-- Location: LCCOMB_X49_Y24_N6
\screenArea[7][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][22]~feeder_combout\ = \screenArea[7][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[7][21]~q\,
	combout => \screenArea[7][22]~feeder_combout\);

-- Location: FF_X49_Y24_N7
\screenArea[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][22]~q\);

-- Location: LCCOMB_X49_Y23_N10
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

-- Location: FF_X49_Y23_N11
\screenArea[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][23]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][23]~q\);

-- Location: LCCOMB_X46_Y23_N26
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

-- Location: FF_X46_Y23_N27
\screenArea[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][24]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][24]~q\);

-- Location: LCCOMB_X46_Y23_N14
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][24]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][24]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][24]~q\,
	datad => \screenArea[7][24]~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X46_Y27_N2
\Selector29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][21]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][21]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[6][21]~q\,
	datad => \screenArea[4][21]~q\,
	combout => \Selector29~3_combout\);

-- Location: LCCOMB_X46_Y27_N8
\Selector29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~4_combout\ = (\Selector29~3_combout\) # ((\screenArea[3][21]~q\ & \scanStateVariable.LOAD4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[3][21]~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datad => \Selector29~3_combout\,
	combout => \Selector29~4_combout\);

-- Location: LCCOMB_X56_Y26_N8
\Selector1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~46_combout\ = (ascii_char(3) & (!ascii_char(1) & (!ascii_char(0) & ascii_char(2)))) # (!ascii_char(3) & (((ascii_char(0) & !ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(1),
	datac => ascii_char(0),
	datad => ascii_char(2),
	combout => \Selector1~46_combout\);

-- Location: LCCOMB_X55_Y26_N30
\Selector5~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~68_combout\ = (!ascii_char(0) & (!ascii_char(1) & !ascii_char(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(0),
	datac => ascii_char(1),
	datad => ascii_char(2),
	combout => \Selector5~68_combout\);

-- Location: LCCOMB_X55_Y26_N8
\Selector1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~51_combout\ = (\Selector6~89_combout\ & ((ascii_char(1) & ((ascii_char(3)) # (ascii_char(0)))) # (!ascii_char(1) & (!ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => \Selector6~89_combout\,
	combout => \Selector1~51_combout\);

-- Location: LCCOMB_X55_Y26_N28
\Selector1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~15_combout\ = (ascii_char(1) & (ascii_char(2) $ (((!ascii_char(0) & ascii_char(4)))))) # (!ascii_char(1) & ((ascii_char(2) & (ascii_char(0))) # (!ascii_char(2) & ((ascii_char(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~15_combout\);

-- Location: LCCOMB_X55_Y26_N6
\Selector1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~14_combout\ = (ascii_char(2) & (((ascii_char(0)) # (!ascii_char(4))) # (!ascii_char(1)))) # (!ascii_char(2) & (ascii_char(1) $ (ascii_char(0) $ (ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~14_combout\);

-- Location: LCCOMB_X55_Y26_N18
\Selector1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~52_combout\ = (ascii_char(3) & (\Selector1~15_combout\)) # (!ascii_char(3) & ((\Selector1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~15_combout\,
	datac => ascii_char(3),
	datad => \Selector1~14_combout\,
	combout => \Selector1~52_combout\);

-- Location: LCCOMB_X55_Y26_N24
\Selector1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~45_combout\ = (ascii_char(5) & ((\Selector5~68_combout\) # ((\Selector1~51_combout\)))) # (!ascii_char(5) & (((\Selector1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~68_combout\,
	datab => ascii_char(5),
	datac => \Selector1~51_combout\,
	datad => \Selector1~52_combout\,
	combout => \Selector1~45_combout\);

-- Location: LCCOMB_X56_Y26_N22
\Selector1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~47_combout\ = (\Add0~0_combout\ & (((\Selector1~45_combout\)))) # (!\Add0~0_combout\ & (ascii_char(4) & (\Selector1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(4),
	datac => \Selector1~46_combout\,
	datad => \Selector1~45_combout\,
	combout => \Selector1~47_combout\);

-- Location: LCCOMB_X56_Y29_N30
\Selector1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~50_combout\ = (\Selector1~21_combout\ & ((ascii_char(3) & (ascii_char(2) & ascii_char(4))) # (!ascii_char(3) & (!ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => ascii_char(2),
	datac => ascii_char(4),
	datad => \Selector1~21_combout\,
	combout => \Selector1~50_combout\);

-- Location: LCCOMB_X55_Y28_N22
\Selector1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~22_combout\ = (\Selector4~38_combout\ & ((\Selector1~50_combout\) # ((\Selector4~30_combout\ & !ascii_char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~30_combout\,
	datab => ascii_char(1),
	datac => \Selector1~50_combout\,
	datad => \Selector4~38_combout\,
	combout => \Selector1~22_combout\);

-- Location: LCCOMB_X57_Y25_N26
\Selector1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~48_combout\ = (\Mux4~0_combout\ & ((ascii_char(1) & (!ascii_char(3))) # (!ascii_char(1) & (ascii_char(3) & !ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(3),
	datac => ascii_char(0),
	datad => \Mux4~0_combout\,
	combout => \Selector1~48_combout\);

-- Location: LCCOMB_X58_Y25_N26
\Selector1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~23_combout\ = (!ascii_char(2) & ((ascii_char(0) & (!ascii_char(1) & !ascii_char(4))) # (!ascii_char(0) & (ascii_char(1) & ascii_char(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(1),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~23_combout\);

-- Location: LCCOMB_X57_Y25_N8
\Selector1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~24_combout\ = (!ascii_char(5) & ((\Selector1~48_combout\) # ((\Selector6~68_combout\ & \Selector1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector6~68_combout\,
	datac => \Selector1~48_combout\,
	datad => \Selector1~23_combout\,
	combout => \Selector1~24_combout\);

-- Location: LCCOMB_X56_Y28_N14
\Selector1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~40_combout\ = (!ascii_char(2) & ((ascii_char(4) & (!ascii_char(3) & !ascii_char(1))) # (!ascii_char(4) & ((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector1~40_combout\);

-- Location: LCCOMB_X56_Y28_N22
\Selector1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~19_combout\ = (ascii_char(2) & ((ascii_char(1) & (ascii_char(4) $ (!ascii_char(3)))) # (!ascii_char(1) & (ascii_char(4) & !ascii_char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => ascii_char(4),
	datac => ascii_char(2),
	datad => ascii_char(3),
	combout => \Selector1~19_combout\);

-- Location: LCCOMB_X56_Y28_N16
\Selector1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~18_combout\ = (ascii_char(4) & (ascii_char(1) & (ascii_char(3) $ (ascii_char(2))))) # (!ascii_char(4) & (ascii_char(3) & (ascii_char(2) & !ascii_char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(4),
	datab => ascii_char(3),
	datac => ascii_char(2),
	datad => ascii_char(1),
	combout => \Selector1~18_combout\);

-- Location: LCCOMB_X56_Y28_N28
\Selector1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~53_combout\ = (ascii_char(5) & (\Selector1~19_combout\)) # (!ascii_char(5) & ((\Selector1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(5),
	datac => \Selector1~19_combout\,
	datad => \Selector1~18_combout\,
	combout => \Selector1~53_combout\);

-- Location: LCCOMB_X56_Y28_N20
\Selector1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~41_combout\ = (\Add0~0_combout\ & (!ascii_char(0) & ((\Selector1~53_combout\)))) # (!\Add0~0_combout\ & (ascii_char(0) & (\Selector1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ascii_char(0),
	datac => \Selector1~40_combout\,
	datad => \Selector1~53_combout\,
	combout => \Selector1~41_combout\);

-- Location: LCCOMB_X55_Y28_N14
\Selector1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~37_combout\ = (\Selector5~53_combout\ & ((ascii_char(5) & ((!ascii_char(1)) # (!ascii_char(2)))) # (!ascii_char(5) & ((ascii_char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(5),
	datac => ascii_char(1),
	datad => \Selector5~53_combout\,
	combout => \Selector1~37_combout\);

-- Location: LCCOMB_X55_Y28_N0
\Selector1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~38_combout\ = (!ascii_char(2) & (!ascii_char(1) & (\Mux0~7_combout\ & ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(1),
	datac => \Mux0~7_combout\,
	datad => ascii_char(3),
	combout => \Selector1~38_combout\);

-- Location: LCCOMB_X55_Y28_N26
\Selector1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~39_combout\ = (ascii_char(0) & (\Add0~0_combout\ & ((\Selector1~37_combout\) # (\Selector1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => \Add0~0_combout\,
	datac => \Selector1~37_combout\,
	datad => \Selector1~38_combout\,
	combout => \Selector1~39_combout\);

-- Location: LCCOMB_X55_Y28_N28
\Selector1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~54_combout\ = (ascii_char(0) & (ascii_char(2) & ((ascii_char(3)) # (!ascii_char(4))))) # (!ascii_char(0) & (ascii_char(3) $ (((ascii_char(4)) # (!ascii_char(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(2),
	datab => ascii_char(4),
	datac => ascii_char(0),
	datad => ascii_char(3),
	combout => \Selector1~54_combout\);

-- Location: LCCOMB_X55_Y28_N30
\Selector1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~55_combout\ = (\Selector1~54_combout\ & (\Add0~0_combout\ $ (((ascii_char(3) & ascii_char(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(3),
	datab => \Add0~0_combout\,
	datac => ascii_char(4),
	datad => \Selector1~54_combout\,
	combout => \Selector1~55_combout\);

-- Location: LCCOMB_X56_Y29_N10
\Selector1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~32_combout\ = (ascii_char(0) & (((ascii_char(4) & !ascii_char(2))) # (!ascii_char(3)))) # (!ascii_char(0) & ((ascii_char(4)) # ((!ascii_char(3) & ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~32_combout\);

-- Location: LCCOMB_X56_Y29_N24
\Selector1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~33_combout\ = (ascii_char(3) & ((ascii_char(0)) # (ascii_char(4) $ (ascii_char(2))))) # (!ascii_char(3) & ((ascii_char(2) & ((!ascii_char(4)))) # (!ascii_char(2) & (!ascii_char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(3),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~33_combout\);

-- Location: LCCOMB_X56_Y29_N22
\Selector1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~34_combout\ = (ascii_char(1) & (((\Selector1~33_combout\ & !ascii_char(5))))) # (!ascii_char(1) & ((\Selector1~32_combout\) # ((ascii_char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~32_combout\,
	datab => \Selector1~33_combout\,
	datac => ascii_char(1),
	datad => ascii_char(5),
	combout => \Selector1~34_combout\);

-- Location: LCCOMB_X56_Y25_N12
\Selector1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~35_combout\ = (!ascii_char(4) & (((!ascii_char(0) & !ascii_char(2))) # (!ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector1~35_combout\);

-- Location: LCCOMB_X56_Y25_N6
\Selector1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~49_combout\ = ((\Selector1~35_combout\ & (ascii_char(5) $ (!ascii_char(6))))) # (!\Selector0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~35_combout\,
	datab => ascii_char(5),
	datac => ascii_char(6),
	datad => \Selector0~6_combout\,
	combout => \Selector1~49_combout\);

-- Location: LCCOMB_X55_Y28_N16
\Selector1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~36_combout\ = (ascii_char(5) & ((\Selector1~34_combout\ & ((\Selector1~49_combout\))) # (!\Selector1~34_combout\ & (\Selector1~55_combout\)))) # (!ascii_char(5) & (((\Selector1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~55_combout\,
	datab => ascii_char(5),
	datac => \Selector1~34_combout\,
	datad => \Selector1~49_combout\,
	combout => \Selector1~36_combout\);

-- Location: LCCOMB_X55_Y28_N8
\Selector1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~42_combout\ = (\shiftedColumnState.COL3~q\ & ((\Selector1~41_combout\) # ((\Selector1~39_combout\)))) # (!\shiftedColumnState.COL3~q\ & (((\Selector1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~41_combout\,
	datab => \shiftedColumnState.COL3~q\,
	datac => \Selector1~39_combout\,
	datad => \Selector1~36_combout\,
	combout => \Selector1~42_combout\);

-- Location: LCCOMB_X54_Y28_N22
\Selector1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~28_combout\ = (ascii_char(4) & (ascii_char(0) & (ascii_char(3) $ (ascii_char(2))))) # (!ascii_char(4) & (((ascii_char(3) & !ascii_char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector1~28_combout\);

-- Location: LCCOMB_X54_Y28_N20
\Selector1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~27_combout\ = (!ascii_char(0) & (!ascii_char(4) & (ascii_char(3) & ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(0),
	datab => ascii_char(4),
	datac => ascii_char(3),
	datad => ascii_char(2),
	combout => \Selector1~27_combout\);

-- Location: LCCOMB_X54_Y28_N12
\Selector1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~29_combout\ = (ascii_char(1) & (!\Add0~0_combout\ & (\Selector1~28_combout\))) # (!ascii_char(1) & ((\Add0~0_combout\) # ((\Selector1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(1),
	datab => \Add0~0_combout\,
	datac => \Selector1~28_combout\,
	datad => \Selector1~27_combout\,
	combout => \Selector1~29_combout\);

-- Location: LCCOMB_X54_Y28_N0
\Selector1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~25_combout\ = (!ascii_char(0) & (ascii_char(4) $ (!ascii_char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ascii_char(0),
	datac => ascii_char(4),
	datad => ascii_char(2),
	combout => \Selector1~25_combout\);

-- Location: LCCOMB_X54_Y28_N30
\Selector1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~26_combout\ = (\Selector6~99_combout\) # ((!ascii_char(5) & (\Selector1~25_combout\ & ascii_char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ascii_char(5),
	datab => \Selector1~25_combout\,
	datac => ascii_char(3),
	datad => \Selector6~99_combout\,
	combout => \Selector1~26_combout\);

-- Location: LCCOMB_X54_Y28_N26
\Selector1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~20_combout\ = (ascii_char(5) & ascii_char(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ascii_char(5),
	datad => ascii_char(4),
	combout => \Selector1~20_combout\);

-- Location: LCCOMB_X54_Y28_N2
\Selector1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~30_combout\ = (\Selector1~20_combout\ & ((\Selector3~12_combout\) # ((ascii_char(0) & \Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~20_combout\,
	datab => ascii_char(0),
	datac => \Selector3~12_combout\,
	datad => \Mux0~6_combout\,
	combout => \Selector1~30_combout\);

-- Location: LCCOMB_X54_Y28_N8
\Selector1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~31_combout\ = (\Selector1~29_combout\ & (((\Selector1~30_combout\)) # (!\Add0~0_combout\))) # (!\Selector1~29_combout\ & (\Add0~0_combout\ & (\Selector1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~29_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector1~26_combout\,
	datad => \Selector1~30_combout\,
	combout => \Selector1~31_combout\);

-- Location: LCCOMB_X55_Y28_N6
\Selector1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~43_combout\ = (\Selector6~81_combout\ & ((\Selector1~31_combout\) # ((\Selector6~48_combout\ & \Selector1~42_combout\)))) # (!\Selector6~81_combout\ & (\Selector6~48_combout\ & (\Selector1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~81_combout\,
	datab => \Selector6~48_combout\,
	datac => \Selector1~42_combout\,
	datad => \Selector1~31_combout\,
	combout => \Selector1~43_combout\);

-- Location: LCCOMB_X55_Y28_N24
\Selector1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~44_combout\ = (\Selector1~43_combout\) # ((\shiftedColumnState.COL5~q\ & ((\Selector1~22_combout\) # (\Selector1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~22_combout\,
	datab => \shiftedColumnState.COL5~q\,
	datac => \Selector1~24_combout\,
	datad => \Selector1~43_combout\,
	combout => \Selector1~44_combout\);

-- Location: LCCOMB_X55_Y28_N20
\screenArea[1][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][0]~1_combout\ = (\shiftedColumnState.COL6~q\ & (\Selector1~47_combout\)) # (!\shiftedColumnState.COL6~q\ & ((\Selector1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftedColumnState.COL6~q\,
	datab => \Selector1~47_combout\,
	datad => \Selector1~44_combout\,
	combout => \screenArea[1][0]~1_combout\);

-- Location: FF_X55_Y28_N21
\screenArea[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][0]~1_combout\,
	asdata => \Mux0~8_combout\,
	sload => \screenArea[6][0]~4_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][0]~q\);

-- Location: LCCOMB_X50_Y26_N24
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

-- Location: FF_X50_Y26_N25
\screenArea[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][1]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][1]~q\);

-- Location: FF_X51_Y26_N5
\screenArea[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][1]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][2]~q\);

-- Location: FF_X51_Y26_N11
\screenArea[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][2]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][3]~q\);

-- Location: FF_X50_Y26_N27
\screenArea[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][3]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][4]~q\);

-- Location: FF_X50_Y26_N13
\screenArea[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][4]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][5]~q\);

-- Location: LCCOMB_X49_Y26_N16
\screenArea[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][6]~feeder_combout\ = \screenArea[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][5]~q\,
	combout => \screenArea[1][6]~feeder_combout\);

-- Location: FF_X49_Y26_N17
\screenArea[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][6]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][6]~q\);

-- Location: LCCOMB_X51_Y24_N6
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

-- Location: FF_X51_Y24_N7
\screenArea[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][7]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][7]~q\);

-- Location: LCCOMB_X51_Y24_N24
\screenArea[1][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][8]~feeder_combout\ = \screenArea[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][7]~q\,
	combout => \screenArea[1][8]~feeder_combout\);

-- Location: FF_X51_Y24_N25
\screenArea[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][8]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][8]~q\);

-- Location: FF_X50_Y23_N27
\screenArea[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][8]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][9]~q\);

-- Location: FF_X50_Y23_N13
\screenArea[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][9]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][10]~q\);

-- Location: FF_X46_Y25_N27
\screenArea[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][10]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][11]~q\);

-- Location: FF_X46_Y25_N15
\screenArea[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][11]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][12]~q\);

-- Location: LCCOMB_X45_Y27_N4
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

-- Location: FF_X45_Y27_N5
\screenArea[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][13]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][13]~q\);

-- Location: FF_X45_Y27_N7
\screenArea[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][13]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][14]~q\);

-- Location: LCCOMB_X50_Y25_N14
\screenArea[1][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][15]~feeder_combout\ = \screenArea[1][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][14]~q\,
	combout => \screenArea[1][15]~feeder_combout\);

-- Location: FF_X50_Y25_N15
\screenArea[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][15]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][15]~q\);

-- Location: LCCOMB_X51_Y25_N8
\screenArea[1][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][16]~feeder_combout\ = \screenArea[1][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][15]~q\,
	combout => \screenArea[1][16]~feeder_combout\);

-- Location: FF_X51_Y25_N9
\screenArea[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][16]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][16]~q\);

-- Location: LCCOMB_X47_Y25_N0
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

-- Location: FF_X47_Y25_N1
\screenArea[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][17]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][17]~q\);

-- Location: LCCOMB_X47_Y25_N24
\screenArea[1][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][18]~feeder_combout\ = \screenArea[1][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][17]~q\,
	combout => \screenArea[1][18]~feeder_combout\);

-- Location: FF_X47_Y25_N25
\screenArea[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][18]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][18]~q\);

-- Location: LCCOMB_X50_Y24_N24
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

-- Location: FF_X50_Y24_N25
\screenArea[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][19]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][19]~q\);

-- Location: LCCOMB_X50_Y24_N6
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

-- Location: FF_X50_Y24_N7
\screenArea[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][20]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][20]~q\);

-- Location: LCCOMB_X46_Y26_N10
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

-- Location: FF_X46_Y26_N11
\screenArea[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][21]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][21]~q\);

-- Location: LCCOMB_X46_Y26_N16
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\screenArea[1][21]~q\ & ((\scanStateVariable.LOAD2~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][21]~q\)))) # (!\screenArea[1][21]~q\ & (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[1][21]~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \screenArea[0][21]~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X49_Y24_N16
\Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][21]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][21]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD8~q\ & (\screenArea[7][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][21]~q\,
	datad => \screenArea[5][21]~q\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X50_Y24_N4
\Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\screenArea[3][20]~q\ & ((\scanStateVariable.LOAD4~q\) # ((\screenArea[7][20]~q\ & \scanStateVariable.LOAD8~q\)))) # (!\screenArea[3][20]~q\ & (((\screenArea[7][20]~q\ & \scanStateVariable.LOAD8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[3][20]~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[7][20]~q\,
	datad => \scanStateVariable.LOAD8~q\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X50_Y24_N0
\Selector30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][20]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][20]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][20]~q\,
	datad => \screenArea[1][20]~q\,
	combout => \Selector30~3_combout\);

-- Location: LCCOMB_X50_Y24_N18
\Selector30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~4_combout\ = (\Selector30~3_combout\) # ((\screenArea[6][20]~q\ & \scanStateVariable.LOAD7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][20]~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datad => \Selector30~3_combout\,
	combout => \Selector30~4_combout\);

-- Location: LCCOMB_X47_Y25_N12
\Selector32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][18]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][18]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[5][18]~q\,
	datad => \screenArea[7][18]~q\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X47_Y25_N16
\Selector32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][18]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][18]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][18]~q\,
	datad => \screenArea[1][18]~q\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X47_Y25_N4
\Selector32~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = (\Selector32~3_combout\) # ((\screenArea[2][18]~q\ & \scanStateVariable.LOAD3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][18]~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datad => \Selector32~3_combout\,
	combout => \Selector32~4_combout\);

-- Location: LCCOMB_X47_Y25_N30
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\screenArea[6][18]~q\ & ((\scanStateVariable.LOAD7~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][18]~q\)))) # (!\screenArea[6][18]~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][18]~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \screenArea[4][18]~q\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X47_Y25_N22
\Selector33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][17]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][17]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][17]~q\,
	datad => \screenArea[1][17]~q\,
	combout => \Selector33~3_combout\);

-- Location: LCCOMB_X47_Y25_N2
\Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\screenArea[5][17]~q\ & ((\scanStateVariable.LOAD6~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][17]~q\)))) # (!\screenArea[5][17]~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][17]~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][17]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X47_Y25_N18
\Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][17]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][17]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][17]~q\,
	datad => \screenArea[3][17]~q\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X47_Y25_N6
\Selector33~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~4_combout\ = (\Selector33~3_combout\) # ((\Selector33~1_combout\) # (\Selector33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~3_combout\,
	datab => \Selector33~1_combout\,
	datad => \Selector33~2_combout\,
	combout => \Selector33~4_combout\);

-- Location: LCCOMB_X50_Y25_N26
\Selector35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][15]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][15]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[1][15]~q\,
	datad => \screenArea[3][15]~q\,
	combout => \Selector35~2_combout\);

-- Location: LCCOMB_X49_Y25_N28
\Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][15]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][15]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][15]~q\,
	datad => \screenArea[7][15]~q\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X50_Y23_N12
\Selector41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & (\screenArea[1][9]~q\))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][9]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[1][9]~q\,
	datad => \screenArea[0][9]~q\,
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X51_Y24_N28
\Selector43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD8~q\ & (\screenArea[7][7]~q\))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][7]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][7]~q\,
	datad => \screenArea[0][7]~q\,
	combout => \Selector43~2_combout\);

-- Location: LCCOMB_X51_Y24_N26
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][7]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][7]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][7]~q\,
	datad => \screenArea[5][7]~q\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X51_Y24_N12
\Selector43~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][7]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][7]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][7]~q\,
	datad => \screenArea[1][7]~q\,
	combout => \Selector43~3_combout\);

-- Location: LCCOMB_X51_Y24_N4
\Selector43~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~4_combout\ = (\Selector43~3_combout\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \screenArea[3][7]~q\,
	datad => \Selector43~3_combout\,
	combout => \Selector43~4_combout\);

-- Location: LCCOMB_X51_Y23_N20
\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][6]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][6]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][6]~q\,
	datad => \screenArea[7][6]~q\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X51_Y26_N30
\Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][2]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][2]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][2]~q\,
	datad => \screenArea[5][2]~q\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X51_Y26_N14
\Selector48~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][2]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][2]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[0][2]~q\,
	datad => \screenArea[1][2]~q\,
	combout => \Selector48~3_combout\);

-- Location: LCCOMB_X51_Y26_N26
\Selector48~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][2]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][2]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][2]~q\,
	datad => \screenArea[3][2]~q\,
	combout => \Selector48~2_combout\);

-- Location: LCCOMB_X51_Y26_N4
\Selector48~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~4_combout\ = (\Selector48~1_combout\) # ((\Selector48~3_combout\) # (\Selector48~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~1_combout\,
	datab => \Selector48~3_combout\,
	datad => \Selector48~2_combout\,
	combout => \Selector48~4_combout\);

-- Location: LCCOMB_X49_Y26_N0
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][1]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][1]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[0][1]~q\,
	datad => \screenArea[1][1]~q\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X57_Y26_N12
\Selector50~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~3_combout\ = (\screenArea[2][0]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\screenArea[3][0]~q\ & \scanStateVariable.LOAD4~q\)))) # (!\screenArea[2][0]~q\ & (\screenArea[3][0]~q\ & (\scanStateVariable.LOAD4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][0]~q\,
	datab => \screenArea[3][0]~q\,
	datac => \scanStateVariable.LOAD4~q\,
	datad => \scanStateVariable.LOAD3~q\,
	combout => \Selector50~3_combout\);

-- Location: LCCOMB_X57_Y26_N2
\Selector50~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][0]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][0]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][0]~q\,
	datad => \screenArea[5][0]~q\,
	combout => \Selector50~2_combout\);

-- Location: LCCOMB_X57_Y26_N14
\Selector50~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~4_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][0]~q\) # ((\screenArea[0][0]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\screenArea[0][0]~q\ & (!\scanStateVariable.LOAD1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[0][0]~q\,
	datac => \scanStateVariable.LOAD1~q\,
	datad => \screenArea[1][0]~q\,
	combout => \Selector50~4_combout\);

-- Location: LCCOMB_X57_Y26_N0
\Selector50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][0]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][0]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][0]~q\,
	datad => \screenArea[7][0]~q\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X57_Y26_N24
\Selector50~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~5_combout\ = (\Selector50~3_combout\) # ((\Selector50~2_combout\) # ((\Selector50~4_combout\) # (\Selector50~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~3_combout\,
	datab => \Selector50~2_combout\,
	datac => \Selector50~4_combout\,
	datad => \Selector50~1_combout\,
	combout => \Selector50~5_combout\);

-- Location: LCCOMB_X46_Y24_N26
\Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (!\WideOr13~2_combout\ & (\WideOr4~4_combout\ & ((!\WideOr4~5_combout\) # (!\LINE_SACN_PROC:registerSerialData[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \WideOr4~5_combout\,
	datac => \WideOr13~2_combout\,
	datad => \WideOr4~4_combout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X57_Y26_N22
\Selector50~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~6_combout\ = (\Selector50~5_combout\) # ((screenAreaLatch(0) & !\Selector50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector50~5_combout\,
	datac => screenAreaLatch(0),
	datad => \Selector50~0_combout\,
	combout => \Selector50~6_combout\);

-- Location: FF_X57_Y26_N23
\screenAreaLatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector50~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(0));

-- Location: LCCOMB_X49_Y26_N22
\Selector49~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][1]~q\) # ((\WideOr4~5_combout\ & screenAreaLatch(0))))) # (!\scanStateVariable.LOAD5~q\ & (((\WideOr4~5_combout\ & screenAreaLatch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \screenArea[4][1]~q\,
	datac => \WideOr4~5_combout\,
	datad => screenAreaLatch(0),
	combout => \Selector49~2_combout\);

-- Location: LCCOMB_X51_Y26_N18
\Selector49~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~3_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][1]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][1]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][1]~q\,
	datad => \screenArea[2][1]~q\,
	combout => \Selector49~3_combout\);

-- Location: LCCOMB_X50_Y26_N26
\Selector49~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~4_combout\ = (\Selector49~3_combout\) # ((\screenArea[7][1]~q\ & \scanStateVariable.LOAD8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[7][1]~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datad => \Selector49~3_combout\,
	combout => \Selector49~4_combout\);

-- Location: LCCOMB_X49_Y25_N10
\Selector49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][1]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][1]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[6][1]~q\,
	datad => \screenArea[3][1]~q\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X50_Y26_N4
\Selector49~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~5_combout\ = (\Selector49~0_combout\) # ((\Selector49~2_combout\) # ((\Selector49~4_combout\) # (\Selector49~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~0_combout\,
	datab => \Selector49~2_combout\,
	datac => \Selector49~4_combout\,
	datad => \Selector49~1_combout\,
	combout => \Selector49~5_combout\);

-- Location: FF_X50_Y26_N5
\screenAreaLatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector49~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(1));

-- Location: LCCOMB_X51_Y25_N10
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][2]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][2]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][2]~q\,
	datad => \screenArea[7][2]~q\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X51_Y26_N16
\Selector48~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~5_combout\ = (\Selector48~4_combout\) # ((\Selector48~0_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~5_combout\,
	datab => \Selector48~4_combout\,
	datac => screenAreaLatch(1),
	datad => \Selector48~0_combout\,
	combout => \Selector48~5_combout\);

-- Location: FF_X51_Y26_N17
\screenAreaLatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector48~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(2));

-- Location: LCCOMB_X51_Y25_N0
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][3]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][3]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][3]~q\,
	datad => \screenArea[7][3]~q\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X51_Y26_N2
\Selector47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][3]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][3]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][3]~q\,
	datad => \screenArea[3][3]~q\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X51_Y26_N20
\Selector47~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][3]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][3]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[0][3]~q\,
	datad => \screenArea[1][3]~q\,
	combout => \Selector47~3_combout\);

-- Location: LCCOMB_X51_Y26_N28
\Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][3]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][3]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][3]~q\,
	datad => \screenArea[5][3]~q\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X51_Y26_N10
\Selector47~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~4_combout\ = (\Selector47~2_combout\) # ((\Selector47~3_combout\) # (\Selector47~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~2_combout\,
	datab => \Selector47~3_combout\,
	datad => \Selector47~1_combout\,
	combout => \Selector47~4_combout\);

-- Location: LCCOMB_X51_Y26_N0
\Selector47~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~5_combout\ = (\Selector47~0_combout\) # ((\Selector47~4_combout\) # ((screenAreaLatch(2) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(2),
	datab => \Selector47~0_combout\,
	datac => \Selector47~4_combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector47~5_combout\);

-- Location: FF_X51_Y26_N1
\screenAreaLatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector47~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(3));

-- Location: LCCOMB_X50_Y26_N14
\Selector46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][4]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][4]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][4]~q\,
	datad => \screenArea[3][4]~q\,
	combout => \Selector46~2_combout\);

-- Location: LCCOMB_X50_Y26_N12
\Selector46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][4]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][4]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[1][4]~q\,
	datad => \screenArea[0][4]~q\,
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X49_Y26_N18
\Selector46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][4]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][4]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][4]~q\,
	datad => \screenArea[5][4]~q\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X50_Y26_N28
\Selector46~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~4_combout\ = (\Selector46~2_combout\) # ((\Selector46~3_combout\) # (\Selector46~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~2_combout\,
	datab => \Selector46~3_combout\,
	datad => \Selector46~1_combout\,
	combout => \Selector46~4_combout\);

-- Location: LCCOMB_X51_Y23_N8
\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][4]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][4]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][4]~q\,
	datad => \screenArea[7][4]~q\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X50_Y26_N2
\Selector46~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~5_combout\ = (\Selector46~4_combout\) # ((\Selector46~0_combout\) # ((screenAreaLatch(3) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(3),
	datab => \Selector46~4_combout\,
	datac => \WideOr4~5_combout\,
	datad => \Selector46~0_combout\,
	combout => \Selector46~5_combout\);

-- Location: FF_X50_Y26_N3
\screenAreaLatch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector46~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(4));

-- Location: LCCOMB_X50_Y26_N6
\Selector45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][5]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][5]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][5]~q\,
	datad => \screenArea[1][5]~q\,
	combout => \Selector45~3_combout\);

-- Location: LCCOMB_X50_Y26_N0
\Selector45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][5]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][5]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][5]~q\,
	datad => \screenArea[5][5]~q\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X50_Y26_N18
\Selector45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][5]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][5]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][5]~q\,
	datad => \screenArea[3][5]~q\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X50_Y26_N30
\Selector45~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~4_combout\ = (\Selector45~3_combout\) # ((\Selector45~1_combout\) # (\Selector45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~3_combout\,
	datab => \Selector45~1_combout\,
	datad => \Selector45~2_combout\,
	combout => \Selector45~4_combout\);

-- Location: LCCOMB_X51_Y23_N22
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][5]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][5]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][5]~q\,
	datad => \screenArea[7][5]~q\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X50_Y26_N22
\Selector45~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~5_combout\ = (\Selector45~4_combout\) # ((\Selector45~0_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~5_combout\,
	datab => screenAreaLatch(4),
	datac => \Selector45~4_combout\,
	datad => \Selector45~0_combout\,
	combout => \Selector45~5_combout\);

-- Location: FF_X50_Y26_N23
\screenAreaLatch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector45~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(5));

-- Location: LCCOMB_X49_Y26_N4
\Selector44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\scanStateVariable.LOAD1~q\ & (\WideOr4~5_combout\ & ((screenAreaLatch(5))))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][6]~q\) # ((\WideOr4~5_combout\ & screenAreaLatch(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \WideOr4~5_combout\,
	datac => \screenArea[0][6]~q\,
	datad => screenAreaLatch(5),
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X49_Y26_N10
\Selector44~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][6]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][6]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][6]~q\,
	datad => \screenArea[1][6]~q\,
	combout => \Selector44~3_combout\);

-- Location: LCCOMB_X49_Y26_N6
\Selector44~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~4_combout\ = (\Selector44~3_combout\) # ((\screenArea[4][6]~q\ & \scanStateVariable.LOAD5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[4][6]~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datad => \Selector44~3_combout\,
	combout => \Selector44~4_combout\);

-- Location: LCCOMB_X51_Y25_N14
\Selector44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][6]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][6]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][6]~q\,
	datad => \screenArea[2][6]~q\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X50_Y26_N8
\Selector44~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~5_combout\ = (\Selector44~0_combout\) # ((\Selector44~2_combout\) # ((\Selector44~4_combout\) # (\Selector44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \Selector44~2_combout\,
	datac => \Selector44~4_combout\,
	datad => \Selector44~1_combout\,
	combout => \Selector44~5_combout\);

-- Location: FF_X50_Y26_N9
\screenAreaLatch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector44~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(6));

-- Location: LCCOMB_X51_Y25_N16
\Selector43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][7]~q\) # ((screenAreaLatch(6) & \WideOr4~5_combout\)))) # (!\scanStateVariable.LOAD3~q\ & (screenAreaLatch(6) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => screenAreaLatch(6),
	datac => \screenArea[2][7]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X51_Y24_N14
\Selector43~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~5_combout\ = (\Selector43~2_combout\) # ((\Selector43~0_combout\) # ((\Selector43~4_combout\) # (\Selector43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~2_combout\,
	datab => \Selector43~0_combout\,
	datac => \Selector43~4_combout\,
	datad => \Selector43~1_combout\,
	combout => \Selector43~5_combout\);

-- Location: FF_X51_Y24_N15
\screenAreaLatch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector43~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(7));

-- Location: LCCOMB_X51_Y24_N30
\Selector42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][8]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][8]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][8]~q\,
	datad => \screenArea[3][8]~q\,
	combout => \Selector42~2_combout\);

-- Location: LCCOMB_X51_Y24_N2
\Selector42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][8]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][8]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][8]~q\,
	datad => \screenArea[5][8]~q\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X51_Y24_N20
\Selector42~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][8]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][8]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (((!\scanStateVariable.LOAD1~q\ & \screenArea[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[1][8]~q\,
	datac => \scanStateVariable.LOAD1~q\,
	datad => \screenArea[0][8]~q\,
	combout => \Selector42~3_combout\);

-- Location: LCCOMB_X51_Y24_N22
\Selector42~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~4_combout\ = (\Selector42~2_combout\) # ((\Selector42~1_combout\) # (\Selector42~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~2_combout\,
	datab => \Selector42~1_combout\,
	datad => \Selector42~3_combout\,
	combout => \Selector42~4_combout\);

-- Location: LCCOMB_X51_Y24_N18
\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][8]~q\) # ((\screenArea[7][8]~q\ & \scanStateVariable.LOAD8~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\screenArea[7][8]~q\ & (\scanStateVariable.LOAD8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \screenArea[7][8]~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \screenArea[6][8]~q\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X51_Y24_N8
\Selector42~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~5_combout\ = (\Selector42~4_combout\) # ((\Selector42~0_combout\) # ((screenAreaLatch(7) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(7),
	datab => \WideOr4~5_combout\,
	datac => \Selector42~4_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector42~5_combout\);

-- Location: FF_X51_Y24_N9
\screenAreaLatch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector42~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(8));

-- Location: LCCOMB_X50_Y23_N18
\Selector41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][9]~q\) # ((screenAreaLatch(8) & \WideOr4~5_combout\)))) # (!\scanStateVariable.LOAD3~q\ & (screenAreaLatch(8) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => screenAreaLatch(8),
	datac => \screenArea[2][9]~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X50_Y23_N8
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

-- Location: LCCOMB_X50_Y23_N26
\Selector41~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~4_combout\ = (\Selector41~3_combout\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \screenArea[3][9]~q\,
	datad => \Selector41~3_combout\,
	combout => \Selector41~4_combout\);

-- Location: LCCOMB_X49_Y27_N16
\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][9]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][9]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][9]~q\,
	datad => \screenArea[7][9]~q\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X50_Y23_N16
\Selector41~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~5_combout\ = (\Selector41~2_combout\) # ((\Selector41~1_combout\) # ((\Selector41~4_combout\) # (\Selector41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \Selector41~1_combout\,
	datac => \Selector41~4_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector41~5_combout\);

-- Location: FF_X50_Y23_N17
\screenAreaLatch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector41~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(9));

-- Location: LCCOMB_X50_Y23_N30
\Selector40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][10]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][10]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][10]~q\,
	datad => \screenArea[5][10]~q\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X50_Y23_N14
\Selector40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][10]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][10]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][10]~q\,
	datad => \screenArea[3][10]~q\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X50_Y23_N28
\Selector40~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & (\screenArea[1][10]~q\))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][10]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[1][10]~q\,
	datad => \screenArea[0][10]~q\,
	combout => \Selector40~3_combout\);

-- Location: LCCOMB_X50_Y23_N4
\Selector40~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~4_combout\ = (\Selector40~1_combout\) # ((\Selector40~2_combout\) # (\Selector40~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~1_combout\,
	datab => \Selector40~2_combout\,
	datad => \Selector40~3_combout\,
	combout => \Selector40~4_combout\);

-- Location: LCCOMB_X49_Y27_N2
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][10]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][10]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][10]~q\,
	datad => \screenArea[7][10]~q\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X50_Y23_N22
\Selector40~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~5_combout\ = (\Selector40~4_combout\) # ((\Selector40~0_combout\) # ((screenAreaLatch(9) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(9),
	datab => \WideOr4~5_combout\,
	datac => \Selector40~4_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector40~5_combout\);

-- Location: FF_X50_Y23_N23
\screenAreaLatch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector40~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(10));

-- Location: LCCOMB_X46_Y25_N22
\Selector39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][11]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][11]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][11]~q\,
	datad => \screenArea[5][11]~q\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X46_Y25_N4
\Selector39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][11]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][11]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][11]~q\,
	datad => \screenArea[1][11]~q\,
	combout => \Selector39~3_combout\);

-- Location: LCCOMB_X46_Y25_N8
\Selector39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][11]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][11]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][11]~q\,
	datad => \screenArea[3][11]~q\,
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X46_Y25_N14
\Selector39~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~4_combout\ = (\Selector39~1_combout\) # ((\Selector39~3_combout\) # (\Selector39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~1_combout\,
	datab => \Selector39~3_combout\,
	datad => \Selector39~2_combout\,
	combout => \Selector39~4_combout\);

-- Location: LCCOMB_X49_Y27_N20
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][11]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][11]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][11]~q\,
	datad => \screenArea[7][11]~q\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X46_Y25_N30
\Selector39~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~5_combout\ = (\Selector39~4_combout\) # ((\Selector39~0_combout\) # ((screenAreaLatch(10) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(10),
	datab => \WideOr4~5_combout\,
	datac => \Selector39~4_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~5_combout\);

-- Location: FF_X46_Y25_N31
\screenAreaLatch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector39~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(11));

-- Location: LCCOMB_X46_Y25_N10
\Selector38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][12]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][12]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][12]~q\,
	datad => \screenArea[3][12]~q\,
	combout => \Selector38~2_combout\);

-- Location: LCCOMB_X46_Y25_N24
\Selector38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][12]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][12]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][12]~q\,
	datad => \screenArea[1][12]~q\,
	combout => \Selector38~3_combout\);

-- Location: LCCOMB_X46_Y25_N12
\Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][12]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][12]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][12]~q\,
	datad => \screenArea[5][12]~q\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X46_Y25_N26
\Selector38~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~4_combout\ = (\Selector38~2_combout\) # ((\Selector38~3_combout\) # (\Selector38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~2_combout\,
	datab => \Selector38~3_combout\,
	datad => \Selector38~1_combout\,
	combout => \Selector38~4_combout\);

-- Location: LCCOMB_X49_Y27_N14
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][12]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][12]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][12]~q\,
	datad => \screenArea[7][12]~q\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X46_Y25_N20
\Selector38~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~5_combout\ = (\Selector38~4_combout\) # ((\Selector38~0_combout\) # ((screenAreaLatch(11) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(11),
	datab => \WideOr4~5_combout\,
	datac => \Selector38~4_combout\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~5_combout\);

-- Location: FF_X46_Y25_N21
\screenAreaLatch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector38~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(12));

-- Location: LCCOMB_X49_Y27_N12
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][13]~q\) # ((\screenArea[7][13]~q\ & \scanStateVariable.LOAD8~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\screenArea[7][13]~q\ & ((\scanStateVariable.LOAD8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \screenArea[7][13]~q\,
	datac => \screenArea[6][13]~q\,
	datad => \scanStateVariable.LOAD8~q\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X45_Y27_N6
\Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][13]~q\) # ((\screenArea[0][13]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\screenArea[0][13]~q\ & ((!\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[0][13]~q\,
	datac => \screenArea[1][13]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector37~3_combout\);

-- Location: LCCOMB_X45_Y27_N0
\Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][13]~q\) # ((\screenArea[4][13]~q\ & \scanStateVariable.LOAD5~q\)))) # (!\scanStateVariable.LOAD6~q\ & (((\screenArea[4][13]~q\ & \scanStateVariable.LOAD5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \screenArea[5][13]~q\,
	datac => \screenArea[4][13]~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X49_Y25_N8
\Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][13]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][13]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][13]~q\,
	datad => \screenArea[3][13]~q\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X45_Y27_N12
\Selector37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~4_combout\ = (\Selector37~3_combout\) # ((\Selector37~1_combout\) # (\Selector37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~3_combout\,
	datab => \Selector37~1_combout\,
	datad => \Selector37~2_combout\,
	combout => \Selector37~4_combout\);

-- Location: LCCOMB_X45_Y27_N30
\Selector37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~5_combout\ = (\Selector37~0_combout\) # ((\Selector37~4_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~5_combout\,
	datab => screenAreaLatch(12),
	datac => \Selector37~0_combout\,
	datad => \Selector37~4_combout\,
	combout => \Selector37~5_combout\);

-- Location: FF_X45_Y27_N31
\screenAreaLatch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector37~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(13));

-- Location: LCCOMB_X45_Y27_N22
\Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (screenAreaLatch(13) & ((\WideOr4~5_combout\) # ((\screenArea[6][14]~q\ & \scanStateVariable.LOAD7~q\)))) # (!screenAreaLatch(13) & (\screenArea[6][14]~q\ & ((\scanStateVariable.LOAD7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(13),
	datab => \screenArea[6][14]~q\,
	datac => \WideOr4~5_combout\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X45_Y27_N24
\Selector36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\scanStateVariable.LOAD1~q\ & (((\scanStateVariable.LOAD2~q\ & \screenArea[1][14]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][14]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \screenArea[0][14]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \screenArea[1][14]~q\,
	combout => \Selector36~2_combout\);

-- Location: LCCOMB_X45_Y27_N16
\Selector36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~3_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][14]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][14]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (((\scanStateVariable.LOAD5~q\ & \screenArea[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \screenArea[5][14]~q\,
	datac => \scanStateVariable.LOAD5~q\,
	datad => \screenArea[4][14]~q\,
	combout => \Selector36~3_combout\);

-- Location: LCCOMB_X45_Y27_N14
\Selector36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~4_combout\ = (\Selector36~3_combout\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][14]~q\,
	datad => \Selector36~3_combout\,
	combout => \Selector36~4_combout\);

-- Location: LCCOMB_X49_Y25_N2
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][14]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][14]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][14]~q\))))

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
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X45_Y27_N28
\Selector36~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~5_combout\ = (\Selector36~1_combout\) # ((\Selector36~2_combout\) # ((\Selector36~4_combout\) # (\Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~1_combout\,
	datab => \Selector36~2_combout\,
	datac => \Selector36~4_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector36~5_combout\);

-- Location: FF_X45_Y27_N29
\screenAreaLatch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector36~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(14));

-- Location: LCCOMB_X49_Y25_N26
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\screenArea[6][15]~q\ & ((\scanStateVariable.LOAD7~q\) # ((screenAreaLatch(14) & \WideOr4~5_combout\)))) # (!\screenArea[6][15]~q\ & (screenAreaLatch(14) & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][15]~q\,
	datab => screenAreaLatch(14),
	datac => \scanStateVariable.LOAD7~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X50_Y25_N24
\Selector35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~3_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][15]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][15]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][15]~q\,
	datad => \screenArea[4][15]~q\,
	combout => \Selector35~3_combout\);

-- Location: LCCOMB_X50_Y25_N6
\Selector35~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~4_combout\ = (\Selector35~3_combout\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \screenArea[0][15]~q\,
	datad => \Selector35~3_combout\,
	combout => \Selector35~4_combout\);

-- Location: LCCOMB_X50_Y25_N30
\Selector35~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~5_combout\ = (\Selector35~2_combout\) # ((\Selector35~1_combout\) # ((\Selector35~0_combout\) # (\Selector35~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~2_combout\,
	datab => \Selector35~1_combout\,
	datac => \Selector35~0_combout\,
	datad => \Selector35~4_combout\,
	combout => \Selector35~5_combout\);

-- Location: FF_X50_Y25_N31
\screenAreaLatch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector35~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(15));

-- Location: LCCOMB_X46_Y23_N10
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][16]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][16]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][16]~q\,
	datad => \screenArea[7][16]~q\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X50_Y25_N10
\Selector34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][16]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][16]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][16]~q\,
	datad => \screenArea[3][16]~q\,
	combout => \Selector34~2_combout\);

-- Location: LCCOMB_X50_Y25_N8
\Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][16]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][16]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (((\scanStateVariable.LOAD6~q\ & \screenArea[5][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \screenArea[4][16]~q\,
	datac => \scanStateVariable.LOAD6~q\,
	datad => \screenArea[5][16]~q\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X51_Y25_N24
\Selector34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][16]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][16]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[1][16]~q\,
	datad => \screenArea[0][16]~q\,
	combout => \Selector34~3_combout\);

-- Location: LCCOMB_X50_Y25_N20
\Selector34~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~4_combout\ = (\Selector34~2_combout\) # ((\Selector34~1_combout\) # (\Selector34~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~2_combout\,
	datab => \Selector34~1_combout\,
	datad => \Selector34~3_combout\,
	combout => \Selector34~4_combout\);

-- Location: LCCOMB_X50_Y25_N22
\Selector34~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~5_combout\ = (\Selector34~0_combout\) # ((\Selector34~4_combout\) # ((screenAreaLatch(15) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(15),
	datab => \WideOr4~5_combout\,
	datac => \Selector34~0_combout\,
	datad => \Selector34~4_combout\,
	combout => \Selector34~5_combout\);

-- Location: FF_X50_Y25_N23
\screenAreaLatch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector34~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(16));

-- Location: LCCOMB_X46_Y23_N16
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][17]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][17]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][17]~q\,
	datad => \screenArea[7][17]~q\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X47_Y25_N10
\Selector33~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~5_combout\ = (\Selector33~4_combout\) # ((\Selector33~0_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~4_combout\,
	datab => \WideOr4~5_combout\,
	datac => screenAreaLatch(16),
	datad => \Selector33~0_combout\,
	combout => \Selector33~5_combout\);

-- Location: FF_X47_Y25_N11
\screenAreaLatch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector33~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(17));

-- Location: LCCOMB_X47_Y25_N28
\Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][18]~q\) # ((\WideOr4~5_combout\ & screenAreaLatch(17))))) # (!\scanStateVariable.LOAD4~q\ & (\WideOr4~5_combout\ & (screenAreaLatch(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \WideOr4~5_combout\,
	datac => screenAreaLatch(17),
	datad => \screenArea[3][18]~q\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X47_Y25_N8
\Selector32~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~5_combout\ = (\Selector32~2_combout\) # ((\Selector32~4_combout\) # ((\Selector32~0_combout\) # (\Selector32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~2_combout\,
	datab => \Selector32~4_combout\,
	datac => \Selector32~0_combout\,
	datad => \Selector32~1_combout\,
	combout => \Selector32~5_combout\);

-- Location: FF_X47_Y25_N9
\screenAreaLatch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector32~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(18));

-- Location: LCCOMB_X50_Y24_N8
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

-- Location: LCCOMB_X50_Y24_N30
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

-- Location: LCCOMB_X50_Y24_N20
\Selector31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\screenArea[5][19]~q\ & ((\scanStateVariable.LOAD6~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][19]~q\)))) # (!\screenArea[5][19]~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][19]~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][19]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X46_Y27_N10
\Selector31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][19]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][19]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][19]~q\,
	datad => \screenArea[3][19]~q\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X50_Y24_N2
\Selector31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~4_combout\ = (\Selector31~3_combout\) # ((\Selector31~1_combout\) # (\Selector31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~3_combout\,
	datab => \Selector31~1_combout\,
	datad => \Selector31~2_combout\,
	combout => \Selector31~4_combout\);

-- Location: LCCOMB_X50_Y24_N28
\Selector31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~5_combout\ = (\Selector31~0_combout\) # ((\Selector31~4_combout\) # ((screenAreaLatch(18) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(18),
	datab => \WideOr4~5_combout\,
	datac => \Selector31~0_combout\,
	datad => \Selector31~4_combout\,
	combout => \Selector31~5_combout\);

-- Location: FF_X50_Y24_N29
\screenAreaLatch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector31~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(19));

-- Location: LCCOMB_X50_Y24_N26
\Selector30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (screenAreaLatch(19) & ((\WideOr4~5_combout\) # ((\screenArea[5][20]~q\ & \scanStateVariable.LOAD6~q\)))) # (!screenAreaLatch(19) & (\screenArea[5][20]~q\ & ((\scanStateVariable.LOAD6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(19),
	datab => \screenArea[5][20]~q\,
	datac => \WideOr4~5_combout\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector30~2_combout\);

-- Location: LCCOMB_X46_Y27_N6
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][20]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][20]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[4][20]~q\,
	datad => \screenArea[2][20]~q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X50_Y24_N12
\Selector30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~5_combout\ = (\Selector30~1_combout\) # ((\Selector30~4_combout\) # ((\Selector30~2_combout\) # (\Selector30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~1_combout\,
	datab => \Selector30~4_combout\,
	datac => \Selector30~2_combout\,
	datad => \Selector30~0_combout\,
	combout => \Selector30~5_combout\);

-- Location: FF_X50_Y24_N13
\screenAreaLatch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector30~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(20));

-- Location: LCCOMB_X49_Y24_N30
\Selector29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][21]~q\) # ((screenAreaLatch(20) & \WideOr4~5_combout\)))) # (!\scanStateVariable.LOAD3~q\ & (screenAreaLatch(20) & (\WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => screenAreaLatch(20),
	datac => \WideOr4~5_combout\,
	datad => \screenArea[2][21]~q\,
	combout => \Selector29~2_combout\);

-- Location: LCCOMB_X46_Y27_N4
\Selector29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~5_combout\ = (\Selector29~4_combout\) # ((\Selector29~0_combout\) # ((\Selector29~1_combout\) # (\Selector29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~4_combout\,
	datab => \Selector29~0_combout\,
	datac => \Selector29~1_combout\,
	datad => \Selector29~2_combout\,
	combout => \Selector29~5_combout\);

-- Location: FF_X46_Y27_N5
\screenAreaLatch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector29~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(21));

-- Location: LCCOMB_X49_Y24_N20
\Selector28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~5_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][22]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][22]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (\scanStateVariable.LOAD7~q\ & (\screenArea[6][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \screenArea[6][22]~q\,
	datad => \screenArea[7][22]~q\,
	combout => \Selector28~5_combout\);

-- Location: LCCOMB_X49_Y24_N26
\Selector28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~7_combout\ = (\Selector28~5_combout\) # ((screenAreaLatch(21) & ((!\WideOr4~2_combout\) # (!\WideOr4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~3_combout\,
	datab => \WideOr4~2_combout\,
	datac => screenAreaLatch(21),
	datad => \Selector28~5_combout\,
	combout => \Selector28~7_combout\);

-- Location: LCCOMB_X49_Y24_N14
\Selector28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~4_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][22]~q\) # ((\screenArea[2][22]~q\ & \scanStateVariable.LOAD3~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\screenArea[2][22]~q\ & (\scanStateVariable.LOAD3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \screenArea[2][22]~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \screenArea[5][22]~q\,
	combout => \Selector28~4_combout\);

-- Location: LCCOMB_X46_Y27_N30
\Selector28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][22]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][22]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[4][22]~q\,
	datad => \screenArea[3][22]~q\,
	combout => \Selector28~2_combout\);

-- Location: LCCOMB_X46_Y26_N14
\screenArea[1][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][22]~feeder_combout\ = \screenArea[1][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][21]~q\,
	combout => \screenArea[1][22]~feeder_combout\);

-- Location: FF_X46_Y26_N15
\screenArea[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][22]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][22]~q\);

-- Location: LCCOMB_X46_Y26_N30
\Selector28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][22]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][22]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[1][22]~q\,
	datad => \screenArea[0][22]~q\,
	combout => \Selector28~3_combout\);

-- Location: LCCOMB_X49_Y24_N28
\Selector28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~6_combout\ = (\Selector28~7_combout\) # ((\Selector28~4_combout\) # ((\Selector28~2_combout\) # (\Selector28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~7_combout\,
	datab => \Selector28~4_combout\,
	datac => \Selector28~2_combout\,
	datad => \Selector28~3_combout\,
	combout => \Selector28~6_combout\);

-- Location: FF_X49_Y24_N29
\screenAreaLatch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector28~6_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(22));

-- Location: LCCOMB_X49_Y23_N22
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\screenArea[6][23]~q\ & ((\scanStateVariable.LOAD7~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][23]~q\)))) # (!\screenArea[6][23]~q\ & (\scanStateVariable.LOAD8~q\ & (\screenArea[7][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][23]~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[7][23]~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X49_Y23_N20
\Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][23]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][23]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & (\screenArea[5][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[5][23]~q\,
	datad => \screenArea[4][23]~q\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X49_Y23_N26
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

-- Location: LCCOMB_X49_Y23_N6
\screenArea[1][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][23]~feeder_combout\ = \screenArea[1][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][22]~q\,
	combout => \screenArea[1][23]~feeder_combout\);

-- Location: FF_X49_Y23_N7
\screenArea[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][23]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][23]~q\);

-- Location: LCCOMB_X49_Y23_N24
\Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][23]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][23]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][23]~q\,
	datad => \screenArea[1][23]~q\,
	combout => \Selector27~3_combout\);

-- Location: LCCOMB_X49_Y23_N2
\Selector27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~4_combout\ = (\Selector27~1_combout\) # ((\Selector27~2_combout\) # (\Selector27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~1_combout\,
	datac => \Selector27~2_combout\,
	datad => \Selector27~3_combout\,
	combout => \Selector27~4_combout\);

-- Location: LCCOMB_X49_Y23_N12
\Selector27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~5_combout\ = (\Selector27~0_combout\) # ((\Selector27~4_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~5_combout\,
	datab => screenAreaLatch(22),
	datac => \Selector27~0_combout\,
	datad => \Selector27~4_combout\,
	combout => \Selector27~5_combout\);

-- Location: FF_X49_Y23_N13
\screenAreaLatch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector27~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(23));

-- Location: LCCOMB_X49_Y23_N16
\Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\screenArea[5][24]~q\ & ((\scanStateVariable.LOAD6~q\) # ((\screenArea[4][24]~q\ & \scanStateVariable.LOAD5~q\)))) # (!\screenArea[5][24]~q\ & (((\screenArea[4][24]~q\ & \scanStateVariable.LOAD5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[5][24]~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][24]~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X49_Y23_N28
\Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][24]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][24]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][24]~q\,
	datad => \screenArea[3][24]~q\,
	combout => \Selector26~2_combout\);

-- Location: LCCOMB_X47_Y23_N8
\screenArea[1][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][24]~feeder_combout\ = \screenArea[1][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][23]~q\,
	combout => \screenArea[1][24]~feeder_combout\);

-- Location: FF_X47_Y23_N9
\screenArea[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][24]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][24]~q\);

-- Location: LCCOMB_X47_Y23_N28
\Selector26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][24]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][24]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[1][24]~q\,
	datad => \screenArea[0][24]~q\,
	combout => \Selector26~3_combout\);

-- Location: LCCOMB_X49_Y23_N18
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

-- Location: LCCOMB_X49_Y23_N0
\Selector26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~5_combout\ = (\Selector26~0_combout\) # ((\Selector26~4_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~5_combout\,
	datab => \Selector26~0_combout\,
	datac => screenAreaLatch(23),
	datad => \Selector26~4_combout\,
	combout => \Selector26~5_combout\);

-- Location: FF_X49_Y23_N1
\screenAreaLatch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector26~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(24));

-- Location: LCCOMB_X45_Y26_N10
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

-- Location: FF_X45_Y26_N11
\screenArea[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][25]~q\);

-- Location: LCCOMB_X45_Y26_N16
\screenArea[7][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][25]~feeder_combout\ = \screenArea[7][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][24]~q\,
	combout => \screenArea[7][25]~feeder_combout\);

-- Location: FF_X45_Y26_N17
\screenArea[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][25]~q\);

-- Location: LCCOMB_X45_Y26_N28
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\screenArea[6][25]~q\ & ((\scanStateVariable.LOAD7~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][25]~q\)))) # (!\screenArea[6][25]~q\ & (((\scanStateVariable.LOAD8~q\ & \screenArea[7][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[6][25]~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \screenArea[7][25]~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X45_Y26_N2
\Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\screenArea[2][25]~q\ & ((\scanStateVariable.LOAD3~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][25]~q\)))) # (!\screenArea[2][25]~q\ & (\scanStateVariable.LOAD4~q\ & (\screenArea[3][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenArea[2][25]~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[3][25]~q\,
	datad => \scanStateVariable.LOAD3~q\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X45_Y26_N14
\Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][25]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][25]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][25]~q\,
	datad => \screenArea[5][25]~q\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X46_Y26_N4
\screenArea[1][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][25]~feeder_combout\ = \screenArea[1][24]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[1][24]~q\,
	combout => \screenArea[1][25]~feeder_combout\);

-- Location: FF_X46_Y26_N5
\screenArea[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][25]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][25]~q\);

-- Location: LCCOMB_X46_Y26_N2
\Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][25]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][25]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[1][25]~q\,
	datad => \screenArea[0][25]~q\,
	combout => \Selector25~3_combout\);

-- Location: LCCOMB_X45_Y26_N0
\Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = (\Selector25~2_combout\) # ((\Selector25~1_combout\) # (\Selector25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~2_combout\,
	datac => \Selector25~1_combout\,
	datad => \Selector25~3_combout\,
	combout => \Selector25~4_combout\);

-- Location: LCCOMB_X45_Y26_N18
\Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~5_combout\ = (\Selector25~0_combout\) # ((\Selector25~4_combout\) # ((screenAreaLatch(24) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(24),
	datab => \Selector25~0_combout\,
	datac => \WideOr4~5_combout\,
	datad => \Selector25~4_combout\,
	combout => \Selector25~5_combout\);

-- Location: FF_X45_Y26_N19
\screenAreaLatch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector25~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(25));

-- Location: LCCOMB_X45_Y26_N12
\Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][26]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][26]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][26]~q\,
	datad => \screenArea[3][26]~q\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X45_Y26_N24
\Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][26]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][26]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[5][26]~q\,
	datad => \screenArea[4][26]~q\,
	combout => \Selector24~1_combout\);

-- Location: FF_X46_Y26_N3
\screenArea[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][25]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][26]~q\);

-- Location: LCCOMB_X46_Y26_N8
\Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][26]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][26]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][26]~q\,
	datad => \screenArea[1][26]~q\,
	combout => \Selector24~3_combout\);

-- Location: LCCOMB_X45_Y26_N30
\Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = (\Selector24~2_combout\) # ((\Selector24~1_combout\) # (\Selector24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~2_combout\,
	datab => \Selector24~1_combout\,
	datad => \Selector24~3_combout\,
	combout => \Selector24~4_combout\);

-- Location: LCCOMB_X52_Y27_N14
\screenArea[6][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][26]~feeder_combout\ = \screenArea[6][25]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][25]~q\,
	combout => \screenArea[6][26]~feeder_combout\);

-- Location: FF_X52_Y27_N15
\screenArea[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][26]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][26]~q\);

-- Location: LCCOMB_X52_Y27_N20
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

-- Location: FF_X52_Y27_N21
\screenArea[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][26]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][26]~q\);

-- Location: LCCOMB_X52_Y27_N12
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][26]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][26]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][26]~q\,
	datad => \screenArea[7][26]~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X45_Y26_N6
\Selector24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~5_combout\ = (\Selector24~4_combout\) # ((\Selector24~0_combout\) # ((screenAreaLatch(25) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(25),
	datab => \WideOr4~5_combout\,
	datac => \Selector24~4_combout\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~5_combout\);

-- Location: FF_X45_Y26_N7
\screenAreaLatch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector24~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(26));

-- Location: LCCOMB_X47_Y26_N10
\Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][27]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][27]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][27]~q\,
	datad => \screenArea[3][27]~q\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X47_Y26_N8
\Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][27]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][27]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][27]~q\,
	datad => \screenArea[5][27]~q\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X46_Y26_N18
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

-- Location: FF_X46_Y26_N19
\screenArea[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][27]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][27]~q\);

-- Location: LCCOMB_X46_Y26_N24
\Selector23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][27]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][27]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][27]~q\,
	datad => \screenArea[1][27]~q\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X47_Y26_N26
\Selector23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (\Selector23~2_combout\) # ((\Selector23~1_combout\) # (\Selector23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~2_combout\,
	datac => \Selector23~1_combout\,
	datad => \Selector23~3_combout\,
	combout => \Selector23~4_combout\);

-- Location: LCCOMB_X52_Y27_N4
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

-- Location: FF_X52_Y27_N5
\screenArea[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][27]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][27]~q\);

-- Location: LCCOMB_X52_Y27_N6
\screenArea[7][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][27]~feeder_combout\ = \screenArea[7][26]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][26]~q\,
	combout => \screenArea[7][27]~feeder_combout\);

-- Location: FF_X52_Y27_N7
\screenArea[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][27]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][27]~q\);

-- Location: LCCOMB_X52_Y27_N10
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][27]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][27]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][27]~q\,
	datad => \screenArea[7][27]~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X47_Y26_N6
\Selector23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (\Selector23~4_combout\) # ((\Selector23~0_combout\) # ((screenAreaLatch(26) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(26),
	datab => \WideOr4~5_combout\,
	datac => \Selector23~4_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector23~5_combout\);

-- Location: FF_X47_Y26_N7
\screenAreaLatch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector23~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(27));

-- Location: LCCOMB_X46_Y26_N12
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

-- Location: FF_X46_Y26_N13
\screenArea[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][28]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][28]~q\);

-- Location: LCCOMB_X46_Y26_N20
\Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (screenAreaLatch(27) & ((\WideOr4~5_combout\) # ((\screenArea[1][28]~q\ & \scanStateVariable.LOAD2~q\)))) # (!screenAreaLatch(27) & (\screenArea[1][28]~q\ & (\scanStateVariable.LOAD2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(27),
	datab => \screenArea[1][28]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X52_Y27_N2
\screenArea[6][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][28]~feeder_combout\ = \screenArea[6][27]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][27]~q\,
	combout => \screenArea[6][28]~feeder_combout\);

-- Location: FF_X52_Y27_N3
\screenArea[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][28]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][28]~q\);

-- Location: LCCOMB_X52_Y27_N16
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

-- Location: FF_X52_Y27_N17
\screenArea[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][28]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][28]~q\);

-- Location: LCCOMB_X52_Y27_N28
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][28]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][28]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][28]~q\,
	datad => \screenArea[7][28]~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X49_Y26_N20
\Selector22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = (\Selector22~1_combout\) # ((\Selector22~4_combout\) # ((\Selector22~2_combout\) # (\Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~1_combout\,
	datab => \Selector22~4_combout\,
	datac => \Selector22~2_combout\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~5_combout\);

-- Location: FF_X49_Y26_N21
\screenAreaLatch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector22~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(28));

-- Location: FF_X47_Y26_N17
\screenArea[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][28]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][29]~q\);

-- Location: LCCOMB_X47_Y26_N20
\screenArea[3][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][29]~feeder_combout\ = \screenArea[3][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[3][28]~q\,
	combout => \screenArea[3][29]~feeder_combout\);

-- Location: FF_X47_Y26_N21
\screenArea[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][29]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][29]~q\);

-- Location: LCCOMB_X47_Y26_N16
\Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][29]~q\) # ((\scanStateVariable.LOAD3~q\ & \screenArea[2][29]~q\)))) # (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & (\screenArea[2][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \screenArea[2][29]~q\,
	datad => \screenArea[3][29]~q\,
	combout => \Selector21~2_combout\);

-- Location: FF_X47_Y26_N25
\screenArea[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][28]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][29]~q\);

-- Location: LCCOMB_X47_Y26_N12
\screenArea[5][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][29]~feeder_combout\ = \screenArea[5][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[5][28]~q\,
	combout => \screenArea[5][29]~feeder_combout\);

-- Location: FF_X47_Y26_N13
\screenArea[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][29]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][29]~q\);

-- Location: LCCOMB_X47_Y26_N24
\Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][29]~q\) # ((\scanStateVariable.LOAD5~q\ & \screenArea[4][29]~q\)))) # (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD5~q\ & (\screenArea[4][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \screenArea[4][29]~q\,
	datad => \screenArea[5][29]~q\,
	combout => \Selector21~1_combout\);

-- Location: FF_X46_Y26_N29
\screenArea[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][28]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][29]~q\);

-- Location: LCCOMB_X46_Y26_N0
\screenArea[1][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[1][29]~feeder_combout\ = \screenArea[1][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[1][28]~q\,
	combout => \screenArea[1][29]~feeder_combout\);

-- Location: FF_X46_Y26_N1
\screenArea[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][29]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][29]~q\);

-- Location: LCCOMB_X46_Y26_N28
\Selector21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][29]~q\) # ((!\scanStateVariable.LOAD1~q\ & \screenArea[0][29]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (!\scanStateVariable.LOAD1~q\ & (\screenArea[0][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \screenArea[0][29]~q\,
	datad => \screenArea[1][29]~q\,
	combout => \Selector21~3_combout\);

-- Location: LCCOMB_X47_Y26_N4
\Selector21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = (\Selector21~2_combout\) # ((\Selector21~1_combout\) # (\Selector21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector21~2_combout\,
	datac => \Selector21~1_combout\,
	datad => \Selector21~3_combout\,
	combout => \Selector21~4_combout\);

-- Location: LCCOMB_X52_Y27_N8
\screenArea[6][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][29]~feeder_combout\ = \screenArea[6][28]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[6][28]~q\,
	combout => \screenArea[6][29]~feeder_combout\);

-- Location: FF_X52_Y27_N9
\screenArea[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][29]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][29]~q\);

-- Location: LCCOMB_X52_Y27_N18
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

-- Location: FF_X52_Y27_N19
\screenArea[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][29]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][29]~q\);

-- Location: LCCOMB_X52_Y27_N30
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][29]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][29]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][29]~q\,
	datad => \screenArea[7][29]~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X47_Y26_N0
\Selector21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~5_combout\ = (\Selector21~4_combout\) # ((\Selector21~0_combout\) # ((screenAreaLatch(28) & \WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(28),
	datab => \WideOr4~5_combout\,
	datac => \Selector21~4_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~5_combout\);

-- Location: FF_X47_Y26_N1
\screenAreaLatch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector21~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(29));

-- Location: LCCOMB_X47_Y27_N20
\screenArea[5][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[5][30]~feeder_combout\ = \screenArea[5][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[5][29]~q\,
	combout => \screenArea[5][30]~feeder_combout\);

-- Location: FF_X47_Y27_N21
\screenArea[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][30]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][30]~q\);

-- Location: FF_X47_Y27_N27
\screenArea[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][29]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][30]~q\);

-- Location: LCCOMB_X47_Y27_N26
\Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][30]~q\) # ((\screenArea[5][30]~q\ & \scanStateVariable.LOAD6~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\screenArea[5][30]~q\ & ((\scanStateVariable.LOAD6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \screenArea[5][30]~q\,
	datac => \screenArea[4][30]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector20~1_combout\);

-- Location: FF_X47_Y27_N15
\screenArea[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][29]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][30]~q\);

-- Location: LCCOMB_X47_Y27_N8
\screenArea[3][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[3][30]~feeder_combout\ = \screenArea[3][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[3][29]~q\,
	combout => \screenArea[3][30]~feeder_combout\);

-- Location: FF_X47_Y27_N9
\screenArea[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][30]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][30]~q\);

-- Location: LCCOMB_X47_Y27_N14
\Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][30]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][30]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][30]~q\,
	datad => \screenArea[3][30]~q\,
	combout => \Selector20~2_combout\);

-- Location: FF_X47_Y27_N5
\screenArea[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][29]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][30]~q\);

-- Location: FF_X47_Y27_N19
\screenArea[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[1][29]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][30]~q\);

-- Location: LCCOMB_X47_Y27_N18
\Selector20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][30]~q\) # ((\screenArea[0][30]~q\ & !\scanStateVariable.LOAD1~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\screenArea[0][30]~q\ & ((!\scanStateVariable.LOAD1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \screenArea[0][30]~q\,
	datac => \screenArea[1][30]~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector20~3_combout\);

-- Location: LCCOMB_X47_Y27_N22
\Selector20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = (\Selector20~1_combout\) # ((\Selector20~2_combout\) # (\Selector20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~1_combout\,
	datab => \Selector20~2_combout\,
	datad => \Selector20~3_combout\,
	combout => \Selector20~4_combout\);

-- Location: LCCOMB_X52_Y27_N22
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

-- Location: FF_X52_Y27_N23
\screenArea[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][30]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][30]~q\);

-- Location: LCCOMB_X52_Y27_N0
\screenArea[7][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[7][30]~feeder_combout\ = \screenArea[7][29]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screenArea[7][29]~q\,
	combout => \screenArea[7][30]~feeder_combout\);

-- Location: FF_X52_Y27_N1
\screenArea[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[7][30]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][30]~q\);

-- Location: LCCOMB_X52_Y27_N24
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\screenArea[6][30]~q\) # ((\scanStateVariable.LOAD8~q\ & \screenArea[7][30]~q\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenArea[6][30]~q\,
	datad => \screenArea[7][30]~q\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X47_Y27_N6
\Selector20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~5_combout\ = (\Selector20~4_combout\) # ((\Selector20~0_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~5_combout\,
	datab => screenAreaLatch(29),
	datac => \Selector20~4_combout\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~5_combout\);

-- Location: FF_X47_Y27_N7
\screenAreaLatch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector20~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(30));

-- Location: FF_X47_Y27_N13
\screenArea[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[4][30]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[4][31]~q\);

-- Location: LCCOMB_X47_Y27_N28
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

-- Location: FF_X47_Y27_N29
\screenArea[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[5][31]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[5][31]~q\);

-- Location: LCCOMB_X47_Y27_N12
\Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\scanStateVariable.LOAD5~q\ & ((\screenArea[4][31]~q\) # ((\scanStateVariable.LOAD6~q\ & \screenArea[5][31]~q\)))) # (!\scanStateVariable.LOAD5~q\ & (\scanStateVariable.LOAD6~q\ & ((\screenArea[5][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \screenArea[4][31]~q\,
	datad => \screenArea[5][31]~q\,
	combout => \Selector19~1_combout\);

-- Location: FF_X47_Y27_N31
\screenArea[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[2][30]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[2][31]~q\);

-- Location: LCCOMB_X47_Y27_N2
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

-- Location: FF_X47_Y27_N3
\screenArea[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[3][31]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[3][31]~q\);

-- Location: LCCOMB_X47_Y27_N30
\Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\scanStateVariable.LOAD3~q\ & ((\screenArea[2][31]~q\) # ((\scanStateVariable.LOAD4~q\ & \screenArea[3][31]~q\)))) # (!\scanStateVariable.LOAD3~q\ & (\scanStateVariable.LOAD4~q\ & ((\screenArea[3][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \screenArea[2][31]~q\,
	datad => \screenArea[3][31]~q\,
	combout => \Selector19~2_combout\);

-- Location: FF_X47_Y27_N11
\screenArea[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[0][30]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[0][31]~q\);

-- Location: LCCOMB_X47_Y27_N24
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

-- Location: FF_X47_Y27_N25
\screenArea[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[1][31]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[1][31]~q\);

-- Location: LCCOMB_X47_Y27_N10
\Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\scanStateVariable.LOAD1~q\ & (\scanStateVariable.LOAD2~q\ & ((\screenArea[1][31]~q\)))) # (!\scanStateVariable.LOAD1~q\ & ((\screenArea[0][31]~q\) # ((\scanStateVariable.LOAD2~q\ & \screenArea[1][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \screenArea[0][31]~q\,
	datad => \screenArea[1][31]~q\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X47_Y27_N4
\Selector19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = (\Selector19~1_combout\) # ((\Selector19~2_combout\) # (\Selector19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~1_combout\,
	datab => \Selector19~2_combout\,
	datad => \Selector19~3_combout\,
	combout => \Selector19~4_combout\);

-- Location: FF_X47_Y27_N23
\screenArea[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \screenArea[7][30]~q\,
	sload => VCC,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[7][31]~q\);

-- Location: LCCOMB_X46_Y27_N28
\screenArea[6][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenArea[6][31]~feeder_combout\ = \screenArea[6][30]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenArea[6][30]~q\,
	combout => \screenArea[6][31]~feeder_combout\);

-- Location: FF_X46_Y27_N29
\screenArea[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \screenArea[6][31]~feeder_combout\,
	ena => \screenArea[7][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \screenArea[6][31]~q\);

-- Location: LCCOMB_X47_Y27_N16
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\scanStateVariable.LOAD8~q\ & ((\screenArea[7][31]~q\) # ((\scanStateVariable.LOAD7~q\ & \screenArea[6][31]~q\)))) # (!\scanStateVariable.LOAD8~q\ & (((\scanStateVariable.LOAD7~q\ & \screenArea[6][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \screenArea[7][31]~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \screenArea[6][31]~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X47_Y27_N0
\Selector19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = (\Selector19~4_combout\) # ((\Selector19~0_combout\) # ((\WideOr4~5_combout\ & screenAreaLatch(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~5_combout\,
	datab => screenAreaLatch(30),
	datac => \Selector19~4_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~5_combout\);

-- Location: FF_X47_Y27_N1
\screenAreaLatch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector19~5_combout\,
	ena => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(31));

-- Location: LCCOMB_X44_Y24_N8
\serial_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~0_combout\ = (\LINE_SACN_PROC:registerSerialData[5]~q\ & (((\serial_data~q\)))) # (!\LINE_SACN_PROC:registerSerialData[5]~q\ & ((\WideOr4~5_combout\ & ((screenAreaLatch(31)))) # (!\WideOr4~5_combout\ & (\serial_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[5]~q\,
	datab => \WideOr4~5_combout\,
	datac => \serial_data~q\,
	datad => screenAreaLatch(31),
	combout => \serial_data~0_combout\);

-- Location: FF_X44_Y24_N9
serial_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \serial_data~0_combout\,
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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
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


