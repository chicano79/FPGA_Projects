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

-- DATE "02/26/2024 16:18:51"

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

ENTITY 	clock_gen IS
    PORT (
	CLK_50 : IN std_logic;
	SW : IN std_logic;
	LED : OUT std_logic_vector(1 DOWNTO 0)
	);
END clock_gen;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF clock_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_LED : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sig1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
SIGNAL \CLK_50~input_o\ : std_logic;
SIGNAL \sig1~combout\ : std_logic;
SIGNAL \sig1~clkctrl_outclk\ : std_logic;
SIGNAL \COUNTER_PROC:counter[0]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[0]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[0]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[1]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[1]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[1]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[2]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[2]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[2]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[3]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[3]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[3]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[4]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[4]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[4]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[5]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[5]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[5]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[6]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[6]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[6]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[7]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[7]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[7]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[8]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[8]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[8]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[9]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[9]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[9]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[10]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[10]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[10]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[11]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[11]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[11]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[12]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[12]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[12]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[13]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[13]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[13]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[14]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[14]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[14]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[15]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[15]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[15]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[16]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[16]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[16]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[17]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[17]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[17]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[18]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[18]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[18]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[19]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[19]~q\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[19]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[20]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[20]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[20]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[21]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[21]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[21]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[22]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[22]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[22]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[23]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[23]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[23]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[24]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[24]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[24]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[25]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[25]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[25]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[26]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[26]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[26]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[27]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[27]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[27]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[28]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[28]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[28]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[29]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[29]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[29]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[30]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[30]~q\ : std_logic;
SIGNAL \COUNTER_PROC:counter[30]~2\ : std_logic;
SIGNAL \COUNTER_PROC:counter[31]~1_combout\ : std_logic;
SIGNAL \COUNTER_PROC:counter[31]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \CLK_10~0_combout\ : std_logic;
SIGNAL \CLK_10~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50 <= CLK_50;
ww_SW <= SW;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sig1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sig1~combout\);
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

-- Location: IOOBUF_X46_Y54_N2
\LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW~input_o\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_10~q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW,
	o => \SW~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50,
	o => \CLK_50~input_o\);

-- Location: LCCOMB_X43_Y4_N4
sig1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig1~combout\ = LCELL((\SW~input_o\ & \CLK_50~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~input_o\,
	datac => \CLK_50~input_o\,
	combout => \sig1~combout\);

-- Location: CLKCTRL_G15
\sig1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sig1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sig1~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y10_N0
\COUNTER_PROC:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[0]~1_combout\ = \COUNTER_PROC:counter[0]~q\ $ (VCC)
-- \COUNTER_PROC:counter[0]~2\ = CARRY(\COUNTER_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[0]~q\,
	datad => VCC,
	combout => \COUNTER_PROC:counter[0]~1_combout\,
	cout => \COUNTER_PROC:counter[0]~2\);

-- Location: FF_X41_Y10_N1
\COUNTER_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[0]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[0]~q\);

-- Location: LCCOMB_X41_Y10_N2
\COUNTER_PROC:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[1]~1_combout\ = (\COUNTER_PROC:counter[1]~q\ & (!\COUNTER_PROC:counter[0]~2\)) # (!\COUNTER_PROC:counter[1]~q\ & ((\COUNTER_PROC:counter[0]~2\) # (GND)))
-- \COUNTER_PROC:counter[1]~2\ = CARRY((!\COUNTER_PROC:counter[0]~2\) # (!\COUNTER_PROC:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[1]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[0]~2\,
	combout => \COUNTER_PROC:counter[1]~1_combout\,
	cout => \COUNTER_PROC:counter[1]~2\);

-- Location: FF_X41_Y10_N3
\COUNTER_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[1]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[1]~q\);

-- Location: LCCOMB_X41_Y10_N4
\COUNTER_PROC:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[2]~1_combout\ = (\COUNTER_PROC:counter[2]~q\ & (\COUNTER_PROC:counter[1]~2\ $ (GND))) # (!\COUNTER_PROC:counter[2]~q\ & (!\COUNTER_PROC:counter[1]~2\ & VCC))
-- \COUNTER_PROC:counter[2]~2\ = CARRY((\COUNTER_PROC:counter[2]~q\ & !\COUNTER_PROC:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[2]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[1]~2\,
	combout => \COUNTER_PROC:counter[2]~1_combout\,
	cout => \COUNTER_PROC:counter[2]~2\);

-- Location: FF_X41_Y10_N5
\COUNTER_PROC:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[2]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[2]~q\);

-- Location: LCCOMB_X41_Y10_N6
\COUNTER_PROC:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[3]~1_combout\ = (\COUNTER_PROC:counter[3]~q\ & (!\COUNTER_PROC:counter[2]~2\)) # (!\COUNTER_PROC:counter[3]~q\ & ((\COUNTER_PROC:counter[2]~2\) # (GND)))
-- \COUNTER_PROC:counter[3]~2\ = CARRY((!\COUNTER_PROC:counter[2]~2\) # (!\COUNTER_PROC:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[3]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[2]~2\,
	combout => \COUNTER_PROC:counter[3]~1_combout\,
	cout => \COUNTER_PROC:counter[3]~2\);

-- Location: FF_X41_Y10_N7
\COUNTER_PROC:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[3]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[3]~q\);

-- Location: LCCOMB_X41_Y10_N8
\COUNTER_PROC:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[4]~1_combout\ = (\COUNTER_PROC:counter[4]~q\ & (\COUNTER_PROC:counter[3]~2\ $ (GND))) # (!\COUNTER_PROC:counter[4]~q\ & (!\COUNTER_PROC:counter[3]~2\ & VCC))
-- \COUNTER_PROC:counter[4]~2\ = CARRY((\COUNTER_PROC:counter[4]~q\ & !\COUNTER_PROC:counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[4]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[3]~2\,
	combout => \COUNTER_PROC:counter[4]~1_combout\,
	cout => \COUNTER_PROC:counter[4]~2\);

-- Location: FF_X41_Y10_N9
\COUNTER_PROC:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[4]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[4]~q\);

-- Location: LCCOMB_X41_Y10_N10
\COUNTER_PROC:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[5]~1_combout\ = (\COUNTER_PROC:counter[5]~q\ & (!\COUNTER_PROC:counter[4]~2\)) # (!\COUNTER_PROC:counter[5]~q\ & ((\COUNTER_PROC:counter[4]~2\) # (GND)))
-- \COUNTER_PROC:counter[5]~2\ = CARRY((!\COUNTER_PROC:counter[4]~2\) # (!\COUNTER_PROC:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[5]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[4]~2\,
	combout => \COUNTER_PROC:counter[5]~1_combout\,
	cout => \COUNTER_PROC:counter[5]~2\);

-- Location: FF_X41_Y10_N11
\COUNTER_PROC:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[5]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[5]~q\);

-- Location: LCCOMB_X41_Y10_N12
\COUNTER_PROC:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[6]~1_combout\ = (\COUNTER_PROC:counter[6]~q\ & (\COUNTER_PROC:counter[5]~2\ $ (GND))) # (!\COUNTER_PROC:counter[6]~q\ & (!\COUNTER_PROC:counter[5]~2\ & VCC))
-- \COUNTER_PROC:counter[6]~2\ = CARRY((\COUNTER_PROC:counter[6]~q\ & !\COUNTER_PROC:counter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[6]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[5]~2\,
	combout => \COUNTER_PROC:counter[6]~1_combout\,
	cout => \COUNTER_PROC:counter[6]~2\);

-- Location: FF_X41_Y10_N13
\COUNTER_PROC:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[6]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[6]~q\);

-- Location: LCCOMB_X41_Y10_N14
\COUNTER_PROC:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[7]~1_combout\ = (\COUNTER_PROC:counter[7]~q\ & (!\COUNTER_PROC:counter[6]~2\)) # (!\COUNTER_PROC:counter[7]~q\ & ((\COUNTER_PROC:counter[6]~2\) # (GND)))
-- \COUNTER_PROC:counter[7]~2\ = CARRY((!\COUNTER_PROC:counter[6]~2\) # (!\COUNTER_PROC:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[7]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[6]~2\,
	combout => \COUNTER_PROC:counter[7]~1_combout\,
	cout => \COUNTER_PROC:counter[7]~2\);

-- Location: FF_X41_Y10_N15
\COUNTER_PROC:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[7]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[7]~q\);

-- Location: LCCOMB_X41_Y10_N16
\COUNTER_PROC:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[8]~1_combout\ = (\COUNTER_PROC:counter[8]~q\ & (\COUNTER_PROC:counter[7]~2\ $ (GND))) # (!\COUNTER_PROC:counter[8]~q\ & (!\COUNTER_PROC:counter[7]~2\ & VCC))
-- \COUNTER_PROC:counter[8]~2\ = CARRY((\COUNTER_PROC:counter[8]~q\ & !\COUNTER_PROC:counter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[8]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[7]~2\,
	combout => \COUNTER_PROC:counter[8]~1_combout\,
	cout => \COUNTER_PROC:counter[8]~2\);

-- Location: FF_X41_Y10_N17
\COUNTER_PROC:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[8]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[8]~q\);

-- Location: LCCOMB_X41_Y10_N18
\COUNTER_PROC:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[9]~1_combout\ = (\COUNTER_PROC:counter[9]~q\ & (!\COUNTER_PROC:counter[8]~2\)) # (!\COUNTER_PROC:counter[9]~q\ & ((\COUNTER_PROC:counter[8]~2\) # (GND)))
-- \COUNTER_PROC:counter[9]~2\ = CARRY((!\COUNTER_PROC:counter[8]~2\) # (!\COUNTER_PROC:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[9]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[8]~2\,
	combout => \COUNTER_PROC:counter[9]~1_combout\,
	cout => \COUNTER_PROC:counter[9]~2\);

-- Location: FF_X41_Y10_N19
\COUNTER_PROC:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[9]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[9]~q\);

-- Location: LCCOMB_X41_Y10_N20
\COUNTER_PROC:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[10]~1_combout\ = (\COUNTER_PROC:counter[10]~q\ & (\COUNTER_PROC:counter[9]~2\ $ (GND))) # (!\COUNTER_PROC:counter[10]~q\ & (!\COUNTER_PROC:counter[9]~2\ & VCC))
-- \COUNTER_PROC:counter[10]~2\ = CARRY((\COUNTER_PROC:counter[10]~q\ & !\COUNTER_PROC:counter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[10]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[9]~2\,
	combout => \COUNTER_PROC:counter[10]~1_combout\,
	cout => \COUNTER_PROC:counter[10]~2\);

-- Location: FF_X41_Y10_N21
\COUNTER_PROC:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[10]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[10]~q\);

-- Location: LCCOMB_X41_Y10_N22
\COUNTER_PROC:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[11]~1_combout\ = (\COUNTER_PROC:counter[11]~q\ & (!\COUNTER_PROC:counter[10]~2\)) # (!\COUNTER_PROC:counter[11]~q\ & ((\COUNTER_PROC:counter[10]~2\) # (GND)))
-- \COUNTER_PROC:counter[11]~2\ = CARRY((!\COUNTER_PROC:counter[10]~2\) # (!\COUNTER_PROC:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[11]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[10]~2\,
	combout => \COUNTER_PROC:counter[11]~1_combout\,
	cout => \COUNTER_PROC:counter[11]~2\);

-- Location: FF_X41_Y10_N23
\COUNTER_PROC:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[11]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[11]~q\);

-- Location: LCCOMB_X41_Y10_N24
\COUNTER_PROC:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[12]~1_combout\ = (\COUNTER_PROC:counter[12]~q\ & (\COUNTER_PROC:counter[11]~2\ $ (GND))) # (!\COUNTER_PROC:counter[12]~q\ & (!\COUNTER_PROC:counter[11]~2\ & VCC))
-- \COUNTER_PROC:counter[12]~2\ = CARRY((\COUNTER_PROC:counter[12]~q\ & !\COUNTER_PROC:counter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[12]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[11]~2\,
	combout => \COUNTER_PROC:counter[12]~1_combout\,
	cout => \COUNTER_PROC:counter[12]~2\);

-- Location: FF_X41_Y10_N25
\COUNTER_PROC:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[12]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[12]~q\);

-- Location: LCCOMB_X41_Y10_N26
\COUNTER_PROC:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[13]~1_combout\ = (\COUNTER_PROC:counter[13]~q\ & (!\COUNTER_PROC:counter[12]~2\)) # (!\COUNTER_PROC:counter[13]~q\ & ((\COUNTER_PROC:counter[12]~2\) # (GND)))
-- \COUNTER_PROC:counter[13]~2\ = CARRY((!\COUNTER_PROC:counter[12]~2\) # (!\COUNTER_PROC:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[13]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[12]~2\,
	combout => \COUNTER_PROC:counter[13]~1_combout\,
	cout => \COUNTER_PROC:counter[13]~2\);

-- Location: FF_X41_Y10_N27
\COUNTER_PROC:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[13]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[13]~q\);

-- Location: LCCOMB_X41_Y10_N28
\COUNTER_PROC:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[14]~1_combout\ = (\COUNTER_PROC:counter[14]~q\ & (\COUNTER_PROC:counter[13]~2\ $ (GND))) # (!\COUNTER_PROC:counter[14]~q\ & (!\COUNTER_PROC:counter[13]~2\ & VCC))
-- \COUNTER_PROC:counter[14]~2\ = CARRY((\COUNTER_PROC:counter[14]~q\ & !\COUNTER_PROC:counter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[14]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[13]~2\,
	combout => \COUNTER_PROC:counter[14]~1_combout\,
	cout => \COUNTER_PROC:counter[14]~2\);

-- Location: FF_X41_Y10_N29
\COUNTER_PROC:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[14]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[14]~q\);

-- Location: LCCOMB_X41_Y10_N30
\COUNTER_PROC:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[15]~1_combout\ = (\COUNTER_PROC:counter[15]~q\ & (!\COUNTER_PROC:counter[14]~2\)) # (!\COUNTER_PROC:counter[15]~q\ & ((\COUNTER_PROC:counter[14]~2\) # (GND)))
-- \COUNTER_PROC:counter[15]~2\ = CARRY((!\COUNTER_PROC:counter[14]~2\) # (!\COUNTER_PROC:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[15]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[14]~2\,
	combout => \COUNTER_PROC:counter[15]~1_combout\,
	cout => \COUNTER_PROC:counter[15]~2\);

-- Location: FF_X41_Y10_N31
\COUNTER_PROC:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[15]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[15]~q\);

-- Location: LCCOMB_X41_Y9_N0
\COUNTER_PROC:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[16]~1_combout\ = (\COUNTER_PROC:counter[16]~q\ & (\COUNTER_PROC:counter[15]~2\ $ (GND))) # (!\COUNTER_PROC:counter[16]~q\ & (!\COUNTER_PROC:counter[15]~2\ & VCC))
-- \COUNTER_PROC:counter[16]~2\ = CARRY((\COUNTER_PROC:counter[16]~q\ & !\COUNTER_PROC:counter[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[16]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[15]~2\,
	combout => \COUNTER_PROC:counter[16]~1_combout\,
	cout => \COUNTER_PROC:counter[16]~2\);

-- Location: FF_X41_Y9_N1
\COUNTER_PROC:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[16]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[16]~q\);

-- Location: LCCOMB_X41_Y9_N2
\COUNTER_PROC:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[17]~1_combout\ = (\COUNTER_PROC:counter[17]~q\ & (!\COUNTER_PROC:counter[16]~2\)) # (!\COUNTER_PROC:counter[17]~q\ & ((\COUNTER_PROC:counter[16]~2\) # (GND)))
-- \COUNTER_PROC:counter[17]~2\ = CARRY((!\COUNTER_PROC:counter[16]~2\) # (!\COUNTER_PROC:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[17]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[16]~2\,
	combout => \COUNTER_PROC:counter[17]~1_combout\,
	cout => \COUNTER_PROC:counter[17]~2\);

-- Location: FF_X41_Y9_N3
\COUNTER_PROC:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[17]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[17]~q\);

-- Location: LCCOMB_X41_Y9_N4
\COUNTER_PROC:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[18]~1_combout\ = (\COUNTER_PROC:counter[18]~q\ & (\COUNTER_PROC:counter[17]~2\ $ (GND))) # (!\COUNTER_PROC:counter[18]~q\ & (!\COUNTER_PROC:counter[17]~2\ & VCC))
-- \COUNTER_PROC:counter[18]~2\ = CARRY((\COUNTER_PROC:counter[18]~q\ & !\COUNTER_PROC:counter[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[18]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[17]~2\,
	combout => \COUNTER_PROC:counter[18]~1_combout\,
	cout => \COUNTER_PROC:counter[18]~2\);

-- Location: FF_X41_Y9_N5
\COUNTER_PROC:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[18]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[18]~q\);

-- Location: LCCOMB_X41_Y9_N6
\COUNTER_PROC:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[19]~1_combout\ = (\COUNTER_PROC:counter[19]~q\ & (!\COUNTER_PROC:counter[18]~2\)) # (!\COUNTER_PROC:counter[19]~q\ & ((\COUNTER_PROC:counter[18]~2\) # (GND)))
-- \COUNTER_PROC:counter[19]~2\ = CARRY((!\COUNTER_PROC:counter[18]~2\) # (!\COUNTER_PROC:counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[19]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[18]~2\,
	combout => \COUNTER_PROC:counter[19]~1_combout\,
	cout => \COUNTER_PROC:counter[19]~2\);

-- Location: FF_X41_Y9_N7
\COUNTER_PROC:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[19]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[19]~q\);

-- Location: LCCOMB_X42_Y10_N22
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\COUNTER_PROC:counter[18]~q\) # (!\COUNTER_PROC:counter[19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_PROC:counter[19]~q\,
	datad => \COUNTER_PROC:counter[18]~q\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X42_Y10_N30
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\COUNTER_PROC:counter[16]~q\) # ((\COUNTER_PROC:counter[15]~q\) # (\COUNTER_PROC:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[16]~q\,
	datac => \COUNTER_PROC:counter[15]~q\,
	datad => \COUNTER_PROC:counter[17]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X42_Y10_N12
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!\COUNTER_PROC:counter[6]~q\ & !\COUNTER_PROC:counter[7]~q\)) # (!\COUNTER_PROC:counter[8]~q\)) # (!\COUNTER_PROC:counter[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[6]~q\,
	datab => \COUNTER_PROC:counter[9]~q\,
	datac => \COUNTER_PROC:counter[8]~q\,
	datad => \COUNTER_PROC:counter[7]~q\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X42_Y10_N10
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\COUNTER_PROC:counter[13]~q\) # ((\COUNTER_PROC:counter[11]~q\ & ((\COUNTER_PROC:counter[10]~q\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[13]~q\,
	datab => \COUNTER_PROC:counter[11]~q\,
	datac => \COUNTER_PROC:counter[10]~q\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X42_Y10_N8
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\LessThan0~4_combout\ & (((!\COUNTER_PROC:counter[12]~q\ & !\LessThan0~6_combout\)) # (!\COUNTER_PROC:counter[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[14]~q\,
	datab => \COUNTER_PROC:counter[12]~q\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X41_Y9_N8
\COUNTER_PROC:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[20]~1_combout\ = (\COUNTER_PROC:counter[20]~q\ & (\COUNTER_PROC:counter[19]~2\ $ (GND))) # (!\COUNTER_PROC:counter[20]~q\ & (!\COUNTER_PROC:counter[19]~2\ & VCC))
-- \COUNTER_PROC:counter[20]~2\ = CARRY((\COUNTER_PROC:counter[20]~q\ & !\COUNTER_PROC:counter[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[20]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[19]~2\,
	combout => \COUNTER_PROC:counter[20]~1_combout\,
	cout => \COUNTER_PROC:counter[20]~2\);

-- Location: FF_X41_Y9_N9
\COUNTER_PROC:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[20]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[20]~q\);

-- Location: LCCOMB_X41_Y9_N10
\COUNTER_PROC:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[21]~1_combout\ = (\COUNTER_PROC:counter[21]~q\ & (!\COUNTER_PROC:counter[20]~2\)) # (!\COUNTER_PROC:counter[21]~q\ & ((\COUNTER_PROC:counter[20]~2\) # (GND)))
-- \COUNTER_PROC:counter[21]~2\ = CARRY((!\COUNTER_PROC:counter[20]~2\) # (!\COUNTER_PROC:counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[21]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[20]~2\,
	combout => \COUNTER_PROC:counter[21]~1_combout\,
	cout => \COUNTER_PROC:counter[21]~2\);

-- Location: FF_X41_Y9_N11
\COUNTER_PROC:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[21]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[21]~q\);

-- Location: LCCOMB_X41_Y9_N12
\COUNTER_PROC:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[22]~1_combout\ = (\COUNTER_PROC:counter[22]~q\ & (\COUNTER_PROC:counter[21]~2\ $ (GND))) # (!\COUNTER_PROC:counter[22]~q\ & (!\COUNTER_PROC:counter[21]~2\ & VCC))
-- \COUNTER_PROC:counter[22]~2\ = CARRY((\COUNTER_PROC:counter[22]~q\ & !\COUNTER_PROC:counter[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[22]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[21]~2\,
	combout => \COUNTER_PROC:counter[22]~1_combout\,
	cout => \COUNTER_PROC:counter[22]~2\);

-- Location: FF_X41_Y9_N13
\COUNTER_PROC:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[22]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[22]~q\);

-- Location: LCCOMB_X41_Y9_N14
\COUNTER_PROC:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[23]~1_combout\ = (\COUNTER_PROC:counter[23]~q\ & (!\COUNTER_PROC:counter[22]~2\)) # (!\COUNTER_PROC:counter[23]~q\ & ((\COUNTER_PROC:counter[22]~2\) # (GND)))
-- \COUNTER_PROC:counter[23]~2\ = CARRY((!\COUNTER_PROC:counter[22]~2\) # (!\COUNTER_PROC:counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[23]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[22]~2\,
	combout => \COUNTER_PROC:counter[23]~1_combout\,
	cout => \COUNTER_PROC:counter[23]~2\);

-- Location: FF_X41_Y9_N15
\COUNTER_PROC:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[23]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[23]~q\);

-- Location: LCCOMB_X41_Y9_N16
\COUNTER_PROC:counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[24]~1_combout\ = (\COUNTER_PROC:counter[24]~q\ & (\COUNTER_PROC:counter[23]~2\ $ (GND))) # (!\COUNTER_PROC:counter[24]~q\ & (!\COUNTER_PROC:counter[23]~2\ & VCC))
-- \COUNTER_PROC:counter[24]~2\ = CARRY((\COUNTER_PROC:counter[24]~q\ & !\COUNTER_PROC:counter[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[24]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[23]~2\,
	combout => \COUNTER_PROC:counter[24]~1_combout\,
	cout => \COUNTER_PROC:counter[24]~2\);

-- Location: FF_X41_Y9_N17
\COUNTER_PROC:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[24]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[24]~q\);

-- Location: LCCOMB_X41_Y9_N18
\COUNTER_PROC:counter[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[25]~1_combout\ = (\COUNTER_PROC:counter[25]~q\ & (!\COUNTER_PROC:counter[24]~2\)) # (!\COUNTER_PROC:counter[25]~q\ & ((\COUNTER_PROC:counter[24]~2\) # (GND)))
-- \COUNTER_PROC:counter[25]~2\ = CARRY((!\COUNTER_PROC:counter[24]~2\) # (!\COUNTER_PROC:counter[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[25]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[24]~2\,
	combout => \COUNTER_PROC:counter[25]~1_combout\,
	cout => \COUNTER_PROC:counter[25]~2\);

-- Location: FF_X41_Y9_N19
\COUNTER_PROC:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[25]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[25]~q\);

-- Location: LCCOMB_X41_Y9_N20
\COUNTER_PROC:counter[26]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[26]~1_combout\ = (\COUNTER_PROC:counter[26]~q\ & (\COUNTER_PROC:counter[25]~2\ $ (GND))) # (!\COUNTER_PROC:counter[26]~q\ & (!\COUNTER_PROC:counter[25]~2\ & VCC))
-- \COUNTER_PROC:counter[26]~2\ = CARRY((\COUNTER_PROC:counter[26]~q\ & !\COUNTER_PROC:counter[25]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[26]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[25]~2\,
	combout => \COUNTER_PROC:counter[26]~1_combout\,
	cout => \COUNTER_PROC:counter[26]~2\);

-- Location: FF_X41_Y9_N21
\COUNTER_PROC:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[26]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[26]~q\);

-- Location: LCCOMB_X41_Y9_N22
\COUNTER_PROC:counter[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[27]~1_combout\ = (\COUNTER_PROC:counter[27]~q\ & (!\COUNTER_PROC:counter[26]~2\)) # (!\COUNTER_PROC:counter[27]~q\ & ((\COUNTER_PROC:counter[26]~2\) # (GND)))
-- \COUNTER_PROC:counter[27]~2\ = CARRY((!\COUNTER_PROC:counter[26]~2\) # (!\COUNTER_PROC:counter[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[27]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[26]~2\,
	combout => \COUNTER_PROC:counter[27]~1_combout\,
	cout => \COUNTER_PROC:counter[27]~2\);

-- Location: FF_X41_Y9_N23
\COUNTER_PROC:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[27]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[27]~q\);

-- Location: LCCOMB_X41_Y9_N24
\COUNTER_PROC:counter[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[28]~1_combout\ = (\COUNTER_PROC:counter[28]~q\ & (\COUNTER_PROC:counter[27]~2\ $ (GND))) # (!\COUNTER_PROC:counter[28]~q\ & (!\COUNTER_PROC:counter[27]~2\ & VCC))
-- \COUNTER_PROC:counter[28]~2\ = CARRY((\COUNTER_PROC:counter[28]~q\ & !\COUNTER_PROC:counter[27]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[28]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[27]~2\,
	combout => \COUNTER_PROC:counter[28]~1_combout\,
	cout => \COUNTER_PROC:counter[28]~2\);

-- Location: FF_X41_Y9_N25
\COUNTER_PROC:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[28]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[28]~q\);

-- Location: LCCOMB_X41_Y9_N26
\COUNTER_PROC:counter[29]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[29]~1_combout\ = (\COUNTER_PROC:counter[29]~q\ & (!\COUNTER_PROC:counter[28]~2\)) # (!\COUNTER_PROC:counter[29]~q\ & ((\COUNTER_PROC:counter[28]~2\) # (GND)))
-- \COUNTER_PROC:counter[29]~2\ = CARRY((!\COUNTER_PROC:counter[28]~2\) # (!\COUNTER_PROC:counter[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[29]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[28]~2\,
	combout => \COUNTER_PROC:counter[29]~1_combout\,
	cout => \COUNTER_PROC:counter[29]~2\);

-- Location: FF_X41_Y9_N27
\COUNTER_PROC:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[29]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[29]~q\);

-- Location: LCCOMB_X41_Y9_N28
\COUNTER_PROC:counter[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[30]~1_combout\ = (\COUNTER_PROC:counter[30]~q\ & (\COUNTER_PROC:counter[29]~2\ $ (GND))) # (!\COUNTER_PROC:counter[30]~q\ & (!\COUNTER_PROC:counter[29]~2\ & VCC))
-- \COUNTER_PROC:counter[30]~2\ = CARRY((\COUNTER_PROC:counter[30]~q\ & !\COUNTER_PROC:counter[29]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_PROC:counter[30]~q\,
	datad => VCC,
	cin => \COUNTER_PROC:counter[29]~2\,
	combout => \COUNTER_PROC:counter[30]~1_combout\,
	cout => \COUNTER_PROC:counter[30]~2\);

-- Location: FF_X41_Y9_N29
\COUNTER_PROC:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[30]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[30]~q\);

-- Location: LCCOMB_X41_Y9_N30
\COUNTER_PROC:counter[31]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER_PROC:counter[31]~1_combout\ = \COUNTER_PROC:counter[31]~q\ $ (\COUNTER_PROC:counter[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[31]~q\,
	cin => \COUNTER_PROC:counter[30]~2\,
	combout => \COUNTER_PROC:counter[31]~1_combout\);

-- Location: FF_X41_Y9_N31
\COUNTER_PROC:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \COUNTER_PROC:counter[31]~1_combout\,
	clrn => \SW~input_o\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_PROC:counter[31]~q\);

-- Location: LCCOMB_X42_Y10_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\COUNTER_PROC:counter[23]~q\ & (!\COUNTER_PROC:counter[26]~q\ & (!\COUNTER_PROC:counter[24]~q\ & !\COUNTER_PROC:counter[25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[23]~q\,
	datab => \COUNTER_PROC:counter[26]~q\,
	datac => \COUNTER_PROC:counter[24]~q\,
	datad => \COUNTER_PROC:counter[25]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y10_N24
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\COUNTER_PROC:counter[28]~q\ & (!\COUNTER_PROC:counter[27]~q\ & (!\COUNTER_PROC:counter[29]~q\ & !\COUNTER_PROC:counter[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[28]~q\,
	datab => \COUNTER_PROC:counter[27]~q\,
	datac => \COUNTER_PROC:counter[29]~q\,
	datad => \COUNTER_PROC:counter[30]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y10_N14
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\COUNTER_PROC:counter[31]~q\) # ((!\COUNTER_PROC:counter[22]~q\ & (\LessThan0~0_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[22]~q\,
	datab => \COUNTER_PROC:counter[31]~q\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y10_N28
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\COUNTER_PROC:counter[20]~q\ & (!\COUNTER_PROC:counter[21]~q\ & (\LessThan0~0_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_PROC:counter[20]~q\,
	datab => \COUNTER_PROC:counter[21]~q\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X42_Y10_N20
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!\LessThan0~2_combout\ & (((!\LessThan0~8_combout\ & !\LessThan0~7_combout\)) # (!\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X42_Y10_N16
\CLK_10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10~0_combout\ = \CLK_10~q\ $ (\LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_10~q\,
	datad => \LessThan0~9_combout\,
	combout => \CLK_10~0_combout\);

-- Location: FF_X42_Y10_N17
CLK_10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sig1~clkctrl_outclk\,
	d => \CLK_10~0_combout\,
	clrn => \SW~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10~q\);

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

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;
END structure;


