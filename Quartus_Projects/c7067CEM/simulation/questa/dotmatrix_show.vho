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

-- DATE "03/23/2024 00:12:43"

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

ENTITY 	dotmatrix_show IS
    PORT (
	CLK50MHZ : IN std_logic;
	LEDR : OUT std_logic_vector(0 TO 9);
	CPU_RESETN : IN std_logic;
	GPIO : OUT std_logic_vector(0 TO 19)
	);
END dotmatrix_show;

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


ARCHITECTURE structure OF dotmatrix_show IS
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
SIGNAL \CHAR_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shiftRegisterClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK50MHZ~input_o\ : std_logic;
SIGNAL \CLK50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[0]~1_combout\ : std_logic;
SIGNAL \CPU_RESETN~input_o\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
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
SIGNAL \TEST_CLK_PROC:drtcount[23]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[24]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[24]~q\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[24]~2\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[25]~1_combout\ : std_logic;
SIGNAL \TEST_CLK_PROC:drtcount[25]~q\ : std_logic;
SIGNAL \CHAR_CLK~0_combout\ : std_logic;
SIGNAL \CHAR_CLK~feeder_combout\ : std_logic;
SIGNAL \CHAR_CLK~q\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[0]~q\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \p74HC595_CLK_PROC:counter[1]~q\ : std_logic;
SIGNAL \shiftRegisterClk~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterClk~q\ : std_logic;
SIGNAL \shiftRegisterClk~clkctrl_outclk\ : std_logic;
SIGNAL \LINE_SACN_PROC:scanCount[0]~1_combout\ : std_logic;
SIGNAL \LINE_SACN_PROC:registerSerialData[0]~1_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD5~q\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK5~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT5~q\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW5~q\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD6~q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK6~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT6~q\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW6~q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD7~q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK7~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT7~q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW7~q\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD8~q\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK8~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT8~q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW8~q\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD1~q\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK1~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT1~q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW1~q\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD2~q\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK2~feeder_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK2~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT2~q\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW2~q\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD3~q\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
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
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \scanStateVariable.LOAD4~q\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \scanStateVariable.CLOCK4~q\ : std_logic;
SIGNAL \scanStateVariable.SHIFT4~q\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW4~q\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
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
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \scanStateVariable.SHOW3~q\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector35~27_combout\ : std_logic;
SIGNAL \Selector34~55_combout\ : std_logic;
SIGNAL \WideOr13~combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \serial_clk~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \WideOr4~4_combout\ : std_logic;
SIGNAL \WideOr15~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \parallel_load~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \output_enable~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \CHAR_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add2~16\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[7]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[7]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[4]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[2]~q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[3]~q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[6]~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \char_num~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[5]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[6]~q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[5]~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[5]~2_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[5]~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~2_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[0]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[0]~q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[1]~q\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[4]~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[4]~2_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[4]~q\ : std_logic;
SIGNAL \Selector34~140_combout\ : std_logic;
SIGNAL \Selector34~141_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector34~117_combout\ : std_logic;
SIGNAL \Selector34~118_combout\ : std_logic;
SIGNAL \Selector34~132_combout\ : std_logic;
SIGNAL \Selector34~119_combout\ : std_logic;
SIGNAL \Selector38~39_combout\ : std_logic;
SIGNAL \Selector34~133_combout\ : std_logic;
SIGNAL \Selector34~120_combout\ : std_logic;
SIGNAL \Selector34~121_combout\ : std_logic;
SIGNAL \Selector34~66_combout\ : std_logic;
SIGNAL \Selector34~72_combout\ : std_logic;
SIGNAL \Selector34~71_combout\ : std_logic;
SIGNAL \Selector34~73_combout\ : std_logic;
SIGNAL \Selector34~39_combout\ : std_logic;
SIGNAL \Selector34~40_combout\ : std_logic;
SIGNAL \Selector34~38_combout\ : std_logic;
SIGNAL \Selector34~134_combout\ : std_logic;
SIGNAL \Selector34~68_combout\ : std_logic;
SIGNAL \Selector34~69_combout\ : std_logic;
SIGNAL \Selector34~67_combout\ : std_logic;
SIGNAL \Selector34~70_combout\ : std_logic;
SIGNAL \Selector34~74_combout\ : std_logic;
SIGNAL \Selector34~86_combout\ : std_logic;
SIGNAL \Selector34~85_combout\ : std_logic;
SIGNAL \Selector34~87_combout\ : std_logic;
SIGNAL \Selector34~83_combout\ : std_logic;
SIGNAL \Selector34~82_combout\ : std_logic;
SIGNAL \Selector34~84_combout\ : std_logic;
SIGNAL \Selector34~54_combout\ : std_logic;
SIGNAL \Selector34~53_combout\ : std_logic;
SIGNAL \Selector34~139_combout\ : std_logic;
SIGNAL \Selector34~88_combout\ : std_logic;
SIGNAL \Selector34~81_combout\ : std_logic;
SIGNAL \Selector34~89_combout\ : std_logic;
SIGNAL \Selector34~76_combout\ : std_logic;
SIGNAL \Selector34~75_combout\ : std_logic;
SIGNAL \Selector34~77_combout\ : std_logic;
SIGNAL \Selector34~45_combout\ : std_logic;
SIGNAL \Selector34~46_combout\ : std_logic;
SIGNAL \Selector34~135_combout\ : std_logic;
SIGNAL \Selector34~79_combout\ : std_logic;
SIGNAL \Selector38~41_combout\ : std_logic;
SIGNAL \Selector34~78_combout\ : std_logic;
SIGNAL \Selector34~130_combout\ : std_logic;
SIGNAL \Selector34~80_combout\ : std_logic;
SIGNAL \Selector34~90_combout\ : std_logic;
SIGNAL \Selector34~59_combout\ : std_logic;
SIGNAL \Selector34~58_combout\ : std_logic;
SIGNAL \Selector34~127_combout\ : std_logic;
SIGNAL \Selector34~57_combout\ : std_logic;
SIGNAL \Selector34~63_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Selector34~128_combout\ : std_logic;
SIGNAL \Selector34~60_combout\ : std_logic;
SIGNAL \Selector34~61_combout\ : std_logic;
SIGNAL \Selector35~28_combout\ : std_logic;
SIGNAL \Selector34~129_combout\ : std_logic;
SIGNAL \Selector34~62_combout\ : std_logic;
SIGNAL \Selector34~64_combout\ : std_logic;
SIGNAL \Selector34~65_combout\ : std_logic;
SIGNAL \Selector36~54_combout\ : std_logic;
SIGNAL \Selector36~53_combout\ : std_logic;
SIGNAL \Selector34~91_combout\ : std_logic;
SIGNAL \Selector34~92_combout\ : std_logic;
SIGNAL \Selector34~93_combout\ : std_logic;
SIGNAL \Selector34~50_combout\ : std_logic;
SIGNAL \Selector34~49_combout\ : std_logic;
SIGNAL \Selector34~136_combout\ : std_logic;
SIGNAL \Selector34~95_combout\ : std_logic;
SIGNAL \Selector34~94_combout\ : std_logic;
SIGNAL \Selector34~96_combout\ : std_logic;
SIGNAL \Selector34~97_combout\ : std_logic;
SIGNAL \Selector34~98_combout\ : std_logic;
SIGNAL \Selector34~137_combout\ : std_logic;
SIGNAL \Selector34~99_combout\ : std_logic;
SIGNAL \Selector34~100_combout\ : std_logic;
SIGNAL \Selector34~107_combout\ : std_logic;
SIGNAL \Selector34~106_combout\ : std_logic;
SIGNAL \Selector34~108_combout\ : std_logic;
SIGNAL \Selector34~101_combout\ : std_logic;
SIGNAL \Selector34~102_combout\ : std_logic;
SIGNAL \Selector34~56_combout\ : std_logic;
SIGNAL \Selector34~104_combout\ : std_logic;
SIGNAL \Selector34~103_combout\ : std_logic;
SIGNAL \Selector34~105_combout\ : std_logic;
SIGNAL \Selector34~109_combout\ : std_logic;
SIGNAL \Selector34~110_combout\ : std_logic;
SIGNAL \Selector34~111_combout\ : std_logic;
SIGNAL \Selector34~112_combout\ : std_logic;
SIGNAL \Selector37~21_combout\ : std_logic;
SIGNAL \Selector34~131_combout\ : std_logic;
SIGNAL \Selector34~113_combout\ : std_logic;
SIGNAL \Selector34~114_combout\ : std_logic;
SIGNAL \Selector34~115_combout\ : std_logic;
SIGNAL \Selector34~116_combout\ : std_logic;
SIGNAL \screenAreaLatch[8]~0_combout\ : std_logic;
SIGNAL \Selector35~84_combout\ : std_logic;
SIGNAL \Selector35~83_combout\ : std_logic;
SIGNAL \Selector35~85_combout\ : std_logic;
SIGNAL \Selector35~80_combout\ : std_logic;
SIGNAL \Selector35~81_combout\ : std_logic;
SIGNAL \Selector35~82_combout\ : std_logic;
SIGNAL \Selector35~87_combout\ : std_logic;
SIGNAL \Selector37~23_combout\ : std_logic;
SIGNAL \Selector35~86_combout\ : std_logic;
SIGNAL \Selector35~88_combout\ : std_logic;
SIGNAL \Selector35~89_combout\ : std_logic;
SIGNAL \Selector35~106_combout\ : std_logic;
SIGNAL \Selector35~107_combout\ : std_logic;
SIGNAL \Selector35~29_combout\ : std_logic;
SIGNAL \Selector35~30_combout\ : std_logic;
SIGNAL \Selector35~31_combout\ : std_logic;
SIGNAL \Selector36~55_combout\ : std_logic;
SIGNAL \Selector35~32_combout\ : std_logic;
SIGNAL \Selector35~33_combout\ : std_logic;
SIGNAL \Selector35~74_combout\ : std_logic;
SIGNAL \Selector35~75_combout\ : std_logic;
SIGNAL \Selector35~76_combout\ : std_logic;
SIGNAL \Selector38~40_combout\ : std_logic;
SIGNAL \Selector37~22_combout\ : std_logic;
SIGNAL \Selector35~72_combout\ : std_logic;
SIGNAL \Selector35~73_combout\ : std_logic;
SIGNAL \Selector35~77_combout\ : std_logic;
SIGNAL \Selector35~15_combout\ : std_logic;
SIGNAL \Selector35~16_combout\ : std_logic;
SIGNAL \Selector35~14_combout\ : std_logic;
SIGNAL \Selector35~67_combout\ : std_logic;
SIGNAL \Selector35~96_combout\ : std_logic;
SIGNAL \Selector35~70_combout\ : std_logic;
SIGNAL \Selector35~69_combout\ : std_logic;
SIGNAL \Selector35~71_combout\ : std_logic;
SIGNAL \Selector35~66_combout\ : std_logic;
SIGNAL \Selector35~97_combout\ : std_logic;
SIGNAL \Selector35~78_combout\ : std_logic;
SIGNAL \Selector35~65_combout\ : std_logic;
SIGNAL \Selector35~10_combout\ : std_logic;
SIGNAL \Selector35~100_combout\ : std_logic;
SIGNAL \Selector35~60_combout\ : std_logic;
SIGNAL \Selector35~61_combout\ : std_logic;
SIGNAL \Selector35~59_combout\ : std_logic;
SIGNAL \Selector35~62_combout\ : std_logic;
SIGNAL \Selector35~63_combout\ : std_logic;
SIGNAL \Selector35~64_combout\ : std_logic;
SIGNAL \Selector35~101_combout\ : std_logic;
SIGNAL \Selector35~7_combout\ : std_logic;
SIGNAL \Selector35~6_combout\ : std_logic;
SIGNAL \Selector35~94_combout\ : std_logic;
SIGNAL \Selector35~46_combout\ : std_logic;
SIGNAL \Selector35~45_combout\ : std_logic;
SIGNAL \Selector35~47_combout\ : std_logic;
SIGNAL \Selector35~41_combout\ : std_logic;
SIGNAL \Selector35~40_combout\ : std_logic;
SIGNAL \Selector35~42_combout\ : std_logic;
SIGNAL \Selector35~43_combout\ : std_logic;
SIGNAL \Selector35~22_combout\ : std_logic;
SIGNAL \Selector35~21_combout\ : std_logic;
SIGNAL \Selector35~95_combout\ : std_logic;
SIGNAL \Selector34~124_combout\ : std_logic;
SIGNAL \Selector35~48_combout\ : std_logic;
SIGNAL \Selector35~49_combout\ : std_logic;
SIGNAL \Selector35~104_combout\ : std_logic;
SIGNAL \Selector35~105_combout\ : std_logic;
SIGNAL \Selector35~102_combout\ : std_logic;
SIGNAL \Selector35~103_combout\ : std_logic;
SIGNAL \Selector35~50_combout\ : std_logic;
SIGNAL \Selector35~51_combout\ : std_logic;
SIGNAL \Selector35~52_combout\ : std_logic;
SIGNAL \Selector35~53_combout\ : std_logic;
SIGNAL \Selector35~55_combout\ : std_logic;
SIGNAL \Selector34~125_combout\ : std_logic;
SIGNAL \Selector35~54_combout\ : std_logic;
SIGNAL \Selector35~56_combout\ : std_logic;
SIGNAL \Selector35~57_combout\ : std_logic;
SIGNAL \Selector35~58_combout\ : std_logic;
SIGNAL \Selector34~123_combout\ : std_logic;
SIGNAL \Selector35~37_combout\ : std_logic;
SIGNAL \Selector35~38_combout\ : std_logic;
SIGNAL \Selector35~34_combout\ : std_logic;
SIGNAL \Selector35~35_combout\ : std_logic;
SIGNAL \Selector35~36_combout\ : std_logic;
SIGNAL \Selector35~39_combout\ : std_logic;
SIGNAL \Selector35~98_combout\ : std_logic;
SIGNAL \Selector35~99_combout\ : std_logic;
SIGNAL \Selector35~79_combout\ : std_logic;
SIGNAL \screenAreaLatch[7]~1_combout\ : std_logic;
SIGNAL \Selector36~57_combout\ : std_logic;
SIGNAL \Selector36~60_combout\ : std_logic;
SIGNAL \Selector36~61_combout\ : std_logic;
SIGNAL \Selector36~62_combout\ : std_logic;
SIGNAL \Selector36~24_combout\ : std_logic;
SIGNAL \Selector36~25_combout\ : std_logic;
SIGNAL \Selector36~120_combout\ : std_logic;
SIGNAL \Selector36~58_combout\ : std_logic;
SIGNAL \Selector35~44_combout\ : std_logic;
SIGNAL \Selector35~90_combout\ : std_logic;
SIGNAL \Selector36~59_combout\ : std_logic;
SIGNAL \Selector36~116_combout\ : std_logic;
SIGNAL \Selector36~63_combout\ : std_logic;
SIGNAL \screenAreaLatch[6]~5_combout\ : std_logic;
SIGNAL \Selector36~87_combout\ : std_logic;
SIGNAL \Selector36~33_combout\ : std_logic;
SIGNAL \Selector36~32_combout\ : std_logic;
SIGNAL \Selector36~122_combout\ : std_logic;
SIGNAL \Selector36~20_combout\ : std_logic;
SIGNAL \Selector36~21_combout\ : std_logic;
SIGNAL \Selector36~119_combout\ : std_logic;
SIGNAL \Selector36~17_combout\ : std_logic;
SIGNAL \Selector36~16_combout\ : std_logic;
SIGNAL \Selector36~118_combout\ : std_logic;
SIGNAL \Selector36~88_combout\ : std_logic;
SIGNAL \Selector36~89_combout\ : std_logic;
SIGNAL \Selector36~90_combout\ : std_logic;
SIGNAL \Selector36~91_combout\ : std_logic;
SIGNAL \Selector36~92_combout\ : std_logic;
SIGNAL \Selector36~29_combout\ : std_logic;
SIGNAL \Selector36~28_combout\ : std_logic;
SIGNAL \Selector36~121_combout\ : std_logic;
SIGNAL \Selector36~96_combout\ : std_logic;
SIGNAL \Selector35~68_combout\ : std_logic;
SIGNAL \Selector34~138_combout\ : std_logic;
SIGNAL \Selector36~95_combout\ : std_logic;
SIGNAL \Selector36~93_combout\ : std_logic;
SIGNAL \Selector36~94_combout\ : std_logic;
SIGNAL \Selector36~97_combout\ : std_logic;
SIGNAL \Selector36~98_combout\ : std_logic;
SIGNAL \Selector36~105_combout\ : std_logic;
SIGNAL \Selector36~106_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector36~104_combout\ : std_logic;
SIGNAL \Selector36~107_combout\ : std_logic;
SIGNAL \Selector36~102_combout\ : std_logic;
SIGNAL \Selector36~100_combout\ : std_logic;
SIGNAL \Selector36~101_combout\ : std_logic;
SIGNAL \Selector36~99_combout\ : std_logic;
SIGNAL \Selector36~103_combout\ : std_logic;
SIGNAL \Selector36~50_combout\ : std_logic;
SIGNAL \Selector36~49_combout\ : std_logic;
SIGNAL \Selector36~126_combout\ : std_logic;
SIGNAL \Selector36~112_combout\ : std_logic;
SIGNAL \Selector36~113_combout\ : std_logic;
SIGNAL \Selector36~114_combout\ : std_logic;
SIGNAL \Selector36~110_combout\ : std_logic;
SIGNAL \Selector36~109_combout\ : std_logic;
SIGNAL \Selector36~111_combout\ : std_logic;
SIGNAL \Selector36~115_combout\ : std_logic;
SIGNAL \screenAreaLatch[6]~8_combout\ : std_logic;
SIGNAL \screenAreaLatch[6]~9_combout\ : std_logic;
SIGNAL \Selector36~45_combout\ : std_logic;
SIGNAL \Selector36~44_combout\ : std_logic;
SIGNAL \Selector36~125_combout\ : std_logic;
SIGNAL \Selector36~64_combout\ : std_logic;
SIGNAL \Selector36~65_combout\ : std_logic;
SIGNAL \Selector36~66_combout\ : std_logic;
SIGNAL \Selector36~67_combout\ : std_logic;
SIGNAL \Selector36~68_combout\ : std_logic;
SIGNAL \Selector36~69_combout\ : std_logic;
SIGNAL \Selector36~70_combout\ : std_logic;
SIGNAL \Selector36~71_combout\ : std_logic;
SIGNAL \Selector36~72_combout\ : std_logic;
SIGNAL \Selector36~74_combout\ : std_logic;
SIGNAL \Selector36~75_combout\ : std_logic;
SIGNAL \Selector36~76_combout\ : std_logic;
SIGNAL \Selector36~123_combout\ : std_logic;
SIGNAL \Selector36~77_combout\ : std_logic;
SIGNAL \Selector36~78_combout\ : std_logic;
SIGNAL \Selector36~39_combout\ : std_logic;
SIGNAL \Selector36~38_combout\ : std_logic;
SIGNAL \Selector36~37_combout\ : std_logic;
SIGNAL \Selector36~124_combout\ : std_logic;
SIGNAL \Selector36~80_combout\ : std_logic;
SIGNAL \Selector36~79_combout\ : std_logic;
SIGNAL \Selector36~127_combout\ : std_logic;
SIGNAL \Selector36~128_combout\ : std_logic;
SIGNAL \Selector36~81_combout\ : std_logic;
SIGNAL \Selector36~82_combout\ : std_logic;
SIGNAL \Selector36~83_combout\ : std_logic;
SIGNAL \Selector36~84_combout\ : std_logic;
SIGNAL \Selector36~85_combout\ : std_logic;
SIGNAL \Selector36~117_combout\ : std_logic;
SIGNAL \Selector36~86_combout\ : std_logic;
SIGNAL \screenAreaLatch[6]~6_combout\ : std_logic;
SIGNAL \screenAreaLatch[6]~7_combout\ : std_logic;
SIGNAL \screenAreaLatch[6]~2_combout\ : std_logic;
SIGNAL \screenAreaLatch[6]~feeder_combout\ : std_logic;
SIGNAL \Selector37~80_combout\ : std_logic;
SIGNAL \Selector37~78_combout\ : std_logic;
SIGNAL \Selector37~77_combout\ : std_logic;
SIGNAL \Selector37~79_combout\ : std_logic;
SIGNAL \Selector37~81_combout\ : std_logic;
SIGNAL \Selector37~74_combout\ : std_logic;
SIGNAL \Selector37~75_combout\ : std_logic;
SIGNAL \Selector37~76_combout\ : std_logic;
SIGNAL \Selector37~82_combout\ : std_logic;
SIGNAL \Selector37~69_combout\ : std_logic;
SIGNAL \Selector37~70_combout\ : std_logic;
SIGNAL \Selector37~71_combout\ : std_logic;
SIGNAL \Selector37~67_combout\ : std_logic;
SIGNAL \Selector37~68_combout\ : std_logic;
SIGNAL \Selector37~72_combout\ : std_logic;
SIGNAL \Selector37~65_combout\ : std_logic;
SIGNAL \Selector37~85_combout\ : std_logic;
SIGNAL \Selector37~66_combout\ : std_logic;
SIGNAL \Selector37~60_combout\ : std_logic;
SIGNAL \Selector37~61_combout\ : std_logic;
SIGNAL \Selector37~62_combout\ : std_logic;
SIGNAL \Selector37~58_combout\ : std_logic;
SIGNAL \Selector36~108_combout\ : std_logic;
SIGNAL \Selector37~59_combout\ : std_logic;
SIGNAL \Selector37~56_combout\ : std_logic;
SIGNAL \Selector37~57_combout\ : std_logic;
SIGNAL \Selector37~63_combout\ : std_logic;
SIGNAL \Selector35~92_combout\ : std_logic;
SIGNAL \Selector37~47_combout\ : std_logic;
SIGNAL \Selector37~46_combout\ : std_logic;
SIGNAL \Selector37~48_combout\ : std_logic;
SIGNAL \Selector34~126_combout\ : std_logic;
SIGNAL \Selector37~24_combout\ : std_logic;
SIGNAL \Selector37~52_combout\ : std_logic;
SIGNAL \Selector37~53_combout\ : std_logic;
SIGNAL \Selector37~50_combout\ : std_logic;
SIGNAL \Selector37~49_combout\ : std_logic;
SIGNAL \Selector37~51_combout\ : std_logic;
SIGNAL \Selector37~54_combout\ : std_logic;
SIGNAL \Selector35~93_combout\ : std_logic;
SIGNAL \Selector37~43_combout\ : std_logic;
SIGNAL \Selector37~44_combout\ : std_logic;
SIGNAL \Selector37~91_combout\ : std_logic;
SIGNAL \Selector37~92_combout\ : std_logic;
SIGNAL \Selector37~20_combout\ : std_logic;
SIGNAL \Selector37~19_combout\ : std_logic;
SIGNAL \Selector37~88_combout\ : std_logic;
SIGNAL \Selector37~36_combout\ : std_logic;
SIGNAL \Selector37~84_combout\ : std_logic;
SIGNAL \Selector37~37_combout\ : std_logic;
SIGNAL \Selector37~38_combout\ : std_logic;
SIGNAL \Selector34~122_combout\ : std_logic;
SIGNAL \Selector37~39_combout\ : std_logic;
SIGNAL \Selector37~40_combout\ : std_logic;
SIGNAL \Selector37~41_combout\ : std_logic;
SIGNAL \Selector37~89_combout\ : std_logic;
SIGNAL \Selector37~90_combout\ : std_logic;
SIGNAL \Selector37~42_combout\ : std_logic;
SIGNAL \Selector37~45_combout\ : std_logic;
SIGNAL \Selector37~55_combout\ : std_logic;
SIGNAL \Selector37~14_combout\ : std_logic;
SIGNAL \Selector37~13_combout\ : std_logic;
SIGNAL \Selector37~87_combout\ : std_logic;
SIGNAL \Selector35~91_combout\ : std_logic;
SIGNAL \Selector37~26_combout\ : std_logic;
SIGNAL \Selector37~25_combout\ : std_logic;
SIGNAL \Selector37~27_combout\ : std_logic;
SIGNAL \Selector37~28_combout\ : std_logic;
SIGNAL \Selector37~9_combout\ : std_logic;
SIGNAL \Selector37~8_combout\ : std_logic;
SIGNAL \Selector37~86_combout\ : std_logic;
SIGNAL \Selector37~29_combout\ : std_logic;
SIGNAL \Selector37~32_combout\ : std_logic;
SIGNAL \Selector37~33_combout\ : std_logic;
SIGNAL \Selector37~31_combout\ : std_logic;
SIGNAL \Selector37~30_combout\ : std_logic;
SIGNAL \Selector37~83_combout\ : std_logic;
SIGNAL \Selector37~34_combout\ : std_logic;
SIGNAL \Selector37~35_combout\ : std_logic;
SIGNAL \Selector37~64_combout\ : std_logic;
SIGNAL \Selector37~73_combout\ : std_logic;
SIGNAL \screenAreaLatch[5]~3_combout\ : std_logic;
SIGNAL \Selector38~95_combout\ : std_logic;
SIGNAL \Selector38~94_combout\ : std_logic;
SIGNAL \Selector38~96_combout\ : std_logic;
SIGNAL \Selector38~97_combout\ : std_logic;
SIGNAL \Selector38~98_combout\ : std_logic;
SIGNAL \Selector38~99_combout\ : std_logic;
SIGNAL \Selector38~100_combout\ : std_logic;
SIGNAL \Selector38~101_combout\ : std_logic;
SIGNAL \Selector38~102_combout\ : std_logic;
SIGNAL \Selector38~32_combout\ : std_logic;
SIGNAL \Selector38~31_combout\ : std_logic;
SIGNAL \Selector38~110_combout\ : std_logic;
SIGNAL \Selector38~45_combout\ : std_logic;
SIGNAL \Selector38~44_combout\ : std_logic;
SIGNAL \Selector36~73_combout\ : std_logic;
SIGNAL \Selector38~46_combout\ : std_logic;
SIGNAL \Selector38~103_combout\ : std_logic;
SIGNAL \Selector38~42_combout\ : std_logic;
SIGNAL \Selector38~43_combout\ : std_logic;
SIGNAL \Selector38~47_combout\ : std_logic;
SIGNAL \Selector38~91_combout\ : std_logic;
SIGNAL \Selector38~86_combout\ : std_logic;
SIGNAL \Selector38~89_combout\ : std_logic;
SIGNAL \Selector38~87_combout\ : std_logic;
SIGNAL \Selector38~88_combout\ : std_logic;
SIGNAL \Selector38~105_combout\ : std_logic;
SIGNAL \Selector38~106_combout\ : std_logic;
SIGNAL \Selector38~111_combout\ : std_logic;
SIGNAL \Selector38~112_combout\ : std_logic;
SIGNAL \Selector38~90_combout\ : std_logic;
SIGNAL \Selector38~92_combout\ : std_logic;
SIGNAL \Selector38~82_combout\ : std_logic;
SIGNAL \Selector38~81_combout\ : std_logic;
SIGNAL \Selector38~83_combout\ : std_logic;
SIGNAL \Selector38~113_combout\ : std_logic;
SIGNAL \Selector38~114_combout\ : std_logic;
SIGNAL \Selector36~56_combout\ : std_logic;
SIGNAL \Selector38~107_combout\ : std_logic;
SIGNAL \Selector38~79_combout\ : std_logic;
SIGNAL \Selector38~80_combout\ : std_logic;
SIGNAL \Selector38~84_combout\ : std_logic;
SIGNAL \Selector38~19_combout\ : std_logic;
SIGNAL \Selector38~18_combout\ : std_logic;
SIGNAL \Selector38~108_combout\ : std_logic;
SIGNAL \Selector38~53_combout\ : std_logic;
SIGNAL \Selector38~52_combout\ : std_logic;
SIGNAL \Selector38~54_combout\ : std_logic;
SIGNAL \Selector38~50_combout\ : std_logic;
SIGNAL \Selector38~48_combout\ : std_logic;
SIGNAL \Selector38~49_combout\ : std_logic;
SIGNAL \Selector38~51_combout\ : std_logic;
SIGNAL \Selector38~55_combout\ : std_logic;
SIGNAL \Selector38~56_combout\ : std_logic;
SIGNAL \Selector38~23_combout\ : std_logic;
SIGNAL \Selector38~22_combout\ : std_logic;
SIGNAL \Selector38~109_combout\ : std_logic;
SIGNAL \Selector38~57_combout\ : std_logic;
SIGNAL \Selector38~58_combout\ : std_logic;
SIGNAL \Selector38~59_combout\ : std_logic;
SIGNAL \Selector38~61_combout\ : std_logic;
SIGNAL \Selector38~60_combout\ : std_logic;
SIGNAL \Selector38~62_combout\ : std_logic;
SIGNAL \Selector38~63_combout\ : std_logic;
SIGNAL \Selector38~65_combout\ : std_logic;
SIGNAL \Selector38~64_combout\ : std_logic;
SIGNAL \Selector38~66_combout\ : std_logic;
SIGNAL \Selector38~73_combout\ : std_logic;
SIGNAL \Selector38~104_combout\ : std_logic;
SIGNAL \Selector38~74_combout\ : std_logic;
SIGNAL \Selector38~75_combout\ : std_logic;
SIGNAL \Selector38~76_combout\ : std_logic;
SIGNAL \Selector38~68_combout\ : std_logic;
SIGNAL \Selector38~69_combout\ : std_logic;
SIGNAL \Selector38~70_combout\ : std_logic;
SIGNAL \Selector38~67_combout\ : std_logic;
SIGNAL \Selector38~71_combout\ : std_logic;
SIGNAL \Selector38~115_combout\ : std_logic;
SIGNAL \Selector38~116_combout\ : std_logic;
SIGNAL \Selector38~72_combout\ : std_logic;
SIGNAL \Selector38~77_combout\ : std_logic;
SIGNAL \Selector38~78_combout\ : std_logic;
SIGNAL \Selector38~85_combout\ : std_logic;
SIGNAL \Selector38~93_combout\ : std_logic;
SIGNAL \screenAreaLatch[4]~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \WideOr16~combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector39~3_combout\ : std_logic;
SIGNAL \serial_data~1_combout\ : std_logic;
SIGNAL \serial_data~2_combout\ : std_logic;
SIGNAL \serial_data~0_combout\ : std_logic;
SIGNAL \serial_data~3_combout\ : std_logic;
SIGNAL \serial_data~4_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector33~4_combout\ : std_logic;
SIGNAL \Selector33~5_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \serial_data~q\ : std_logic;
SIGNAL screenAreaLatch : std_logic_vector(31 DOWNTO 0);
SIGNAL row_driver : std_logic_vector(7 DOWNTO 0);
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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CHAR_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CHAR_CLK~q\);

\shiftRegisterClk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \shiftRegisterClk~q\);

\CLK50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK50MHZ~input_o\);
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

-- Location: LCCOMB_X37_Y32_N6
\TEST_CLK_PROC:drtcount[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[0]~1_combout\ = \TEST_CLK_PROC:drtcount[0]~q\ $ (VCC)
-- \TEST_CLK_PROC:drtcount[0]~2\ = CARRY(\TEST_CLK_PROC:drtcount[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[0]~q\,
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

-- Location: LCCOMB_X37_Y31_N26
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (((!\TEST_CLK_PROC:drtcount[19]~q\) # (!\TEST_CLK_PROC:drtcount[20]~q\)) # (!\TEST_CLK_PROC:drtcount[21]~q\)) # (!\TEST_CLK_PROC:drtcount[18]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[18]~q\,
	datab => \TEST_CLK_PROC:drtcount[21]~q\,
	datac => \TEST_CLK_PROC:drtcount[20]~q\,
	datad => \TEST_CLK_PROC:drtcount[19]~q\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X38_Y32_N24
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!\TEST_CLK_PROC:drtcount[12]~q\) # (!\TEST_CLK_PROC:drtcount[14]~q\)) # (!\TEST_CLK_PROC:drtcount[11]~q\)) # (!\TEST_CLK_PROC:drtcount[13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[13]~q\,
	datab => \TEST_CLK_PROC:drtcount[11]~q\,
	datac => \TEST_CLK_PROC:drtcount[14]~q\,
	datad => \TEST_CLK_PROC:drtcount[12]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y32_N4
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\TEST_CLK_PROC:drtcount[7]~q\ & (!\TEST_CLK_PROC:drtcount[6]~q\ & (!\TEST_CLK_PROC:drtcount[8]~q\ & !\TEST_CLK_PROC:drtcount[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[7]~q\,
	datab => \TEST_CLK_PROC:drtcount[6]~q\,
	datac => \TEST_CLK_PROC:drtcount[8]~q\,
	datad => \TEST_CLK_PROC:drtcount[9]~q\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y32_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!\TEST_CLK_PROC:drtcount[0]~q\) # (!\TEST_CLK_PROC:drtcount[3]~q\)) # (!\TEST_CLK_PROC:drtcount[1]~q\)) # (!\TEST_CLK_PROC:drtcount[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[2]~q\,
	datab => \TEST_CLK_PROC:drtcount[1]~q\,
	datac => \TEST_CLK_PROC:drtcount[3]~q\,
	datad => \TEST_CLK_PROC:drtcount[0]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y32_N2
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~1_combout\) # (!\TEST_CLK_PROC:drtcount[4]~q\)) # (!\TEST_CLK_PROC:drtcount[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[5]~q\,
	datac => \TEST_CLK_PROC:drtcount[4]~q\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y32_N2
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\) # ((!\TEST_CLK_PROC:drtcount[10]~q\ & (\LessThan0~3_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[10]~q\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y32_N28
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\TEST_CLK_PROC:drtcount[17]~q\ & (((!\TEST_CLK_PROC:drtcount[15]~q\ & \LessThan0~4_combout\)) # (!\TEST_CLK_PROC:drtcount[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[15]~q\,
	datab => \TEST_CLK_PROC:drtcount[16]~q\,
	datac => \TEST_CLK_PROC:drtcount[17]~q\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X38_Y32_N16
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\TEST_CLK_PROC:drtcount[23]~q\ & (((\LessThan0~6_combout\) # (\LessThan0~5_combout\)) # (!\TEST_CLK_PROC:drtcount[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[22]~q\,
	datab => \LessThan0~6_combout\,
	datac => \TEST_CLK_PROC:drtcount[23]~q\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X38_Y32_N30
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\TEST_CLK_PROC:drtcount[25]~q\) # ((\TEST_CLK_PROC:drtcount[24]~q\ & !\LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[25]~q\,
	datac => \TEST_CLK_PROC:drtcount[24]~q\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X37_Y32_N7
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[0]~q\);

-- Location: LCCOMB_X37_Y32_N8
\TEST_CLK_PROC:drtcount[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[1]~1_combout\ = (\TEST_CLK_PROC:drtcount[1]~q\ & (!\TEST_CLK_PROC:drtcount[0]~2\)) # (!\TEST_CLK_PROC:drtcount[1]~q\ & ((\TEST_CLK_PROC:drtcount[0]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[1]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[0]~2\) # (!\TEST_CLK_PROC:drtcount[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[1]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[0]~2\,
	combout => \TEST_CLK_PROC:drtcount[1]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[1]~2\);

-- Location: FF_X37_Y32_N9
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[1]~q\);

-- Location: LCCOMB_X37_Y32_N10
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

-- Location: FF_X37_Y32_N11
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[2]~q\);

-- Location: LCCOMB_X37_Y32_N12
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

-- Location: FF_X37_Y32_N13
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[3]~q\);

-- Location: LCCOMB_X37_Y32_N14
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

-- Location: FF_X37_Y32_N15
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[4]~q\);

-- Location: LCCOMB_X37_Y32_N16
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

-- Location: FF_X37_Y32_N17
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[5]~q\);

-- Location: LCCOMB_X37_Y32_N18
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

-- Location: FF_X37_Y32_N19
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[6]~q\);

-- Location: LCCOMB_X37_Y32_N20
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

-- Location: FF_X37_Y32_N21
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[7]~q\);

-- Location: LCCOMB_X37_Y32_N22
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

-- Location: FF_X37_Y32_N23
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[8]~q\);

-- Location: LCCOMB_X37_Y32_N24
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

-- Location: FF_X37_Y32_N25
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[9]~q\);

-- Location: LCCOMB_X37_Y32_N26
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

-- Location: FF_X37_Y32_N27
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[10]~q\);

-- Location: LCCOMB_X37_Y32_N28
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

-- Location: FF_X37_Y32_N29
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[11]~q\);

-- Location: LCCOMB_X37_Y32_N30
\TEST_CLK_PROC:drtcount[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[12]~1_combout\ = (\TEST_CLK_PROC:drtcount[12]~q\ & (\TEST_CLK_PROC:drtcount[11]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[12]~q\ & (!\TEST_CLK_PROC:drtcount[11]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[12]~2\ = CARRY((\TEST_CLK_PROC:drtcount[12]~q\ & !\TEST_CLK_PROC:drtcount[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[12]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[11]~2\,
	combout => \TEST_CLK_PROC:drtcount[12]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[12]~2\);

-- Location: FF_X37_Y32_N31
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[12]~q\);

-- Location: LCCOMB_X37_Y31_N0
\TEST_CLK_PROC:drtcount[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[13]~1_combout\ = (\TEST_CLK_PROC:drtcount[13]~q\ & (!\TEST_CLK_PROC:drtcount[12]~2\)) # (!\TEST_CLK_PROC:drtcount[13]~q\ & ((\TEST_CLK_PROC:drtcount[12]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[13]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[12]~2\) # (!\TEST_CLK_PROC:drtcount[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[13]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[12]~2\,
	combout => \TEST_CLK_PROC:drtcount[13]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[13]~2\);

-- Location: FF_X38_Y32_N27
\TEST_CLK_PROC:drtcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \TEST_CLK_PROC:drtcount[13]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[13]~q\);

-- Location: LCCOMB_X37_Y31_N2
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

-- Location: FF_X37_Y31_N3
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[14]~q\);

-- Location: LCCOMB_X37_Y31_N4
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

-- Location: FF_X38_Y32_N7
\TEST_CLK_PROC:drtcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \TEST_CLK_PROC:drtcount[15]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[15]~q\);

-- Location: LCCOMB_X37_Y31_N6
\TEST_CLK_PROC:drtcount[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[16]~1_combout\ = (\TEST_CLK_PROC:drtcount[16]~q\ & (\TEST_CLK_PROC:drtcount[15]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[16]~q\ & (!\TEST_CLK_PROC:drtcount[15]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[16]~2\ = CARRY((\TEST_CLK_PROC:drtcount[16]~q\ & !\TEST_CLK_PROC:drtcount[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[16]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[15]~2\,
	combout => \TEST_CLK_PROC:drtcount[16]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[16]~2\);

-- Location: FF_X38_Y32_N19
\TEST_CLK_PROC:drtcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \TEST_CLK_PROC:drtcount[16]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[16]~q\);

-- Location: LCCOMB_X37_Y31_N8
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

-- Location: FF_X38_Y32_N23
\TEST_CLK_PROC:drtcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	asdata => \TEST_CLK_PROC:drtcount[17]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[17]~q\);

-- Location: LCCOMB_X37_Y31_N10
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

-- Location: FF_X37_Y31_N11
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[18]~q\);

-- Location: LCCOMB_X37_Y31_N12
\TEST_CLK_PROC:drtcount[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[19]~1_combout\ = (\TEST_CLK_PROC:drtcount[19]~q\ & (!\TEST_CLK_PROC:drtcount[18]~2\)) # (!\TEST_CLK_PROC:drtcount[19]~q\ & ((\TEST_CLK_PROC:drtcount[18]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[19]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[18]~2\) # (!\TEST_CLK_PROC:drtcount[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[19]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[18]~2\,
	combout => \TEST_CLK_PROC:drtcount[19]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[19]~2\);

-- Location: FF_X37_Y31_N13
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[19]~q\);

-- Location: LCCOMB_X37_Y31_N14
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

-- Location: FF_X37_Y31_N15
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[20]~q\);

-- Location: LCCOMB_X37_Y31_N16
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

-- Location: FF_X37_Y31_N17
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[21]~q\);

-- Location: LCCOMB_X37_Y31_N18
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

-- Location: FF_X37_Y31_N19
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
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[22]~q\);

-- Location: LCCOMB_X37_Y31_N20
\TEST_CLK_PROC:drtcount[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[23]~1_combout\ = (\TEST_CLK_PROC:drtcount[23]~q\ & (!\TEST_CLK_PROC:drtcount[22]~2\)) # (!\TEST_CLK_PROC:drtcount[23]~q\ & ((\TEST_CLK_PROC:drtcount[22]~2\) # (GND)))
-- \TEST_CLK_PROC:drtcount[23]~2\ = CARRY((!\TEST_CLK_PROC:drtcount[22]~2\) # (!\TEST_CLK_PROC:drtcount[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TEST_CLK_PROC:drtcount[23]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[22]~2\,
	combout => \TEST_CLK_PROC:drtcount[23]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[23]~2\);

-- Location: FF_X37_Y31_N21
\TEST_CLK_PROC:drtcount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[23]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[23]~q\);

-- Location: LCCOMB_X37_Y31_N22
\TEST_CLK_PROC:drtcount[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[24]~1_combout\ = (\TEST_CLK_PROC:drtcount[24]~q\ & (\TEST_CLK_PROC:drtcount[23]~2\ $ (GND))) # (!\TEST_CLK_PROC:drtcount[24]~q\ & (!\TEST_CLK_PROC:drtcount[23]~2\ & VCC))
-- \TEST_CLK_PROC:drtcount[24]~2\ = CARRY((\TEST_CLK_PROC:drtcount[24]~q\ & !\TEST_CLK_PROC:drtcount[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[24]~q\,
	datad => VCC,
	cin => \TEST_CLK_PROC:drtcount[23]~2\,
	combout => \TEST_CLK_PROC:drtcount[24]~1_combout\,
	cout => \TEST_CLK_PROC:drtcount[24]~2\);

-- Location: FF_X37_Y31_N23
\TEST_CLK_PROC:drtcount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[24]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[24]~q\);

-- Location: LCCOMB_X37_Y31_N24
\TEST_CLK_PROC:drtcount[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_CLK_PROC:drtcount[25]~1_combout\ = \TEST_CLK_PROC:drtcount[24]~2\ $ (\TEST_CLK_PROC:drtcount[25]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TEST_CLK_PROC:drtcount[25]~q\,
	cin => \TEST_CLK_PROC:drtcount[24]~2\,
	combout => \TEST_CLK_PROC:drtcount[25]~1_combout\);

-- Location: FF_X37_Y31_N25
\TEST_CLK_PROC:drtcount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \TEST_CLK_PROC:drtcount[25]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEST_CLK_PROC:drtcount[25]~q\);

-- Location: LCCOMB_X38_Y32_N8
\CHAR_CLK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHAR_CLK~0_combout\ = \CHAR_CLK~q\ $ (((\TEST_CLK_PROC:drtcount[25]~q\) # ((\TEST_CLK_PROC:drtcount[24]~q\ & !\LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK_PROC:drtcount[25]~q\,
	datab => \TEST_CLK_PROC:drtcount[24]~q\,
	datac => \CHAR_CLK~q\,
	datad => \LessThan0~7_combout\,
	combout => \CHAR_CLK~0_combout\);

-- Location: LCCOMB_X38_Y32_N0
\CHAR_CLK~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHAR_CLK~feeder_combout\ = \CHAR_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHAR_CLK~0_combout\,
	combout => \CHAR_CLK~feeder_combout\);

-- Location: FF_X38_Y32_N1
CHAR_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \CHAR_CLK~feeder_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHAR_CLK~q\);

-- Location: LCCOMB_X42_Y31_N18
\counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (!\p74HC595_CLK_PROC:counter[0]~q\ & !\p74HC595_CLK_PROC:counter[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p74HC595_CLK_PROC:counter[0]~q\,
	datad => \p74HC595_CLK_PROC:counter[1]~q\,
	combout => \counter~1_combout\);

-- Location: FF_X42_Y31_N19
\p74HC595_CLK_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[0]~q\);

-- Location: LCCOMB_X42_Y31_N24
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (!\p74HC595_CLK_PROC:counter[1]~q\ & \p74HC595_CLK_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p74HC595_CLK_PROC:counter[1]~q\,
	datad => \p74HC595_CLK_PROC:counter[0]~q\,
	combout => \counter~0_combout\);

-- Location: FF_X42_Y31_N25
\p74HC595_CLK_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p74HC595_CLK_PROC:counter[1]~q\);

-- Location: LCCOMB_X42_Y31_N20
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

-- Location: FF_X42_Y31_N21
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

-- Location: LCCOMB_X41_Y34_N20
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

-- Location: LCCOMB_X41_Y34_N16
\LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (((!\LINE_SACN_PROC:registerSerialData[0]~q\) # (!\LINE_SACN_PROC:registerSerialData[1]~q\)) # (!\LINE_SACN_PROC:registerSerialData[2]~q\)) # (!\LINE_SACN_PROC:registerSerialData[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[3]~q\,
	datab => \LINE_SACN_PROC:registerSerialData[2]~q\,
	datac => \LINE_SACN_PROC:registerSerialData[1]~q\,
	datad => \LINE_SACN_PROC:registerSerialData[0]~q\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X42_Y34_N16
\LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X40_Y34_N4
\Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\scanStateVariable.SHOW4~q\ & \LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW4~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X40_Y34_N5
\scanStateVariable.LOAD5\ : dffeas
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
	q => \scanStateVariable.LOAD5~q\);

-- Location: LCCOMB_X42_Y34_N24
\Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\scanStateVariable.LOAD5~q\) # ((\scanStateVariable.SHIFT5~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT5~q\,
	datab => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datac => \scanStateVariable.LOAD5~q\,
	datad => \LessThan8~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X42_Y34_N25
\scanStateVariable.CLOCK5\ : dffeas
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
	q => \scanStateVariable.CLOCK5~q\);

-- Location: FF_X43_Y34_N3
\scanStateVariable.SHIFT5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \scanStateVariable.CLOCK5~q\,
	sload => VCC,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT5~q\);

-- Location: LCCOMB_X43_Y34_N6
\Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\LessThan8~1_combout\ & (((\scanStateVariable.SHOW5~q\ & !\LessThan9~2_combout\)))) # (!\LessThan8~1_combout\ & ((\scanStateVariable.SHIFT5~q\) # ((\scanStateVariable.SHOW5~q\ & !\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \scanStateVariable.SHIFT5~q\,
	datac => \scanStateVariable.SHOW5~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector63~0_combout\);

-- Location: FF_X43_Y34_N7
\scanStateVariable.SHOW5\ : dffeas
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
	q => \scanStateVariable.SHOW5~q\);

-- Location: LCCOMB_X40_Y34_N10
\Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\scanStateVariable.SHOW5~q\ & \LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW5~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector64~0_combout\);

-- Location: FF_X39_Y34_N25
\scanStateVariable.LOAD6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \Selector64~0_combout\,
	sload => VCC,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD6~q\);

-- Location: LCCOMB_X43_Y34_N8
\Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\scanStateVariable.LOAD6~q\) # ((\scanStateVariable.SHIFT6~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \scanStateVariable.SHIFT6~q\,
	datac => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector65~0_combout\);

-- Location: FF_X43_Y34_N9
\scanStateVariable.CLOCK6\ : dffeas
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
	q => \scanStateVariable.CLOCK6~q\);

-- Location: FF_X43_Y34_N17
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

-- Location: LCCOMB_X43_Y34_N10
\Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\LessThan8~1_combout\ & (!\LessThan9~2_combout\ & (\scanStateVariable.SHOW6~q\))) # (!\LessThan8~1_combout\ & ((\scanStateVariable.SHIFT6~q\) # ((!\LessThan9~2_combout\ & \scanStateVariable.SHOW6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \LessThan9~2_combout\,
	datac => \scanStateVariable.SHOW6~q\,
	datad => \scanStateVariable.SHIFT6~q\,
	combout => \Selector67~0_combout\);

-- Location: FF_X43_Y34_N11
\scanStateVariable.SHOW6\ : dffeas
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
	q => \scanStateVariable.SHOW6~q\);

-- Location: LCCOMB_X40_Y34_N30
\Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\scanStateVariable.SHOW6~q\ & \LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW6~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X40_Y34_N31
\scanStateVariable.LOAD7\ : dffeas
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
	q => \scanStateVariable.LOAD7~q\);

-- Location: LCCOMB_X42_Y34_N6
\Selector69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\scanStateVariable.LOAD7~q\) # ((\scanStateVariable.SHIFT7~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \scanStateVariable.SHIFT7~q\,
	datad => \LessThan8~0_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X42_Y34_N7
\scanStateVariable.CLOCK7\ : dffeas
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
	q => \scanStateVariable.CLOCK7~q\);

-- Location: FF_X43_Y34_N5
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

-- Location: LCCOMB_X42_Y34_N14
\Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\LessThan8~1_combout\ & (((\scanStateVariable.SHOW7~q\ & !\LessThan9~2_combout\)))) # (!\LessThan8~1_combout\ & ((\scanStateVariable.SHIFT7~q\) # ((\scanStateVariable.SHOW7~q\ & !\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \scanStateVariable.SHIFT7~q\,
	datac => \scanStateVariable.SHOW7~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X42_Y34_N15
\scanStateVariable.SHOW7\ : dffeas
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
	q => \scanStateVariable.SHOW7~q\);

-- Location: LCCOMB_X42_Y35_N18
\Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\LessThan9~2_combout\ & \scanStateVariable.SHOW7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datad => \scanStateVariable.SHOW7~q\,
	combout => \Selector72~0_combout\);

-- Location: FF_X42_Y35_N19
\scanStateVariable.LOAD8\ : dffeas
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
	q => \scanStateVariable.LOAD8~q\);

-- Location: LCCOMB_X43_Y34_N20
\Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\scanStateVariable.LOAD8~q\) # ((\scanStateVariable.SHIFT8~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \scanStateVariable.SHIFT8~q\,
	datad => \LessThan8~0_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X42_Y34_N17
\scanStateVariable.CLOCK8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	asdata => \Selector73~0_combout\,
	sload => VCC,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK8~q\);

-- Location: FF_X43_Y34_N21
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
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT8~q\);

-- Location: LCCOMB_X43_Y34_N28
\Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\LessThan8~1_combout\ & (((\scanStateVariable.SHOW8~q\ & !\LessThan9~2_combout\)))) # (!\LessThan8~1_combout\ & ((\scanStateVariable.SHIFT8~q\) # ((\scanStateVariable.SHOW8~q\ & !\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \scanStateVariable.SHIFT8~q\,
	datac => \scanStateVariable.SHOW8~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector75~0_combout\);

-- Location: FF_X43_Y34_N29
\scanStateVariable.SHOW8\ : dffeas
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
	q => \scanStateVariable.SHOW8~q\);

-- Location: LCCOMB_X43_Y34_N22
\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\LessThan9~2_combout\) # (!\scanStateVariable.SHOW8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW8~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X43_Y34_N23
\scanStateVariable.LOAD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD1~q\);

-- Location: LCCOMB_X42_Y35_N26
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = ((\scanStateVariable.SHIFT1~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)))) # (!\scanStateVariable.LOAD1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datad => \scanStateVariable.SHIFT1~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X42_Y35_N27
\scanStateVariable.CLOCK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK1~q\);

-- Location: FF_X42_Y35_N13
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
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHIFT1~q\);

-- Location: LCCOMB_X42_Y35_N20
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\LessThan9~2_combout\ & (!\LessThan8~1_combout\ & ((\scanStateVariable.SHIFT1~q\)))) # (!\LessThan9~2_combout\ & ((\scanStateVariable.SHOW1~q\) # ((!\LessThan8~1_combout\ & \scanStateVariable.SHIFT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \LessThan8~1_combout\,
	datac => \scanStateVariable.SHOW1~q\,
	datad => \scanStateVariable.SHIFT1~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X42_Y35_N21
\scanStateVariable.SHOW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector47~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW1~q\);

-- Location: LCCOMB_X42_Y35_N6
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\LessThan9~2_combout\ & \scanStateVariable.SHOW1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan9~2_combout\,
	datad => \scanStateVariable.SHOW1~q\,
	combout => \Selector48~0_combout\);

-- Location: FF_X42_Y35_N7
\scanStateVariable.LOAD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.LOAD2~q\);

-- Location: LCCOMB_X41_Y35_N20
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\scanStateVariable.LOAD2~q\) # ((\scanStateVariable.SHIFT2~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.SHIFT2~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \LessThan8~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X42_Y35_N4
\scanStateVariable.CLOCK2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scanStateVariable.CLOCK2~feeder_combout\ = \Selector49~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector49~0_combout\,
	combout => \scanStateVariable.CLOCK2~feeder_combout\);

-- Location: FF_X42_Y35_N5
\scanStateVariable.CLOCK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \scanStateVariable.CLOCK2~feeder_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.CLOCK2~q\);

-- Location: FF_X42_Y35_N9
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

-- Location: LCCOMB_X42_Y35_N22
\Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\LessThan9~2_combout\ & (!\LessThan8~1_combout\ & ((\scanStateVariable.SHIFT2~q\)))) # (!\LessThan9~2_combout\ & ((\scanStateVariable.SHOW2~q\) # ((!\LessThan8~1_combout\ & \scanStateVariable.SHIFT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \LessThan8~1_combout\,
	datac => \scanStateVariable.SHOW2~q\,
	datad => \scanStateVariable.SHIFT2~q\,
	combout => \Selector51~0_combout\);

-- Location: FF_X42_Y35_N23
\scanStateVariable.SHOW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scanStateVariable.SHOW2~q\);

-- Location: LCCOMB_X40_Y34_N20
\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\scanStateVariable.SHOW2~q\ & \LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW2~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X40_Y34_N21
\scanStateVariable.LOAD3\ : dffeas
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
	q => \scanStateVariable.LOAD3~q\);

-- Location: LCCOMB_X42_Y35_N24
\Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\scanStateVariable.LOAD3~q\) # ((\scanStateVariable.SHIFT3~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.SHIFT3~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \LessThan8~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X42_Y35_N25
\scanStateVariable.CLOCK3\ : dffeas
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
	q => \scanStateVariable.CLOCK3~q\);

-- Location: LCCOMB_X42_Y35_N16
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

-- Location: FF_X42_Y35_N17
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

-- Location: LCCOMB_X42_Y35_N8
\WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (!\scanStateVariable.SHIFT1~q\ & (!\scanStateVariable.SHIFT4~q\ & (!\scanStateVariable.SHIFT2~q\ & !\scanStateVariable.SHIFT3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT1~q\,
	datab => \scanStateVariable.SHIFT4~q\,
	datac => \scanStateVariable.SHIFT2~q\,
	datad => \scanStateVariable.SHIFT3~q\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X43_Y34_N4
\WideOr4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~3_combout\ = (!\scanStateVariable.SHIFT8~q\ & (!\scanStateVariable.SHIFT5~q\ & (!\scanStateVariable.SHIFT7~q\ & !\scanStateVariable.SHIFT6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT8~q\,
	datab => \scanStateVariable.SHIFT5~q\,
	datac => \scanStateVariable.SHIFT7~q\,
	datad => \scanStateVariable.SHIFT6~q\,
	combout => \WideOr4~3_combout\);

-- Location: LCCOMB_X42_Y35_N0
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

-- Location: FF_X41_Y34_N21
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

-- Location: LCCOMB_X41_Y34_N22
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

-- Location: FF_X41_Y34_N23
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

-- Location: LCCOMB_X41_Y34_N24
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

-- Location: FF_X41_Y34_N25
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

-- Location: LCCOMB_X41_Y34_N26
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

-- Location: FF_X41_Y34_N27
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

-- Location: LCCOMB_X41_Y34_N28
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

-- Location: FF_X41_Y34_N29
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

-- Location: LCCOMB_X40_Y34_N22
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\scanStateVariable.SHOW3~q\ & \LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.SHOW3~q\,
	datad => \LessThan9~2_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X40_Y34_N23
\scanStateVariable.LOAD4\ : dffeas
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
	q => \scanStateVariable.LOAD4~q\);

-- Location: LCCOMB_X42_Y35_N2
\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\scanStateVariable.LOAD4~q\) # ((\scanStateVariable.SHIFT4~q\ & ((\LessThan8~0_combout\) # (!\LINE_SACN_PROC:registerSerialData[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \scanStateVariable.SHIFT4~q\,
	datad => \LessThan8~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X42_Y35_N3
\scanStateVariable.CLOCK4\ : dffeas
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
	q => \scanStateVariable.CLOCK4~q\);

-- Location: FF_X43_Y34_N27
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

-- Location: LCCOMB_X42_Y35_N14
\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\LessThan9~2_combout\ & (\scanStateVariable.SHIFT4~q\ & ((!\LessThan8~1_combout\)))) # (!\LessThan9~2_combout\ & ((\scanStateVariable.SHOW4~q\) # ((\scanStateVariable.SHIFT4~q\ & !\LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \scanStateVariable.SHIFT4~q\,
	datac => \scanStateVariable.SHOW4~q\,
	datad => \LessThan8~1_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X42_Y35_N15
\scanStateVariable.SHOW4\ : dffeas
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
	q => \scanStateVariable.SHOW4~q\);

-- Location: LCCOMB_X42_Y35_N30
\WideOr13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (!\scanStateVariable.SHOW3~q\ & (!\scanStateVariable.SHOW4~q\ & (!\scanStateVariable.SHOW2~q\ & !\scanStateVariable.SHOW1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW3~q\,
	datab => \scanStateVariable.SHOW4~q\,
	datac => \scanStateVariable.SHOW2~q\,
	datad => \scanStateVariable.SHOW1~q\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X42_Y34_N4
\WideOr13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~1_combout\ = (!\scanStateVariable.SHOW8~q\ & (!\scanStateVariable.SHOW7~q\ & (!\scanStateVariable.SHOW6~q\ & !\scanStateVariable.SHOW5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW8~q\,
	datab => \scanStateVariable.SHOW7~q\,
	datac => \scanStateVariable.SHOW6~q\,
	datad => \scanStateVariable.SHOW5~q\,
	combout => \WideOr13~1_combout\);

-- Location: LCCOMB_X43_Y34_N16
\WideOr13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~2_combout\ = (!\WideOr13~1_combout\) # (!\WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~0_combout\,
	datad => \WideOr13~1_combout\,
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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[7]~q\);

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
	sclr => \LessThan9~2_combout\,
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
	sclr => \LessThan9~2_combout\,
	ena => \WideOr13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE_SACN_PROC:scanCount[9]~q\);

-- Location: LCCOMB_X43_Y35_N8
\LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (!\LINE_SACN_PROC:scanCount[7]~q\ & (!\LINE_SACN_PROC:scanCount[4]~q\ & (!\LINE_SACN_PROC:scanCount[6]~q\ & !\LINE_SACN_PROC:scanCount[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[7]~q\,
	datab => \LINE_SACN_PROC:scanCount[4]~q\,
	datac => \LINE_SACN_PROC:scanCount[6]~q\,
	datad => \LINE_SACN_PROC:scanCount[5]~q\,
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X43_Y35_N2
\LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!\LINE_SACN_PROC:scanCount[1]~q\ & (!\LINE_SACN_PROC:scanCount[3]~q\ & (!\LINE_SACN_PROC:scanCount[2]~q\ & !\LINE_SACN_PROC:scanCount[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[1]~q\,
	datab => \LINE_SACN_PROC:scanCount[3]~q\,
	datac => \LINE_SACN_PROC:scanCount[2]~q\,
	datad => \LINE_SACN_PROC:scanCount[0]~q\,
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X43_Y35_N30
\LessThan9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (\LINE_SACN_PROC:scanCount[8]~q\ & (\LINE_SACN_PROC:scanCount[9]~q\ & ((!\LessThan9~0_combout\) # (!\LessThan9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:scanCount[8]~q\,
	datab => \LINE_SACN_PROC:scanCount[9]~q\,
	datac => \LessThan9~1_combout\,
	datad => \LessThan9~0_combout\,
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X42_Y35_N10
\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\LessThan9~2_combout\ & (\scanStateVariable.SHIFT3~q\ & ((!\LessThan8~1_combout\)))) # (!\LessThan9~2_combout\ & ((\scanStateVariable.SHOW3~q\) # ((\scanStateVariable.SHIFT3~q\ & !\LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \scanStateVariable.SHIFT3~q\,
	datac => \scanStateVariable.SHOW3~q\,
	datad => \LessThan8~1_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X42_Y35_N11
\scanStateVariable.SHOW3\ : dffeas
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
	q => \scanStateVariable.SHOW3~q\);

-- Location: LCCOMB_X42_Y34_N18
\WideOr4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (!\scanStateVariable.CLOCK7~q\ & (!\scanStateVariable.CLOCK5~q\ & (!\scanStateVariable.CLOCK6~q\ & !\scanStateVariable.CLOCK8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.CLOCK7~q\,
	datab => \scanStateVariable.CLOCK5~q\,
	datac => \scanStateVariable.CLOCK6~q\,
	datad => \scanStateVariable.CLOCK8~q\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X42_Y35_N28
\WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\scanStateVariable.CLOCK1~q\ & (!\scanStateVariable.CLOCK4~q\ & (!\scanStateVariable.CLOCK2~q\ & !\scanStateVariable.CLOCK3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.CLOCK1~q\,
	datab => \scanStateVariable.CLOCK4~q\,
	datac => \scanStateVariable.CLOCK2~q\,
	datad => \scanStateVariable.CLOCK3~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X42_Y34_N12
WideOr4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (((!\WideOr4~0_combout\) # (!\WideOr4~2_combout\)) # (!\WideOr4~1_combout\)) # (!\WideOr4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~3_combout\,
	datab => \WideOr4~1_combout\,
	datac => \WideOr4~2_combout\,
	datad => \WideOr4~0_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X40_Y34_N8
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\scanStateVariable.SHOW3~q\) # ((row_driver(5) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW3~q\,
	datac => row_driver(5),
	datad => \WideOr4~combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X40_Y34_N9
\row_driver[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(5));

-- Location: LCCOMB_X41_Y32_N4
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\scanStateVariable.SHOW2~q\) # ((row_driver(6) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW2~q\,
	datac => row_driver(6),
	datad => \WideOr4~combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X41_Y32_N5
\row_driver[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(6));

-- Location: LCCOMB_X43_Y35_N4
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\scanStateVariable.SHOW1~q\) # ((row_driver(7) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW1~q\,
	datac => row_driver(7),
	datad => \WideOr4~combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X43_Y35_N5
\row_driver[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(7));

-- Location: LCCOMB_X43_Y34_N0
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\scanStateVariable.SHOW8~q\) # ((row_driver(0) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW8~q\,
	datac => row_driver(0),
	datad => \WideOr4~combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X43_Y34_N1
\row_driver[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(0));

-- Location: LCCOMB_X41_Y32_N30
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\scanStateVariable.SHOW7~q\) # ((row_driver(1) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHOW7~q\,
	datac => row_driver(1),
	datad => \WideOr4~combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X41_Y32_N31
\row_driver[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(1));

-- Location: LCCOMB_X40_Y34_N6
\Selector35~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~27_combout\ = (!\scanStateVariable.LOAD4~q\ & (!\scanStateVariable.LOAD5~q\ & !\scanStateVariable.LOAD6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datac => \scanStateVariable.LOAD5~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector35~27_combout\);

-- Location: LCCOMB_X40_Y34_N12
\Selector34~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~55_combout\ = (!\scanStateVariable.LOAD3~q\ & (!\scanStateVariable.LOAD7~q\ & \Selector35~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD3~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \Selector35~27_combout\,
	combout => \Selector34~55_combout\);

-- Location: LCCOMB_X43_Y34_N30
WideOr13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~combout\ = (\scanStateVariable.LOAD8~q\) # ((\scanStateVariable.LOAD2~q\) # ((\WideOr13~2_combout\) # (!\Selector34~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \Selector34~55_combout\,
	datad => \WideOr13~2_combout\,
	combout => \WideOr13~combout\);

-- Location: LCCOMB_X43_Y34_N24
\Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (((\WideOr13~combout\ & \serial_clk~q\)) # (!\WideOr4~1_combout\)) # (!\WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~combout\,
	datab => \WideOr4~0_combout\,
	datac => \serial_clk~q\,
	datad => \WideOr4~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: FF_X43_Y34_N25
serial_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector9~2_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_clk~q\);

-- Location: LCCOMB_X40_Y34_N26
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\scanStateVariable.SHOW6~q\) # ((row_driver(2) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW6~q\,
	datac => row_driver(2),
	datad => \WideOr4~combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X40_Y34_N27
\row_driver[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(2));

-- Location: LCCOMB_X43_Y34_N26
\WideOr4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~4_combout\ = (\WideOr4~0_combout\ & \WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~0_combout\,
	datad => \WideOr4~1_combout\,
	combout => \WideOr4~4_combout\);

-- Location: LCCOMB_X43_Y34_N14
WideOr15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr15~combout\ = (((\scanStateVariable.LOAD2~q\) # (\scanStateVariable.LOAD8~q\)) # (!\WideOr4~4_combout\)) # (!\Selector34~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~55_combout\,
	datab => \WideOr4~4_combout\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \scanStateVariable.LOAD8~q\,
	combout => \WideOr15~combout\);

-- Location: LCCOMB_X43_Y34_N12
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\parallel_load~q\ & (((\WideOr15~combout\) # (\WideOr4~5_combout\)))) # (!\parallel_load~q\ & (!\LessThan8~1_combout\ & ((\WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \WideOr15~combout\,
	datac => \parallel_load~q\,
	datad => \WideOr4~5_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X43_Y34_N13
parallel_load : dffeas
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
	q => \parallel_load~q\);

-- Location: LCCOMB_X40_Y34_N28
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\scanStateVariable.SHOW5~q\) # ((row_driver(3) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW5~q\,
	datac => row_driver(3),
	datad => \WideOr4~combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X40_Y34_N29
\row_driver[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(3));

-- Location: LCCOMB_X41_Y32_N6
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\scanStateVariable.LOAD2~q\ & (\scanStateVariable.LOAD1~q\ & (!\scanStateVariable.LOAD8~q\ & \Selector34~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \scanStateVariable.LOAD1~q\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \Selector34~55_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X41_Y32_N24
\Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\ & ((\output_enable~q\) # (!\WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datac => \output_enable~q\,
	datad => \WideOr4~combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X41_Y32_N25
output_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_enable~q\);

-- Location: LCCOMB_X41_Y32_N26
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\scanStateVariable.SHOW4~q\) # ((row_driver(4) & \WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.SHOW4~q\,
	datac => row_driver(4),
	datad => \WideOr4~combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X41_Y32_N27
\row_driver[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(4));

-- Location: CLKCTRL_G11
\CHAR_CLK~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CHAR_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CHAR_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y38_N10
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\Add2~1\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X38_Y38_N12
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Add2~3\ $ (GND))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\Add2~3\ & VCC))
-- \Add2~6\ = CARRY((\CHANGE_CHAR_PROC:char_num[2]~q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~5_combout\,
	cout => \Add2~6\);

-- Location: LCCOMB_X39_Y36_N8
\Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = (\CHANGE_CHAR_PROC~3_combout\ & \Add2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC~3_combout\,
	datad => \Add2~5_combout\,
	combout => \Add2~7_combout\);

-- Location: LCCOMB_X38_Y38_N20
\Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\Add2~13\ $ (GND))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\Add2~13\ & VCC))
-- \Add2~16\ = CARRY((\CHANGE_CHAR_PROC:char_num[6]~q\ & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~15_combout\,
	cout => \Add2~16\);

-- Location: LCCOMB_X38_Y38_N22
\Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = \Add2~16\ $ (\CHANGE_CHAR_PROC:char_num[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CHANGE_CHAR_PROC:char_num[7]~q\,
	cin => \Add2~16\,
	combout => \Add2~17_combout\);

-- Location: LCCOMB_X38_Y38_N24
\CHANGE_CHAR_PROC:char_num[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[7]~0_combout\ = (\CHANGE_CHAR_PROC:char_num[7]~q\) # ((\Add2~17_combout\ & \CHANGE_CHAR_PROC~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~17_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datad => \CHANGE_CHAR_PROC~3_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[7]~0_combout\);

-- Location: FF_X38_Y38_N25
\CHANGE_CHAR_PROC:char_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[7]~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[7]~q\);

-- Location: LCCOMB_X39_Y36_N12
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X39_Y36_N0
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[7]~q\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datad => \Equal0~0_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X39_Y36_N10
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Equal1~3_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X39_Y36_N18
\CHANGE_CHAR_PROC:char_num[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[4]~0_combout\ = (\Equal0~3_combout\) # ((\Equal1~4_combout\) # ((\Equal2~2_combout\) # (\CHANGE_CHAR_PROC~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal2~2_combout\,
	datad => \CHANGE_CHAR_PROC~3_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[4]~0_combout\);

-- Location: FF_X39_Y36_N9
\CHANGE_CHAR_PROC:char_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \Add2~7_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \CHANGE_CHAR_PROC:char_num[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[2]~q\);

-- Location: LCCOMB_X38_Y38_N14
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Add2~6\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Add2~6\) # (GND)))
-- \Add2~9\ = CARRY((!\Add2~6\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => VCC,
	cin => \Add2~6\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X39_Y36_N30
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add2~8_combout\ & \CHANGE_CHAR_PROC~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datad => \CHANGE_CHAR_PROC~3_combout\,
	combout => \Add2~14_combout\);

-- Location: FF_X39_Y36_N31
\CHANGE_CHAR_PROC:char_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \CHANGE_CHAR_PROC:char_num[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[3]~q\);

-- Location: LCCOMB_X38_Y38_N16
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Add2~9\ & VCC)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Add2~9\ $ (GND)))
-- \Add2~11\ = CARRY((!\CHANGE_CHAR_PROC:char_num[4]~q\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X38_Y38_N18
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Add2~11\) # (GND))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Add2~11\))
-- \Add2~13\ = CARRY((\CHANGE_CHAR_PROC:char_num[5]~q\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X40_Y36_N8
\CHANGE_CHAR_PROC:char_num[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[6]~0_combout\ = (\CHANGE_CHAR_PROC~3_combout\ & ((\Add2~15_combout\))) # (!\CHANGE_CHAR_PROC~3_combout\ & (\CHANGE_CHAR_PROC:char_num[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC~3_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Add2~15_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[6]~0_combout\);

-- Location: LCCOMB_X40_Y32_N26
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X39_Y36_N16
\char_num~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_num~0_combout\ = (\Equal0~3_combout\) # ((\Equal1~3_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal1~3_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Equal1~2_combout\,
	combout => \char_num~0_combout\);

-- Location: LCCOMB_X39_Y36_N14
\CHANGE_CHAR_PROC:char_num[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[5]~0_combout\ = (!\CHANGE_CHAR_PROC~3_combout\ & ((\Equal0~3_combout\) # ((\Equal1~4_combout\) # (\Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal2~2_combout\,
	datad => \CHANGE_CHAR_PROC~3_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[5]~0_combout\);

-- Location: FF_X40_Y36_N9
\CHANGE_CHAR_PROC:char_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[6]~0_combout\,
	asdata => \char_num~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \CHANGE_CHAR_PROC:char_num[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[6]~q\);

-- Location: LCCOMB_X39_Y36_N28
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X39_Y36_N26
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\CHANGE_CHAR_PROC:char_num[7]~q\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X38_Y38_N26
\CHANGE_CHAR_PROC:char_num[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[5]~1_combout\ = (\CHANGE_CHAR_PROC~3_combout\ & (\Add2~12_combout\)) # (!\CHANGE_CHAR_PROC~3_combout\ & ((!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~12_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC~3_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[5]~1_combout\);

-- Location: LCCOMB_X37_Y36_N24
\CHANGE_CHAR_PROC:char_num[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[5]~2_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~0_combout\ & (\Equal0~3_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~0_combout\ & ((!\CHANGE_CHAR_PROC:char_num[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~3_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~1_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[5]~2_combout\);

-- Location: FF_X37_Y36_N25
\CHANGE_CHAR_PROC:char_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[5]~2_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[5]~q\);

-- Location: LCCOMB_X39_Y36_N6
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X39_Y36_N4
\CHANGE_CHAR_PROC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~2_combout\ = ((!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \CHANGE_CHAR_PROC~2_combout\);

-- Location: LCCOMB_X38_Y36_N30
\CHANGE_CHAR_PROC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~0_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \CHANGE_CHAR_PROC~0_combout\);

-- Location: LCCOMB_X38_Y36_N18
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X38_Y36_N8
\CHANGE_CHAR_PROC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~1_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & ((\CHANGE_CHAR_PROC~0_combout\) # ((!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \CHANGE_CHAR_PROC~1_combout\);

-- Location: LCCOMB_X39_Y36_N2
\CHANGE_CHAR_PROC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~3_combout\ = (!\CHANGE_CHAR_PROC:char_num[7]~q\ & ((\CHANGE_CHAR_PROC~1_combout\) # ((\Equal0~1_combout\ & \CHANGE_CHAR_PROC~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datac => \CHANGE_CHAR_PROC~2_combout\,
	datad => \CHANGE_CHAR_PROC~1_combout\,
	combout => \CHANGE_CHAR_PROC~3_combout\);

-- Location: LCCOMB_X38_Y38_N8
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \CHANGE_CHAR_PROC:char_num[0]~q\ $ (VCC)
-- \Add2~1\ = CARRY(\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X39_Y36_N24
\CHANGE_CHAR_PROC:char_num[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[0]~0_combout\ = (\CHANGE_CHAR_PROC~3_combout\ & ((\Add2~0_combout\))) # (!\CHANGE_CHAR_PROC~3_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC~3_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Add2~0_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[0]~0_combout\);

-- Location: FF_X39_Y36_N25
\CHANGE_CHAR_PROC:char_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[0]~0_combout\,
	asdata => \char_num~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	sload => \CHANGE_CHAR_PROC:char_num[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[0]~q\);

-- Location: LCCOMB_X39_Y36_N22
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add2~2_combout\ & \CHANGE_CHAR_PROC~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	datad => \CHANGE_CHAR_PROC~3_combout\,
	combout => \Add2~4_combout\);

-- Location: FF_X39_Y36_N23
\CHANGE_CHAR_PROC:char_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \CPU_RESETN~input_o\,
	ena => \CHANGE_CHAR_PROC:char_num[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[1]~q\);

-- Location: LCCOMB_X39_Y36_N20
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X37_Y36_N10
\CHANGE_CHAR_PROC:char_num[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[4]~1_combout\ = (\CHANGE_CHAR_PROC~3_combout\ & ((\Add2~10_combout\))) # (!\CHANGE_CHAR_PROC~3_combout\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC~3_combout\,
	datad => \Add2~10_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[4]~1_combout\);

-- Location: LCCOMB_X37_Y36_N6
\CHANGE_CHAR_PROC:char_num[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[4]~2_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~0_combout\ & ((\Equal1~4_combout\) # ((\Equal0~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~0_combout\ & (((!\CHANGE_CHAR_PROC:char_num[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~1_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[4]~2_combout\);

-- Location: FF_X37_Y36_N7
\CHANGE_CHAR_PROC:char_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[4]~2_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[4]~q\);

-- Location: LCCOMB_X37_Y33_N6
\Selector34~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~140_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~140_combout\);

-- Location: LCCOMB_X37_Y33_N12
\Selector34~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~141_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector34~140_combout\) # ((\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector34~140_combout\,
	combout => \Selector34~141_combout\);

-- Location: LCCOMB_X40_Y36_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X37_Y37_N0
\Selector34~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~117_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~117_combout\);

-- Location: LCCOMB_X37_Y37_N10
\Selector34~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~118_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~118_combout\);

-- Location: LCCOMB_X37_Y37_N2
\Selector34~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~132_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Selector34~118_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector34~117_combout\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Selector34~117_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector34~118_combout\,
	combout => \Selector34~132_combout\);

-- Location: LCCOMB_X41_Y35_N16
\Selector34~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~119_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector34~119_combout\);

-- Location: LCCOMB_X41_Y35_N6
\Selector38~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~39_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector38~39_combout\);

-- Location: LCCOMB_X41_Y35_N18
\Selector34~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~133_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \Selector38~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector38~39_combout\,
	combout => \Selector34~133_combout\);

-- Location: LCCOMB_X41_Y35_N30
\Selector34~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~120_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector34~133_combout\) # ((\Selector34~119_combout\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Selector34~119_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector34~133_combout\,
	combout => \Selector34~120_combout\);

-- Location: LCCOMB_X37_Y34_N14
\Selector34~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~121_combout\ = (\Add0~0_combout\ & ((\Selector34~141_combout\) # ((\Selector34~120_combout\)))) # (!\Add0~0_combout\ & (((\Selector34~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~141_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector34~132_combout\,
	datad => \Selector34~120_combout\,
	combout => \Selector34~121_combout\);

-- Location: LCCOMB_X38_Y34_N20
\Selector34~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~66_combout\ = (!\scanStateVariable.LOAD7~q\ & \scanStateVariable.LOAD6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scanStateVariable.LOAD7~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector34~66_combout\);

-- Location: LCCOMB_X38_Y33_N14
\Selector34~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~72_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~72_combout\);

-- Location: LCCOMB_X38_Y33_N20
\Selector34~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~71_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~71_combout\);

-- Location: LCCOMB_X38_Y33_N0
\Selector34~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~73_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector34~71_combout\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Selector34~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Selector34~72_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Selector34~71_combout\,
	combout => \Selector34~73_combout\);

-- Location: LCCOMB_X37_Y33_N8
\Selector34~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~39_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ 
-- (((!\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~39_combout\);

-- Location: LCCOMB_X38_Y33_N4
\Selector34~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~40_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[6]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Selector34~40_combout\);

-- Location: LCCOMB_X37_Y33_N18
\Selector34~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~38_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector34~40_combout\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Selector34~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector34~39_combout\,
	datad => \Selector34~40_combout\,
	combout => \Selector34~38_combout\);

-- Location: LCCOMB_X37_Y33_N0
\Selector34~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~134_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \Selector34~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector34~38_combout\,
	combout => \Selector34~134_combout\);

-- Location: LCCOMB_X38_Y34_N30
\Selector34~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~68_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~68_combout\);

-- Location: LCCOMB_X36_Y34_N20
\Selector34~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~69_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[2]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~69_combout\);

-- Location: LCCOMB_X37_Y35_N8
\Selector34~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~67_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~67_combout\);

-- Location: LCCOMB_X38_Y34_N16
\Selector34~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~70_combout\ = (\Selector34~67_combout\ & ((\Add0~0_combout\ & (\Selector34~68_combout\)) # (!\Add0~0_combout\ & ((\Selector34~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~68_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector34~69_combout\,
	datad => \Selector34~67_combout\,
	combout => \Selector34~70_combout\);

-- Location: LCCOMB_X37_Y34_N22
\Selector34~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~74_combout\ = (\Selector34~66_combout\ & ((\Selector34~73_combout\) # ((\Selector34~134_combout\) # (\Selector34~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~66_combout\,
	datab => \Selector34~73_combout\,
	datac => \Selector34~134_combout\,
	datad => \Selector34~70_combout\,
	combout => \Selector34~74_combout\);

-- Location: LCCOMB_X38_Y34_N14
\Selector34~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~86_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~86_combout\);

-- Location: LCCOMB_X37_Y34_N4
\Selector34~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~85_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~85_combout\);

-- Location: LCCOMB_X37_Y34_N26
\Selector34~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~87_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector34~86_combout\ & ((!\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector34~85_combout\) # (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~86_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector34~85_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector34~87_combout\);

-- Location: LCCOMB_X38_Y34_N0
\Selector34~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~83_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[5]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~83_combout\);

-- Location: LCCOMB_X38_Y34_N18
\Selector34~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~82_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector34~82_combout\);

-- Location: LCCOMB_X37_Y34_N30
\Selector34~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~84_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Selector34~82_combout\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Selector34~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector34~83_combout\,
	datad => \Selector34~82_combout\,
	combout => \Selector34~84_combout\);

-- Location: LCCOMB_X37_Y34_N8
\Selector34~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~54_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector34~54_combout\);

-- Location: LCCOMB_X36_Y34_N14
\Selector34~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~53_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # 
-- ((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector34~53_combout\);

-- Location: LCCOMB_X37_Y34_N18
\Selector34~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~139_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Selector34~54_combout\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Selector34~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector34~54_combout\,
	datad => \Selector34~53_combout\,
	combout => \Selector34~139_combout\);

-- Location: LCCOMB_X37_Y34_N12
\Selector34~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~88_combout\ = (\Selector34~87_combout\ & (((\Selector34~139_combout\)) # (!\Add0~0_combout\))) # (!\Selector34~87_combout\ & (\Add0~0_combout\ & (\Selector34~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~87_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector34~84_combout\,
	datad => \Selector34~139_combout\,
	combout => \Selector34~88_combout\);

-- Location: LCCOMB_X40_Y34_N16
\Selector34~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~81_combout\ = (\scanStateVariable.LOAD4~q\ & (!\scanStateVariable.LOAD5~q\ & (!\scanStateVariable.LOAD7~q\ & !\scanStateVariable.LOAD6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datab => \scanStateVariable.LOAD5~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector34~81_combout\);

-- Location: LCCOMB_X40_Y34_N2
\Selector34~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~89_combout\ = (\scanStateVariable.LOAD3~q\ & (!\scanStateVariable.LOAD7~q\ & \Selector35~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD3~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \Selector35~27_combout\,
	combout => \Selector34~89_combout\);

-- Location: LCCOMB_X38_Y32_N20
\Selector34~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~76_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~76_combout\);

-- Location: LCCOMB_X37_Y34_N20
\Selector34~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~75_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~75_combout\);

-- Location: LCCOMB_X37_Y34_N10
\Selector34~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~77_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Add0~0_combout\ & (\Selector34~76_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Add0~0_combout\) # ((\Selector34~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Add0~0_combout\,
	datac => \Selector34~76_combout\,
	datad => \Selector34~75_combout\,
	combout => \Selector34~77_combout\);

-- Location: LCCOMB_X40_Y33_N26
\Selector34~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~45_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~45_combout\);

-- Location: LCCOMB_X40_Y33_N0
\Selector34~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~46_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~46_combout\);

-- Location: LCCOMB_X40_Y33_N2
\Selector34~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~135_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector34~46_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector34~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector34~45_combout\,
	datad => \Selector34~46_combout\,
	combout => \Selector34~135_combout\);

-- Location: LCCOMB_X37_Y37_N30
\Selector34~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~79_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~79_combout\);

-- Location: LCCOMB_X36_Y36_N22
\Selector38~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~41_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector38~41_combout\);

-- Location: LCCOMB_X37_Y37_N20
\Selector34~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~78_combout\ = (\Selector38~41_combout\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[5]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector38~41_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector34~78_combout\);

-- Location: LCCOMB_X37_Y37_N8
\Selector34~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~130_combout\ = (\Selector34~78_combout\) # ((!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \Selector34~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector34~79_combout\,
	datad => \Selector34~78_combout\,
	combout => \Selector34~130_combout\);

-- Location: LCCOMB_X37_Y34_N24
\Selector34~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~80_combout\ = (\Selector34~77_combout\ & (((\Selector34~130_combout\)) # (!\Add0~0_combout\))) # (!\Selector34~77_combout\ & (\Add0~0_combout\ & (\Selector34~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~77_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector34~135_combout\,
	datad => \Selector34~130_combout\,
	combout => \Selector34~80_combout\);

-- Location: LCCOMB_X37_Y34_N2
\Selector34~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~90_combout\ = (\Selector34~88_combout\ & ((\Selector34~89_combout\) # ((\Selector34~81_combout\ & \Selector34~80_combout\)))) # (!\Selector34~88_combout\ & (\Selector34~81_combout\ & ((\Selector34~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~88_combout\,
	datab => \Selector34~81_combout\,
	datac => \Selector34~89_combout\,
	datad => \Selector34~80_combout\,
	combout => \Selector34~90_combout\);

-- Location: LCCOMB_X37_Y36_N28
\Selector34~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~59_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~59_combout\);

-- Location: LCCOMB_X42_Y36_N24
\Selector34~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~58_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~58_combout\);

-- Location: LCCOMB_X41_Y36_N10
\Selector34~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~127_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector34~59_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\CHANGE_CHAR_PROC:char_num[3]~q\ & \Selector34~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~59_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector34~58_combout\,
	combout => \Selector34~127_combout\);

-- Location: LCCOMB_X40_Y34_N18
\Selector34~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~57_combout\ = (\scanStateVariable.LOAD5~q\ & (!\scanStateVariable.LOAD7~q\ & !\scanStateVariable.LOAD6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD5~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector34~57_combout\);

-- Location: LCCOMB_X41_Y36_N30
\Selector34~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~63_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ 
-- (((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~63_combout\);

-- Location: LCCOMB_X40_Y36_N30
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X41_Y36_N12
\Selector34~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~128_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((!\Add0~0_combout\ & \CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~128_combout\);

-- Location: LCCOMB_X41_Y36_N8
\Selector34~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~60_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector34~128_combout\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Add0~0_combout\,
	datad => \Selector34~128_combout\,
	combout => \Selector34~60_combout\);

-- Location: LCCOMB_X41_Y36_N22
\Selector34~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~61_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~61_combout\);

-- Location: LCCOMB_X39_Y33_N24
\Selector35~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~28_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~28_combout\);

-- Location: LCCOMB_X40_Y36_N12
\Selector34~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~129_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector35~28_combout\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector35~28_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector34~129_combout\);

-- Location: LCCOMB_X41_Y36_N16
\Selector34~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~62_combout\ = (\Selector34~129_combout\) # ((!\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \Selector34~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector34~61_combout\,
	datad => \Selector34~129_combout\,
	combout => \Selector34~62_combout\);

-- Location: LCCOMB_X41_Y36_N24
\Selector34~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~64_combout\ = (\Selector34~60_combout\) # ((\Selector34~62_combout\) # ((\Selector34~63_combout\ & \Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~63_combout\,
	datab => \Mux4~1_combout\,
	datac => \Selector34~60_combout\,
	datad => \Selector34~62_combout\,
	combout => \Selector34~64_combout\);

-- Location: LCCOMB_X41_Y36_N2
\Selector34~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~65_combout\ = (\Selector34~57_combout\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector34~127_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector34~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~127_combout\,
	datab => \Selector34~57_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector34~64_combout\,
	combout => \Selector34~65_combout\);

-- Location: LCCOMB_X40_Y35_N28
\Selector36~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~54_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector36~54_combout\);

-- Location: LCCOMB_X38_Y33_N26
\Selector36~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~53_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~53_combout\);

-- Location: LCCOMB_X38_Y33_N2
\Selector34~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~91_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\CHANGE_CHAR_PROC:char_num[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Selector34~91_combout\);

-- Location: LCCOMB_X38_Y33_N28
\Selector34~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~92_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~92_combout\);

-- Location: LCCOMB_X38_Y33_N24
\Selector34~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~93_combout\ = (\Selector34~91_combout\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Selector36~53_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector34~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~53_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector34~91_combout\,
	datad => \Selector34~92_combout\,
	combout => \Selector34~93_combout\);

-- Location: LCCOMB_X37_Y35_N28
\Selector34~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~50_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~50_combout\);

-- Location: LCCOMB_X37_Y35_N10
\Selector34~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~49_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\CHANGE_CHAR_PROC:char_num[5]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~49_combout\);

-- Location: LCCOMB_X37_Y35_N30
\Selector34~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~136_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector34~50_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector34~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector34~50_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Selector34~49_combout\,
	combout => \Selector34~136_combout\);

-- Location: LCCOMB_X41_Y37_N14
\Selector34~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~95_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ ((!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~95_combout\);

-- Location: LCCOMB_X41_Y37_N16
\Selector34~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~94_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~94_combout\);

-- Location: LCCOMB_X41_Y37_N20
\Selector34~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~96_combout\ = (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector34~94_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector34~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Selector34~95_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector34~94_combout\,
	combout => \Selector34~96_combout\);

-- Location: LCCOMB_X37_Y34_N0
\Selector34~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~97_combout\ = (\Selector34~93_combout\) # ((\Selector34~96_combout\) # ((\Selector36~54_combout\ & \Selector34~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~54_combout\,
	datab => \Selector34~93_combout\,
	datac => \Selector34~136_combout\,
	datad => \Selector34~96_combout\,
	combout => \Selector34~97_combout\);

-- Location: LCCOMB_X39_Y32_N12
\Selector34~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~98_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # ((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~98_combout\);

-- Location: LCCOMB_X39_Y32_N14
\Selector34~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~137_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~137_combout\);

-- Location: LCCOMB_X39_Y32_N2
\Selector34~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~99_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # ((\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~99_combout\);

-- Location: LCCOMB_X39_Y32_N0
\Selector34~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~100_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector34~98_combout\) # ((\Selector34~137_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\Selector34~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~98_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector34~137_combout\,
	datad => \Selector34~99_combout\,
	combout => \Selector34~100_combout\);

-- Location: LCCOMB_X40_Y36_N24
\Selector34~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~107_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~107_combout\);

-- Location: LCCOMB_X40_Y36_N18
\Selector34~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~106_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Equal0~0_combout\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector34~106_combout\);

-- Location: LCCOMB_X40_Y36_N22
\Selector34~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~108_combout\ = (\Selector34~107_combout\) # ((\Selector34~106_combout\) # ((!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Selector34~107_combout\,
	datac => \Mux4~1_combout\,
	datad => \Selector34~106_combout\,
	combout => \Selector34~108_combout\);

-- Location: LCCOMB_X38_Y36_N12
\Selector34~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~101_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector34~101_combout\);

-- Location: LCCOMB_X38_Y36_N26
\Selector34~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~102_combout\ = (\Selector34~101_combout\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~101_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector34~102_combout\);

-- Location: LCCOMB_X38_Y36_N24
\Selector34~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~56_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~56_combout\);

-- Location: LCCOMB_X38_Y36_N22
\Selector34~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~104_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector34~56_combout\ & (\Add0~0_combout\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector34~56_combout\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~104_combout\);

-- Location: LCCOMB_X38_Y36_N0
\Selector34~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~103_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Add0~0_combout\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~103_combout\);

-- Location: LCCOMB_X38_Y36_N16
\Selector34~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~105_combout\ = (\Selector34~102_combout\) # ((!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector34~104_combout\) # (\Selector34~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~102_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector34~104_combout\,
	datad => \Selector34~103_combout\,
	combout => \Selector34~105_combout\);

-- Location: LCCOMB_X38_Y36_N14
\Selector34~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~109_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\scanStateVariable.LOAD2~q\ & (\Selector34~108_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\scanStateVariable.LOAD2~q\) # ((\Selector34~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \Selector34~108_combout\,
	datad => \Selector34~105_combout\,
	combout => \Selector34~109_combout\);

-- Location: LCCOMB_X40_Y36_N28
\Selector34~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~110_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector34~110_combout\);

-- Location: LCCOMB_X39_Y32_N30
\Selector34~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~111_combout\ = \CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~111_combout\);

-- Location: LCCOMB_X39_Y32_N4
\Selector34~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~112_combout\ = (\Add0~0_combout\ & (((!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\Add0~0_combout\ & (!\Selector34~111_combout\ & (\Equal0~0_combout\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~111_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector34~112_combout\);

-- Location: LCCOMB_X39_Y35_N6
\Selector37~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~21_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector37~21_combout\);

-- Location: LCCOMB_X39_Y32_N10
\Selector34~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~131_combout\ = (\Selector37~21_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector37~21_combout\,
	combout => \Selector34~131_combout\);

-- Location: LCCOMB_X39_Y32_N26
\Selector34~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~113_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector34~112_combout\) # (\Selector34~131_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector34~110_combout\ & (\Selector34~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~110_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector34~112_combout\,
	datad => \Selector34~131_combout\,
	combout => \Selector34~113_combout\);

-- Location: LCCOMB_X38_Y36_N20
\Selector34~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~114_combout\ = (\scanStateVariable.LOAD2~q\ & ((\Selector34~109_combout\ & ((\Selector34~113_combout\))) # (!\Selector34~109_combout\ & (\Selector34~100_combout\)))) # (!\scanStateVariable.LOAD2~q\ & (((\Selector34~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~100_combout\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \Selector34~109_combout\,
	datad => \Selector34~113_combout\,
	combout => \Selector34~114_combout\);

-- Location: LCCOMB_X37_Y34_N6
\Selector34~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~115_combout\ = (\Selector34~55_combout\ & ((\Selector34~114_combout\) # ((\Selector34~97_combout\ & \scanStateVariable.LOAD7~q\)))) # (!\Selector34~55_combout\ & (\Selector34~97_combout\ & (\scanStateVariable.LOAD7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~55_combout\,
	datab => \Selector34~97_combout\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \Selector34~114_combout\,
	combout => \Selector34~115_combout\);

-- Location: LCCOMB_X37_Y34_N16
\Selector34~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~116_combout\ = (\Selector34~74_combout\) # ((\Selector34~90_combout\) # ((\Selector34~65_combout\) # (\Selector34~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~74_combout\,
	datab => \Selector34~90_combout\,
	datac => \Selector34~65_combout\,
	datad => \Selector34~115_combout\,
	combout => \Selector34~116_combout\);

-- Location: LCCOMB_X37_Y34_N28
\screenAreaLatch[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[8]~0_combout\ = (\scanStateVariable.LOAD8~q\ & (\Selector34~121_combout\)) # (!\scanStateVariable.LOAD8~q\ & ((\Selector34~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD8~q\,
	datab => \Selector34~121_combout\,
	datad => \Selector34~116_combout\,
	combout => \screenAreaLatch[8]~0_combout\);

-- Location: LCCOMB_X41_Y37_N22
\Selector35~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~84_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~84_combout\);

-- Location: LCCOMB_X41_Y37_N0
\Selector35~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~83_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~83_combout\);

-- Location: LCCOMB_X41_Y37_N28
\Selector35~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~85_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector35~83_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector35~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector35~84_combout\,
	datad => \Selector35~83_combout\,
	combout => \Selector35~85_combout\);

-- Location: LCCOMB_X36_Y33_N28
\Selector35~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~80_combout\ = \CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~80_combout\);

-- Location: LCCOMB_X36_Y33_N6
\Selector35~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~81_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~81_combout\);

-- Location: LCCOMB_X36_Y33_N0
\Selector35~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~82_combout\ = (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector35~80_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector35~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector35~80_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Selector35~81_combout\,
	combout => \Selector35~82_combout\);

-- Location: LCCOMB_X36_Y33_N26
\Selector35~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~87_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) 
-- # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~87_combout\);

-- Location: LCCOMB_X39_Y33_N22
\Selector37~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~23_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~23_combout\);

-- Location: LCCOMB_X39_Y33_N26
\Selector35~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~86_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Selector37~23_combout\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector37~23_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~86_combout\);

-- Location: LCCOMB_X36_Y33_N16
\Selector35~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~88_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector35~86_combout\) # ((\Selector35~87_combout\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~87_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector35~86_combout\,
	combout => \Selector35~88_combout\);

-- Location: LCCOMB_X37_Y37_N16
\Selector35~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~89_combout\ = (\Selector35~82_combout\) # ((\Add0~0_combout\ & ((\Selector35~85_combout\) # (\Selector35~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~85_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector35~82_combout\,
	datad => \Selector35~88_combout\,
	combout => \Selector35~89_combout\);

-- Location: LCCOMB_X40_Y37_N16
\Selector35~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~106_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (((!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~106_combout\);

-- Location: LCCOMB_X40_Y37_N6
\Selector35~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~107_combout\ = (\Selector35~106_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Selector35~106_combout\,
	combout => \Selector35~107_combout\);

-- Location: LCCOMB_X41_Y37_N30
\Selector35~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~29_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[5]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~29_combout\);

-- Location: LCCOMB_X41_Y37_N24
\Selector35~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~30_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\Selector35~29_combout\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Selector35~29_combout\ & 
-- \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector35~29_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~30_combout\);

-- Location: LCCOMB_X41_Y37_N10
\Selector35~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~31_combout\ = (\Add0~0_combout\ & ((\Selector35~30_combout\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\ & \Selector35~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector35~107_combout\,
	datad => \Selector35~30_combout\,
	combout => \Selector35~31_combout\);

-- Location: LCCOMB_X40_Y36_N26
\Selector36~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~55_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (\CHANGE_CHAR_PROC:char_num[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~55_combout\);

-- Location: LCCOMB_X41_Y37_N4
\Selector35~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~32_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector35~32_combout\);

-- Location: LCCOMB_X41_Y37_N18
\Selector35~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~33_combout\ = (\scanStateVariable.LOAD7~q\ & ((\Selector35~31_combout\) # ((\Selector36~55_combout\ & \Selector35~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~31_combout\,
	datab => \Selector36~55_combout\,
	datac => \Selector35~32_combout\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector35~33_combout\);

-- Location: LCCOMB_X35_Y37_N8
\Selector35~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~74_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~74_combout\);

-- Location: LCCOMB_X35_Y37_N18
\Selector35~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~75_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~75_combout\);

-- Location: LCCOMB_X35_Y37_N4
\Selector35~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~76_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & ((!\Selector35~75_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Selector35~74_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Selector35~74_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((!\Selector35~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector35~74_combout\,
	datad => \Selector35~75_combout\,
	combout => \Selector35~76_combout\);

-- Location: LCCOMB_X36_Y36_N0
\Selector38~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~40_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector38~40_combout\);

-- Location: LCCOMB_X36_Y36_N24
\Selector37~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~22_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~22_combout\);

-- Location: LCCOMB_X36_Y36_N2
\Selector35~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~72_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector35~72_combout\);

-- Location: LCCOMB_X36_Y36_N4
\Selector35~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~73_combout\ = (\Add0~0_combout\ & (((\Selector35~72_combout\)))) # (!\Add0~0_combout\ & (\Selector38~40_combout\ & (!\Selector37~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector38~40_combout\,
	datac => \Selector37~22_combout\,
	datad => \Selector35~72_combout\,
	combout => \Selector35~73_combout\);

-- Location: LCCOMB_X35_Y37_N26
\Selector35~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~77_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector35~73_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector35~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector35~76_combout\,
	datad => \Selector35~73_combout\,
	combout => \Selector35~77_combout\);

-- Location: LCCOMB_X35_Y37_N22
\Selector35~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~15_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~15_combout\);

-- Location: LCCOMB_X35_Y37_N0
\Selector35~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~16_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~16_combout\);

-- Location: LCCOMB_X35_Y37_N30
\Selector35~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~14_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & ((\Selector35~16_combout\))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (\Selector35~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \Selector35~15_combout\,
	datad => \Selector35~16_combout\,
	combout => \Selector35~14_combout\);

-- Location: LCCOMB_X35_Y37_N28
\Selector35~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~67_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Selector35~67_combout\);

-- Location: LCCOMB_X35_Y37_N20
\Selector35~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~96_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector35~67_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\Selector35~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector35~14_combout\,
	datad => \Selector35~67_combout\,
	combout => \Selector35~96_combout\);

-- Location: LCCOMB_X35_Y37_N24
\Selector35~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~70_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~70_combout\);

-- Location: LCCOMB_X35_Y37_N6
\Selector35~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~69_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~69_combout\);

-- Location: LCCOMB_X35_Y37_N14
\Selector35~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~71_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector35~69_combout\) # ((!\CHANGE_CHAR_PROC:char_num[2]~q\ & \Selector35~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector35~70_combout\,
	datad => \Selector35~69_combout\,
	combout => \Selector35~71_combout\);

-- Location: LCCOMB_X39_Y34_N20
\Selector35~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~66_combout\ = (!\scanStateVariable.LOAD6~q\ & \scanStateVariable.LOAD5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD6~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector35~66_combout\);

-- Location: LCCOMB_X35_Y37_N2
\Selector35~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~97_combout\ = (\Selector35~66_combout\ & ((\Selector35~71_combout\) # ((!\CHANGE_CHAR_PROC:char_num[5]~q\ & \Selector35~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Selector35~96_combout\,
	datac => \Selector35~71_combout\,
	datad => \Selector35~66_combout\,
	combout => \Selector35~97_combout\);

-- Location: LCCOMB_X35_Y37_N12
\Selector35~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~78_combout\ = (\Selector35~97_combout\) # ((!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\scanStateVariable.LOAD6~q\ & \Selector35~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \Selector35~77_combout\,
	datad => \Selector35~97_combout\,
	combout => \Selector35~78_combout\);

-- Location: LCCOMB_X38_Y33_N12
\Selector35~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~65_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~65_combout\);

-- Location: LCCOMB_X38_Y33_N10
\Selector35~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~10_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~10_combout\);

-- Location: LCCOMB_X38_Y33_N18
\Selector35~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~100_combout\ = ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector35~65_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector35~10_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~65_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Selector35~10_combout\,
	combout => \Selector35~100_combout\);

-- Location: LCCOMB_X38_Y37_N0
\Selector35~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~60_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Add0~0_combout\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Add0~0_combout\ $ (((\CHANGE_CHAR_PROC:char_num[3]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~60_combout\);

-- Location: LCCOMB_X38_Y37_N30
\Selector35~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~61_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux4~0_combout\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\Selector35~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector35~60_combout\,
	combout => \Selector35~61_combout\);

-- Location: LCCOMB_X40_Y36_N4
\Selector35~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~59_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Add0~0_combout\ & ((\Selector34~56_combout\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Add0~0_combout\,
	datac => \Selector34~56_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~59_combout\);

-- Location: LCCOMB_X40_Y36_N6
\Selector35~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~62_combout\ = (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector35~62_combout\);

-- Location: LCCOMB_X39_Y37_N24
\Selector35~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~63_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\) # (\Selector35~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector35~62_combout\,
	combout => \Selector35~63_combout\);

-- Location: LCCOMB_X38_Y37_N24
\Selector35~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~64_combout\ = (\Selector35~61_combout\ & ((\Selector35~63_combout\) # ((!\CHANGE_CHAR_PROC:char_num[4]~q\ & \Selector35~59_combout\)))) # (!\Selector35~61_combout\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector35~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~61_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector35~59_combout\,
	datad => \Selector35~63_combout\,
	combout => \Selector35~64_combout\);

-- Location: LCCOMB_X38_Y37_N6
\Selector35~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~101_combout\ = (\scanStateVariable.LOAD2~q\ & (((\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\scanStateVariable.LOAD2~q\ & (\Selector35~100_combout\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # (\Selector35~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~100_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \Selector35~64_combout\,
	combout => \Selector35~101_combout\);

-- Location: LCCOMB_X38_Y32_N14
\Selector35~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~7_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector35~7_combout\);

-- Location: LCCOMB_X38_Y34_N24
\Selector35~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~6_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector35~6_combout\);

-- Location: LCCOMB_X38_Y34_N10
\Selector35~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~94_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector35~7_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector35~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector35~7_combout\,
	datad => \Selector35~6_combout\,
	combout => \Selector35~94_combout\);

-- Location: LCCOMB_X38_Y37_N14
\Selector35~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~46_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector35~46_combout\);

-- Location: LCCOMB_X38_Y33_N6
\Selector35~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~45_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~45_combout\);

-- Location: LCCOMB_X38_Y37_N16
\Selector35~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~47_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector35~46_combout\ & (!\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Add0~0_combout\) # (\Selector35~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector35~46_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector35~45_combout\,
	combout => \Selector35~47_combout\);

-- Location: LCCOMB_X38_Y38_N6
\Selector35~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~41_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~41_combout\);

-- Location: LCCOMB_X38_Y38_N28
\Selector35~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~40_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector35~40_combout\);

-- Location: LCCOMB_X38_Y38_N4
\Selector35~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~42_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~42_combout\);

-- Location: LCCOMB_X38_Y38_N30
\Selector35~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~43_combout\ = (\Selector35~40_combout\ & (\scanStateVariable.LOAD6~q\ & ((\Selector35~41_combout\) # (\Selector35~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~41_combout\,
	datab => \Selector35~40_combout\,
	datac => \Selector35~42_combout\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector35~43_combout\);

-- Location: LCCOMB_X38_Y37_N22
\Selector35~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~22_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector35~22_combout\);

-- Location: LCCOMB_X38_Y37_N28
\Selector35~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~21_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector35~21_combout\);

-- Location: LCCOMB_X38_Y37_N12
\Selector35~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~95_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Selector35~22_combout\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Selector35~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector35~22_combout\,
	datad => \Selector35~21_combout\,
	combout => \Selector35~95_combout\);

-- Location: LCCOMB_X39_Y34_N2
\Selector34~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~124_combout\ = (!\scanStateVariable.LOAD6~q\ & (\scanStateVariable.LOAD4~q\ & !\scanStateVariable.LOAD5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scanStateVariable.LOAD6~q\,
	datac => \scanStateVariable.LOAD4~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector34~124_combout\);

-- Location: LCCOMB_X38_Y37_N10
\Selector35~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~48_combout\ = (\Selector34~124_combout\ & ((\Selector35~47_combout\ & ((\Selector35~95_combout\) # (!\Add0~0_combout\))) # (!\Selector35~47_combout\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~95_combout\,
	datab => \Selector35~47_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector34~124_combout\,
	combout => \Selector35~48_combout\);

-- Location: LCCOMB_X38_Y37_N4
\Selector35~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~49_combout\ = (\Selector35~43_combout\) # ((\Selector35~48_combout\ & ((\Selector35~94_combout\) # (\Selector35~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~94_combout\,
	datab => \Selector35~47_combout\,
	datac => \Selector35~43_combout\,
	datad => \Selector35~48_combout\,
	combout => \Selector35~49_combout\);

-- Location: LCCOMB_X37_Y36_N16
\Selector35~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~104_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~104_combout\);

-- Location: LCCOMB_X37_Y36_N30
\Selector35~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~105_combout\ = (\Selector35~104_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[5]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \Selector35~104_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector35~105_combout\);

-- Location: LCCOMB_X37_Y36_N20
\Selector35~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~102_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~102_combout\);

-- Location: LCCOMB_X37_Y36_N18
\Selector35~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~103_combout\ = (\Selector35~102_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \Selector35~102_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector35~103_combout\);

-- Location: LCCOMB_X37_Y36_N4
\Selector35~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~50_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~50_combout\);

-- Location: LCCOMB_X36_Y36_N16
\Selector35~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~51_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector35~51_combout\);

-- Location: LCCOMB_X37_Y36_N14
\Selector35~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~52_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector35~51_combout\ & !\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector35~50_combout\) # ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector35~50_combout\,
	datac => \Selector35~51_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector35~52_combout\);

-- Location: LCCOMB_X37_Y36_N0
\Selector35~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~53_combout\ = (\Selector35~52_combout\ & (((\Selector35~103_combout\) # (!\Add0~0_combout\)))) # (!\Selector35~52_combout\ & (\Selector35~105_combout\ & ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~105_combout\,
	datab => \Selector35~103_combout\,
	datac => \Selector35~52_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector35~53_combout\);

-- Location: LCCOMB_X39_Y33_N12
\Selector35~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~55_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~55_combout\);

-- Location: LCCOMB_X39_Y33_N20
\Selector34~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~125_combout\ = \CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~125_combout\);

-- Location: LCCOMB_X39_Y33_N14
\Selector35~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~54_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~54_combout\);

-- Location: LCCOMB_X39_Y33_N6
\Selector35~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~56_combout\ = (\Selector35~55_combout\ & (((\Selector34~125_combout\ & \Selector35~54_combout\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\Selector35~55_combout\ & (\Selector34~125_combout\ & ((\Selector35~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~55_combout\,
	datab => \Selector34~125_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Selector35~54_combout\,
	combout => \Selector35~56_combout\);

-- Location: LCCOMB_X39_Y33_N16
\Selector35~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~57_combout\ = (!\scanStateVariable.LOAD3~q\ & ((\Selector35~56_combout\) # ((!\scanStateVariable.LOAD2~q\) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~56_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \scanStateVariable.LOAD3~q\,
	combout => \Selector35~57_combout\);

-- Location: LCCOMB_X38_Y37_N26
\Selector35~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~58_combout\ = (\Selector35~27_combout\ & ((\Selector35~57_combout\) # ((\scanStateVariable.LOAD3~q\ & \Selector35~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~27_combout\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \Selector35~53_combout\,
	datad => \Selector35~57_combout\,
	combout => \Selector35~58_combout\);

-- Location: LCCOMB_X36_Y36_N8
\Selector34~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~123_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector34~123_combout\);

-- Location: LCCOMB_X36_Y36_N26
\Selector35~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~37_combout\ = (\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector34~123_combout\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector34~123_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector35~37_combout\);

-- Location: LCCOMB_X36_Y36_N20
\Selector35~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~38_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux4~0_combout\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Mux4~0_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector35~38_combout\);

-- Location: LCCOMB_X36_Y36_N6
\Selector35~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~34_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\) # ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector35~34_combout\);

-- Location: LCCOMB_X36_Y36_N12
\Selector35~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~35_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Add0~0_combout\ & ((\Selector38~41_combout\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector38~41_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector35~35_combout\);

-- Location: LCCOMB_X36_Y36_N10
\Selector35~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~36_combout\ = (\Selector35~35_combout\ & ((\Add0~0_combout\ & (\Selector35~34_combout\)) # (!\Add0~0_combout\ & ((\Selector37~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~34_combout\,
	datab => \Selector37~22_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector35~35_combout\,
	combout => \Selector35~36_combout\);

-- Location: LCCOMB_X36_Y36_N18
\Selector35~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~39_combout\ = (\Selector35~36_combout\) # ((!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector35~37_combout\) # (\Selector35~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~37_combout\,
	datab => \Selector35~38_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Selector35~36_combout\,
	combout => \Selector35~39_combout\);

-- Location: LCCOMB_X38_Y37_N18
\Selector35~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~98_combout\ = ((\Selector35~101_combout\) # ((\scanStateVariable.LOAD2~q\ & \Selector35~39_combout\))) # (!\Selector35~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \Selector35~57_combout\,
	datac => \Selector35~39_combout\,
	datad => \Selector35~101_combout\,
	combout => \Selector35~98_combout\);

-- Location: LCCOMB_X38_Y37_N20
\Selector35~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~99_combout\ = (\Selector35~49_combout\ & (((\Selector35~98_combout\)) # (!\Selector35~101_combout\))) # (!\Selector35~49_combout\ & (((\Selector35~58_combout\ & \Selector35~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~101_combout\,
	datab => \Selector35~49_combout\,
	datac => \Selector35~58_combout\,
	datad => \Selector35~98_combout\,
	combout => \Selector35~99_combout\);

-- Location: LCCOMB_X38_Y37_N2
\Selector35~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~79_combout\ = (\Selector35~33_combout\) # ((!\scanStateVariable.LOAD7~q\ & ((\Selector35~78_combout\) # (\Selector35~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~33_combout\,
	datab => \Selector35~78_combout\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \Selector35~99_combout\,
	combout => \Selector35~79_combout\);

-- Location: LCCOMB_X38_Y37_N8
\screenAreaLatch[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[7]~1_combout\ = (\scanStateVariable.LOAD8~q\ & (\Selector35~89_combout\)) # (!\scanStateVariable.LOAD8~q\ & ((\Selector35~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~89_combout\,
	datab => \scanStateVariable.LOAD8~q\,
	datad => \Selector35~79_combout\,
	combout => \screenAreaLatch[7]~1_combout\);

-- Location: LCCOMB_X40_Y37_N18
\Selector36~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~57_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~57_combout\);

-- Location: LCCOMB_X40_Y37_N4
\Selector36~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~60_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\ $ ((\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~60_combout\);

-- Location: LCCOMB_X40_Y37_N2
\Selector36~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~61_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~61_combout\);

-- Location: LCCOMB_X40_Y37_N12
\Selector36~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~62_combout\ = (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector36~60_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector36~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector36~60_combout\,
	datad => \Selector36~61_combout\,
	combout => \Selector36~62_combout\);

-- Location: LCCOMB_X40_Y37_N30
\Selector36~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~24_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~24_combout\);

-- Location: LCCOMB_X40_Y37_N0
\Selector36~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~25_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~25_combout\);

-- Location: LCCOMB_X40_Y37_N22
\Selector36~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~120_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector36~25_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector36~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector36~24_combout\,
	datad => \Selector36~25_combout\,
	combout => \Selector36~120_combout\);

-- Location: LCCOMB_X40_Y33_N30
\Selector36~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~58_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (((!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~58_combout\);

-- Location: LCCOMB_X40_Y33_N8
\Selector35~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~44_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector35~44_combout\);

-- Location: LCCOMB_X40_Y33_N12
\Selector35~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~90_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector35~90_combout\);

-- Location: LCCOMB_X40_Y33_N18
\Selector36~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~59_combout\ = (\Selector36~58_combout\ & (((!\Selector35~44_combout\ & \Selector35~90_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\Selector36~58_combout\ & (((!\Selector35~44_combout\ & \Selector35~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~58_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector35~44_combout\,
	datad => \Selector35~90_combout\,
	combout => \Selector36~59_combout\);

-- Location: LCCOMB_X40_Y37_N20
\Selector36~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~116_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector36~120_combout\))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector36~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector36~120_combout\,
	datad => \Selector36~59_combout\,
	combout => \Selector36~116_combout\);

-- Location: LCCOMB_X40_Y37_N26
\Selector36~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~63_combout\ = (\Selector36~62_combout\) # (\Selector36~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~62_combout\,
	datad => \Selector36~116_combout\,
	combout => \Selector36~63_combout\);

-- Location: LCCOMB_X39_Y37_N30
\screenAreaLatch[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[6]~5_combout\ = (\scanStateVariable.LOAD8~q\ & (((\Selector36~63_combout\)))) # (!\scanStateVariable.LOAD8~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Selector36~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Selector36~57_combout\,
	datac => \scanStateVariable.LOAD8~q\,
	datad => \Selector36~63_combout\,
	combout => \screenAreaLatch[6]~5_combout\);

-- Location: LCCOMB_X36_Y37_N12
\Selector36~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~87_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\scanStateVariable.LOAD7~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \scanStateVariable.LOAD7~q\,
	combout => \Selector36~87_combout\);

-- Location: LCCOMB_X36_Y37_N14
\Selector36~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~33_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~33_combout\);

-- Location: LCCOMB_X36_Y37_N16
\Selector36~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~32_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~32_combout\);

-- Location: LCCOMB_X36_Y37_N4
\Selector36~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~122_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector36~33_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector36~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector36~33_combout\,
	datad => \Selector36~32_combout\,
	combout => \Selector36~122_combout\);

-- Location: LCCOMB_X36_Y37_N30
\Selector36~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~20_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[5]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~20_combout\);

-- Location: LCCOMB_X36_Y37_N24
\Selector36~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~21_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[5]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector36~21_combout\);

-- Location: LCCOMB_X36_Y37_N18
\Selector36~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~119_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector36~21_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector36~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector36~20_combout\,
	datad => \Selector36~21_combout\,
	combout => \Selector36~119_combout\);

-- Location: LCCOMB_X36_Y37_N26
\Selector36~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~17_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ ((\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~17_combout\);

-- Location: LCCOMB_X36_Y37_N28
\Selector36~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~16_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~16_combout\);

-- Location: LCCOMB_X36_Y37_N8
\Selector36~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~118_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector36~17_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector36~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector36~17_combout\,
	datad => \Selector36~16_combout\,
	combout => \Selector36~118_combout\);

-- Location: LCCOMB_X36_Y37_N10
\Selector36~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~88_combout\ = ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector36~88_combout\);

-- Location: LCCOMB_X36_Y37_N0
\Selector36~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~89_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~89_combout\);

-- Location: LCCOMB_X36_Y37_N6
\Selector36~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~90_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector36~89_combout\ & !\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Add0~0_combout\)) # (!\Selector36~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~88_combout\,
	datab => \Selector36~89_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector36~90_combout\);

-- Location: LCCOMB_X36_Y37_N20
\Selector36~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~91_combout\ = (\Add0~0_combout\ & ((\Selector36~90_combout\ & (\Selector36~119_combout\)) # (!\Selector36~90_combout\ & ((\Selector36~118_combout\))))) # (!\Add0~0_combout\ & (((\Selector36~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector36~119_combout\,
	datac => \Selector36~118_combout\,
	datad => \Selector36~90_combout\,
	combout => \Selector36~91_combout\);

-- Location: LCCOMB_X36_Y37_N22
\Selector36~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~92_combout\ = (\Selector36~87_combout\ & ((\Selector36~122_combout\) # ((\Selector34~81_combout\ & \Selector36~91_combout\)))) # (!\Selector36~87_combout\ & (((\Selector34~81_combout\ & \Selector36~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~87_combout\,
	datab => \Selector36~122_combout\,
	datac => \Selector34~81_combout\,
	datad => \Selector36~91_combout\,
	combout => \Selector36~92_combout\);

-- Location: LCCOMB_X41_Y37_N26
\Selector36~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~29_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~29_combout\);

-- Location: LCCOMB_X41_Y37_N8
\Selector36~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~28_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ $ 
-- (\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~28_combout\);

-- Location: LCCOMB_X41_Y37_N12
\Selector36~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~121_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector36~29_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector36~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~29_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector36~28_combout\,
	combout => \Selector36~121_combout\);

-- Location: LCCOMB_X40_Y37_N10
\Selector36~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~96_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~96_combout\);

-- Location: LCCOMB_X40_Y37_N8
\Selector35~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~68_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector35~68_combout\);

-- Location: LCCOMB_X37_Y37_N12
\Selector34~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~138_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector34~138_combout\);

-- Location: LCCOMB_X37_Y37_N6
\Selector36~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~95_combout\ = (\Selector38~41_combout\ & (\Selector34~138_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector38~41_combout\,
	datad => \Selector34~138_combout\,
	combout => \Selector36~95_combout\);

-- Location: LCCOMB_X41_Y37_N2
\Selector36~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~93_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~93_combout\);

-- Location: LCCOMB_X40_Y37_N28
\Selector36~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~94_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \Selector36~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Selector36~93_combout\,
	combout => \Selector36~94_combout\);

-- Location: LCCOMB_X40_Y37_N24
\Selector36~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~97_combout\ = (\Selector36~95_combout\) # ((\Selector36~94_combout\) # ((\Selector36~96_combout\ & \Selector35~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~96_combout\,
	datab => \Selector35~68_combout\,
	datac => \Selector36~95_combout\,
	datad => \Selector36~94_combout\,
	combout => \Selector36~97_combout\);

-- Location: LCCOMB_X40_Y37_N14
\Selector36~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~98_combout\ = (\Selector34~89_combout\ & ((\Add0~0_combout\ & ((\Selector36~97_combout\))) # (!\Add0~0_combout\ & (\Selector36~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector36~121_combout\,
	datac => \Selector34~89_combout\,
	datad => \Selector36~97_combout\,
	combout => \Selector36~98_combout\);

-- Location: LCCOMB_X40_Y36_N20
\Selector36~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~105_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector36~105_combout\);

-- Location: LCCOMB_X38_Y36_N4
\Selector36~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~106_combout\ = (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (\Selector36~105_combout\ & ((\Mux4~0_combout\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector36~105_combout\,
	combout => \Selector36~106_combout\);

-- Location: LCCOMB_X38_Y35_N16
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X38_Y36_N10
\Selector36~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~104_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector34~56_combout\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Selector34~56_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Mux0~1_combout\,
	combout => \Selector36~104_combout\);

-- Location: LCCOMB_X38_Y36_N2
\Selector36~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~107_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\scanStateVariable.LOAD7~q\ & ((\Selector36~106_combout\) # (\Selector36~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \Selector36~106_combout\,
	datad => \Selector36~104_combout\,
	combout => \Selector36~107_combout\);

-- Location: LCCOMB_X40_Y33_N6
\Selector36~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~102_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~102_combout\);

-- Location: LCCOMB_X41_Y33_N10
\Selector36~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~100_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector36~100_combout\);

-- Location: LCCOMB_X41_Y33_N0
\Selector36~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~101_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \Selector36~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector36~100_combout\,
	combout => \Selector36~101_combout\);

-- Location: LCCOMB_X40_Y33_N24
\Selector36~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~99_combout\ = (\scanStateVariable.LOAD7~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector36~99_combout\);

-- Location: LCCOMB_X40_Y33_N20
\Selector36~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~103_combout\ = (\Selector36~99_combout\ & ((\Selector36~101_combout\) # ((\Selector36~102_combout\ & \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~102_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector36~101_combout\,
	datad => \Selector36~99_combout\,
	combout => \Selector36~103_combout\);

-- Location: LCCOMB_X38_Y35_N8
\Selector36~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~50_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~50_combout\);

-- Location: LCCOMB_X38_Y35_N2
\Selector36~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~49_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~49_combout\);

-- Location: LCCOMB_X38_Y35_N6
\Selector36~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~126_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Selector36~50_combout\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Selector36~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector36~50_combout\,
	datad => \Selector36~49_combout\,
	combout => \Selector36~126_combout\);

-- Location: LCCOMB_X38_Y35_N18
\Selector36~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~112_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~112_combout\);

-- Location: LCCOMB_X38_Y35_N20
\Selector36~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~113_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~113_combout\);

-- Location: LCCOMB_X38_Y35_N22
\Selector36~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~114_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector36~113_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Selector36~112_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Selector36~112_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector36~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \Selector36~112_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector36~113_combout\,
	combout => \Selector36~114_combout\);

-- Location: LCCOMB_X38_Y35_N26
\Selector36~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~110_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~110_combout\);

-- Location: LCCOMB_X38_Y35_N4
\Selector36~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~109_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~109_combout\);

-- Location: LCCOMB_X38_Y35_N0
\Selector36~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~111_combout\ = (\Selector34~67_combout\ & ((\Add0~0_combout\ & ((\Selector36~109_combout\))) # (!\Add0~0_combout\ & (\Selector36~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~110_combout\,
	datab => \Selector36~109_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector34~67_combout\,
	combout => \Selector36~111_combout\);

-- Location: LCCOMB_X38_Y35_N24
\Selector36~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~115_combout\ = (\Selector36~126_combout\) # ((\Selector36~111_combout\) # ((\Equal0~1_combout\ & \Selector36~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~126_combout\,
	datab => \Equal0~1_combout\,
	datac => \Selector36~114_combout\,
	datad => \Selector36~111_combout\,
	combout => \Selector36~115_combout\);

-- Location: LCCOMB_X39_Y37_N16
\screenAreaLatch[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[6]~8_combout\ = (\Selector36~107_combout\) # ((\Selector36~103_combout\) # ((\Selector34~66_combout\ & \Selector36~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~66_combout\,
	datab => \Selector36~107_combout\,
	datac => \Selector36~103_combout\,
	datad => \Selector36~115_combout\,
	combout => \screenAreaLatch[6]~8_combout\);

-- Location: LCCOMB_X39_Y37_N26
\screenAreaLatch[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[6]~9_combout\ = (\Selector36~92_combout\) # ((\Selector36~98_combout\) # (\screenAreaLatch[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~92_combout\,
	datac => \Selector36~98_combout\,
	datad => \screenAreaLatch[6]~8_combout\,
	combout => \screenAreaLatch[6]~9_combout\);

-- Location: LCCOMB_X37_Y37_N4
\Selector36~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~45_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~45_combout\);

-- Location: LCCOMB_X37_Y37_N18
\Selector36~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~44_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\) # ((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~44_combout\);

-- Location: LCCOMB_X37_Y37_N22
\Selector36~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~125_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector36~45_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector36~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector36~45_combout\,
	datad => \Selector36~44_combout\,
	combout => \Selector36~125_combout\);

-- Location: LCCOMB_X39_Y37_N28
\Selector36~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~64_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector36~64_combout\);

-- Location: LCCOMB_X39_Y37_N6
\Selector36~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~65_combout\ = (\Selector36~64_combout\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\Add0~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Add0~0_combout\,
	datad => \Selector36~64_combout\,
	combout => \Selector36~65_combout\);

-- Location: LCCOMB_X39_Y37_N4
\Selector36~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~66_combout\ = (\Selector36~65_combout\) # ((\Equal0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Add0~0_combout\,
	datad => \Selector36~65_combout\,
	combout => \Selector36~66_combout\);

-- Location: LCCOMB_X38_Y35_N12
\Selector36~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~67_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~67_combout\);

-- Location: LCCOMB_X38_Y35_N30
\Selector36~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~68_combout\ = (\Selector36~67_combout\) # ((\Selector38~40_combout\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~67_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Add0~0_combout\,
	datad => \Selector38~40_combout\,
	combout => \Selector36~68_combout\);

-- Location: LCCOMB_X39_Y37_N14
\Selector36~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~69_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Add0~0_combout\ & \Selector35~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Add0~0_combout\,
	datad => \Selector35~28_combout\,
	combout => \Selector36~69_combout\);

-- Location: LCCOMB_X39_Y37_N20
\Selector36~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~70_combout\ = (\Selector36~69_combout\) # ((\Selector35~59_combout\) # ((!\Selector36~64_combout\ & \Selector36~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~64_combout\,
	datab => \Selector36~54_combout\,
	datac => \Selector36~69_combout\,
	datad => \Selector35~59_combout\,
	combout => \Selector36~70_combout\);

-- Location: LCCOMB_X39_Y37_N10
\Selector36~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~71_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector36~66_combout\ & (\Selector36~68_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector36~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector36~66_combout\,
	datac => \Selector36~68_combout\,
	datad => \Selector36~70_combout\,
	combout => \Selector36~71_combout\);

-- Location: LCCOMB_X39_Y37_N0
\Selector36~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~72_combout\ = (\scanStateVariable.LOAD2~q\ & (((!\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\scanStateVariable.LOAD2~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector36~125_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- ((\Selector36~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \Selector36~125_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector36~71_combout\,
	combout => \Selector36~72_combout\);

-- Location: LCCOMB_X42_Y36_N10
\Selector36~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~74_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ 
-- & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector36~74_combout\);

-- Location: LCCOMB_X42_Y36_N8
\Selector36~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~75_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (((\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~75_combout\);

-- Location: LCCOMB_X42_Y36_N30
\Selector36~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~76_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (((!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector36~76_combout\);

-- Location: LCCOMB_X42_Y36_N14
\Selector36~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~123_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector36~76_combout\ & \CHANGE_CHAR_PROC:char_num[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector36~76_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector36~123_combout\);

-- Location: LCCOMB_X42_Y36_N16
\Selector36~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~77_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector36~77_combout\);

-- Location: LCCOMB_X42_Y36_N2
\Selector36~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~78_combout\ = (\Selector36~74_combout\ & ((\Selector36~77_combout\) # ((\Selector36~75_combout\ & \Selector36~123_combout\)))) # (!\Selector36~74_combout\ & (\Selector36~75_combout\ & (\Selector36~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~74_combout\,
	datab => \Selector36~75_combout\,
	datac => \Selector36~123_combout\,
	datad => \Selector36~77_combout\,
	combout => \Selector36~78_combout\);

-- Location: LCCOMB_X40_Y32_N30
\Selector36~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~39_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~39_combout\);

-- Location: LCCOMB_X40_Y32_N24
\Selector36~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~38_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~38_combout\);

-- Location: LCCOMB_X40_Y32_N28
\Selector36~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~37_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector36~39_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector36~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector36~39_combout\,
	datad => \Selector36~38_combout\,
	combout => \Selector36~37_combout\);

-- Location: LCCOMB_X40_Y32_N22
\Selector36~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~124_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \Selector36~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector36~37_combout\,
	combout => \Selector36~124_combout\);

-- Location: LCCOMB_X37_Y36_N8
\Selector36~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~80_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[2]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~80_combout\);

-- Location: LCCOMB_X37_Y36_N2
\Selector36~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~79_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Add0~0_combout\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector36~79_combout\);

-- Location: LCCOMB_X37_Y36_N12
\Selector36~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~127_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \Selector36~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector36~79_combout\,
	combout => \Selector36~127_combout\);

-- Location: LCCOMB_X37_Y36_N22
\Selector36~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~128_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector36~80_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Selector36~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector36~80_combout\,
	datad => \Selector36~127_combout\,
	combout => \Selector36~128_combout\);

-- Location: LCCOMB_X39_Y37_N22
\Selector36~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~81_combout\ = (\Selector34~57_combout\ & ((\Selector36~78_combout\) # ((\Selector36~124_combout\) # (\Selector36~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~57_combout\,
	datab => \Selector36~78_combout\,
	datac => \Selector36~124_combout\,
	datad => \Selector36~128_combout\,
	combout => \Selector36~81_combout\);

-- Location: LCCOMB_X39_Y33_N8
\Selector36~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~82_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector36~82_combout\);

-- Location: LCCOMB_X39_Y33_N18
\Selector36~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~83_combout\ = (\Add0~0_combout\ & (\Selector37~23_combout\ & (\Selector34~125_combout\))) # (!\Add0~0_combout\ & (((\Selector36~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~23_combout\,
	datab => \Selector34~125_combout\,
	datac => \Selector36~82_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector36~83_combout\);

-- Location: LCCOMB_X39_Y33_N4
\Selector36~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~84_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector36~84_combout\);

-- Location: LCCOMB_X39_Y33_N30
\Selector36~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~85_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector36~84_combout\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector36~84_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector36~85_combout\);

-- Location: LCCOMB_X39_Y33_N0
\Selector36~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~117_combout\ = (\Selector38~41_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Add0~0_combout\,
	datad => \Selector38~41_combout\,
	combout => \Selector36~117_combout\);

-- Location: LCCOMB_X39_Y33_N28
\Selector36~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~86_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector36~85_combout\) # (\Selector36~117_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector36~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector36~83_combout\,
	datac => \Selector36~85_combout\,
	datad => \Selector36~117_combout\,
	combout => \Selector36~86_combout\);

-- Location: LCCOMB_X39_Y37_N12
\screenAreaLatch[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[6]~6_combout\ = (\Selector34~55_combout\ & ((\scanStateVariable.LOAD2~q\ & ((\Selector36~86_combout\) # (!\Selector36~72_combout\))) # (!\scanStateVariable.LOAD2~q\ & ((\Selector36~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \Selector34~55_combout\,
	datac => \Selector36~86_combout\,
	datad => \Selector36~72_combout\,
	combout => \screenAreaLatch[6]~6_combout\);

-- Location: LCCOMB_X39_Y37_N2
\screenAreaLatch[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[6]~7_combout\ = (\Selector36~81_combout\) # ((\screenAreaLatch[6]~6_combout\ & ((\screenAreaLatch[6]~5_combout\) # (\Selector36~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenAreaLatch[6]~5_combout\,
	datab => \Selector36~72_combout\,
	datac => \Selector36~81_combout\,
	datad => \screenAreaLatch[6]~6_combout\,
	combout => \screenAreaLatch[6]~7_combout\);

-- Location: LCCOMB_X39_Y37_N18
\screenAreaLatch[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[6]~2_combout\ = (\scanStateVariable.LOAD8~q\ & (\screenAreaLatch[6]~5_combout\)) # (!\scanStateVariable.LOAD8~q\ & (((\screenAreaLatch[6]~9_combout\) # (\screenAreaLatch[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screenAreaLatch[6]~5_combout\,
	datab => \scanStateVariable.LOAD8~q\,
	datac => \screenAreaLatch[6]~9_combout\,
	datad => \screenAreaLatch[6]~7_combout\,
	combout => \screenAreaLatch[6]~2_combout\);

-- Location: LCCOMB_X39_Y37_N8
\screenAreaLatch[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[6]~feeder_combout\ = \screenAreaLatch[6]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \screenAreaLatch[6]~2_combout\,
	combout => \screenAreaLatch[6]~feeder_combout\);

-- Location: LCCOMB_X36_Y33_N30
\Selector37~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~80_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (((!\CHANGE_CHAR_PROC:char_num[3]~q\)) 
-- # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~80_combout\);

-- Location: LCCOMB_X36_Y33_N10
\Selector37~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~78_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~78_combout\);

-- Location: LCCOMB_X36_Y33_N8
\Selector37~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~77_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~77_combout\);

-- Location: LCCOMB_X36_Y33_N24
\Selector37~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~79_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector37~77_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector37~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~78_combout\,
	datab => \Selector37~77_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~79_combout\);

-- Location: LCCOMB_X36_Y33_N4
\Selector37~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~81_combout\ = (\Add0~0_combout\ & ((\Selector37~79_combout\) # ((\Equal0~1_combout\ & \Selector37~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Selector37~80_combout\,
	datad => \Selector37~79_combout\,
	combout => \Selector37~81_combout\);

-- Location: LCCOMB_X36_Y33_N22
\Selector37~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~74_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~74_combout\);

-- Location: LCCOMB_X36_Y33_N12
\Selector37~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~75_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~75_combout\);

-- Location: LCCOMB_X36_Y33_N18
\Selector37~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~76_combout\ = (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector37~74_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector37~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector37~74_combout\,
	datad => \Selector37~75_combout\,
	combout => \Selector37~76_combout\);

-- Location: LCCOMB_X36_Y33_N2
\Selector37~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~82_combout\ = (\Selector37~81_combout\) # (\Selector37~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector37~81_combout\,
	datad => \Selector37~76_combout\,
	combout => \Selector37~82_combout\);

-- Location: LCCOMB_X36_Y35_N26
\Selector37~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~69_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~69_combout\);

-- Location: LCCOMB_X36_Y35_N16
\Selector37~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~70_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~70_combout\);

-- Location: LCCOMB_X36_Y35_N6
\Selector37~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~71_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\Selector37~69_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector37~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector37~69_combout\,
	datad => \Selector37~70_combout\,
	combout => \Selector37~71_combout\);

-- Location: LCCOMB_X38_Y33_N30
\Selector37~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~67_combout\ = (\Selector37~23_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector37~23_combout\,
	combout => \Selector37~67_combout\);

-- Location: LCCOMB_X37_Y35_N18
\Selector37~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~68_combout\ = (\Selector37~67_combout\) # ((\Equal0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Equal0~0_combout\,
	datad => \Selector37~67_combout\,
	combout => \Selector37~68_combout\);

-- Location: LCCOMB_X37_Y35_N16
\Selector37~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~72_combout\ = (\Add0~0_combout\ & (\Selector37~71_combout\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\Add0~0_combout\ & (((\Selector37~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector37~71_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector37~68_combout\,
	combout => \Selector37~72_combout\);

-- Location: LCCOMB_X40_Y33_N22
\Selector37~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~65_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector37~65_combout\);

-- Location: LCCOMB_X41_Y33_N6
\Selector37~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~85_combout\ = (\Selector36~100_combout\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\CHANGE_CHAR_PROC:char_num[5]~q\) # (\CHANGE_CHAR_PROC:char_num[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Selector36~100_combout\,
	combout => \Selector37~85_combout\);

-- Location: LCCOMB_X40_Y33_N4
\Selector37~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~66_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector37~85_combout\) # ((\Selector36~54_combout\ & \Selector37~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \Selector36~54_combout\,
	datac => \Selector37~65_combout\,
	datad => \Selector37~85_combout\,
	combout => \Selector37~66_combout\);

-- Location: LCCOMB_X38_Y35_N28
\Selector37~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~60_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector37~60_combout\);

-- Location: LCCOMB_X37_Y35_N12
\Selector37~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~61_combout\ = \CHANGE_CHAR_PROC:char_num[6]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector37~61_combout\);

-- Location: LCCOMB_X38_Y35_N14
\Selector37~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~62_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector37~60_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\Selector37~61_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Selector37~60_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ 
-- $ (\Selector37~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Selector37~60_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector37~61_combout\,
	combout => \Selector37~62_combout\);

-- Location: LCCOMB_X40_Y35_N16
\Selector37~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~58_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector37~58_combout\);

-- Location: LCCOMB_X40_Y35_N22
\Selector36~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~108_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector36~108_combout\);

-- Location: LCCOMB_X40_Y35_N10
\Selector37~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~59_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector37~58_combout\) # ((\Selector36~108_combout\ & \Selector35~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Selector37~58_combout\,
	datac => \Selector36~108_combout\,
	datad => \Selector35~28_combout\,
	combout => \Selector37~59_combout\);

-- Location: LCCOMB_X37_Y35_N14
\Selector37~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~56_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & \Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ 
-- & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector37~56_combout\);

-- Location: LCCOMB_X38_Y35_N10
\Selector37~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~57_combout\ = (\Selector34~67_combout\ & (\Selector37~56_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~67_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Selector37~56_combout\,
	combout => \Selector37~57_combout\);

-- Location: LCCOMB_X39_Y35_N4
\Selector37~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~63_combout\ = (\Selector37~59_combout\) # ((\Selector37~57_combout\) # ((\Selector37~62_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~62_combout\,
	datab => \Equal0~1_combout\,
	datac => \Selector37~59_combout\,
	datad => \Selector37~57_combout\,
	combout => \Selector37~63_combout\);

-- Location: LCCOMB_X39_Y34_N24
\Selector35~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~92_combout\ = (!\scanStateVariable.LOAD3~q\ & (!\scanStateVariable.LOAD4~q\ & (!\scanStateVariable.LOAD6~q\ & !\scanStateVariable.LOAD5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD3~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \scanStateVariable.LOAD6~q\,
	datad => \scanStateVariable.LOAD5~q\,
	combout => \Selector35~92_combout\);

-- Location: LCCOMB_X36_Y35_N4
\Selector37~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~47_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~47_combout\);

-- Location: LCCOMB_X36_Y35_N18
\Selector37~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~46_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~46_combout\);

-- Location: LCCOMB_X36_Y35_N14
\Selector37~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~48_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector37~46_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector37~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector37~47_combout\,
	datad => \Selector37~46_combout\,
	combout => \Selector37~48_combout\);

-- Location: LCCOMB_X36_Y35_N24
\Selector34~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~126_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector34~126_combout\);

-- Location: LCCOMB_X36_Y35_N8
\Selector37~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~24_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~24_combout\);

-- Location: LCCOMB_X36_Y35_N10
\Selector37~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~52_combout\ = (\Equal0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector37~52_combout\);

-- Location: LCCOMB_X36_Y35_N30
\Selector37~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~53_combout\ = (\Selector37~24_combout\) # ((\Selector37~52_combout\) # ((\Mux4~1_combout\ & !\Selector34~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Selector34~126_combout\,
	datac => \Selector37~24_combout\,
	datad => \Selector37~52_combout\,
	combout => \Selector37~53_combout\);

-- Location: LCCOMB_X36_Y35_N2
\Selector37~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~50_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector37~50_combout\);

-- Location: LCCOMB_X36_Y35_N12
\Selector37~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~49_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~49_combout\);

-- Location: LCCOMB_X36_Y35_N28
\Selector37~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~51_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector37~50_combout\ & (!\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Add0~0_combout\) # (!\Selector37~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector37~50_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector37~49_combout\,
	combout => \Selector37~51_combout\);

-- Location: LCCOMB_X36_Y35_N20
\Selector37~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~54_combout\ = (\Add0~0_combout\ & ((\Selector37~51_combout\ & ((\Selector37~53_combout\))) # (!\Selector37~51_combout\ & (\Selector37~48_combout\)))) # (!\Add0~0_combout\ & (((\Selector37~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector37~48_combout\,
	datac => \Selector37~53_combout\,
	datad => \Selector37~51_combout\,
	combout => \Selector37~54_combout\);

-- Location: LCCOMB_X36_Y36_N28
\Selector35~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~93_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector35~93_combout\);

-- Location: LCCOMB_X36_Y36_N14
\Selector37~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~43_combout\ = (\Selector37~22_combout\ & ((\Selector38~40_combout\) # ((\Equal0~0_combout\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Selector38~40_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector37~22_combout\,
	combout => \Selector37~43_combout\);

-- Location: LCCOMB_X36_Y36_N30
\Selector37~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~44_combout\ = (\Add0~0_combout\ & ((\Selector37~43_combout\) # ((\Mux4~1_combout\ & \Selector35~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Selector35~93_combout\,
	datac => \Selector37~43_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector37~44_combout\);

-- Location: LCCOMB_X39_Y33_N2
\Selector37~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~91_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~91_combout\);

-- Location: LCCOMB_X39_Y35_N14
\Selector37~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~92_combout\ = (\Selector37~91_combout\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector37~91_combout\,
	combout => \Selector37~92_combout\);

-- Location: LCCOMB_X37_Y37_N14
\Selector37~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~20_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~20_combout\);

-- Location: LCCOMB_X37_Y37_N28
\Selector37~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~19_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector37~19_combout\);

-- Location: LCCOMB_X37_Y37_N24
\Selector37~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~88_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector37~20_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector37~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector37~20_combout\,
	datad => \Selector37~19_combout\,
	combout => \Selector37~88_combout\);

-- Location: LCCOMB_X37_Y36_N26
\Selector37~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~36_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~36_combout\);

-- Location: LCCOMB_X38_Y36_N6
\Selector37~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~84_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ ((!\CHANGE_CHAR_PROC:char_num[6]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\CHANGE_CHAR_PROC:char_num[6]~q\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Mux4~0_combout\,
	combout => \Selector37~84_combout\);

-- Location: LCCOMB_X38_Y36_N28
\Selector37~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~37_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector37~36_combout\ & !\Selector37~84_combout\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Selector37~84_combout\ & ((!\Selector37~36_combout\) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector37~36_combout\,
	datad => \Selector37~84_combout\,
	combout => \Selector37~37_combout\);

-- Location: LCCOMB_X39_Y35_N22
\Selector37~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~38_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((!\scanStateVariable.LOAD2~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\scanStateVariable.LOAD2~q\) # ((!\CHANGE_CHAR_PROC:char_num[2]~q\ & \Selector37~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \Selector37~37_combout\,
	combout => \Selector37~38_combout\);

-- Location: LCCOMB_X39_Y35_N24
\Selector34~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~122_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector34~122_combout\);

-- Location: LCCOMB_X39_Y35_N8
\Selector37~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~39_combout\ = (\Mux0~1_combout\ & (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\Selector34~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Selector34~122_combout\,
	datac => \Mux0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector37~39_combout\);

-- Location: LCCOMB_X39_Y35_N30
\Selector37~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~40_combout\ = \CHANGE_CHAR_PROC:char_num[6]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector37~40_combout\);

-- Location: LCCOMB_X39_Y35_N12
\Selector37~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~41_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\Selector37~21_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((\Selector37~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Selector37~40_combout\,
	datad => \Selector37~21_combout\,
	combout => \Selector37~41_combout\);

-- Location: LCCOMB_X39_Y35_N2
\Selector37~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~89_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\Selector37~41_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Add0~0_combout\ & (\Selector34~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Add0~0_combout\,
	datac => \Selector34~56_combout\,
	datad => \Selector37~41_combout\,
	combout => \Selector37~89_combout\);

-- Location: LCCOMB_X39_Y35_N20
\Selector37~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~90_combout\ = (\Selector37~39_combout\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\ & \Selector37~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector37~39_combout\,
	datad => \Selector37~89_combout\,
	combout => \Selector37~90_combout\);

-- Location: LCCOMB_X39_Y35_N10
\Selector37~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~42_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector37~88_combout\ & (\Selector37~38_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Selector37~38_combout\) # (\Selector37~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~88_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector37~38_combout\,
	datad => \Selector37~90_combout\,
	combout => \Selector37~42_combout\);

-- Location: LCCOMB_X39_Y35_N28
\Selector37~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~45_combout\ = (\scanStateVariable.LOAD2~q\ & ((\Selector37~42_combout\ & (\Selector37~44_combout\)) # (!\Selector37~42_combout\ & ((\Selector37~92_combout\))))) # (!\scanStateVariable.LOAD2~q\ & (((\Selector37~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~44_combout\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \Selector37~92_combout\,
	datad => \Selector37~42_combout\,
	combout => \Selector37~45_combout\);

-- Location: LCCOMB_X39_Y35_N26
\Selector37~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~55_combout\ = (\Selector34~124_combout\ & ((\Selector37~54_combout\) # ((\Selector35~92_combout\ & \Selector37~45_combout\)))) # (!\Selector34~124_combout\ & (\Selector35~92_combout\ & ((\Selector37~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~124_combout\,
	datab => \Selector35~92_combout\,
	datac => \Selector37~54_combout\,
	datad => \Selector37~45_combout\,
	combout => \Selector37~55_combout\);

-- Location: LCCOMB_X39_Y34_N4
\Selector37~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~14_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector37~14_combout\);

-- Location: LCCOMB_X39_Y34_N10
\Selector37~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~13_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector37~13_combout\);

-- Location: LCCOMB_X39_Y34_N26
\Selector37~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~87_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector37~14_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector37~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector37~14_combout\,
	datad => \Selector37~13_combout\,
	combout => \Selector37~87_combout\);

-- Location: LCCOMB_X39_Y34_N6
\Selector35~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~91_combout\ = (!\scanStateVariable.LOAD5~q\ & (!\scanStateVariable.LOAD4~q\ & (\scanStateVariable.LOAD3~q\ & !\scanStateVariable.LOAD6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD5~q\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \scanStateVariable.LOAD6~q\,
	combout => \Selector35~91_combout\);

-- Location: LCCOMB_X38_Y34_N26
\Selector37~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~26_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector37~26_combout\);

-- Location: LCCOMB_X38_Y34_N28
\Selector37~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~25_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector37~25_combout\);

-- Location: LCCOMB_X38_Y34_N4
\Selector37~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~27_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~27_combout\);

-- Location: LCCOMB_X38_Y34_N6
\Selector37~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~28_combout\ = (\Selector37~26_combout\ & ((\Selector37~25_combout\) # ((\Selector37~27_combout\ & \Selector34~67_combout\)))) # (!\Selector37~26_combout\ & (((\Selector37~27_combout\ & \Selector34~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~26_combout\,
	datab => \Selector37~25_combout\,
	datac => \Selector37~27_combout\,
	datad => \Selector34~67_combout\,
	combout => \Selector37~28_combout\);

-- Location: LCCOMB_X38_Y33_N22
\Selector37~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~9_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~9_combout\);

-- Location: LCCOMB_X38_Y33_N16
\Selector37~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~8_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~8_combout\);

-- Location: LCCOMB_X38_Y33_N8
\Selector37~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~86_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector37~9_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector37~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector37~9_combout\,
	datad => \Selector37~8_combout\,
	combout => \Selector37~86_combout\);

-- Location: LCCOMB_X39_Y34_N8
\Selector37~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~29_combout\ = (\Selector35~91_combout\ & ((\Add0~0_combout\ & (\Selector37~28_combout\)) # (!\Add0~0_combout\ & ((\Selector37~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~91_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector37~28_combout\,
	datad => \Selector37~86_combout\,
	combout => \Selector37~29_combout\);

-- Location: LCCOMB_X39_Y34_N14
\Selector37~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~32_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~32_combout\);

-- Location: LCCOMB_X39_Y34_N12
\Selector37~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~33_combout\ = (\Selector37~32_combout\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Add0~0_combout\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Add0~0_combout\,
	datac => \Selector37~32_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector37~33_combout\);

-- Location: LCCOMB_X39_Y33_N10
\Selector37~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~31_combout\ = (\Selector35~28_combout\ & (\Add0~0_combout\ & ((\Selector35~54_combout\) # (\Selector37~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~28_combout\,
	datab => \Selector35~54_combout\,
	datac => \Selector37~23_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector37~31_combout\);

-- Location: LCCOMB_X38_Y34_N12
\Selector37~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~30_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\Add0~0_combout\ 
-- & (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector37~30_combout\);

-- Location: LCCOMB_X38_Y34_N2
\Selector37~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~83_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \Selector37~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector37~30_combout\,
	combout => \Selector37~83_combout\);

-- Location: LCCOMB_X39_Y34_N18
\Selector37~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~34_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector37~33_combout\) # ((\Selector37~31_combout\) # (\Selector37~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~33_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector37~31_combout\,
	datad => \Selector37~83_combout\,
	combout => \Selector37~34_combout\);

-- Location: LCCOMB_X39_Y34_N0
\Selector37~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~35_combout\ = (\Selector37~29_combout\) # ((\Selector35~66_combout\ & ((\Selector37~87_combout\) # (\Selector37~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~87_combout\,
	datab => \Selector35~66_combout\,
	datac => \Selector37~29_combout\,
	datad => \Selector37~34_combout\,
	combout => \Selector37~35_combout\);

-- Location: LCCOMB_X39_Y35_N18
\Selector37~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~64_combout\ = (\Selector37~55_combout\) # ((\Selector37~35_combout\) # ((\scanStateVariable.LOAD6~q\ & \Selector37~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD6~q\,
	datab => \Selector37~63_combout\,
	datac => \Selector37~55_combout\,
	datad => \Selector37~35_combout\,
	combout => \Selector37~64_combout\);

-- Location: LCCOMB_X39_Y35_N16
\Selector37~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~73_combout\ = (\scanStateVariable.LOAD7~q\ & ((\Selector37~72_combout\) # ((\Selector37~66_combout\)))) # (!\scanStateVariable.LOAD7~q\ & (((\Selector37~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~72_combout\,
	datab => \Selector37~66_combout\,
	datac => \scanStateVariable.LOAD7~q\,
	datad => \Selector37~64_combout\,
	combout => \Selector37~73_combout\);

-- Location: LCCOMB_X39_Y35_N0
\screenAreaLatch[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[5]~3_combout\ = (\scanStateVariable.LOAD8~q\ & (\Selector37~82_combout\)) # (!\scanStateVariable.LOAD8~q\ & ((\Selector37~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~82_combout\,
	datab => \scanStateVariable.LOAD8~q\,
	datad => \Selector37~73_combout\,
	combout => \screenAreaLatch[5]~3_combout\);

-- Location: LCCOMB_X41_Y35_N2
\Selector38~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~95_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~95_combout\);

-- Location: LCCOMB_X41_Y35_N0
\Selector38~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~94_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~94_combout\);

-- Location: LCCOMB_X41_Y35_N28
\Selector38~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~96_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\ & \Selector38~94_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector38~95_combout\) # ((\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- \Selector38~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Selector38~95_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Selector38~94_combout\,
	combout => \Selector38~96_combout\);

-- Location: LCCOMB_X41_Y35_N22
\Selector38~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~97_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~97_combout\);

-- Location: LCCOMB_X41_Y35_N24
\Selector38~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~98_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~98_combout\);

-- Location: LCCOMB_X41_Y35_N26
\Selector38~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~99_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector38~97_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector38~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector38~97_combout\,
	datad => \Selector38~98_combout\,
	combout => \Selector38~99_combout\);

-- Location: LCCOMB_X41_Y35_N8
\Selector38~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~100_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~100_combout\);

-- Location: LCCOMB_X41_Y35_N10
\Selector38~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~101_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector34~133_combout\) # ((\CHANGE_CHAR_PROC:char_num[4]~q\ & \Selector38~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector38~100_combout\,
	datad => \Selector34~133_combout\,
	combout => \Selector38~101_combout\);

-- Location: LCCOMB_X41_Y35_N4
\Selector38~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~102_combout\ = (\Add0~0_combout\ & (((\Selector38~99_combout\) # (\Selector38~101_combout\)))) # (!\Add0~0_combout\ & (\Selector38~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~96_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector38~99_combout\,
	datad => \Selector38~101_combout\,
	combout => \Selector38~102_combout\);

-- Location: LCCOMB_X41_Y33_N24
\Selector38~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~32_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector38~32_combout\);

-- Location: LCCOMB_X41_Y33_N26
\Selector38~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~31_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector38~31_combout\);

-- Location: LCCOMB_X41_Y33_N22
\Selector38~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~110_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Selector38~32_combout\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Selector38~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \Selector38~32_combout\,
	datac => \Selector38~31_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector38~110_combout\);

-- Location: LCCOMB_X41_Y33_N8
\Selector38~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~45_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector38~45_combout\);

-- Location: LCCOMB_X41_Y33_N30
\Selector38~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~44_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector38~44_combout\);

-- Location: LCCOMB_X41_Y33_N16
\Selector36~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~73_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector36~73_combout\);

-- Location: LCCOMB_X41_Y33_N14
\Selector38~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~46_combout\ = (\Selector36~73_combout\ & ((\Selector38~45_combout\ & (!\Add0~0_combout\ & !\Selector38~44_combout\)) # (!\Selector38~45_combout\ & ((\Selector38~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector38~45_combout\,
	datac => \Selector38~44_combout\,
	datad => \Selector36~73_combout\,
	combout => \Selector38~46_combout\);

-- Location: LCCOMB_X41_Y33_N12
\Selector38~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~103_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((!\Add0~0_combout\) 
-- # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector38~103_combout\);

-- Location: LCCOMB_X41_Y33_N2
\Selector38~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~42_combout\ = (\Selector35~44_combout\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Add0~0_combout\,
	datad => \Selector35~44_combout\,
	combout => \Selector38~42_combout\);

-- Location: LCCOMB_X41_Y33_N20
\Selector38~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~43_combout\ = (\Selector35~68_combout\ & ((\Selector38~42_combout\) # ((\Selector38~103_combout\ & !\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~103_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector35~68_combout\,
	datad => \Selector38~42_combout\,
	combout => \Selector38~43_combout\);

-- Location: LCCOMB_X41_Y33_N28
\Selector38~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~47_combout\ = (\Selector34~57_combout\ & ((\Selector38~110_combout\) # ((\Selector38~46_combout\) # (\Selector38~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~110_combout\,
	datab => \Selector34~57_combout\,
	datac => \Selector38~46_combout\,
	datad => \Selector38~43_combout\,
	combout => \Selector38~47_combout\);

-- Location: LCCOMB_X41_Y36_N6
\Selector38~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~91_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\Add0~0_combout\ & \CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ 
-- (((!\CHANGE_CHAR_PROC:char_num[2]~q\ & \Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector38~91_combout\);

-- Location: LCCOMB_X40_Y36_N14
\Selector38~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~86_combout\ = (\Equal0~0_combout\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\Selector36~55_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector36~55_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector38~86_combout\);

-- Location: LCCOMB_X40_Y36_N2
\Selector38~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~89_combout\ = \CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~89_combout\);

-- Location: LCCOMB_X41_Y36_N26
\Selector38~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~87_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~87_combout\);

-- Location: LCCOMB_X40_Y36_N16
\Selector38~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~88_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector38~88_combout\);

-- Location: LCCOMB_X41_Y36_N14
\Selector38~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~105_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Selector38~87_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[6]~q\ & ((\Selector38~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \Selector38~87_combout\,
	datad => \Selector38~88_combout\,
	combout => \Selector38~105_combout\);

-- Location: LCCOMB_X41_Y36_N4
\Selector38~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~106_combout\ = (\Selector38~105_combout\) # ((\Selector38~89_combout\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \CHANGE_CHAR_PROC:char_num[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~89_combout\,
	datab => \Selector38~105_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Selector38~106_combout\);

-- Location: LCCOMB_X40_Y36_N10
\Selector38~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~111_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector38~111_combout\);

-- Location: LCCOMB_X41_Y36_N18
\Selector38~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~112_combout\ = (\Selector38~111_combout\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector38~111_combout\,
	combout => \Selector38~112_combout\);

-- Location: LCCOMB_X41_Y36_N28
\Selector38~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~90_combout\ = (\Selector38~86_combout\) # ((\Selector38~112_combout\) # ((\CHANGE_CHAR_PROC:char_num[4]~q\ & \Selector38~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~86_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector38~106_combout\,
	datad => \Selector38~112_combout\,
	combout => \Selector38~90_combout\);

-- Location: LCCOMB_X41_Y36_N0
\Selector38~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~92_combout\ = (\Selector38~90_combout\) # ((\Selector38~91_combout\ & (\Mux0~1_combout\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~91_combout\,
	datab => \Mux0~1_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector38~90_combout\,
	combout => \Selector38~92_combout\);

-- Location: LCCOMB_X37_Y33_N16
\Selector38~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~82_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # ((!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\ $ 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~82_combout\);

-- Location: LCCOMB_X37_Y33_N30
\Selector38~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~81_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector38~81_combout\);

-- Location: LCCOMB_X37_Y33_N26
\Selector38~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~83_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector38~82_combout\ & ((!\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector38~81_combout\) # (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector38~82_combout\,
	datac => \Selector38~81_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector38~83_combout\);

-- Location: LCCOMB_X37_Y33_N14
\Selector38~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~113_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~113_combout\);

-- Location: LCCOMB_X37_Y33_N4
\Selector38~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~114_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\Selector38~113_combout\ & !\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Selector38~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector38~113_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~114_combout\);

-- Location: LCCOMB_X37_Y33_N20
\Selector36~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~56_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector36~56_combout\);

-- Location: LCCOMB_X37_Y33_N22
\Selector38~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~107_combout\ = (\Selector36~56_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Selector36~56_combout\,
	combout => \Selector38~107_combout\);

-- Location: LCCOMB_X37_Y33_N2
\Selector38~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~79_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~79_combout\);

-- Location: LCCOMB_X37_Y33_N28
\Selector38~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~80_combout\ = (\Selector38~107_combout\) # ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \Selector38~79_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- !\Selector38~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector38~107_combout\,
	datad => \Selector38~79_combout\,
	combout => \Selector38~80_combout\);

-- Location: LCCOMB_X37_Y33_N24
\Selector38~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~84_combout\ = (\Selector38~83_combout\ & (((\Selector38~114_combout\)) # (!\Add0~0_combout\))) # (!\Selector38~83_combout\ & (\Add0~0_combout\ & ((\Selector38~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~83_combout\,
	datab => \Add0~0_combout\,
	datac => \Selector38~114_combout\,
	datad => \Selector38~80_combout\,
	combout => \Selector38~84_combout\);

-- Location: LCCOMB_X40_Y35_N8
\Selector38~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~19_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector38~19_combout\);

-- Location: LCCOMB_X40_Y35_N18
\Selector38~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~18_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\))))) 
-- # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector38~18_combout\);

-- Location: LCCOMB_X40_Y35_N14
\Selector38~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~108_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector38~19_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector38~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector38~19_combout\,
	datad => \Selector38~18_combout\,
	combout => \Selector38~108_combout\);

-- Location: LCCOMB_X40_Y35_N30
\Selector38~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~53_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector38~53_combout\);

-- Location: LCCOMB_X40_Y35_N0
\Selector38~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~52_combout\ = \CHANGE_CHAR_PROC:char_num[2]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~52_combout\);

-- Location: LCCOMB_X40_Y35_N4
\Selector38~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~54_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector38~52_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Selector38~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector38~53_combout\,
	datad => \Selector38~52_combout\,
	combout => \Selector38~54_combout\);

-- Location: LCCOMB_X40_Y35_N24
\Selector38~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~50_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & !\CHANGE_CHAR_PROC:char_num[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Selector38~50_combout\);

-- Location: LCCOMB_X40_Y35_N20
\Selector38~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~48_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~48_combout\);

-- Location: LCCOMB_X40_Y35_N26
\Selector38~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~49_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & \Selector38~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Selector38~48_combout\,
	combout => \Selector38~49_combout\);

-- Location: LCCOMB_X40_Y35_N2
\Selector38~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~51_combout\ = (\Selector38~49_combout\) # ((\Selector38~50_combout\ & ((\Selector35~28_combout\) # (\Selector34~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~28_combout\,
	datab => \Selector38~50_combout\,
	datac => \Selector38~49_combout\,
	datad => \Selector34~122_combout\,
	combout => \Selector38~51_combout\);

-- Location: LCCOMB_X40_Y35_N6
\Selector38~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~55_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector38~51_combout\) # ((\Selector38~54_combout\ & !\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Selector38~54_combout\ & (!\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Selector38~54_combout\,
	datac => \Add0~0_combout\,
	datad => \Selector38~51_combout\,
	combout => \Selector38~55_combout\);

-- Location: LCCOMB_X40_Y35_N12
\Selector38~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~56_combout\ = (\scanStateVariable.LOAD7~q\ & ((\Selector38~55_combout\) # ((\Selector36~54_combout\ & \Selector38~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~54_combout\,
	datab => \scanStateVariable.LOAD7~q\,
	datac => \Selector38~108_combout\,
	datad => \Selector38~55_combout\,
	combout => \Selector38~56_combout\);

-- Location: LCCOMB_X42_Y36_N22
\Selector38~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~23_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~23_combout\);

-- Location: LCCOMB_X42_Y36_N20
\Selector38~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~22_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~22_combout\);

-- Location: LCCOMB_X42_Y36_N0
\Selector38~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~109_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector38~23_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector38~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector38~23_combout\,
	datad => \Selector38~22_combout\,
	combout => \Selector38~109_combout\);

-- Location: LCCOMB_X42_Y36_N28
\Selector38~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~57_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~57_combout\);

-- Location: LCCOMB_X42_Y36_N26
\Selector38~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~58_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~58_combout\);

-- Location: LCCOMB_X42_Y36_N12
\Selector38~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~59_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Selector38~58_combout\ & !\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector38~57_combout\) # ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector38~57_combout\,
	datac => \Selector38~58_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector38~59_combout\);

-- Location: LCCOMB_X42_Y36_N4
\Selector38~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~61_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector38~61_combout\);

-- Location: LCCOMB_X42_Y36_N18
\Selector38~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~60_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector38~60_combout\);

-- Location: LCCOMB_X42_Y36_N6
\Selector38~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~62_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Selector38~60_combout\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector38~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector38~61_combout\,
	datad => \Selector38~60_combout\,
	combout => \Selector38~62_combout\);

-- Location: LCCOMB_X41_Y36_N20
\Selector38~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~63_combout\ = (\Add0~0_combout\ & ((\Selector38~59_combout\ & ((\Selector38~62_combout\))) # (!\Selector38~59_combout\ & (\Selector38~109_combout\)))) # (!\Add0~0_combout\ & (((\Selector38~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector38~109_combout\,
	datac => \Selector38~59_combout\,
	datad => \Selector38~62_combout\,
	combout => \Selector38~63_combout\);

-- Location: LCCOMB_X39_Y32_N22
\Selector38~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~65_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~65_combout\);

-- Location: LCCOMB_X39_Y32_N24
\Selector38~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~64_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[3]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~64_combout\);

-- Location: LCCOMB_X39_Y32_N28
\Selector38~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~66_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector38~64_combout\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Selector38~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector38~65_combout\,
	datad => \Selector38~64_combout\,
	combout => \Selector38~66_combout\);

-- Location: LCCOMB_X39_Y32_N18
\Selector38~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~73_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~73_combout\);

-- Location: LCCOMB_X39_Y32_N20
\Selector38~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~104_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector38~73_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\CHANGE_CHAR_PROC:char_num[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector38~73_combout\,
	combout => \Selector38~104_combout\);

-- Location: LCCOMB_X39_Y32_N8
\Selector38~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~74_combout\ = (\Selector34~137_combout\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \Selector34~137_combout\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector38~74_combout\);

-- Location: LCCOMB_X39_Y32_N6
\Selector38~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~75_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Selector37~21_combout\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Selector37~21_combout\,
	combout => \Selector38~75_combout\);

-- Location: LCCOMB_X39_Y32_N16
\Selector38~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~76_combout\ = (\Selector38~104_combout\) # ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector38~74_combout\) # (\Selector38~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector38~104_combout\,
	datac => \Selector38~74_combout\,
	datad => \Selector38~75_combout\,
	combout => \Selector38~76_combout\);

-- Location: LCCOMB_X40_Y32_N18
\Selector38~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~68_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector38~68_combout\);

-- Location: LCCOMB_X40_Y32_N12
\Selector38~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~69_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Selector38~68_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\CHANGE_CHAR_PROC:char_num[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Selector38~68_combout\,
	combout => \Selector38~69_combout\);

-- Location: LCCOMB_X40_Y32_N14
\Selector38~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~70_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector38~70_combout\);

-- Location: LCCOMB_X40_Y32_N20
\Selector38~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~67_combout\ = (\Equal0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Equal1~2_combout\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Equal1~2_combout\,
	datad => \Add0~0_combout\,
	combout => \Selector38~67_combout\);

-- Location: LCCOMB_X40_Y32_N4
\Selector38~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~71_combout\ = (\Selector38~69_combout\) # ((\Selector38~67_combout\) # ((\Selector38~40_combout\ & \Selector38~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~69_combout\,
	datab => \Selector38~40_combout\,
	datac => \Selector38~70_combout\,
	datad => \Selector38~67_combout\,
	combout => \Selector38~71_combout\);

-- Location: LCCOMB_X41_Y32_N16
\Selector38~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~115_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector38~115_combout\);

-- Location: LCCOMB_X41_Y32_N2
\Selector38~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~116_combout\ = (\Selector38~115_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Selector38~115_combout\,
	combout => \Selector38~116_combout\);

-- Location: LCCOMB_X40_Y32_N2
\Selector38~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~72_combout\ = (\scanStateVariable.LOAD2~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\)) # (!\scanStateVariable.LOAD2~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector38~116_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- (\Selector38~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector38~71_combout\,
	datad => \Selector38~116_combout\,
	combout => \Selector38~72_combout\);

-- Location: LCCOMB_X40_Y32_N0
\Selector38~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~77_combout\ = (\scanStateVariable.LOAD2~q\ & ((\Selector38~72_combout\ & ((\Selector38~76_combout\))) # (!\Selector38~72_combout\ & (\Selector38~66_combout\)))) # (!\scanStateVariable.LOAD2~q\ & (((\Selector38~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD2~q\,
	datab => \Selector38~66_combout\,
	datac => \Selector38~76_combout\,
	datad => \Selector38~72_combout\,
	combout => \Selector38~77_combout\);

-- Location: LCCOMB_X40_Y32_N10
\Selector38~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~78_combout\ = (\Selector34~55_combout\ & ((\Selector38~77_combout\) # ((\Selector34~89_combout\ & \Selector38~63_combout\)))) # (!\Selector34~55_combout\ & (\Selector34~89_combout\ & (\Selector38~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~55_combout\,
	datab => \Selector34~89_combout\,
	datac => \Selector38~63_combout\,
	datad => \Selector38~77_combout\,
	combout => \Selector38~78_combout\);

-- Location: LCCOMB_X40_Y32_N16
\Selector38~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~85_combout\ = (\Selector38~56_combout\) # ((\Selector38~78_combout\) # ((\Selector38~84_combout\ & \Selector34~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~84_combout\,
	datab => \Selector34~81_combout\,
	datac => \Selector38~56_combout\,
	datad => \Selector38~78_combout\,
	combout => \Selector38~85_combout\);

-- Location: LCCOMB_X40_Y32_N6
\Selector38~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~93_combout\ = (\Selector38~47_combout\) # ((\Selector38~85_combout\) # ((\Selector34~66_combout\ & \Selector38~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~47_combout\,
	datab => \Selector34~66_combout\,
	datac => \Selector38~92_combout\,
	datad => \Selector38~85_combout\,
	combout => \Selector38~93_combout\);

-- Location: LCCOMB_X40_Y32_N8
\screenAreaLatch[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screenAreaLatch[4]~4_combout\ = (\scanStateVariable.LOAD8~q\ & (\Selector38~102_combout\)) # (!\scanStateVariable.LOAD8~q\ & ((\Selector38~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~102_combout\,
	datab => \scanStateVariable.LOAD8~q\,
	datad => \Selector38~93_combout\,
	combout => \screenAreaLatch[4]~4_combout\);

-- Location: LCCOMB_X38_Y34_N8
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux0~1_combout\ & \Selector34~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Mux0~1_combout\,
	datad => \Selector34~56_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X40_Y34_N14
\Selector39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = (\scanStateVariable.LOAD4~q\) # ((\scanStateVariable.LOAD2~q\) # (!\scanStateVariable.LOAD1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD4~q\,
	datac => \scanStateVariable.LOAD2~q\,
	datad => \scanStateVariable.LOAD1~q\,
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X40_Y33_N28
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X40_Y33_N10
\Selector33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Mux3~0_combout\,
	combout => \Selector33~3_combout\);

-- Location: LCCOMB_X38_Y34_N22
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux4~0_combout\ & \Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X40_Y34_N0
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\scanStateVariable.LOAD7~q\ & ((\Mux4~2_combout\) # ((\scanStateVariable.LOAD3~q\ & \Selector33~3_combout\)))) # (!\scanStateVariable.LOAD7~q\ & (\scanStateVariable.LOAD3~q\ & (\Selector33~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD3~q\,
	datac => \Selector33~3_combout\,
	datad => \Mux4~2_combout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X42_Y34_N10
WideOr16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr16~combout\ = (((!\WideOr4~1_combout\) # (!\WideOr4~0_combout\)) # (!\WideOr13~1_combout\)) # (!\WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~0_combout\,
	datab => \WideOr13~1_combout\,
	datac => \WideOr4~0_combout\,
	datad => \WideOr4~1_combout\,
	combout => \WideOr16~combout\);

-- Location: LCCOMB_X39_Y34_N16
\Selector39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (screenAreaLatch(3) & ((\WideOr16~combout\) # ((!\LessThan8~1_combout\ & \WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(3),
	datab => \LessThan8~1_combout\,
	datac => \WideOr16~combout\,
	datad => \WideOr4~5_combout\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X39_Y34_N22
\Selector39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~3_combout\ = (\Selector39~0_combout\) # ((\Selector39~1_combout\) # ((\Mux0~0_combout\ & \Selector39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Selector39~2_combout\,
	datac => \Selector39~0_combout\,
	datad => \Selector39~1_combout\,
	combout => \Selector39~3_combout\);

-- Location: FF_X39_Y34_N23
\screenAreaLatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector39~3_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(3));

-- Location: LCCOMB_X43_Y34_N2
\serial_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~1_combout\ = ((\LessThan8~0_combout\) # ((!\scanStateVariable.SHIFT6~q\ & !\scanStateVariable.SHIFT5~q\))) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.SHIFT6~q\,
	datac => \scanStateVariable.SHIFT5~q\,
	datad => \LessThan8~0_combout\,
	combout => \serial_data~1_combout\);

-- Location: LCCOMB_X43_Y34_N18
\serial_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~2_combout\ = (\serial_data~1_combout\ & ((\LessThan8~1_combout\) # ((!\scanStateVariable.SHIFT3~q\ & !\scanStateVariable.SHIFT4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT3~q\,
	datab => \scanStateVariable.SHIFT4~q\,
	datac => \LessThan8~1_combout\,
	datad => \serial_data~1_combout\,
	combout => \serial_data~2_combout\);

-- Location: LCCOMB_X42_Y34_N8
\serial_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~0_combout\ = (!\WideOr16~combout\ & ((\LessThan8~1_combout\) # ((!\scanStateVariable.SHIFT8~q\ & !\scanStateVariable.SHIFT7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.SHIFT8~q\,
	datab => \scanStateVariable.SHIFT7~q\,
	datac => \LessThan8~1_combout\,
	datad => \WideOr16~combout\,
	combout => \serial_data~0_combout\);

-- Location: LCCOMB_X42_Y35_N12
\serial_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~3_combout\ = ((\LessThan8~0_combout\) # ((!\scanStateVariable.SHIFT2~q\ & !\scanStateVariable.SHIFT1~q\))) # (!\LINE_SACN_PROC:registerSerialData[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE_SACN_PROC:registerSerialData[4]~q\,
	datab => \scanStateVariable.SHIFT2~q\,
	datac => \scanStateVariable.SHIFT1~q\,
	datad => \LessThan8~0_combout\,
	combout => \serial_data~3_combout\);

-- Location: LCCOMB_X42_Y34_N2
\serial_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serial_data~4_combout\ = (\CPU_RESETN~input_o\ & (\serial_data~2_combout\ & (\serial_data~0_combout\ & \serial_data~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_RESETN~input_o\,
	datab => \serial_data~2_combout\,
	datac => \serial_data~0_combout\,
	datad => \serial_data~3_combout\,
	combout => \serial_data~4_combout\);

-- Location: FF_X40_Y32_N9
\screenAreaLatch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \screenAreaLatch[4]~4_combout\,
	asdata => screenAreaLatch(3),
	sload => \Selector8~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(4));

-- Location: FF_X39_Y35_N1
\screenAreaLatch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \screenAreaLatch[5]~3_combout\,
	asdata => screenAreaLatch(4),
	sload => \Selector8~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(5));

-- Location: FF_X39_Y37_N9
\screenAreaLatch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \screenAreaLatch[6]~feeder_combout\,
	asdata => screenAreaLatch(5),
	sload => \Selector8~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(6));

-- Location: FF_X38_Y37_N9
\screenAreaLatch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \screenAreaLatch[7]~1_combout\,
	asdata => screenAreaLatch(6),
	sload => \Selector8~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(7));

-- Location: FF_X37_Y34_N29
\screenAreaLatch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \screenAreaLatch[8]~0_combout\,
	asdata => screenAreaLatch(7),
	sload => \Selector8~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(8));

-- Location: LCCOMB_X38_Y32_N12
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\WideOr4~5_combout\ & ((\LessThan8~1_combout\ & ((screenAreaLatch(8)))) # (!\LessThan8~1_combout\ & (screenAreaLatch(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => screenAreaLatch(9),
	datac => screenAreaLatch(8),
	datad => \WideOr4~5_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X39_Y34_N30
\Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\Mux0~0_combout\ & (((\scanStateVariable.LOAD2~q\) # (\scanStateVariable.LOAD3~q\)) # (!\scanStateVariable.LOAD1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD1~q\,
	datab => \scanStateVariable.LOAD2~q\,
	datac => \scanStateVariable.LOAD3~q\,
	datad => \Mux0~0_combout\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X40_Y34_N24
\Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\Mux4~2_combout\ & ((\scanStateVariable.LOAD7~q\) # ((\scanStateVariable.LOAD6~q\) # (\scanStateVariable.LOAD5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scanStateVariable.LOAD7~q\,
	datab => \scanStateVariable.LOAD6~q\,
	datac => \scanStateVariable.LOAD5~q\,
	datad => \Mux4~2_combout\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X39_Y34_N28
\Selector33~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~4_combout\ = (\Selector33~1_combout\) # ((\Selector33~2_combout\) # ((\Selector33~3_combout\ & \scanStateVariable.LOAD4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~3_combout\,
	datab => \scanStateVariable.LOAD4~q\,
	datac => \Selector33~1_combout\,
	datad => \Selector33~2_combout\,
	combout => \Selector33~4_combout\);

-- Location: LCCOMB_X38_Y32_N10
\Selector33~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~5_combout\ = (\Selector33~0_combout\) # ((\Selector33~4_combout\) # ((\WideOr16~combout\ & screenAreaLatch(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \WideOr16~combout\,
	datac => screenAreaLatch(9),
	datad => \Selector33~4_combout\,
	combout => \Selector33~5_combout\);

-- Location: FF_X38_Y32_N11
\screenAreaLatch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector33~5_combout\,
	ena => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(9));

-- Location: LCCOMB_X41_Y34_N2
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (screenAreaLatch(9) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(9),
	datad => \Selector8~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X41_Y34_N3
\screenAreaLatch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(10));

-- Location: LCCOMB_X41_Y34_N6
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (screenAreaLatch(10) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(10),
	datad => \Selector8~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X41_Y34_N7
\screenAreaLatch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(11));

-- Location: LCCOMB_X41_Y34_N8
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (screenAreaLatch(11) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(11),
	datad => \Selector8~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X41_Y34_N9
\screenAreaLatch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector30~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(12));

-- Location: LCCOMB_X41_Y34_N30
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (screenAreaLatch(12) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(12),
	datad => \Selector8~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X41_Y34_N31
\screenAreaLatch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector29~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(13));

-- Location: LCCOMB_X41_Y34_N12
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (screenAreaLatch(13) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(13),
	datad => \Selector8~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X41_Y34_N13
\screenAreaLatch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector28~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(14));

-- Location: LCCOMB_X41_Y34_N14
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (screenAreaLatch(14) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(14),
	datad => \Selector8~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X41_Y34_N15
\screenAreaLatch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(15));

-- Location: LCCOMB_X41_Y34_N4
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (screenAreaLatch(15) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(15),
	datad => \Selector8~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X41_Y34_N5
\screenAreaLatch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(16));

-- Location: LCCOMB_X42_Y34_N22
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (screenAreaLatch(16) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(16),
	datad => \Selector8~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X42_Y34_N23
\screenAreaLatch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(17));

-- Location: LCCOMB_X42_Y34_N0
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (screenAreaLatch(17) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(17),
	datad => \Selector8~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X42_Y34_N1
\screenAreaLatch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(18));

-- Location: LCCOMB_X42_Y34_N30
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (screenAreaLatch(18) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(18),
	datad => \Selector8~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X42_Y34_N31
\screenAreaLatch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(19));

-- Location: LCCOMB_X42_Y34_N28
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (screenAreaLatch(19) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(19),
	datad => \Selector8~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X42_Y34_N29
\screenAreaLatch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(20));

-- Location: LCCOMB_X42_Y34_N26
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (screenAreaLatch(20) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(20),
	datad => \Selector8~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X42_Y34_N27
\screenAreaLatch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(21));

-- Location: LCCOMB_X42_Y34_N20
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (screenAreaLatch(21) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(21),
	datad => \Selector8~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X42_Y34_N21
\screenAreaLatch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(22));

-- Location: LCCOMB_X41_Y34_N18
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (screenAreaLatch(22) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => screenAreaLatch(22),
	datad => \Selector8~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X41_Y34_N19
\screenAreaLatch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(23));

-- Location: LCCOMB_X41_Y34_N0
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (screenAreaLatch(23) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(23),
	datad => \Selector8~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X41_Y34_N1
\screenAreaLatch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(24));

-- Location: LCCOMB_X41_Y34_N10
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (screenAreaLatch(24) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(24),
	datad => \Selector8~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X41_Y34_N11
\screenAreaLatch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(25));

-- Location: LCCOMB_X41_Y32_N22
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (screenAreaLatch(25) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(25),
	datad => \Selector8~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X41_Y32_N23
\screenAreaLatch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(26));

-- Location: LCCOMB_X41_Y32_N8
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (screenAreaLatch(26) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(26),
	datad => \Selector8~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X41_Y32_N9
\screenAreaLatch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(27));

-- Location: LCCOMB_X41_Y32_N18
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (screenAreaLatch(27) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(27),
	datad => \Selector8~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X41_Y32_N19
\screenAreaLatch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(28));

-- Location: LCCOMB_X41_Y32_N28
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (screenAreaLatch(28) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(28),
	datad => \Selector8~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X41_Y32_N29
\screenAreaLatch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(29));

-- Location: LCCOMB_X41_Y32_N14
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (screenAreaLatch(29) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => screenAreaLatch(29),
	datad => \Selector8~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X41_Y32_N15
\screenAreaLatch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(30));

-- Location: LCCOMB_X41_Y32_N12
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (screenAreaLatch(30) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(30),
	datad => \Selector8~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X41_Y32_N13
\screenAreaLatch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \serial_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => screenAreaLatch(31));

-- Location: LCCOMB_X41_Y32_N20
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (screenAreaLatch(31) & \Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => screenAreaLatch(31),
	datad => \Selector8~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X41_Y32_N21
serial_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shiftRegisterClk~clkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \serial_data~4_combout\,
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


