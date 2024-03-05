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

-- DATE "02/19/2024 15:48:56"

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

ENTITY 	dotmatrix_4x4_driver IS
    PORT (
	CLK : IN std_logic;
	LEDR : OUT std_logic_vector(0 TO 9);
	GPIO : OUT std_logic_vector(0 TO 22)
	);
END dotmatrix_4x4_driver;

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
-- GPIO[22]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dotmatrix_4x4_driver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 TO 9);
SIGNAL ww_GPIO : std_logic_vector(0 TO 22);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CHAR_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCAN_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \GPIO[22]~output_o\ : std_logic;
SIGNAL \GPIO[21]~output_o\ : std_logic;
SIGNAL \GPIO[20]~output_o\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \char_counter[0]~25_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \char_counter[0]~26\ : std_logic;
SIGNAL \char_counter[1]~27_combout\ : std_logic;
SIGNAL \char_counter[1]~28\ : std_logic;
SIGNAL \char_counter[2]~29_combout\ : std_logic;
SIGNAL \char_counter[2]~30\ : std_logic;
SIGNAL \char_counter[3]~31_combout\ : std_logic;
SIGNAL \char_counter[3]~32\ : std_logic;
SIGNAL \char_counter[4]~33_combout\ : std_logic;
SIGNAL \char_counter[4]~34\ : std_logic;
SIGNAL \char_counter[5]~35_combout\ : std_logic;
SIGNAL \char_counter[5]~36\ : std_logic;
SIGNAL \char_counter[6]~37_combout\ : std_logic;
SIGNAL \char_counter[6]~38\ : std_logic;
SIGNAL \char_counter[7]~39_combout\ : std_logic;
SIGNAL \char_counter[7]~40\ : std_logic;
SIGNAL \char_counter[8]~41_combout\ : std_logic;
SIGNAL \char_counter[8]~42\ : std_logic;
SIGNAL \char_counter[9]~43_combout\ : std_logic;
SIGNAL \char_counter[9]~44\ : std_logic;
SIGNAL \char_counter[10]~45_combout\ : std_logic;
SIGNAL \char_counter[10]~46\ : std_logic;
SIGNAL \char_counter[11]~47_combout\ : std_logic;
SIGNAL \char_counter[11]~48\ : std_logic;
SIGNAL \char_counter[12]~49_combout\ : std_logic;
SIGNAL \char_counter[12]~50\ : std_logic;
SIGNAL \char_counter[13]~51_combout\ : std_logic;
SIGNAL \char_counter[13]~52\ : std_logic;
SIGNAL \char_counter[14]~53_combout\ : std_logic;
SIGNAL \char_counter[14]~54\ : std_logic;
SIGNAL \char_counter[15]~55_combout\ : std_logic;
SIGNAL \char_counter[15]~56\ : std_logic;
SIGNAL \char_counter[16]~57_combout\ : std_logic;
SIGNAL \char_counter[16]~58\ : std_logic;
SIGNAL \char_counter[17]~59_combout\ : std_logic;
SIGNAL \char_counter[17]~60\ : std_logic;
SIGNAL \char_counter[18]~61_combout\ : std_logic;
SIGNAL \char_counter[18]~62\ : std_logic;
SIGNAL \char_counter[19]~63_combout\ : std_logic;
SIGNAL \char_counter[19]~64\ : std_logic;
SIGNAL \char_counter[20]~65_combout\ : std_logic;
SIGNAL \char_counter[20]~66\ : std_logic;
SIGNAL \char_counter[21]~67_combout\ : std_logic;
SIGNAL \char_counter[21]~68\ : std_logic;
SIGNAL \char_counter[22]~69_combout\ : std_logic;
SIGNAL \char_counter[22]~70\ : std_logic;
SIGNAL \char_counter[23]~71_combout\ : std_logic;
SIGNAL \char_counter[23]~72\ : std_logic;
SIGNAL \char_counter[24]~73_combout\ : std_logic;
SIGNAL \CHAR_CLK~0_combout\ : std_logic;
SIGNAL \CHAR_CLK~feeder_combout\ : std_logic;
SIGNAL \CHAR_CLK~q\ : std_logic;
SIGNAL \scan_counter[0]~15_combout\ : std_logic;
SIGNAL \scan_counter[13]~42\ : std_logic;
SIGNAL \scan_counter[14]~43_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \scan_counter[0]~16\ : std_logic;
SIGNAL \scan_counter[1]~17_combout\ : std_logic;
SIGNAL \scan_counter[1]~18\ : std_logic;
SIGNAL \scan_counter[2]~19_combout\ : std_logic;
SIGNAL \scan_counter[2]~20\ : std_logic;
SIGNAL \scan_counter[3]~21_combout\ : std_logic;
SIGNAL \scan_counter[3]~22\ : std_logic;
SIGNAL \scan_counter[4]~23_combout\ : std_logic;
SIGNAL \scan_counter[4]~24\ : std_logic;
SIGNAL \scan_counter[5]~25_combout\ : std_logic;
SIGNAL \scan_counter[5]~26\ : std_logic;
SIGNAL \scan_counter[6]~27_combout\ : std_logic;
SIGNAL \scan_counter[6]~28\ : std_logic;
SIGNAL \scan_counter[7]~29_combout\ : std_logic;
SIGNAL \scan_counter[7]~30\ : std_logic;
SIGNAL \scan_counter[8]~31_combout\ : std_logic;
SIGNAL \scan_counter[8]~32\ : std_logic;
SIGNAL \scan_counter[9]~33_combout\ : std_logic;
SIGNAL \scan_counter[9]~34\ : std_logic;
SIGNAL \scan_counter[10]~35_combout\ : std_logic;
SIGNAL \scan_counter[10]~36\ : std_logic;
SIGNAL \scan_counter[11]~37_combout\ : std_logic;
SIGNAL \scan_counter[11]~38\ : std_logic;
SIGNAL \scan_counter[12]~39_combout\ : std_logic;
SIGNAL \scan_counter[12]~40\ : std_logic;
SIGNAL \scan_counter[13]~41_combout\ : std_logic;
SIGNAL \SCAN_CLK~0_combout\ : std_logic;
SIGNAL \SCAN_CLK~feeder_combout\ : std_logic;
SIGNAL \SCAN_CLK~q\ : std_logic;
SIGNAL \SCAN_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \CHAR_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[0]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[0]~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[0]~q\ : std_logic;
SIGNAL \Selector1~23_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[3]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[3]~q\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[6]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[6]~q\ : std_logic;
SIGNAL \Add3~16\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[7]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[7]~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~3_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~2_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~5_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC~4_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[1]~q\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[2]~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[5]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[5]~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[5]~q\ : std_logic;
SIGNAL \char_num~0_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[4]~0_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[4]~1_combout\ : std_logic;
SIGNAL \CHANGE_CHAR_PROC:char_num[4]~q\ : std_logic;
SIGNAL \state_variable.LOAD1~0_combout\ : std_logic;
SIGNAL \state_variable.LOAD1~q\ : std_logic;
SIGNAL \state_variable.ROW1~0_combout\ : std_logic;
SIGNAL \state_variable.ROW1~q\ : std_logic;
SIGNAL \state_variable.LOAD2~q\ : std_logic;
SIGNAL \state_variable.ROW2~feeder_combout\ : std_logic;
SIGNAL \state_variable.ROW2~q\ : std_logic;
SIGNAL \state_variable.LOAD3~q\ : std_logic;
SIGNAL \state_variable.ROW3~feeder_combout\ : std_logic;
SIGNAL \state_variable.ROW3~q\ : std_logic;
SIGNAL \state_variable.LOAD4~feeder_combout\ : std_logic;
SIGNAL \state_variable.LOAD4~q\ : std_logic;
SIGNAL \state_variable.ROW4~q\ : std_logic;
SIGNAL \state_variable.LOAD5~feeder_combout\ : std_logic;
SIGNAL \state_variable.LOAD5~q\ : std_logic;
SIGNAL \state_variable.ROW5~feeder_combout\ : std_logic;
SIGNAL \state_variable.ROW5~q\ : std_logic;
SIGNAL \state_variable.LOAD6~q\ : std_logic;
SIGNAL \state_variable.ROW6~q\ : std_logic;
SIGNAL \state_variable.LOAD7~feeder_combout\ : std_logic;
SIGNAL \state_variable.LOAD7~q\ : std_logic;
SIGNAL \state_variable.ROW7~feeder_combout\ : std_logic;
SIGNAL \state_variable.ROW7~q\ : std_logic;
SIGNAL \state_variable.LOAD8~feeder_combout\ : std_logic;
SIGNAL \state_variable.LOAD8~q\ : std_logic;
SIGNAL \state_variable.ROW8~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Selector1~28_combout\ : std_logic;
SIGNAL \Selector1~29_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Selector1~26_combout\ : std_logic;
SIGNAL \Selector1~27_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \Selector1~7_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Selector1~8_combout\ : std_logic;
SIGNAL \Selector1~9_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Selector1~24_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Selector1~11_combout\ : std_logic;
SIGNAL \Selector1~10_combout\ : std_logic;
SIGNAL \Selector1~12_combout\ : std_logic;
SIGNAL \Selector1~25_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Selector1~19_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Selector1~13_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Selector1~18_combout\ : std_logic;
SIGNAL \Selector1~14_combout\ : std_logic;
SIGNAL \Selector1~15_combout\ : std_logic;
SIGNAL \Selector1~16_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Selector1~17_combout\ : std_logic;
SIGNAL \Selector1~20_combout\ : std_logic;
SIGNAL \Selector1~21_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Selector2~21_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Selector2~19_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Selector2~18_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Selector2~16_combout\ : std_logic;
SIGNAL \Selector2~17_combout\ : std_logic;
SIGNAL \Selector2~20_combout\ : std_logic;
SIGNAL \Selector2~22_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Selector2~7_combout\ : std_logic;
SIGNAL \Selector2~8_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Selector2~13_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Selector2~12_combout\ : std_logic;
SIGNAL \Selector2~9_combout\ : std_logic;
SIGNAL \Selector2~10_combout\ : std_logic;
SIGNAL \Selector2~11_combout\ : std_logic;
SIGNAL \Selector2~14_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector2~15_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~23_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Selector3~12_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \Selector3~9_combout\ : std_logic;
SIGNAL \Selector3~10_combout\ : std_logic;
SIGNAL \Selector3~11_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Selector3~13_combout\ : std_logic;
SIGNAL \Selector3~14_combout\ : std_logic;
SIGNAL \Selector3~15_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Selector3~16_combout\ : std_logic;
SIGNAL \Selector3~17_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \Selector3~18_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Selector4~11_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Selector4~12_combout\ : std_logic;
SIGNAL \Selector4~9_combout\ : std_logic;
SIGNAL \Selector4~10_combout\ : std_logic;
SIGNAL \Selector4~13_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Selector1~22_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Selector4~6_combout\ : std_logic;
SIGNAL \Selector4~7_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector4~8_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Selector4~21_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Selector4~14_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Selector4~15_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Selector4~16_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Selector4~17_combout\ : std_logic;
SIGNAL \Selector4~18_combout\ : std_logic;
SIGNAL \Selector4~19_combout\ : std_logic;
SIGNAL \Selector4~20_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Selector5~13_combout\ : std_logic;
SIGNAL \Selector5~14_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Selector5~7_combout\ : std_logic;
SIGNAL \Selector5~8_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Selector5~9_combout\ : std_logic;
SIGNAL \Selector5~10_combout\ : std_logic;
SIGNAL \Selector5~11_combout\ : std_logic;
SIGNAL \Selector5~12_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Mux36~6_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Mux36~7_combout\ : std_logic;
SIGNAL \Mux37~7_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \Mux37~6_combout\ : std_logic;
SIGNAL \Mux37~12_combout\ : std_logic;
SIGNAL \Mux37~8_combout\ : std_logic;
SIGNAL \Mux37~10_combout\ : std_logic;
SIGNAL \Mux37~9_combout\ : std_logic;
SIGNAL \Mux37~13_combout\ : std_logic;
SIGNAL \Mux37~11_combout\ : std_logic;
SIGNAL \Selector5~17_combout\ : std_logic;
SIGNAL \Selector5~18_combout\ : std_logic;
SIGNAL \Selector5~19_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~6_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux38~5_combout\ : std_logic;
SIGNAL \Mux38~7_combout\ : std_logic;
SIGNAL \Selector5~21_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \Selector5~15_combout\ : std_logic;
SIGNAL \Selector5~16_combout\ : std_logic;
SIGNAL \Selector5~20_combout\ : std_logic;
SIGNAL \row_driver[4]~feeder_combout\ : std_logic;
SIGNAL char_counter : std_logic_vector(24 DOWNTO 0);
SIGNAL scan_counter : std_logic_vector(14 DOWNTO 0);
SIGNAL column_driver : std_logic_vector(7 DOWNTO 0);
SIGNAL row_driver : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
LEDR <= ww_LEDR;
GPIO <= ww_GPIO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CHAR_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CHAR_CLK~q\);

\SCAN_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCAN_CLK~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X34_Y0_N23
\GPIO[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => column_driver(7),
	devoe => ww_devoe,
	o => \GPIO[22]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\GPIO[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[21]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\GPIO[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => column_driver(6),
	devoe => ww_devoe,
	o => \GPIO[20]~output_o\);

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
	i => column_driver(5),
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
	i => column_driver(4),
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
	i => column_driver(3),
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
	i => column_driver(2),
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
	i => GND,
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
	i => GND,
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
	i => row_driver(7),
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
	i => row_driver(6),
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
	i => row_driver(5),
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y51_N8
\char_counter[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[0]~25_combout\ = char_counter(0) $ (VCC)
-- \char_counter[0]~26\ = CARRY(char_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char_counter(0),
	datad => VCC,
	combout => \char_counter[0]~25_combout\,
	cout => \char_counter[0]~26\);

-- Location: LCCOMB_X45_Y50_N30
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!char_counter(17) & !char_counter(16))) # (!char_counter(18))) # (!char_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(17),
	datab => char_counter(16),
	datac => char_counter(19),
	datad => char_counter(18),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y50_N28
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((\LessThan1~0_combout\) # (!char_counter(22))) # (!char_counter(21))) # (!char_counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(20),
	datab => char_counter(21),
	datac => \LessThan1~0_combout\,
	datad => char_counter(22),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y51_N4
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!char_counter(9) & (!char_counter(6) & (!char_counter(7) & !char_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(9),
	datab => char_counter(6),
	datac => char_counter(7),
	datad => char_counter(8),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X45_Y50_N26
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!char_counter(13)) # (!char_counter(14))) # (!char_counter(12))) # (!char_counter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(11),
	datab => char_counter(12),
	datac => char_counter(14),
	datad => char_counter(13),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y51_N6
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~2_combout\) # ((!char_counter(10) & \LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char_counter(10),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X45_Y51_N0
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~1_combout\) # ((!char_counter(15) & (!char_counter(17) & \LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => char_counter(15),
	datac => char_counter(17),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X45_Y51_N2
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (char_counter(24) & ((char_counter(23)) # (!\LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char_counter(24),
	datac => char_counter(23),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: FF_X45_Y51_N9
\char_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[0]~25_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(0));

-- Location: LCCOMB_X45_Y51_N10
\char_counter[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[1]~27_combout\ = (char_counter(1) & (!\char_counter[0]~26\)) # (!char_counter(1) & ((\char_counter[0]~26\) # (GND)))
-- \char_counter[1]~28\ = CARRY((!\char_counter[0]~26\) # (!char_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(1),
	datad => VCC,
	cin => \char_counter[0]~26\,
	combout => \char_counter[1]~27_combout\,
	cout => \char_counter[1]~28\);

-- Location: FF_X45_Y51_N11
\char_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[1]~27_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(1));

-- Location: LCCOMB_X45_Y51_N12
\char_counter[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[2]~29_combout\ = (char_counter(2) & (\char_counter[1]~28\ $ (GND))) # (!char_counter(2) & (!\char_counter[1]~28\ & VCC))
-- \char_counter[2]~30\ = CARRY((char_counter(2) & !\char_counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(2),
	datad => VCC,
	cin => \char_counter[1]~28\,
	combout => \char_counter[2]~29_combout\,
	cout => \char_counter[2]~30\);

-- Location: FF_X45_Y51_N13
\char_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[2]~29_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(2));

-- Location: LCCOMB_X45_Y51_N14
\char_counter[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[3]~31_combout\ = (char_counter(3) & (!\char_counter[2]~30\)) # (!char_counter(3) & ((\char_counter[2]~30\) # (GND)))
-- \char_counter[3]~32\ = CARRY((!\char_counter[2]~30\) # (!char_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(3),
	datad => VCC,
	cin => \char_counter[2]~30\,
	combout => \char_counter[3]~31_combout\,
	cout => \char_counter[3]~32\);

-- Location: FF_X45_Y51_N15
\char_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[3]~31_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(3));

-- Location: LCCOMB_X45_Y51_N16
\char_counter[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[4]~33_combout\ = (char_counter(4) & (\char_counter[3]~32\ $ (GND))) # (!char_counter(4) & (!\char_counter[3]~32\ & VCC))
-- \char_counter[4]~34\ = CARRY((char_counter(4) & !\char_counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(4),
	datad => VCC,
	cin => \char_counter[3]~32\,
	combout => \char_counter[4]~33_combout\,
	cout => \char_counter[4]~34\);

-- Location: FF_X45_Y51_N17
\char_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[4]~33_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(4));

-- Location: LCCOMB_X45_Y51_N18
\char_counter[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[5]~35_combout\ = (char_counter(5) & (!\char_counter[4]~34\)) # (!char_counter(5) & ((\char_counter[4]~34\) # (GND)))
-- \char_counter[5]~36\ = CARRY((!\char_counter[4]~34\) # (!char_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(5),
	datad => VCC,
	cin => \char_counter[4]~34\,
	combout => \char_counter[5]~35_combout\,
	cout => \char_counter[5]~36\);

-- Location: FF_X45_Y51_N19
\char_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[5]~35_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(5));

-- Location: LCCOMB_X45_Y51_N20
\char_counter[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[6]~37_combout\ = (char_counter(6) & (\char_counter[5]~36\ $ (GND))) # (!char_counter(6) & (!\char_counter[5]~36\ & VCC))
-- \char_counter[6]~38\ = CARRY((char_counter(6) & !\char_counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(6),
	datad => VCC,
	cin => \char_counter[5]~36\,
	combout => \char_counter[6]~37_combout\,
	cout => \char_counter[6]~38\);

-- Location: FF_X45_Y51_N21
\char_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[6]~37_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(6));

-- Location: LCCOMB_X45_Y51_N22
\char_counter[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[7]~39_combout\ = (char_counter(7) & (!\char_counter[6]~38\)) # (!char_counter(7) & ((\char_counter[6]~38\) # (GND)))
-- \char_counter[7]~40\ = CARRY((!\char_counter[6]~38\) # (!char_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(7),
	datad => VCC,
	cin => \char_counter[6]~38\,
	combout => \char_counter[7]~39_combout\,
	cout => \char_counter[7]~40\);

-- Location: FF_X45_Y51_N23
\char_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[7]~39_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(7));

-- Location: LCCOMB_X45_Y51_N24
\char_counter[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[8]~41_combout\ = (char_counter(8) & (\char_counter[7]~40\ $ (GND))) # (!char_counter(8) & (!\char_counter[7]~40\ & VCC))
-- \char_counter[8]~42\ = CARRY((char_counter(8) & !\char_counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(8),
	datad => VCC,
	cin => \char_counter[7]~40\,
	combout => \char_counter[8]~41_combout\,
	cout => \char_counter[8]~42\);

-- Location: FF_X45_Y51_N25
\char_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[8]~41_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(8));

-- Location: LCCOMB_X45_Y51_N26
\char_counter[9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[9]~43_combout\ = (char_counter(9) & (!\char_counter[8]~42\)) # (!char_counter(9) & ((\char_counter[8]~42\) # (GND)))
-- \char_counter[9]~44\ = CARRY((!\char_counter[8]~42\) # (!char_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(9),
	datad => VCC,
	cin => \char_counter[8]~42\,
	combout => \char_counter[9]~43_combout\,
	cout => \char_counter[9]~44\);

-- Location: FF_X45_Y51_N27
\char_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[9]~43_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(9));

-- Location: LCCOMB_X45_Y51_N28
\char_counter[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[10]~45_combout\ = (char_counter(10) & (\char_counter[9]~44\ $ (GND))) # (!char_counter(10) & (!\char_counter[9]~44\ & VCC))
-- \char_counter[10]~46\ = CARRY((char_counter(10) & !\char_counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(10),
	datad => VCC,
	cin => \char_counter[9]~44\,
	combout => \char_counter[10]~45_combout\,
	cout => \char_counter[10]~46\);

-- Location: FF_X45_Y51_N29
\char_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[10]~45_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(10));

-- Location: LCCOMB_X45_Y51_N30
\char_counter[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[11]~47_combout\ = (char_counter(11) & (!\char_counter[10]~46\)) # (!char_counter(11) & ((\char_counter[10]~46\) # (GND)))
-- \char_counter[11]~48\ = CARRY((!\char_counter[10]~46\) # (!char_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(11),
	datad => VCC,
	cin => \char_counter[10]~46\,
	combout => \char_counter[11]~47_combout\,
	cout => \char_counter[11]~48\);

-- Location: FF_X45_Y51_N31
\char_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[11]~47_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(11));

-- Location: LCCOMB_X45_Y50_N0
\char_counter[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[12]~49_combout\ = (char_counter(12) & (\char_counter[11]~48\ $ (GND))) # (!char_counter(12) & (!\char_counter[11]~48\ & VCC))
-- \char_counter[12]~50\ = CARRY((char_counter(12) & !\char_counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(12),
	datad => VCC,
	cin => \char_counter[11]~48\,
	combout => \char_counter[12]~49_combout\,
	cout => \char_counter[12]~50\);

-- Location: FF_X45_Y50_N1
\char_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[12]~49_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(12));

-- Location: LCCOMB_X45_Y50_N2
\char_counter[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[13]~51_combout\ = (char_counter(13) & (!\char_counter[12]~50\)) # (!char_counter(13) & ((\char_counter[12]~50\) # (GND)))
-- \char_counter[13]~52\ = CARRY((!\char_counter[12]~50\) # (!char_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(13),
	datad => VCC,
	cin => \char_counter[12]~50\,
	combout => \char_counter[13]~51_combout\,
	cout => \char_counter[13]~52\);

-- Location: FF_X45_Y50_N3
\char_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[13]~51_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(13));

-- Location: LCCOMB_X45_Y50_N4
\char_counter[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[14]~53_combout\ = (char_counter(14) & (\char_counter[13]~52\ $ (GND))) # (!char_counter(14) & (!\char_counter[13]~52\ & VCC))
-- \char_counter[14]~54\ = CARRY((char_counter(14) & !\char_counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(14),
	datad => VCC,
	cin => \char_counter[13]~52\,
	combout => \char_counter[14]~53_combout\,
	cout => \char_counter[14]~54\);

-- Location: FF_X45_Y50_N5
\char_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[14]~53_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(14));

-- Location: LCCOMB_X45_Y50_N6
\char_counter[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[15]~55_combout\ = (char_counter(15) & (!\char_counter[14]~54\)) # (!char_counter(15) & ((\char_counter[14]~54\) # (GND)))
-- \char_counter[15]~56\ = CARRY((!\char_counter[14]~54\) # (!char_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(15),
	datad => VCC,
	cin => \char_counter[14]~54\,
	combout => \char_counter[15]~55_combout\,
	cout => \char_counter[15]~56\);

-- Location: FF_X45_Y50_N7
\char_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[15]~55_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(15));

-- Location: LCCOMB_X45_Y50_N8
\char_counter[16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[16]~57_combout\ = (char_counter(16) & (\char_counter[15]~56\ $ (GND))) # (!char_counter(16) & (!\char_counter[15]~56\ & VCC))
-- \char_counter[16]~58\ = CARRY((char_counter(16) & !\char_counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(16),
	datad => VCC,
	cin => \char_counter[15]~56\,
	combout => \char_counter[16]~57_combout\,
	cout => \char_counter[16]~58\);

-- Location: FF_X45_Y50_N9
\char_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[16]~57_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(16));

-- Location: LCCOMB_X45_Y50_N10
\char_counter[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[17]~59_combout\ = (char_counter(17) & (!\char_counter[16]~58\)) # (!char_counter(17) & ((\char_counter[16]~58\) # (GND)))
-- \char_counter[17]~60\ = CARRY((!\char_counter[16]~58\) # (!char_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(17),
	datad => VCC,
	cin => \char_counter[16]~58\,
	combout => \char_counter[17]~59_combout\,
	cout => \char_counter[17]~60\);

-- Location: FF_X45_Y50_N11
\char_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[17]~59_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(17));

-- Location: LCCOMB_X45_Y50_N12
\char_counter[18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[18]~61_combout\ = (char_counter(18) & (\char_counter[17]~60\ $ (GND))) # (!char_counter(18) & (!\char_counter[17]~60\ & VCC))
-- \char_counter[18]~62\ = CARRY((char_counter(18) & !\char_counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(18),
	datad => VCC,
	cin => \char_counter[17]~60\,
	combout => \char_counter[18]~61_combout\,
	cout => \char_counter[18]~62\);

-- Location: FF_X45_Y50_N13
\char_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[18]~61_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(18));

-- Location: LCCOMB_X45_Y50_N14
\char_counter[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[19]~63_combout\ = (char_counter(19) & (!\char_counter[18]~62\)) # (!char_counter(19) & ((\char_counter[18]~62\) # (GND)))
-- \char_counter[19]~64\ = CARRY((!\char_counter[18]~62\) # (!char_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(19),
	datad => VCC,
	cin => \char_counter[18]~62\,
	combout => \char_counter[19]~63_combout\,
	cout => \char_counter[19]~64\);

-- Location: FF_X45_Y50_N15
\char_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[19]~63_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(19));

-- Location: LCCOMB_X45_Y50_N16
\char_counter[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[20]~65_combout\ = (char_counter(20) & (\char_counter[19]~64\ $ (GND))) # (!char_counter(20) & (!\char_counter[19]~64\ & VCC))
-- \char_counter[20]~66\ = CARRY((char_counter(20) & !\char_counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(20),
	datad => VCC,
	cin => \char_counter[19]~64\,
	combout => \char_counter[20]~65_combout\,
	cout => \char_counter[20]~66\);

-- Location: FF_X45_Y50_N17
\char_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[20]~65_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(20));

-- Location: LCCOMB_X45_Y50_N18
\char_counter[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[21]~67_combout\ = (char_counter(21) & (!\char_counter[20]~66\)) # (!char_counter(21) & ((\char_counter[20]~66\) # (GND)))
-- \char_counter[21]~68\ = CARRY((!\char_counter[20]~66\) # (!char_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(21),
	datad => VCC,
	cin => \char_counter[20]~66\,
	combout => \char_counter[21]~67_combout\,
	cout => \char_counter[21]~68\);

-- Location: FF_X45_Y50_N19
\char_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[21]~67_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(21));

-- Location: LCCOMB_X45_Y50_N20
\char_counter[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[22]~69_combout\ = (char_counter(22) & (\char_counter[21]~68\ $ (GND))) # (!char_counter(22) & (!\char_counter[21]~68\ & VCC))
-- \char_counter[22]~70\ = CARRY((char_counter(22) & !\char_counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char_counter(22),
	datad => VCC,
	cin => \char_counter[21]~68\,
	combout => \char_counter[22]~69_combout\,
	cout => \char_counter[22]~70\);

-- Location: FF_X45_Y50_N21
\char_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[22]~69_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(22));

-- Location: LCCOMB_X45_Y50_N22
\char_counter[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[23]~71_combout\ = (char_counter(23) & (!\char_counter[22]~70\)) # (!char_counter(23) & ((\char_counter[22]~70\) # (GND)))
-- \char_counter[23]~72\ = CARRY((!\char_counter[22]~70\) # (!char_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(23),
	datad => VCC,
	cin => \char_counter[22]~70\,
	combout => \char_counter[23]~71_combout\,
	cout => \char_counter[23]~72\);

-- Location: FF_X45_Y50_N23
\char_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[23]~71_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(23));

-- Location: LCCOMB_X45_Y50_N24
\char_counter[24]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_counter[24]~73_combout\ = \char_counter[23]~72\ $ (!char_counter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => char_counter(24),
	cin => \char_counter[23]~72\,
	combout => \char_counter[24]~73_combout\);

-- Location: FF_X45_Y50_N25
\char_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \char_counter[24]~73_combout\,
	sclr => \LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_counter(24));

-- Location: LCCOMB_X44_Y51_N24
\CHAR_CLK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHAR_CLK~0_combout\ = \CHAR_CLK~q\ $ (((char_counter(24) & ((char_counter(23)) # (!\LessThan1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_counter(24),
	datab => char_counter(23),
	datac => \LessThan1~5_combout\,
	datad => \CHAR_CLK~q\,
	combout => \CHAR_CLK~0_combout\);

-- Location: LCCOMB_X44_Y51_N2
\CHAR_CLK~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHAR_CLK~feeder_combout\ = \CHAR_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHAR_CLK~0_combout\,
	combout => \CHAR_CLK~feeder_combout\);

-- Location: FF_X44_Y51_N3
CHAR_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHAR_CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHAR_CLK~q\);

-- Location: LCCOMB_X66_Y43_N0
\scan_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[0]~15_combout\ = scan_counter(0) $ (VCC)
-- \scan_counter[0]~16\ = CARRY(scan_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(0),
	datad => VCC,
	combout => \scan_counter[0]~15_combout\,
	cout => \scan_counter[0]~16\);

-- Location: LCCOMB_X66_Y43_N26
\scan_counter[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[13]~41_combout\ = (scan_counter(13) & (!\scan_counter[12]~40\)) # (!scan_counter(13) & ((\scan_counter[12]~40\) # (GND)))
-- \scan_counter[13]~42\ = CARRY((!\scan_counter[12]~40\) # (!scan_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(13),
	datad => VCC,
	cin => \scan_counter[12]~40\,
	combout => \scan_counter[13]~41_combout\,
	cout => \scan_counter[13]~42\);

-- Location: LCCOMB_X66_Y43_N28
\scan_counter[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[14]~43_combout\ = \scan_counter[13]~42\ $ (!scan_counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => scan_counter(14),
	cin => \scan_counter[13]~42\,
	combout => \scan_counter[14]~43_combout\);

-- Location: FF_X66_Y43_N29
\scan_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[14]~43_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(14));

-- Location: LCCOMB_X67_Y43_N4
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!scan_counter(6) & (((!scan_counter(4) & !scan_counter(3))) # (!scan_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(4),
	datab => scan_counter(3),
	datac => scan_counter(6),
	datad => scan_counter(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y43_N10
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!scan_counter(11) & (!scan_counter(10) & (!scan_counter(9) & !scan_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(11),
	datab => scan_counter(10),
	datac => scan_counter(9),
	datad => scan_counter(12),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X67_Y43_N28
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\ & (((\LessThan0~1_combout\) # (!scan_counter(8))) # (!scan_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(7),
	datab => scan_counter(8),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y43_N30
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (scan_counter(14) & (scan_counter(13) & !\LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(14),
	datac => scan_counter(13),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: FF_X66_Y43_N1
\scan_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[0]~15_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(0));

-- Location: LCCOMB_X66_Y43_N2
\scan_counter[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[1]~17_combout\ = (scan_counter(1) & (!\scan_counter[0]~16\)) # (!scan_counter(1) & ((\scan_counter[0]~16\) # (GND)))
-- \scan_counter[1]~18\ = CARRY((!\scan_counter[0]~16\) # (!scan_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(1),
	datad => VCC,
	cin => \scan_counter[0]~16\,
	combout => \scan_counter[1]~17_combout\,
	cout => \scan_counter[1]~18\);

-- Location: FF_X66_Y43_N3
\scan_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[1]~17_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(1));

-- Location: LCCOMB_X66_Y43_N4
\scan_counter[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[2]~19_combout\ = (scan_counter(2) & (\scan_counter[1]~18\ $ (GND))) # (!scan_counter(2) & (!\scan_counter[1]~18\ & VCC))
-- \scan_counter[2]~20\ = CARRY((scan_counter(2) & !\scan_counter[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(2),
	datad => VCC,
	cin => \scan_counter[1]~18\,
	combout => \scan_counter[2]~19_combout\,
	cout => \scan_counter[2]~20\);

-- Location: FF_X66_Y43_N5
\scan_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[2]~19_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(2));

-- Location: LCCOMB_X66_Y43_N6
\scan_counter[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[3]~21_combout\ = (scan_counter(3) & (!\scan_counter[2]~20\)) # (!scan_counter(3) & ((\scan_counter[2]~20\) # (GND)))
-- \scan_counter[3]~22\ = CARRY((!\scan_counter[2]~20\) # (!scan_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(3),
	datad => VCC,
	cin => \scan_counter[2]~20\,
	combout => \scan_counter[3]~21_combout\,
	cout => \scan_counter[3]~22\);

-- Location: FF_X66_Y43_N7
\scan_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[3]~21_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(3));

-- Location: LCCOMB_X66_Y43_N8
\scan_counter[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[4]~23_combout\ = (scan_counter(4) & (\scan_counter[3]~22\ $ (GND))) # (!scan_counter(4) & (!\scan_counter[3]~22\ & VCC))
-- \scan_counter[4]~24\ = CARRY((scan_counter(4) & !\scan_counter[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(4),
	datad => VCC,
	cin => \scan_counter[3]~22\,
	combout => \scan_counter[4]~23_combout\,
	cout => \scan_counter[4]~24\);

-- Location: FF_X66_Y43_N9
\scan_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[4]~23_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(4));

-- Location: LCCOMB_X66_Y43_N10
\scan_counter[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[5]~25_combout\ = (scan_counter(5) & (!\scan_counter[4]~24\)) # (!scan_counter(5) & ((\scan_counter[4]~24\) # (GND)))
-- \scan_counter[5]~26\ = CARRY((!\scan_counter[4]~24\) # (!scan_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(5),
	datad => VCC,
	cin => \scan_counter[4]~24\,
	combout => \scan_counter[5]~25_combout\,
	cout => \scan_counter[5]~26\);

-- Location: FF_X66_Y43_N11
\scan_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[5]~25_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(5));

-- Location: LCCOMB_X66_Y43_N12
\scan_counter[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[6]~27_combout\ = (scan_counter(6) & (\scan_counter[5]~26\ $ (GND))) # (!scan_counter(6) & (!\scan_counter[5]~26\ & VCC))
-- \scan_counter[6]~28\ = CARRY((scan_counter(6) & !\scan_counter[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(6),
	datad => VCC,
	cin => \scan_counter[5]~26\,
	combout => \scan_counter[6]~27_combout\,
	cout => \scan_counter[6]~28\);

-- Location: FF_X66_Y43_N13
\scan_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[6]~27_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(6));

-- Location: LCCOMB_X66_Y43_N14
\scan_counter[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[7]~29_combout\ = (scan_counter(7) & (!\scan_counter[6]~28\)) # (!scan_counter(7) & ((\scan_counter[6]~28\) # (GND)))
-- \scan_counter[7]~30\ = CARRY((!\scan_counter[6]~28\) # (!scan_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(7),
	datad => VCC,
	cin => \scan_counter[6]~28\,
	combout => \scan_counter[7]~29_combout\,
	cout => \scan_counter[7]~30\);

-- Location: FF_X66_Y43_N15
\scan_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[7]~29_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(7));

-- Location: LCCOMB_X66_Y43_N16
\scan_counter[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[8]~31_combout\ = (scan_counter(8) & (\scan_counter[7]~30\ $ (GND))) # (!scan_counter(8) & (!\scan_counter[7]~30\ & VCC))
-- \scan_counter[8]~32\ = CARRY((scan_counter(8) & !\scan_counter[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(8),
	datad => VCC,
	cin => \scan_counter[7]~30\,
	combout => \scan_counter[8]~31_combout\,
	cout => \scan_counter[8]~32\);

-- Location: FF_X66_Y43_N17
\scan_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[8]~31_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(8));

-- Location: LCCOMB_X66_Y43_N18
\scan_counter[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[9]~33_combout\ = (scan_counter(9) & (!\scan_counter[8]~32\)) # (!scan_counter(9) & ((\scan_counter[8]~32\) # (GND)))
-- \scan_counter[9]~34\ = CARRY((!\scan_counter[8]~32\) # (!scan_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(9),
	datad => VCC,
	cin => \scan_counter[8]~32\,
	combout => \scan_counter[9]~33_combout\,
	cout => \scan_counter[9]~34\);

-- Location: FF_X66_Y43_N19
\scan_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[9]~33_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(9));

-- Location: LCCOMB_X66_Y43_N20
\scan_counter[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[10]~35_combout\ = (scan_counter(10) & (\scan_counter[9]~34\ $ (GND))) # (!scan_counter(10) & (!\scan_counter[9]~34\ & VCC))
-- \scan_counter[10]~36\ = CARRY((scan_counter(10) & !\scan_counter[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(10),
	datad => VCC,
	cin => \scan_counter[9]~34\,
	combout => \scan_counter[10]~35_combout\,
	cout => \scan_counter[10]~36\);

-- Location: FF_X66_Y43_N21
\scan_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[10]~35_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(10));

-- Location: LCCOMB_X66_Y43_N22
\scan_counter[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[11]~37_combout\ = (scan_counter(11) & (!\scan_counter[10]~36\)) # (!scan_counter(11) & ((\scan_counter[10]~36\) # (GND)))
-- \scan_counter[11]~38\ = CARRY((!\scan_counter[10]~36\) # (!scan_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(11),
	datad => VCC,
	cin => \scan_counter[10]~36\,
	combout => \scan_counter[11]~37_combout\,
	cout => \scan_counter[11]~38\);

-- Location: FF_X66_Y43_N23
\scan_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[11]~37_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(11));

-- Location: LCCOMB_X66_Y43_N24
\scan_counter[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan_counter[12]~39_combout\ = (scan_counter(12) & (\scan_counter[11]~38\ $ (GND))) # (!scan_counter(12) & (!\scan_counter[11]~38\ & VCC))
-- \scan_counter[12]~40\ = CARRY((scan_counter(12) & !\scan_counter[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scan_counter(12),
	datad => VCC,
	cin => \scan_counter[11]~38\,
	combout => \scan_counter[12]~39_combout\,
	cout => \scan_counter[12]~40\);

-- Location: FF_X66_Y43_N25
\scan_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[12]~39_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(12));

-- Location: FF_X66_Y43_N27
\scan_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan_counter[13]~41_combout\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_counter(13));

-- Location: LCCOMB_X67_Y43_N26
\SCAN_CLK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCAN_CLK~0_combout\ = \SCAN_CLK~q\ $ (((scan_counter(13) & (scan_counter(14) & !\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scan_counter(13),
	datab => scan_counter(14),
	datac => \SCAN_CLK~q\,
	datad => \LessThan0~2_combout\,
	combout => \SCAN_CLK~0_combout\);

-- Location: LCCOMB_X67_Y43_N6
\SCAN_CLK~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SCAN_CLK~feeder_combout\ = \SCAN_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCAN_CLK~0_combout\,
	combout => \SCAN_CLK~feeder_combout\);

-- Location: FF_X67_Y43_N7
SCAN_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SCAN_CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCAN_CLK~q\);

-- Location: CLKCTRL_G9
\SCAN_CLK~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCAN_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCAN_CLK~clkctrl_outclk\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X30_Y1_N16
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Add3~3\ $ (GND))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\CHANGE_CHAR_PROC:char_num[2]~q\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X30_Y1_N18
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Add3~5\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X31_Y1_N8
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\CHANGE_CHAR_PROC~4_combout\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC~4_combout\,
	datad => \Add3~6_combout\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X30_Y1_N12
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \CHANGE_CHAR_PROC:char_num[0]~q\ $ (VCC)
-- \Add3~1\ = CARRY(\CHANGE_CHAR_PROC:char_num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X29_Y1_N24
\CHANGE_CHAR_PROC:char_num[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[0]~0_combout\ = (\CHANGE_CHAR_PROC~4_combout\ & (\Add3~0_combout\)) # (!\CHANGE_CHAR_PROC~4_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC~4_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[0]~0_combout\);

-- Location: LCCOMB_X30_Y1_N6
\CHANGE_CHAR_PROC:char_num[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[0]~1_combout\ = (!\CHANGE_CHAR_PROC~4_combout\ & ((\char_num~0_combout\) # ((\Equal1~0_combout\ & !\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \char_num~0_combout\,
	datad => \CHANGE_CHAR_PROC~4_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[0]~1_combout\);

-- Location: FF_X29_Y1_N25
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
	sload => \CHANGE_CHAR_PROC:char_num[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[0]~q\);

-- Location: LCCOMB_X30_Y1_N8
\Selector1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~23_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Selector1~23_combout\);

-- Location: LCCOMB_X30_Y1_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y1_N10
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\CHANGE_CHAR_PROC:char_num[7]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector1~23_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector1~23_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X31_Y1_N12
\CHANGE_CHAR_PROC:char_num[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[3]~0_combout\ = (\CHANGE_CHAR_PROC~4_combout\) # ((\char_num~0_combout\) # ((\Equal1~0_combout\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \CHANGE_CHAR_PROC~4_combout\,
	datac => \char_num~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \CHANGE_CHAR_PROC:char_num[3]~0_combout\);

-- Location: FF_X31_Y1_N9
\CHANGE_CHAR_PROC:char_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \Add3~14_combout\,
	ena => \CHANGE_CHAR_PROC:char_num[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[3]~q\);

-- Location: LCCOMB_X30_Y1_N20
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Add3~7\ & VCC)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((!\CHANGE_CHAR_PROC:char_num[4]~q\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X30_Y1_N22
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Add3~9\) # (GND))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((\CHANGE_CHAR_PROC:char_num[5]~q\) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X30_Y1_N24
\Add3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~15_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\Add3~11\ $ (GND))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\Add3~11\ & VCC))
-- \Add3~16\ = CARRY((\CHANGE_CHAR_PROC:char_num[6]~q\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~15_combout\,
	cout => \Add3~16\);

-- Location: LCCOMB_X31_Y1_N24
\CHANGE_CHAR_PROC:char_num[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[6]~0_combout\ = (\CHANGE_CHAR_PROC~4_combout\ & (\Add3~15_combout\)) # (!\CHANGE_CHAR_PROC~4_combout\ & ((\CHANGE_CHAR_PROC:char_num[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~15_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC~4_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[6]~0_combout\);

-- Location: FF_X31_Y1_N25
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
	sload => \CHANGE_CHAR_PROC:char_num[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[6]~q\);

-- Location: LCCOMB_X30_Y1_N26
\Add3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = \CHANGE_CHAR_PROC:char_num[7]~q\ $ (\Add3~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[7]~q\,
	cin => \Add3~16\,
	combout => \Add3~17_combout\);

-- Location: LCCOMB_X30_Y1_N30
\CHANGE_CHAR_PROC:char_num[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[7]~0_combout\ = (\CHANGE_CHAR_PROC:char_num[7]~q\) # ((\Add3~17_combout\ & \CHANGE_CHAR_PROC~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~17_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datad => \CHANGE_CHAR_PROC~4_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[7]~0_combout\);

-- Location: FF_X30_Y1_N31
\CHANGE_CHAR_PROC:char_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[7]~q\);

-- Location: LCCOMB_X31_Y1_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y1_N30
\CHANGE_CHAR_PROC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~3_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\) # (\Equal0~1_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((!\Equal0~1_combout\) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Equal0~1_combout\,
	combout => \CHANGE_CHAR_PROC~3_combout\);

-- Location: LCCOMB_X31_Y1_N6
\CHANGE_CHAR_PROC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~2_combout\ = ((!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \CHANGE_CHAR_PROC~2_combout\);

-- Location: LCCOMB_X31_Y1_N10
\CHANGE_CHAR_PROC~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~5_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[7]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC~2_combout\,
	combout => \CHANGE_CHAR_PROC~5_combout\);

-- Location: LCCOMB_X31_Y1_N28
\CHANGE_CHAR_PROC~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC~4_combout\ = (\CHANGE_CHAR_PROC~5_combout\) # ((!\CHANGE_CHAR_PROC:char_num[7]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ & \CHANGE_CHAR_PROC~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC~3_combout\,
	datad => \CHANGE_CHAR_PROC~5_combout\,
	combout => \CHANGE_CHAR_PROC~4_combout\);

-- Location: LCCOMB_X30_Y1_N14
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\Add3~1\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X31_Y1_N14
\Add3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~13_combout\ = (\CHANGE_CHAR_PROC~4_combout\ & \Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC~4_combout\,
	datad => \Add3~2_combout\,
	combout => \Add3~13_combout\);

-- Location: FF_X31_Y1_N15
\CHANGE_CHAR_PROC:char_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \Add3~13_combout\,
	ena => \CHANGE_CHAR_PROC:char_num[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[1]~q\);

-- Location: LCCOMB_X31_Y1_N20
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add3~4_combout\ & \CHANGE_CHAR_PROC~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~4_combout\,
	datad => \CHANGE_CHAR_PROC~4_combout\,
	combout => \Add3~12_combout\);

-- Location: FF_X31_Y1_N21
\CHANGE_CHAR_PROC:char_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \Add3~12_combout\,
	ena => \CHANGE_CHAR_PROC:char_num[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[2]~q\);

-- Location: LCCOMB_X30_Y1_N2
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X30_Y1_N28
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\CHANGE_CHAR_PROC:char_num[7]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[7]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y1_N18
\CHANGE_CHAR_PROC:char_num[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[5]~0_combout\ = (\CHANGE_CHAR_PROC~4_combout\ & ((\Add3~10_combout\))) # (!\CHANGE_CHAR_PROC~4_combout\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC~4_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Add3~10_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[5]~0_combout\);

-- Location: LCCOMB_X31_Y1_N22
\CHANGE_CHAR_PROC:char_num[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[5]~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\))) # (!\CHANGE_CHAR_PROC:char_num[0]~1_combout\ & (((!\CHANGE_CHAR_PROC:char_num[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~1_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~0_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[5]~1_combout\);

-- Location: FF_X31_Y1_N23
\CHANGE_CHAR_PROC:char_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[5]~q\);

-- Location: LCCOMB_X30_Y1_N4
\char_num~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \char_num~0_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Equal1~0_combout\) # ((\Equal0~2_combout\ & \Equal0~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Equal0~2_combout\ & (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal1~0_combout\,
	combout => \char_num~0_combout\);

-- Location: LCCOMB_X29_Y1_N30
\CHANGE_CHAR_PROC:char_num[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[4]~0_combout\ = (\CHANGE_CHAR_PROC~4_combout\ & ((\Add3~8_combout\))) # (!\CHANGE_CHAR_PROC~4_combout\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Add3~8_combout\,
	datad => \CHANGE_CHAR_PROC~4_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[4]~0_combout\);

-- Location: LCCOMB_X29_Y1_N18
\CHANGE_CHAR_PROC:char_num[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHANGE_CHAR_PROC:char_num[4]~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~1_combout\ & (\char_num~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~1_combout\ & ((!\CHANGE_CHAR_PROC:char_num[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \char_num~0_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~1_combout\,
	combout => \CHANGE_CHAR_PROC:char_num[4]~1_combout\);

-- Location: FF_X29_Y1_N19
\CHANGE_CHAR_PROC:char_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHAR_CLK~clkctrl_outclk\,
	d => \CHANGE_CHAR_PROC:char_num[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHANGE_CHAR_PROC:char_num[4]~q\);

-- Location: LCCOMB_X30_Y5_N22
\state_variable.LOAD1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.LOAD1~0_combout\ = !\state_variable.ROW8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_variable.ROW8~q\,
	combout => \state_variable.LOAD1~0_combout\);

-- Location: FF_X30_Y5_N23
\state_variable.LOAD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.LOAD1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD1~q\);

-- Location: LCCOMB_X30_Y5_N10
\state_variable.ROW1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.ROW1~0_combout\ = !\state_variable.LOAD1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_variable.LOAD1~q\,
	combout => \state_variable.ROW1~0_combout\);

-- Location: FF_X30_Y5_N11
\state_variable.ROW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.ROW1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW1~q\);

-- Location: FF_X27_Y4_N5
\state_variable.LOAD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD2~q\);

-- Location: LCCOMB_X27_Y4_N12
\state_variable.ROW2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.ROW2~feeder_combout\ = \state_variable.LOAD2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_variable.LOAD2~q\,
	combout => \state_variable.ROW2~feeder_combout\);

-- Location: FF_X27_Y4_N13
\state_variable.ROW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.ROW2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW2~q\);

-- Location: FF_X30_Y4_N21
\state_variable.LOAD3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD3~q\);

-- Location: LCCOMB_X30_Y4_N30
\state_variable.ROW3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.ROW3~feeder_combout\ = \state_variable.LOAD3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_variable.LOAD3~q\,
	combout => \state_variable.ROW3~feeder_combout\);

-- Location: FF_X30_Y4_N31
\state_variable.ROW3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.ROW3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW3~q\);

-- Location: LCCOMB_X29_Y5_N22
\state_variable.LOAD4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.LOAD4~feeder_combout\ = \state_variable.ROW3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_variable.ROW3~q\,
	combout => \state_variable.LOAD4~feeder_combout\);

-- Location: FF_X29_Y5_N23
\state_variable.LOAD4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.LOAD4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD4~q\);

-- Location: FF_X29_Y5_N31
\state_variable.ROW4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.LOAD4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW4~q\);

-- Location: LCCOMB_X30_Y4_N2
\state_variable.LOAD5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.LOAD5~feeder_combout\ = \state_variable.ROW4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_variable.ROW4~q\,
	combout => \state_variable.LOAD5~feeder_combout\);

-- Location: FF_X30_Y4_N3
\state_variable.LOAD5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.LOAD5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD5~q\);

-- Location: LCCOMB_X30_Y4_N8
\state_variable.ROW5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.ROW5~feeder_combout\ = \state_variable.LOAD5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_variable.LOAD5~q\,
	combout => \state_variable.ROW5~feeder_combout\);

-- Location: FF_X30_Y4_N9
\state_variable.ROW5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.ROW5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW5~q\);

-- Location: FF_X32_Y4_N9
\state_variable.LOAD6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD6~q\);

-- Location: FF_X29_Y4_N5
\state_variable.ROW6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.LOAD6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW6~q\);

-- Location: LCCOMB_X32_Y4_N2
\state_variable.LOAD7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.LOAD7~feeder_combout\ = \state_variable.ROW6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_variable.ROW6~q\,
	combout => \state_variable.LOAD7~feeder_combout\);

-- Location: FF_X32_Y4_N3
\state_variable.LOAD7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.LOAD7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD7~q\);

-- Location: LCCOMB_X32_Y4_N22
\state_variable.ROW7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.ROW7~feeder_combout\ = \state_variable.LOAD7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_variable.LOAD7~q\,
	combout => \state_variable.ROW7~feeder_combout\);

-- Location: FF_X32_Y4_N23
\state_variable.ROW7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.ROW7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW7~q\);

-- Location: LCCOMB_X29_Y4_N22
\state_variable.LOAD8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_variable.LOAD8~feeder_combout\ = \state_variable.ROW7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_variable.ROW7~q\,
	combout => \state_variable.LOAD8~feeder_combout\);

-- Location: FF_X29_Y4_N23
\state_variable.LOAD8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \state_variable.LOAD8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.LOAD8~q\);

-- Location: FF_X29_Y4_N21
\state_variable.ROW8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.LOAD8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_variable.ROW8~q\);

-- Location: LCCOMB_X29_Y4_N30
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \state_variable.ROW8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \state_variable.ROW8~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X34_Y4_N4
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Selector0~2_combout\ & \CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector0~2_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector0~3_combout\);

-- Location: FF_X34_Y4_N5
\column_driver[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => column_driver(7));

-- Location: LCCOMB_X31_Y1_N2
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\CHANGE_CHAR_PROC:char_num[6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[6]~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X32_Y1_N26
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Add0~0_combout\) # ((\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X32_Y1_N0
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X32_Y1_N22
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_variable.ROW4~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\Mux4~3_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux4~3_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \state_variable.ROW4~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X32_Y1_N24
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X32_Y1_N28
\Selector1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~28_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\Mux8~0_combout\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \state_variable.ROW8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \Mux8~0_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \state_variable.ROW8~q\,
	combout => \Selector1~28_combout\);

-- Location: LCCOMB_X32_Y1_N14
\Selector1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~29_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector1~28_combout\) # ((\CHANGE_CHAR_PROC:char_num[3]~q\ & \Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector1~0_combout\,
	datad => \Selector1~28_combout\,
	combout => \Selector1~29_combout\);

-- Location: LCCOMB_X32_Y4_N14
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X31_Y4_N0
\Mux37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X34_Y4_N26
\Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Equal0~0_combout\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Mux37~4_combout\ & \state_variable.ROW2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux37~4_combout\,
	datad => \state_variable.ROW2~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X34_Y4_N22
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X34_Y4_N20
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X34_Y4_N14
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X34_Y4_N8
\Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\state_variable.ROW6~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Mux6~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Mux6~0_combout\,
	datac => \state_variable.ROW6~q\,
	datad => \Mux6~1_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X31_Y4_N14
\Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & \state_variable.ROW1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \state_variable.ROW1~q\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X34_Y4_N24
\Selector1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\Selector1~2_combout\) # ((\Selector1~3_combout\) # ((\Mux1~0_combout\ & \Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \Mux1~0_combout\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~4_combout\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X27_Y4_N8
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y4_N30
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y4_N10
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X27_Y4_N28
\Selector1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~26_combout\ = (\state_variable.ROW3~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Mux3~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW3~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Selector1~26_combout\);

-- Location: LCCOMB_X27_Y4_N14
\Selector1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~27_combout\ = (\Selector1~26_combout\) # ((!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\state_variable.ROW2~q\ & \Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \state_variable.ROW2~q\,
	datac => \Mux2~0_combout\,
	datad => \Selector1~26_combout\,
	combout => \Selector1~27_combout\);

-- Location: LCCOMB_X35_Y1_N10
\Selector1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (\Selector1~29_combout\) # ((\Selector1~1_combout\ & ((\Selector1~5_combout\) # (\Selector1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~29_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector1~5_combout\,
	datad => \Selector1~27_combout\,
	combout => \Selector1~6_combout\);

-- Location: LCCOMB_X27_Y4_N16
\Selector1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~7_combout\ = (\state_variable.ROW2~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \state_variable.ROW2~q\,
	combout => \Selector1~7_combout\);

-- Location: LCCOMB_X35_Y1_N28
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X35_Y1_N26
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X35_Y1_N4
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X35_Y1_N6
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X35_Y1_N16
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((!\Mux2~2_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux3~4_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X35_Y1_N0
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux2~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux2~3_combout\ & ((\Mux2~4_combout\))) # (!\Mux2~3_combout\ & (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~4_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X35_Y1_N8
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((\CHANGE_CHAR_PROC:char_num[4]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X35_Y1_N18
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X35_Y1_N30
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((!\Mux3~3_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux3~4_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X35_Y1_N20
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X35_Y1_N2
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux3~5_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux3~5_combout\ & ((\Mux3~6_combout\))) # (!\Mux3~5_combout\ & (\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~5_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X32_Y4_N16
\Selector1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~8_combout\ = (\state_variable.ROW3~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \state_variable.ROW3~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector1~8_combout\);

-- Location: LCCOMB_X35_Y1_N14
\Selector1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~9_combout\ = (\Selector1~7_combout\ & ((\Mux2~5_combout\) # ((\Mux3~7_combout\ & \Selector1~8_combout\)))) # (!\Selector1~7_combout\ & (((\Mux3~7_combout\ & \Selector1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~7_combout\,
	datab => \Mux2~5_combout\,
	datac => \Mux3~7_combout\,
	datad => \Selector1~8_combout\,
	combout => \Selector1~9_combout\);

-- Location: LCCOMB_X31_Y3_N6
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X31_Y3_N24
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X31_Y3_N12
\Selector1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~24_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux1~2_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- (\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Mux1~2_combout\,
	combout => \Selector1~24_combout\);

-- Location: LCCOMB_X31_Y3_N30
\Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\state_variable.ROW1~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \state_variable.ROW1~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X31_Y3_N16
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X31_Y3_N26
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Add0~0_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X31_Y3_N4
\Selector1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~11_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Mux4~4_combout\ & \state_variable.ROW4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux4~4_combout\,
	datad => \state_variable.ROW4~q\,
	combout => \Selector1~11_combout\);

-- Location: LCCOMB_X31_Y3_N28
\Selector1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~10_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\Selector0~2_combout\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \Selector0~2_combout\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector1~10_combout\);

-- Location: LCCOMB_X31_Y3_N18
\Selector1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~12_combout\ = (\Selector1~11_combout\) # ((\Selector1~10_combout\) # ((\Selector5~2_combout\ & !\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~2_combout\,
	datab => \Mux1~1_combout\,
	datac => \Selector1~11_combout\,
	datad => \Selector1~10_combout\,
	combout => \Selector1~12_combout\);

-- Location: LCCOMB_X31_Y3_N10
\Selector1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~25_combout\ = (\Selector1~24_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector1~12_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~24_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector5~2_combout\,
	datad => \Selector1~12_combout\,
	combout => \Selector1~25_combout\);

-- Location: LCCOMB_X32_Y2_N8
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # ((\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X32_Y2_N18
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X32_Y2_N28
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[6]~q\ & ((\Mux7~0_combout\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X32_Y2_N2
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\Mux7~3_combout\ $ (((\Mux7~1_combout\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\Mux7~1_combout\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \Mux7~1_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X32_Y2_N30
\Selector1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~19_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\state_variable.ROW7~q\ & \Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \state_variable.ROW7~q\,
	datad => \Mux7~4_combout\,
	combout => \Selector1~19_combout\);

-- Location: LCCOMB_X32_Y1_N18
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X32_Y1_N6
\Mux5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\Mux5~5_combout\) # 
-- (!\CHANGE_CHAR_PROC:char_num[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X32_Y1_N20
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X32_Y1_N16
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ((!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X32_Y1_N30
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~12_combout\ & ((\Mux5~6_combout\) # ((!\Add0~0_combout\)))) # (!\Mux5~12_combout\ & (((\Add0~0_combout\ & !\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~12_combout\,
	datab => \Mux5~6_combout\,
	datac => \Add0~0_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X27_Y1_N12
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X27_Y1_N8
\Mux5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X27_Y1_N18
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X27_Y1_N6
\Mux5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[6]~q\ & 
-- !\Mux5~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Mux5~9_combout\,
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X27_Y1_N10
\Mux5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (\Add0~0_combout\ & ((\Mux5~13_combout\ & ((!\Mux5~10_combout\))) # (!\Mux5~13_combout\ & (!\Mux5~8_combout\)))) # (!\Add0~0_combout\ & (((\Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \Add0~0_combout\,
	datac => \Mux5~10_combout\,
	datad => \Mux5~13_combout\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X32_Y1_N4
\Selector1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~13_combout\ = (\state_variable.ROW5~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Mux5~7_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux5~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW5~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux5~7_combout\,
	datad => \Mux5~11_combout\,
	combout => \Selector1~13_combout\);

-- Location: LCCOMB_X27_Y1_N20
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\))) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X27_Y1_N28
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[6]~q\ & 
-- !\Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X27_Y1_N30
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X27_Y1_N16
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Add0~0_combout\ & ((\Mux4~8_combout\ & (!\Mux4~6_combout\)) # (!\Mux4~8_combout\ & ((!\Mux5~8_combout\))))) # (!\Add0~0_combout\ & (\Mux4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux4~6_combout\,
	datad => \Mux5~8_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X32_Y1_N8
\Selector1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~18_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\state_variable.ROW4~q\ & \Mux4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \state_variable.ROW4~q\,
	datad => \Mux4~7_combout\,
	combout => \Selector1~18_combout\);

-- Location: LCCOMB_X32_Y2_N24
\Selector1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~14_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector1~14_combout\);

-- Location: LCCOMB_X32_Y2_N14
\Selector1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~15_combout\ = (\Selector1~14_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\CHANGE_CHAR_PROC:char_num[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \Selector1~14_combout\,
	combout => \Selector1~15_combout\);

-- Location: LCCOMB_X32_Y2_N0
\Selector1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~16_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Selector1~15_combout\ & \state_variable.ROW7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Selector1~15_combout\,
	datad => \state_variable.ROW7~q\,
	combout => \Selector1~16_combout\);

-- Location: LCCOMB_X31_Y5_N6
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X31_Y5_N8
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X31_Y5_N2
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X31_Y5_N20
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Mux6~3_combout\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\Mux6~3_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- (((\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X31_Y5_N16
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux6~4_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux6~4_combout\ & (\Mux6~5_combout\)) # (!\Mux6~4_combout\ & ((\Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X32_Y1_N2
\Selector1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~17_combout\ = (\Selector1~16_combout\) # ((\Add0~0_combout\ & (\state_variable.ROW6~q\ & \Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \state_variable.ROW6~q\,
	datac => \Selector1~16_combout\,
	datad => \Mux6~6_combout\,
	combout => \Selector1~17_combout\);

-- Location: LCCOMB_X32_Y1_N10
\Selector1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~20_combout\ = (\Selector1~19_combout\) # ((\Selector1~13_combout\) # ((\Selector1~18_combout\) # (\Selector1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~19_combout\,
	datab => \Selector1~13_combout\,
	datac => \Selector1~18_combout\,
	datad => \Selector1~17_combout\,
	combout => \Selector1~20_combout\);

-- Location: LCCOMB_X35_Y1_N12
\Selector1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~21_combout\ = (\Selector1~6_combout\) # ((\Selector1~9_combout\) # ((\Selector1~25_combout\) # (\Selector1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~6_combout\,
	datab => \Selector1~9_combout\,
	datac => \Selector1~25_combout\,
	datad => \Selector1~20_combout\,
	combout => \Selector1~21_combout\);

-- Location: FF_X35_Y1_N13
\column_driver[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \Selector1~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => column_driver(6));

-- Location: LCCOMB_X32_Y2_N16
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X32_Y2_N4
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # ((\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X32_Y2_N26
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X32_Y2_N20
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X32_Y2_N10
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Mux9~2_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((!\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux9~2_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X32_Y2_N22
\Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux9~4_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux9~4_combout\ & (\Mux9~5_combout\)) # (!\Mux9~4_combout\ & ((\Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Mux9~5_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X31_Y5_N24
\Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X29_Y1_N20
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X31_Y5_N4
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X31_Y5_N18
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\) # ((!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X31_Y5_N10
\Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Mux15~4_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux15~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux15~4_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X31_Y5_N26
\Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux15~5_combout\ & (\Mux15~6_combout\)) # (!\Mux15~5_combout\ & ((\Mux15~2_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Mux15~6_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X31_Y5_N28
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X31_Y5_N22
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X31_Y5_N12
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X31_Y5_N30
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # ((!\Mux12~2_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Mux12~2_combout\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X32_Y5_N26
\Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((!\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X31_Y5_N0
\Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Mux12~4_combout\ & ((!\Mux12~5_combout\))) # (!\Mux12~4_combout\ & (\Mux12~1_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \Mux12~1_combout\,
	datac => \Mux12~4_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X31_Y5_N14
\Selector2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~21_combout\ = (\state_variable.ROW4~q\ & ((\Mux12~6_combout\) # ((\state_variable.ROW7~q\ & \Mux15~7_combout\)))) # (!\state_variable.ROW4~q\ & (\state_variable.ROW7~q\ & (\Mux15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW4~q\,
	datab => \state_variable.ROW7~q\,
	datac => \Mux15~7_combout\,
	datad => \Mux12~6_combout\,
	combout => \Selector2~21_combout\);

-- Location: LCCOMB_X29_Y4_N28
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X29_Y4_N26
\Selector2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~19_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Mux10~6_combout\ & \state_variable.ROW2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Mux10~6_combout\,
	datad => \state_variable.ROW2~q\,
	combout => \Selector2~19_combout\);

-- Location: LCCOMB_X29_Y4_N12
\Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X29_Y4_N14
\Selector2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~18_combout\ = (\Mux13~6_combout\ & (\state_variable.ROW5~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \state_variable.ROW5~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector2~18_combout\);

-- Location: LCCOMB_X29_Y4_N18
\Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X29_Y4_N6
\Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X29_Y4_N10
\Selector2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~16_combout\ = (\state_variable.ROW3~q\ & ((\Mux11~6_combout\) # ((\Mux14~6_combout\ & \state_variable.ROW6~q\)))) # (!\state_variable.ROW3~q\ & (\Mux14~6_combout\ & (\state_variable.ROW6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW3~q\,
	datab => \Mux14~6_combout\,
	datac => \state_variable.ROW6~q\,
	datad => \Mux11~6_combout\,
	combout => \Selector2~16_combout\);

-- Location: LCCOMB_X29_Y4_N2
\Selector2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~17_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Selector2~16_combout\) # ((\Selector0~2_combout\ & \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Selector2~16_combout\,
	combout => \Selector2~17_combout\);

-- Location: LCCOMB_X29_Y4_N24
\Selector2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~20_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector2~19_combout\) # ((\Selector2~18_combout\) # (\Selector2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~19_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Selector2~18_combout\,
	datad => \Selector2~17_combout\,
	combout => \Selector2~20_combout\);

-- Location: LCCOMB_X30_Y5_N16
\Selector2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~22_combout\ = (\Selector2~21_combout\) # ((\Selector2~20_combout\) # ((\Mux9~6_combout\ & \state_variable.ROW1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \state_variable.ROW1~q\,
	datac => \Selector2~21_combout\,
	datad => \Selector2~20_combout\,
	combout => \Selector2~22_combout\);

-- Location: LCCOMB_X30_Y5_N12
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Add0~0_combout\ $ (((!\CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X32_Y1_N12
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X30_Y5_N30
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\Add0~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \Add0~0_combout\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ ((!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X31_Y1_N16
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Add0~0_combout\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))) # 
-- (!\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X30_Y5_N20
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # ((\Mux13~1_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X30_Y5_N6
\Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux13~3_combout\ & ((\Mux13~4_combout\))) # (!\Mux13~3_combout\ & (\Mux13~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux13~4_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X30_Y5_N24
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\Add0~0_combout\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X30_Y5_N8
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\Add0~0_combout\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Add0~0_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X30_Y5_N26
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X30_Y5_N0
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X30_Y5_N2
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux14~1_combout\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Mux14~2_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X30_Y5_N18
\Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Mux14~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux14~3_combout\ & (!\Mux14~4_combout\)) # (!\Mux14~3_combout\ & ((!\Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Mux14~4_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X30_Y4_N28
\Selector2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\state_variable.ROW5~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_variable.ROW5~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector2~6_combout\);

-- Location: LCCOMB_X30_Y2_N22
\Selector2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~7_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \state_variable.ROW6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \state_variable.ROW6~q\,
	combout => \Selector2~7_combout\);

-- Location: LCCOMB_X30_Y5_N28
\Selector2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~8_combout\ = (\Mux13~5_combout\ & ((\Selector2~6_combout\) # ((\Mux14~5_combout\ & \Selector2~7_combout\)))) # (!\Mux13~5_combout\ & (\Mux14~5_combout\ & ((\Selector2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~5_combout\,
	datab => \Mux14~5_combout\,
	datac => \Selector2~6_combout\,
	datad => \Selector2~7_combout\,
	combout => \Selector2~8_combout\);

-- Location: LCCOMB_X31_Y1_N26
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X29_Y5_N2
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X29_Y5_N30
\Selector2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~13_combout\ = (\Mux9~0_combout\ & ((\state_variable.ROW1~q\) # ((\state_variable.ROW4~q\ & \Mux12~0_combout\)))) # (!\Mux9~0_combout\ & (((\state_variable.ROW4~q\ & \Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \state_variable.ROW1~q\,
	datac => \state_variable.ROW4~q\,
	datad => \Mux12~0_combout\,
	combout => \Selector2~13_combout\);

-- Location: LCCOMB_X29_Y5_N10
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X29_Y5_N20
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X29_Y5_N4
\Selector2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~12_combout\ = (\state_variable.ROW7~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux15~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \state_variable.ROW7~q\,
	datad => \Mux15~0_combout\,
	combout => \Selector2~12_combout\);

-- Location: LCCOMB_X29_Y5_N14
\Selector2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~9_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\state_variable.ROW1~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \state_variable.ROW1~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Selector2~9_combout\);

-- Location: LCCOMB_X29_Y5_N0
\Selector2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~10_combout\ = (\Mux37~4_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\state_variable.ROW8~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\state_variable.ROW4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \state_variable.ROW4~q\,
	datac => \state_variable.ROW8~q\,
	datad => \Mux37~4_combout\,
	combout => \Selector2~10_combout\);

-- Location: LCCOMB_X29_Y5_N24
\Selector2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~11_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Selector2~9_combout\) # (\Selector2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector2~9_combout\,
	datad => \Selector2~10_combout\,
	combout => \Selector2~11_combout\);

-- Location: LCCOMB_X29_Y5_N6
\Selector2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~14_combout\ = (\Selector2~12_combout\) # ((\Selector2~11_combout\) # ((\Selector2~13_combout\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~13_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Selector2~12_combout\,
	datad => \Selector2~11_combout\,
	combout => \Selector2~14_combout\);

-- Location: LCCOMB_X29_Y4_N0
\Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & \Add0~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((!\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Add0~0_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X29_Y4_N20
\Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\state_variable.ROW8~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & \Selector2~3_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \state_variable.ROW8~q\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X29_Y4_N16
\Selector2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & \Selector2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Selector2~4_combout\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X30_Y5_N14
\Selector2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~15_combout\ = (\Selector2~8_combout\) # ((\Selector2~5_combout\) # ((\Selector1~1_combout\ & \Selector2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Selector2~8_combout\,
	datac => \Selector2~14_combout\,
	datad => \Selector2~5_combout\,
	combout => \Selector2~15_combout\);

-- Location: LCCOMB_X30_Y3_N30
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\state_variable.ROW3~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_variable.ROW3~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X30_Y3_N28
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X31_Y3_N20
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X30_Y3_N26
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X30_Y3_N0
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X30_Y3_N18
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Add0~0_combout\ & ((\Mux11~2_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Add0~0_combout\) # ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Add0~0_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X30_Y3_N16
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Add0~0_combout\ & ((\Mux11~3_combout\ & ((\Mux11~4_combout\))) # (!\Mux11~3_combout\ & (\Mux11~0_combout\)))) # (!\Add0~0_combout\ & (((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X27_Y4_N20
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state_variable.ROW2~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_variable.ROW2~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X27_Y1_N26
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (\CHANGE_CHAR_PROC:char_num[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X27_Y1_N22
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X27_Y1_N14
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = \Add0~0_combout\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X27_Y1_N0
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\Add0~0_combout\) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X27_Y1_N24
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Mux10~2_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # ((!\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux10~2_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X27_Y1_N4
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux10~3_combout\ & (\Mux10~4_combout\)) # (!\Mux10~3_combout\ & ((\Mux10~0_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux10~0_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X30_Y3_N8
\Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\ & ((\Mux11~5_combout\) # ((\Selector2~0_combout\ & \Mux10~5_combout\)))) # (!\Selector2~1_combout\ & (((\Selector2~0_combout\ & \Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Mux11~5_combout\,
	datac => \Selector2~0_combout\,
	datad => \Mux10~5_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X30_Y5_N4
\Selector2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~23_combout\ = (\Selector2~15_combout\) # ((\Selector2~2_combout\) # ((\Add0~0_combout\ & \Selector2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector2~22_combout\,
	datac => \Selector2~15_combout\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~23_combout\);

-- Location: FF_X30_Y5_N5
\column_driver[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \Selector2~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => column_driver(5));

-- Location: LCCOMB_X29_Y2_N18
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X30_Y2_N0
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X29_Y2_N4
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\state_variable.ROW7~q\ & ((\Mux23~1_combout\) # ((\Mux20~0_combout\ & \state_variable.ROW4~q\)))) # (!\state_variable.ROW7~q\ & (\Mux20~0_combout\ & ((\state_variable.ROW4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW7~q\,
	datab => \Mux20~0_combout\,
	datac => \Mux23~1_combout\,
	datad => \state_variable.ROW4~q\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X29_Y2_N30
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X29_Y2_N12
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X29_Y2_N2
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X29_Y2_N28
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state_variable.ROW1~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Mux17~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \Mux17~1_combout\,
	datac => \state_variable.ROW1~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X29_Y2_N24
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\state_variable.ROW7~q\ & \Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \state_variable.ROW7~q\,
	datac => \Mux23~0_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X29_Y2_N22
\Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector1~1_combout\ & ((\Selector3~1_combout\) # ((\CHANGE_CHAR_PROC:char_num[4]~q\ & \Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Selector1~1_combout\,
	datac => \Selector3~2_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X31_Y3_N8
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X31_Y3_N2
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X31_Y3_N22
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\Mux17~3_combout\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Mux17~3_combout\) # (!\Mux17~2_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- (\Mux17~2_combout\ $ (((!\CHANGE_CHAR_PROC:char_num[2]~q\ & \Mux17~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Mux17~3_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X31_Y3_N0
\Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Mux17~3_combout\ $ (\Mux17~2_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\Mux17~3_combout\ & !\Mux17~2_combout\)) 
-- # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Mux17~3_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X31_Y3_N14
\Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = \Mux17~5_combout\ $ (((!\Mux17~4_combout\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux17~4_combout\,
	datad => \Mux17~5_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X29_Y1_N2
\Mux21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X31_Y4_N16
\Mux21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X30_Y4_N12
\Selector3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~12_combout\ = (\state_variable.ROW5~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Mux21~6_combout\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\Mux21~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~6_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \state_variable.ROW5~q\,
	datad => \Mux21~7_combout\,
	combout => \Selector3~12_combout\);

-- Location: LCCOMB_X30_Y3_N12
\Mux19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X30_Y3_N2
\Mux19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X30_Y3_N14
\Selector3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~8_combout\ = (\state_variable.ROW3~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Mux19~7_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux19~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~7_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \state_variable.ROW3~q\,
	datad => \Mux19~6_combout\,
	combout => \Selector3~8_combout\);

-- Location: LCCOMB_X29_Y4_N4
\Selector3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~9_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\state_variable.ROW6~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \state_variable.ROW6~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector3~9_combout\);

-- Location: LCCOMB_X29_Y4_N8
\Selector3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~10_combout\ = (\Selector3~9_combout\) # ((!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\state_variable.ROW8~q\ & \Mux37~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \state_variable.ROW8~q\,
	datac => \Selector3~9_combout\,
	datad => \Mux37~4_combout\,
	combout => \Selector3~10_combout\);

-- Location: LCCOMB_X29_Y3_N8
\Selector3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~11_combout\ = (\Selector3~8_combout\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & \Selector3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Selector3~8_combout\,
	datad => \Selector3~10_combout\,
	combout => \Selector3~11_combout\);

-- Location: LCCOMB_X31_Y4_N30
\Mux18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X30_Y4_N14
\Mux22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X30_Y4_N16
\Selector3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~13_combout\ = (\Mux22~6_combout\ & (\state_variable.ROW6~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux22~6_combout\,
	datac => \state_variable.ROW6~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Selector3~13_combout\);

-- Location: LCCOMB_X30_Y4_N22
\Selector3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~14_combout\ = (\Selector3~13_combout\) # ((\state_variable.ROW2~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \Mux18~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW2~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Mux18~6_combout\,
	datad => \Selector3~13_combout\,
	combout => \Selector3~14_combout\);

-- Location: LCCOMB_X29_Y3_N26
\Selector3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~15_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Selector3~12_combout\) # ((\Selector3~11_combout\) # (\Selector3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Selector3~12_combout\,
	datac => \Selector3~11_combout\,
	datad => \Selector3~14_combout\,
	combout => \Selector3~15_combout\);

-- Location: LCCOMB_X29_Y5_N26
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X29_Y5_N18
\Mux20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X29_Y5_N8
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X29_Y5_N12
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X29_Y5_N16
\Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\Mux20~2_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Mux20~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux20~3_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X29_Y5_N28
\Mux20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux20~4_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux20~4_combout\ & ((\Mux20~5_combout\))) # (!\Mux20~4_combout\ & (\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux20~5_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X29_Y1_N28
\Mux23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X29_Y1_N4
\Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X29_Y1_N10
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X29_Y1_N14
\Mux23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Mux23~4_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # ((\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux23~4_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X29_Y1_N16
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X29_Y1_N6
\Mux23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux23~5_combout\ & (\Mux23~6_combout\)) # (!\Mux23~5_combout\ & ((\Mux23~2_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Mux23~6_combout\,
	datac => \Mux23~5_combout\,
	datad => \Mux23~2_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X29_Y3_N0
\Selector3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~16_combout\ = (\state_variable.ROW7~q\ & ((\Mux23~7_combout\) # ((\state_variable.ROW4~q\ & \Mux20~6_combout\)))) # (!\state_variable.ROW7~q\ & (\state_variable.ROW4~q\ & (\Mux20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW7~q\,
	datab => \state_variable.ROW4~q\,
	datac => \Mux20~6_combout\,
	datad => \Mux23~7_combout\,
	combout => \Selector3~16_combout\);

-- Location: LCCOMB_X29_Y3_N22
\Selector3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~17_combout\ = (\Selector3~15_combout\) # ((\Selector3~16_combout\) # ((\state_variable.ROW1~q\ & \Mux17~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW1~q\,
	datab => \Mux17~6_combout\,
	datac => \Selector3~15_combout\,
	datad => \Selector3~16_combout\,
	combout => \Selector3~17_combout\);

-- Location: LCCOMB_X30_Y4_N18
\Selector3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\state_variable.ROW8~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \state_variable.ROW8~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Selector3~6_combout\);

-- Location: LCCOMB_X32_Y3_N12
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X29_Y3_N18
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\Add0~0_combout\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Add0~0_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X30_Y2_N6
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # ((!\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\Add0~0_combout\ & (((!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X31_Y1_N4
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (!\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[4]~q\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X29_Y3_N10
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X29_Y3_N20
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # ((\Mux21~1_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux21~1_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X29_Y3_N4
\Mux21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Mux21~3_combout\ & (\Mux21~4_combout\)) # (!\Mux21~3_combout\ & ((!\Mux21~0_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \Mux21~4_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X32_Y3_N22
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = \CHANGE_CHAR_PROC:char_num[2]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X32_Y3_N8
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X29_Y3_N14
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\Add0~0_combout\))) # 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X29_Y3_N28
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \Add0~0_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & !\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X29_Y3_N6
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\Mux22~1_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Mux22~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux22~1_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X29_Y3_N12
\Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux22~3_combout\ & (!\Mux22~4_combout\)) # (!\Mux22~3_combout\ & ((\Mux22~0_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Mux22~4_combout\,
	datac => \Mux22~0_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X29_Y3_N30
\Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector2~6_combout\ & ((\Mux21~5_combout\) # ((\Selector2~7_combout\ & \Mux22~5_combout\)))) # (!\Selector2~6_combout\ & (\Selector2~7_combout\ & ((\Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~6_combout\,
	datab => \Selector2~7_combout\,
	datac => \Mux21~5_combout\,
	datad => \Mux22~5_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X30_Y3_N6
\Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\Add0~0_combout\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X30_Y3_N22
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y3_N4
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\Add0~0_combout\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X30_Y3_N10
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\Add0~0_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Add0~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X30_Y3_N24
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\Mux18~1_combout\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\Mux18~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \Mux18~1_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X30_Y3_N20
\Mux18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Mux18~3_combout\ & (\Mux18~4_combout\)) # (!\Mux18~3_combout\ & ((\Mux18~0_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~4_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Mux18~0_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X27_Y3_N12
\Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ 
-- (!\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X27_Y3_N8
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X27_Y3_N22
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[3]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X27_Y3_N28
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X27_Y3_N10
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\Add0~0_combout\ & !\Mux19~2_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux19~1_combout\) # ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Add0~0_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X27_Y3_N14
\Mux19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Add0~0_combout\ & ((\Mux19~3_combout\ & (\Mux19~4_combout\)) # (!\Mux19~3_combout\ & ((\Mux19~0_combout\))))) # (!\Add0~0_combout\ & (((\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \Mux19~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X29_Y3_N24
\Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\Selector2~0_combout\ & ((\Mux18~5_combout\) # ((\Selector2~1_combout\ & \Mux19~5_combout\)))) # (!\Selector2~0_combout\ & (\Selector2~1_combout\ & ((\Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector2~1_combout\,
	datac => \Mux18~5_combout\,
	datad => \Mux19~5_combout\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X29_Y3_N2
\Selector3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (\Selector3~4_combout\) # ((\Selector3~5_combout\) # ((\Selector3~6_combout\ & \Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~6_combout\,
	datab => \Mux24~0_combout\,
	datac => \Selector3~4_combout\,
	datad => \Selector3~5_combout\,
	combout => \Selector3~7_combout\);

-- Location: LCCOMB_X29_Y3_N16
\Selector3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~18_combout\ = (\Selector3~3_combout\) # ((\Selector3~7_combout\) # ((\Add0~0_combout\ & \Selector3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector3~3_combout\,
	datac => \Selector3~17_combout\,
	datad => \Selector3~7_combout\,
	combout => \Selector3~18_combout\);

-- Location: FF_X29_Y3_N17
\column_driver[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \Selector3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => column_driver(4));

-- Location: LCCOMB_X27_Y4_N2
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((!\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X27_Y4_N0
\Selector4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~11_combout\ = (\state_variable.ROW2~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & !\Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW2~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Mux26~0_combout\,
	combout => \Selector4~11_combout\);

-- Location: LCCOMB_X27_Y4_N18
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X27_Y4_N4
\Selector4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~12_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\state_variable.ROW1~q\ & \Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \state_variable.ROW1~q\,
	datad => \Mux25~0_combout\,
	combout => \Selector4~12_combout\);

-- Location: LCCOMB_X27_Y4_N6
\Selector4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~9_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[4]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Selector4~9_combout\);

-- Location: LCCOMB_X27_Y4_N24
\Selector4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~10_combout\ = (\state_variable.ROW4~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\Selector4~9_combout\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & !\Selector4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \state_variable.ROW4~q\,
	datad => \Selector4~9_combout\,
	combout => \Selector4~10_combout\);

-- Location: LCCOMB_X27_Y4_N22
\Selector4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~13_combout\ = (\Selector1~1_combout\ & ((\Selector4~11_combout\) # ((\Selector4~12_combout\) # (\Selector4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Selector4~11_combout\,
	datac => \Selector4~12_combout\,
	datad => \Selector4~10_combout\,
	combout => \Selector4~13_combout\);

-- Location: LCCOMB_X31_Y2_N16
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X34_Y2_N20
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (((\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X30_Y2_N12
\Selector4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = (\state_variable.ROW7~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Mux31~1_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \Mux31~1_combout\,
	datac => \state_variable.ROW7~q\,
	datad => \Mux31~0_combout\,
	combout => \Selector4~5_combout\);

-- Location: LCCOMB_X32_Y4_N12
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & \CHANGE_CHAR_PROC:char_num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X30_Y2_N26
\Selector1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~22_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & \state_variable.ROW6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \state_variable.ROW6~q\,
	combout => \Selector1~22_combout\);

-- Location: LCCOMB_X30_Y2_N4
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X30_Y4_N26
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X30_Y4_N0
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (((\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X30_Y4_N24
\Selector4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~6_combout\ = (\state_variable.ROW3~q\ & (((\state_variable.ROW5~q\ & !\Mux29~0_combout\)) # (!\Mux27~0_combout\))) # (!\state_variable.ROW3~q\ & (\state_variable.ROW5~q\ & (!\Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW3~q\,
	datab => \state_variable.ROW5~q\,
	datac => \Mux29~0_combout\,
	datad => \Mux27~0_combout\,
	combout => \Selector4~6_combout\);

-- Location: LCCOMB_X30_Y2_N14
\Selector4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~7_combout\ = (\Selector1~22_combout\ & ((\Mux30~0_combout\) # ((!\CHANGE_CHAR_PROC:char_num[1]~q\ & \Selector4~6_combout\)))) # (!\Selector1~22_combout\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~22_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Mux30~0_combout\,
	datad => \Selector4~6_combout\,
	combout => \Selector4~7_combout\);

-- Location: LCCOMB_X32_Y2_N12
\Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & \state_variable.ROW6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \state_variable.ROW6~q\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X30_Y2_N16
\Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \state_variable.ROW5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \state_variable.ROW5~q\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X30_Y2_N2
\Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\Selector4~2_combout\) # (\Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \Selector4~2_combout\,
	datad => \Selector4~3_combout\,
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X30_Y2_N8
\Selector4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~8_combout\ = (\Mux7~2_combout\ & ((\Selector4~5_combout\) # ((\Selector4~7_combout\) # (\Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~5_combout\,
	datab => \Mux7~2_combout\,
	datac => \Selector4~7_combout\,
	datad => \Selector4~4_combout\,
	combout => \Selector4~8_combout\);

-- Location: LCCOMB_X29_Y2_N0
\Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X29_Y2_N8
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X29_Y2_N14
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # ((\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X29_Y2_N20
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[5]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X29_Y2_N6
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux28~2_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X29_Y2_N10
\Mux28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux28~3_combout\ & (\Mux28~4_combout\)) # (!\Mux28~3_combout\ & ((!\Mux28~0_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Mux28~4_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X29_Y2_N16
\Selector4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~21_combout\ = (\state_variable.ROW4~q\ & (\Mux28~5_combout\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \state_variable.ROW4~q\,
	datad => \Mux28~5_combout\,
	combout => \Selector4~21_combout\);

-- Location: LCCOMB_X34_Y1_N12
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (((!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X34_Y1_N4
\Mux31~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X34_Y1_N14
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X34_Y1_N24
\Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X34_Y1_N6
\Mux31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Add0~0_combout\) # ((!\Mux31~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Add0~0_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \Add0~0_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X34_Y1_N22
\Mux31~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\Add0~0_combout\ & ((\Mux31~5_combout\ & ((\Mux31~6_combout\))) # (!\Mux31~5_combout\ & (\Mux31~2_combout\)))) # (!\Add0~0_combout\ & (((\Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Mux31~6_combout\,
	datad => \Mux31~5_combout\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X34_Y1_N0
\Selector4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~14_combout\ = (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Mux31~7_combout\ & \state_variable.ROW7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux31~7_combout\,
	datad => \state_variable.ROW7~q\,
	combout => \Selector4~14_combout\);

-- Location: LCCOMB_X31_Y2_N30
\Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # 
-- ((!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X31_Y2_N22
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X31_Y2_N8
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X31_Y2_N10
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # ((!\CHANGE_CHAR_PROC:char_num[4]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X31_Y2_N12
\Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Add0~0_combout\) # ((!\Mux27~2_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\Add0~0_combout\ & ((\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \Add0~0_combout\,
	datac => \Mux27~2_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X31_Y2_N0
\Mux27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Add0~0_combout\ & ((\Mux27~4_combout\ & (!\Mux27~5_combout\)) # (!\Mux27~4_combout\ & ((\Mux27~1_combout\))))) # (!\Add0~0_combout\ & (((\Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datab => \Add0~0_combout\,
	datac => \Mux27~1_combout\,
	datad => \Mux27~4_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X31_Y4_N18
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X31_Y4_N8
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X31_Y4_N10
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X31_Y4_N28
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\ & \Mux26~2_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X31_Y4_N12
\Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux26~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux26~3_combout\ & (\Mux26~4_combout\)) # (!\Mux26~3_combout\ & ((\Mux26~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \Mux26~4_combout\,
	datac => \Mux26~1_combout\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X30_Y2_N30
\Selector4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~15_combout\ = (\Selector2~1_combout\ & ((\Mux27~6_combout\) # ((\Selector1~7_combout\ & \Mux26~5_combout\)))) # (!\Selector2~1_combout\ & (\Selector1~7_combout\ & ((\Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector1~7_combout\,
	datac => \Mux27~6_combout\,
	datad => \Mux26~5_combout\,
	combout => \Selector4~15_combout\);

-- Location: LCCOMB_X32_Y2_N6
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\CHANGE_CHAR_PROC:char_num[6]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X30_Y2_N28
\Selector4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~16_combout\ = (\Mux32~0_combout\ & \Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~0_combout\,
	datad => \Selector0~2_combout\,
	combout => \Selector4~16_combout\);

-- Location: LCCOMB_X31_Y2_N26
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X31_Y2_N18
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))))) # 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X31_Y2_N28
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux29~1_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((\CHANGE_CHAR_PROC:char_num[3]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X31_Y2_N20
\Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Add0~0_combout\ & (\Mux29~3_combout\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \Mux29~2_combout\))))) # (!\Add0~0_combout\ & (((\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \Add0~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X31_Y2_N4
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X31_Y2_N6
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((!\CHANGE_CHAR_PROC:char_num[2]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X31_Y2_N14
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\Mux25~2_combout\ & \Mux25~1_combout\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # ((\Mux25~2_combout\ & 
-- !\Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux25~2_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X31_Y2_N24
\Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux25~1_combout\) # (!\Mux25~2_combout\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Mux25~2_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (\Mux25~1_combout\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ (!\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux25~2_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X31_Y2_N2
\Mux25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Mux25~3_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((!\Mux25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux25~3_combout\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X26_Y1_N0
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X26_Y1_N4
\Mux30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X26_Y1_N22
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X26_Y1_N8
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X26_Y1_N2
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Mux30~3_combout\ & !\Add0~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((\Add0~0_combout\)) # (!\Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux30~3_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X26_Y1_N10
\Mux30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Add0~0_combout\ & ((\Mux30~4_combout\ & ((\Mux30~5_combout\))) # (!\Mux30~4_combout\ & (\Mux30~1_combout\)))) # (!\Add0~0_combout\ & (((\Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux30~5_combout\,
	datad => \Mux30~4_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X30_Y2_N10
\Selector4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~17_combout\ = (\Mux25~5_combout\ & ((\Selector5~2_combout\) # ((\Selector2~7_combout\ & \Mux30~6_combout\)))) # (!\Mux25~5_combout\ & (\Selector2~7_combout\ & ((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~5_combout\,
	datab => \Selector2~7_combout\,
	datac => \Selector5~2_combout\,
	datad => \Mux30~6_combout\,
	combout => \Selector4~17_combout\);

-- Location: LCCOMB_X30_Y2_N20
\Selector4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~18_combout\ = (\Selector4~16_combout\) # ((\Selector4~17_combout\) # ((\Selector2~6_combout\ & \Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~6_combout\,
	datab => \Selector4~16_combout\,
	datac => \Mux29~4_combout\,
	datad => \Selector4~17_combout\,
	combout => \Selector4~18_combout\);

-- Location: LCCOMB_X30_Y2_N18
\Selector4~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~19_combout\ = (\Selector4~21_combout\) # ((\Selector4~14_combout\) # ((\Selector4~15_combout\) # (\Selector4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~21_combout\,
	datab => \Selector4~14_combout\,
	datac => \Selector4~15_combout\,
	datad => \Selector4~18_combout\,
	combout => \Selector4~19_combout\);

-- Location: LCCOMB_X30_Y2_N24
\Selector4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~20_combout\ = (\Selector4~13_combout\) # ((\Selector4~8_combout\) # (\Selector4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~13_combout\,
	datac => \Selector4~8_combout\,
	datad => \Selector4~19_combout\,
	combout => \Selector4~20_combout\);

-- Location: FF_X30_Y2_N25
\column_driver[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \Selector4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => column_driver(3));

-- Location: LCCOMB_X34_Y4_N12
\Mux36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[3]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((!\CHANGE_CHAR_PROC:char_num[3]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X34_Y4_N18
\Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[3]~q\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X34_Y4_N2
\Selector5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~13_combout\ = (\state_variable.ROW4~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\Mux36~1_combout\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux36~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~1_combout\,
	datab => \Mux36~0_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \state_variable.ROW4~q\,
	combout => \Selector5~13_combout\);

-- Location: LCCOMB_X34_Y4_N0
\Selector5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~14_combout\ = (\Mux7~2_combout\ & ((\Selector5~13_combout\) # ((\Equal0~0_combout\ & \Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Mux7~2_combout\,
	datac => \Selector0~2_combout\,
	datad => \Selector5~13_combout\,
	combout => \Selector5~14_combout\);

-- Location: LCCOMB_X32_Y4_N18
\Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X32_Y4_N28
\Selector5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\state_variable.ROW7~q\ & \Mux39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \state_variable.ROW7~q\,
	datad => \Mux39~0_combout\,
	combout => \Selector5~6_combout\);

-- Location: LCCOMB_X32_Y4_N30
\Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X32_Y4_N4
\Selector5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~7_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\Mux38~0_combout\ & \state_variable.ROW6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux38~0_combout\,
	datad => \state_variable.ROW6~q\,
	combout => \Selector5~7_combout\);

-- Location: LCCOMB_X32_Y4_N26
\Selector5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~8_combout\ = (\Selector5~6_combout\) # ((\Selector5~7_combout\) # ((\Mux26~4_combout\ & \Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~4_combout\,
	datab => \Selector5~6_combout\,
	datac => \Selector5~7_combout\,
	datad => \Selector1~4_combout\,
	combout => \Selector5~8_combout\);

-- Location: LCCOMB_X32_Y4_N20
\Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\state_variable.ROW7~q\) # (\state_variable.ROW8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW7~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \state_variable.ROW8~q\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X32_Y4_N6
\Selector5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Mux37~4_combout\ & (\state_variable.ROW3~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (((\Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~4_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \state_variable.ROW3~q\,
	datad => \Selector5~3_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X32_Y4_N8
\Selector5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & \Selector5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Selector5~4_combout\,
	combout => \Selector5~5_combout\);

-- Location: LCCOMB_X32_Y4_N24
\Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X31_Y4_N26
\Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!\CHANGE_CHAR_PROC:char_num[1]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X30_Y4_N10
\Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (!\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (((!\CHANGE_CHAR_PROC:char_num[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X30_Y4_N20
\Selector5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~9_combout\ = (\state_variable.ROW3~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW3~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \Mux35~0_combout\,
	combout => \Selector5~9_combout\);

-- Location: LCCOMB_X31_Y4_N20
\Selector5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~10_combout\ = (\Selector5~9_combout\) # ((\state_variable.ROW2~q\ & (!\CHANGE_CHAR_PROC:char_num[3]~q\ & \Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW2~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux34~0_combout\,
	datad => \Selector5~9_combout\,
	combout => \Selector5~10_combout\);

-- Location: LCCOMB_X32_Y4_N10
\Selector5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~11_combout\ = (\Selector5~10_combout\) # ((\state_variable.ROW6~q\ & (\Mux38~1_combout\ & !\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW6~q\,
	datab => \Mux38~1_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \Selector5~10_combout\,
	combout => \Selector5~11_combout\);

-- Location: LCCOMB_X32_Y4_N0
\Selector5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~12_combout\ = (\Selector1~1_combout\ & ((\Selector5~8_combout\) # ((\Selector5~5_combout\) # (\Selector5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~8_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector5~5_combout\,
	datad => \Selector5~11_combout\,
	combout => \Selector5~12_combout\);

-- Location: LCCOMB_X36_Y1_N8
\Mux39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X36_Y1_N18
\Mux39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X36_Y1_N30
\Mux39~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Mux39~1_combout\ & ((\Mux39~2_combout\) # (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux39~1_combout\,
	datad => \Mux39~2_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X36_Y1_N28
\Mux39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Mux39~2_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Mux39~1_combout\))))) # (!\Mux39~2_combout\ & (!\Mux39~1_combout\ & 
-- (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux39~1_combout\,
	datad => \Mux39~2_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X36_Y1_N16
\Mux39~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = \Mux39~4_combout\ $ (((\CHANGE_CHAR_PROC:char_num[5]~q\ & \Mux39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux39~4_combout\,
	datad => \Mux39~3_combout\,
	combout => \Mux39~5_combout\);

-- Location: LCCOMB_X30_Y4_N4
\Mux36~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~6_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- !\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux36~6_combout\);

-- Location: LCCOMB_X31_Y4_N22
\Mux36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & 
-- (!\CHANGE_CHAR_PROC:char_num[3]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X30_Y4_N6
\Mux36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((!\CHANGE_CHAR_PROC:char_num[2]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X31_Y4_N24
\Mux36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X31_Y4_N2
\Mux36~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = (\Add0~0_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\)) # (!\Add0~0_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\Mux36~3_combout\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\Mux36~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux36~3_combout\,
	datad => \Mux36~4_combout\,
	combout => \Mux36~5_combout\);

-- Location: LCCOMB_X31_Y4_N4
\Mux36~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~7_combout\ = (\Add0~0_combout\ & ((\Mux36~5_combout\ & (\Mux36~6_combout\)) # (!\Mux36~5_combout\ & ((\Mux36~2_combout\))))) # (!\Add0~0_combout\ & (((\Mux36~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux36~6_combout\,
	datac => \Mux36~2_combout\,
	datad => \Mux36~5_combout\,
	combout => \Mux36~7_combout\);

-- Location: LCCOMB_X32_Y5_N24
\Mux37~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~7_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & !\CHANGE_CHAR_PROC:char_num[1]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\CHANGE_CHAR_PROC:char_num[2]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux37~7_combout\);

-- Location: LCCOMB_X32_Y5_N8
\Mux37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \CHANGE_CHAR_PROC:char_num[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux37~5_combout\);

-- Location: LCCOMB_X32_Y5_N18
\Mux37~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~6_combout\ = (\Add0~0_combout\ & (((!\CHANGE_CHAR_PROC:char_num[4]~q\)))) # (!\Add0~0_combout\ & (\Mux37~5_combout\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux37~5_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux37~6_combout\);

-- Location: LCCOMB_X32_Y5_N4
\Mux37~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~12_combout\ = (\Mux37~7_combout\ & (\Mux37~6_combout\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (\CHANGE_CHAR_PROC:char_num[5]~q\)))) # (!\Mux37~7_combout\ & (\Mux37~6_combout\ $ (((\CHANGE_CHAR_PROC:char_num[6]~q\ & 
-- \CHANGE_CHAR_PROC:char_num[5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \Mux37~7_combout\,
	datac => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datad => \Mux37~6_combout\,
	combout => \Mux37~12_combout\);

-- Location: LCCOMB_X32_Y5_N2
\Mux37~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~8_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ $ 
-- (((!\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux37~8_combout\);

-- Location: LCCOMB_X32_Y5_N14
\Mux37~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~10_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[1]~q\,
	combout => \Mux37~10_combout\);

-- Location: LCCOMB_X32_Y5_N16
\Mux37~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~9_combout\ = \CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[1]~q\ $ (((\CHANGE_CHAR_PROC:char_num[4]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux37~9_combout\);

-- Location: LCCOMB_X32_Y5_N6
\Mux37~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~13_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((!\Mux37~9_combout\) # 
-- (!\CHANGE_CHAR_PROC:char_num[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datad => \Mux37~9_combout\,
	combout => \Mux37~13_combout\);

-- Location: LCCOMB_X32_Y5_N0
\Mux37~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~11_combout\ = (\Add0~0_combout\ & ((\Mux37~13_combout\ & ((\Mux37~10_combout\))) # (!\Mux37~13_combout\ & (!\Mux37~8_combout\)))) # (!\Add0~0_combout\ & (((\Mux37~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux37~8_combout\,
	datac => \Mux37~10_combout\,
	datad => \Mux37~13_combout\,
	combout => \Mux37~11_combout\);

-- Location: LCCOMB_X32_Y5_N10
\Selector5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~17_combout\ = (\state_variable.ROW5~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (\Mux37~12_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\Mux37~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \state_variable.ROW5~q\,
	datac => \Mux37~12_combout\,
	datad => \Mux37~11_combout\,
	combout => \Selector5~17_combout\);

-- Location: LCCOMB_X32_Y5_N20
\Selector5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~18_combout\ = (\Selector5~17_combout\) # ((\state_variable.ROW4~q\ & (!\CHANGE_CHAR_PROC:char_num[5]~q\ & \Mux36~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_variable.ROW4~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux36~7_combout\,
	datad => \Selector5~17_combout\,
	combout => \Selector5~18_combout\);

-- Location: LCCOMB_X32_Y5_N30
\Selector5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~19_combout\ = (\Selector5~18_combout\) # ((\Add0~0_combout\ & (\state_variable.ROW7~q\ & \Mux39~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \state_variable.ROW7~q\,
	datac => \Mux39~5_combout\,
	datad => \Selector5~18_combout\,
	combout => \Selector5~19_combout\);

-- Location: LCCOMB_X32_Y3_N26
\Mux35~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[0]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\) # ((!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux35~5_combout\);

-- Location: LCCOMB_X32_Y3_N30
\Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X32_Y3_N4
\Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\)) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[2]~q\ & ((!\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X32_Y3_N6
\Mux35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- ((\CHANGE_CHAR_PROC:char_num[3]~q\) # (\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X32_Y3_N28
\Mux35~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((!\Mux35~3_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (((!\Mux35~2_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux35~2_combout\,
	datad => \Mux35~3_combout\,
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X32_Y3_N16
\Mux35~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux35~4_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux35~4_combout\ & (!\Mux35~5_combout\)) # (!\Mux35~4_combout\ & ((\Mux35~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~5_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux35~1_combout\,
	datad => \Mux35~4_combout\,
	combout => \Mux35~6_combout\);

-- Location: LCCOMB_X32_Y3_N10
\Mux38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ ((\CHANGE_CHAR_PROC:char_num[1]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (!\CHANGE_CHAR_PROC:char_num[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X32_Y3_N2
\Mux38~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~6_combout\ = (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (!\CHANGE_CHAR_PROC:char_num[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[0]~q\,
	combout => \Mux38~6_combout\);

-- Location: LCCOMB_X32_Y3_N14
\Mux38~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X32_Y3_N20
\Mux38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[4]~q\ $ (((\CHANGE_CHAR_PROC:char_num[1]~q\) # (\CHANGE_CHAR_PROC:char_num[0]~q\))))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- ((\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X32_Y3_N24
\Mux38~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~5_combout\ = (\CHANGE_CHAR_PROC:char_num[3]~q\ & (((!\Mux38~3_combout\)) # (!\CHANGE_CHAR_PROC:char_num[5]~q\))) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\Mux38~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux38~4_combout\,
	datad => \Mux38~3_combout\,
	combout => \Mux38~5_combout\);

-- Location: LCCOMB_X32_Y3_N0
\Mux38~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~7_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux38~5_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux38~5_combout\ & ((\Mux38~6_combout\))) # (!\Mux38~5_combout\ & (\Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~2_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux38~6_combout\,
	datad => \Mux38~5_combout\,
	combout => \Mux38~7_combout\);

-- Location: LCCOMB_X32_Y3_N18
\Selector5~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~21_combout\ = (\state_variable.ROW6~q\ & (\Mux38~7_combout\ & (\CHANGE_CHAR_PROC:char_num[6]~q\ $ (!\CHANGE_CHAR_PROC:char_num[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[6]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \state_variable.ROW6~q\,
	datad => \Mux38~7_combout\,
	combout => \Selector5~21_combout\);

-- Location: LCCOMB_X29_Y1_N26
\Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[5]~q\) # (!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[5]~q\ & 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\ $ (\CHANGE_CHAR_PROC:char_num[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[5]~q\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X29_Y1_N0
\Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ ((!\CHANGE_CHAR_PROC:char_num[3]~q\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\) # 
-- (\CHANGE_CHAR_PROC:char_num[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[2]~q\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X29_Y1_N22
\Mux33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux33~1_combout\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (\Mux33~0_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux33~1_combout\ $ (((\CHANGE_CHAR_PROC:char_num[0]~q\ & 
-- \Mux33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux33~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X29_Y1_N12
\Mux33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ (((\Mux33~1_combout\) # (!\Mux33~0_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\Mux33~1_combout\ & ((\CHANGE_CHAR_PROC:char_num[0]~q\) # 
-- (!\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \Mux33~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X29_Y1_N8
\Mux33~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\CHANGE_CHAR_PROC:char_num[4]~q\ & ((\Mux33~2_combout\))) # (!\CHANGE_CHAR_PROC:char_num[4]~q\ & (\Mux33~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHANGE_CHAR_PROC:char_num[4]~q\,
	datac => \Mux33~3_combout\,
	datad => \Mux33~2_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X34_Y1_N30
\Mux34~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ & (\CHANGE_CHAR_PROC:char_num[1]~q\))) # (!\CHANGE_CHAR_PROC:char_num[2]~q\ & (((!\CHANGE_CHAR_PROC:char_num[1]~q\ & !\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X34_Y1_N26
\Mux34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\CHANGE_CHAR_PROC:char_num[0]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & ((!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))) # 
-- (!\CHANGE_CHAR_PROC:char_num[0]~q\ & (!\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X34_Y1_N8
\Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\CHANGE_CHAR_PROC:char_num[1]~q\ & (((\CHANGE_CHAR_PROC:char_num[0]~q\ & !\CHANGE_CHAR_PROC:char_num[2]~q\)) # (!\CHANGE_CHAR_PROC:char_num[4]~q\))) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[2]~q\ $ 
-- (((\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X34_Y1_N18
\Mux34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\CHANGE_CHAR_PROC:char_num[2]~q\ & ((\CHANGE_CHAR_PROC:char_num[1]~q\ & (!\CHANGE_CHAR_PROC:char_num[0]~q\ & \CHANGE_CHAR_PROC:char_num[4]~q\)) # (!\CHANGE_CHAR_PROC:char_num[1]~q\ & (\CHANGE_CHAR_PROC:char_num[0]~q\ $ 
-- (!\CHANGE_CHAR_PROC:char_num[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[1]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[0]~q\,
	datac => \CHANGE_CHAR_PROC:char_num[2]~q\,
	datad => \CHANGE_CHAR_PROC:char_num[4]~q\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X34_Y1_N16
\Mux34~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\CHANGE_CHAR_PROC:char_num[3]~q\ & (!\Mux34~2_combout\)) # (!\CHANGE_CHAR_PROC:char_num[3]~q\ & ((!\Mux34~3_combout\))))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & (\CHANGE_CHAR_PROC:char_num[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datab => \CHANGE_CHAR_PROC:char_num[3]~q\,
	datac => \Mux34~2_combout\,
	datad => \Mux34~3_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X34_Y1_N20
\Mux34~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = (\CHANGE_CHAR_PROC:char_num[5]~q\ & (((\Mux34~4_combout\)))) # (!\CHANGE_CHAR_PROC:char_num[5]~q\ & ((\Mux34~4_combout\ & (\Mux34~5_combout\)) # (!\Mux34~4_combout\ & ((\Mux34~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~5_combout\,
	datab => \CHANGE_CHAR_PROC:char_num[5]~q\,
	datac => \Mux34~1_combout\,
	datad => \Mux34~4_combout\,
	combout => \Mux34~6_combout\);

-- Location: LCCOMB_X32_Y5_N12
\Selector5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~15_combout\ = (\Selector1~7_combout\ & ((\Mux34~6_combout\) # ((\Selector5~2_combout\ & \Mux33~4_combout\)))) # (!\Selector1~7_combout\ & (\Selector5~2_combout\ & (\Mux33~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~7_combout\,
	datab => \Selector5~2_combout\,
	datac => \Mux33~4_combout\,
	datad => \Mux34~6_combout\,
	combout => \Selector5~15_combout\);

-- Location: LCCOMB_X32_Y5_N22
\Selector5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~16_combout\ = (\Selector5~21_combout\) # ((\Selector5~15_combout\) # ((\Selector1~8_combout\ & \Mux35~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~8_combout\,
	datab => \Mux35~6_combout\,
	datac => \Selector5~21_combout\,
	datad => \Selector5~15_combout\,
	combout => \Selector5~16_combout\);

-- Location: LCCOMB_X32_Y5_N28
\Selector5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~20_combout\ = (\Selector5~14_combout\) # ((\Selector5~12_combout\) # ((\Selector5~19_combout\) # (\Selector5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~14_combout\,
	datab => \Selector5~12_combout\,
	datac => \Selector5~19_combout\,
	datad => \Selector5~16_combout\,
	combout => \Selector5~20_combout\);

-- Location: FF_X32_Y5_N29
\column_driver[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \Selector5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => column_driver(2));

-- Location: FF_X30_Y4_N29
\row_driver[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(0));

-- Location: FF_X29_Y4_N15
\row_driver[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(1));

-- Location: FF_X29_Y4_N17
\row_driver[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(2));

-- Location: FF_X27_Y4_N17
\row_driver[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(7));

-- Location: FF_X29_Y4_N27
\row_driver[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(3));

-- Location: FF_X31_Y4_N1
\row_driver[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(6));

-- Location: LCCOMB_X27_Y4_N26
\row_driver[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_driver[4]~feeder_combout\ = \state_variable.ROW4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_variable.ROW4~q\,
	combout => \row_driver[4]~feeder_combout\);

-- Location: FF_X27_Y4_N27
\row_driver[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	d => \row_driver[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(4));

-- Location: FF_X32_Y4_N13
\row_driver[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCAN_CLK~clkctrl_outclk\,
	asdata => \state_variable.ROW3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_driver(5));

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

ww_GPIO(22) <= \GPIO[22]~output_o\;

ww_GPIO(21) <= \GPIO[21]~output_o\;

ww_GPIO(20) <= \GPIO[20]~output_o\;

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


