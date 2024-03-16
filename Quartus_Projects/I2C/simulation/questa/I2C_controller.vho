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

-- DATE "03/16/2024 12:06:21"

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

ENTITY 	I2C_controller IS
    PORT (
	clk_100MHz : IN std_logic;
	rst : IN std_logic;
	SQ_in : IN std_logic;
	SCL : BUFFER std_logic;
	SDA : BUFFER std_logic;
	W_ADDRESS : IN std_logic_vector(7 DOWNTO 0)
	);
END I2C_controller;

-- Design Ports Information
-- SQ_in	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_100MHz	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[6]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_ADDRESS[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2C_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_100MHz : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_SQ_in : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_W_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_1MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_100MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SQ_in~input_o\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \clk_100MHz~input_o\ : std_logic;
SIGNAL \clk_100MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[0]~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[0]~q\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[0]~2\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[1]~1_combout\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[1]~q\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[1]~2\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[2]~1_combout\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[2]~q\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[2]~2\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[3]~1_combout\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[3]~q\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[3]~2\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[4]~1_combout\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[4]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[4]~2\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[5]~1_combout\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[5]~q\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[5]~2\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[6]~1_combout\ : std_logic;
SIGNAL \HUNDRED_KHZ_PROC:counter[6]~q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \clk_1MHz~feeder_combout\ : std_logic;
SIGNAL \clk_1MHz~q\ : std_logic;
SIGNAL \clk_1MHz~clkctrl_outclk\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[0]~1_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[3]~2\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[4]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \i2cVariable.NEXT5~q\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:data_bits[0]~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:data_bits[2]~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \i2cVariable.SETUP1~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \i2cVariable.NEXT1~q\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \i2cVariable.NEXT2~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \i2cVariable.SETUP2~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \i2cVariable.NEXT3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:data_bits[3]~0_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:data_bits[3]~1_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:data_bits[0]~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:data_bits[1]~q\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \i2c_ack~0_combout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \i2cVariable.NEXT6~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \i2cVariable.NEXT4~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \i2c_ack~1_combout\ : std_logic;
SIGNAL \i2c_ack~q\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \i2cVariable.SETUP3~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \i2cVariable.RPT_START~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \i2cVariable.SETUP4~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[4]~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \i2cVariable.INIT~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \i2cVariable.START~q\ : std_logic;
SIGNAL \i2cVariable.STOP~4_combout\ : std_logic;
SIGNAL \i2cVariable.STOP~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \i2cVariable.STOP~2_combout\ : std_logic;
SIGNAL \i2cVariable.STOP~3_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \i2cVariable.STOP~1_combout\ : std_logic;
SIGNAL \i2cVariable.STOP~5_combout\ : std_logic;
SIGNAL \i2cVariable.STOP~q\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[0]~4_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[0]~3_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[0]~5_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[0]~q\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[0]~2\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[1]~1_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[1]~q\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[1]~2\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[2]~1_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[2]~q\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[2]~2\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[3]~1_combout\ : std_logic;
SIGNAL \I2C_ENGINE_PROC:counter[3]~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \i2cVariable.NEXT7~q\ : std_logic;
SIGNAL \i2cVariable.NACK~q\ : std_logic;
SIGNAL \i2c_clk_en~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \i2c_clk_en~q\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \i2c_dataToSend[7]~1_combout\ : std_logic;
SIGNAL \W_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \Selector32~5_combout\ : std_logic;
SIGNAL \Selector32~6_combout\ : std_logic;
SIGNAL \i2c_dataToSend[7]~2_combout\ : std_logic;
SIGNAL \Selector32~7_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \W_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \i2c_dataToSend[7]~0_combout\ : std_logic;
SIGNAL \i2c_dataToSend[7]~3_combout\ : std_logic;
SIGNAL \i2c_dataToSend[7]~4_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \W_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \W_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \W_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \W_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \W_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \W_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \Selector24~5_combout\ : std_logic;
SIGNAL \i2c_data~q\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \i2c_data_en~q\ : std_logic;
SIGNAL i2c_dataToSend : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_100MHz <= clk_100MHz;
ww_rst <= rst;
ww_SQ_in <= SQ_in;
SCL <= ww_SCL;
SDA <= ww_SDA;
ww_W_ADDRESS <= W_ADDRESS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_1MHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1MHz~q\);

\clk_100MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_100MHz~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X38_Y0_N23
\SCL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \i2c_clk_en~q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\SDA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_data~q\,
	oe => \i2c_data_en~q\,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk_100MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_100MHz,
	o => \clk_100MHz~input_o\);

-- Location: CLKCTRL_G3
\clk_100MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_100MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_100MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N10
\HUNDRED_KHZ_PROC:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HUNDRED_KHZ_PROC:counter[0]~1_combout\ = \HUNDRED_KHZ_PROC:counter[0]~q\ $ (VCC)
-- \HUNDRED_KHZ_PROC:counter[0]~2\ = CARRY(\HUNDRED_KHZ_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HUNDRED_KHZ_PROC:counter[0]~q\,
	datad => VCC,
	combout => \HUNDRED_KHZ_PROC:counter[0]~1_combout\,
	cout => \HUNDRED_KHZ_PROC:counter[0]~2\);

-- Location: IOIBUF_X0_Y18_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G1
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X45_Y53_N11
\HUNDRED_KHZ_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \HUNDRED_KHZ_PROC:counter[0]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HUNDRED_KHZ_PROC:counter[0]~q\);

-- Location: LCCOMB_X45_Y53_N12
\HUNDRED_KHZ_PROC:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HUNDRED_KHZ_PROC:counter[1]~1_combout\ = (\HUNDRED_KHZ_PROC:counter[1]~q\ & (!\HUNDRED_KHZ_PROC:counter[0]~2\)) # (!\HUNDRED_KHZ_PROC:counter[1]~q\ & ((\HUNDRED_KHZ_PROC:counter[0]~2\) # (GND)))
-- \HUNDRED_KHZ_PROC:counter[1]~2\ = CARRY((!\HUNDRED_KHZ_PROC:counter[0]~2\) # (!\HUNDRED_KHZ_PROC:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HUNDRED_KHZ_PROC:counter[1]~q\,
	datad => VCC,
	cin => \HUNDRED_KHZ_PROC:counter[0]~2\,
	combout => \HUNDRED_KHZ_PROC:counter[1]~1_combout\,
	cout => \HUNDRED_KHZ_PROC:counter[1]~2\);

-- Location: FF_X45_Y53_N13
\HUNDRED_KHZ_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \HUNDRED_KHZ_PROC:counter[1]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HUNDRED_KHZ_PROC:counter[1]~q\);

-- Location: LCCOMB_X45_Y53_N14
\HUNDRED_KHZ_PROC:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HUNDRED_KHZ_PROC:counter[2]~1_combout\ = (\HUNDRED_KHZ_PROC:counter[2]~q\ & (\HUNDRED_KHZ_PROC:counter[1]~2\ $ (GND))) # (!\HUNDRED_KHZ_PROC:counter[2]~q\ & (!\HUNDRED_KHZ_PROC:counter[1]~2\ & VCC))
-- \HUNDRED_KHZ_PROC:counter[2]~2\ = CARRY((\HUNDRED_KHZ_PROC:counter[2]~q\ & !\HUNDRED_KHZ_PROC:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HUNDRED_KHZ_PROC:counter[2]~q\,
	datad => VCC,
	cin => \HUNDRED_KHZ_PROC:counter[1]~2\,
	combout => \HUNDRED_KHZ_PROC:counter[2]~1_combout\,
	cout => \HUNDRED_KHZ_PROC:counter[2]~2\);

-- Location: FF_X45_Y53_N15
\HUNDRED_KHZ_PROC:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \HUNDRED_KHZ_PROC:counter[2]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HUNDRED_KHZ_PROC:counter[2]~q\);

-- Location: LCCOMB_X45_Y53_N16
\HUNDRED_KHZ_PROC:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HUNDRED_KHZ_PROC:counter[3]~1_combout\ = (\HUNDRED_KHZ_PROC:counter[3]~q\ & (!\HUNDRED_KHZ_PROC:counter[2]~2\)) # (!\HUNDRED_KHZ_PROC:counter[3]~q\ & ((\HUNDRED_KHZ_PROC:counter[2]~2\) # (GND)))
-- \HUNDRED_KHZ_PROC:counter[3]~2\ = CARRY((!\HUNDRED_KHZ_PROC:counter[2]~2\) # (!\HUNDRED_KHZ_PROC:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HUNDRED_KHZ_PROC:counter[3]~q\,
	datad => VCC,
	cin => \HUNDRED_KHZ_PROC:counter[2]~2\,
	combout => \HUNDRED_KHZ_PROC:counter[3]~1_combout\,
	cout => \HUNDRED_KHZ_PROC:counter[3]~2\);

-- Location: FF_X45_Y53_N17
\HUNDRED_KHZ_PROC:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \HUNDRED_KHZ_PROC:counter[3]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HUNDRED_KHZ_PROC:counter[3]~q\);

-- Location: LCCOMB_X45_Y53_N18
\HUNDRED_KHZ_PROC:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HUNDRED_KHZ_PROC:counter[4]~1_combout\ = (\HUNDRED_KHZ_PROC:counter[4]~q\ & (\HUNDRED_KHZ_PROC:counter[3]~2\ $ (GND))) # (!\HUNDRED_KHZ_PROC:counter[4]~q\ & (!\HUNDRED_KHZ_PROC:counter[3]~2\ & VCC))
-- \HUNDRED_KHZ_PROC:counter[4]~2\ = CARRY((\HUNDRED_KHZ_PROC:counter[4]~q\ & !\HUNDRED_KHZ_PROC:counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HUNDRED_KHZ_PROC:counter[4]~q\,
	datad => VCC,
	cin => \HUNDRED_KHZ_PROC:counter[3]~2\,
	combout => \HUNDRED_KHZ_PROC:counter[4]~1_combout\,
	cout => \HUNDRED_KHZ_PROC:counter[4]~2\);

-- Location: FF_X45_Y53_N19
\HUNDRED_KHZ_PROC:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \HUNDRED_KHZ_PROC:counter[4]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HUNDRED_KHZ_PROC:counter[4]~q\);

-- Location: LCCOMB_X45_Y53_N24
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\HUNDRED_KHZ_PROC:counter[3]~q\ & (!\HUNDRED_KHZ_PROC:counter[2]~q\ & ((!\HUNDRED_KHZ_PROC:counter[0]~q\) # (!\HUNDRED_KHZ_PROC:counter[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HUNDRED_KHZ_PROC:counter[1]~q\,
	datab => \HUNDRED_KHZ_PROC:counter[3]~q\,
	datac => \HUNDRED_KHZ_PROC:counter[2]~q\,
	datad => \HUNDRED_KHZ_PROC:counter[0]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y53_N20
\HUNDRED_KHZ_PROC:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HUNDRED_KHZ_PROC:counter[5]~1_combout\ = (\HUNDRED_KHZ_PROC:counter[5]~q\ & (!\HUNDRED_KHZ_PROC:counter[4]~2\)) # (!\HUNDRED_KHZ_PROC:counter[5]~q\ & ((\HUNDRED_KHZ_PROC:counter[4]~2\) # (GND)))
-- \HUNDRED_KHZ_PROC:counter[5]~2\ = CARRY((!\HUNDRED_KHZ_PROC:counter[4]~2\) # (!\HUNDRED_KHZ_PROC:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HUNDRED_KHZ_PROC:counter[5]~q\,
	datad => VCC,
	cin => \HUNDRED_KHZ_PROC:counter[4]~2\,
	combout => \HUNDRED_KHZ_PROC:counter[5]~1_combout\,
	cout => \HUNDRED_KHZ_PROC:counter[5]~2\);

-- Location: FF_X45_Y53_N21
\HUNDRED_KHZ_PROC:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \HUNDRED_KHZ_PROC:counter[5]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HUNDRED_KHZ_PROC:counter[5]~q\);

-- Location: LCCOMB_X45_Y53_N22
\HUNDRED_KHZ_PROC:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HUNDRED_KHZ_PROC:counter[6]~1_combout\ = \HUNDRED_KHZ_PROC:counter[6]~q\ $ (!\HUNDRED_KHZ_PROC:counter[5]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HUNDRED_KHZ_PROC:counter[6]~q\,
	cin => \HUNDRED_KHZ_PROC:counter[5]~2\,
	combout => \HUNDRED_KHZ_PROC:counter[6]~1_combout\);

-- Location: FF_X45_Y53_N23
\HUNDRED_KHZ_PROC:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \HUNDRED_KHZ_PROC:counter[6]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HUNDRED_KHZ_PROC:counter[6]~q\);

-- Location: LCCOMB_X45_Y53_N28
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\HUNDRED_KHZ_PROC:counter[6]~q\ & (\HUNDRED_KHZ_PROC:counter[5]~q\ & ((\HUNDRED_KHZ_PROC:counter[4]~q\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HUNDRED_KHZ_PROC:counter[4]~q\,
	datab => \LessThan0~0_combout\,
	datac => \HUNDRED_KHZ_PROC:counter[6]~q\,
	datad => \HUNDRED_KHZ_PROC:counter[5]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y53_N26
\clk_1MHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_1MHz~feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \clk_1MHz~feeder_combout\);

-- Location: FF_X45_Y53_N27
clk_1MHz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_100MHz~inputclkctrl_outclk\,
	d => \clk_1MHz~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1MHz~q\);

-- Location: CLKCTRL_G11
\clk_1MHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1MHz~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y4_N0
\I2C_ENGINE_PROC:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[0]~1_combout\ = \I2C_ENGINE_PROC:counter[0]~q\ $ (VCC)
-- \I2C_ENGINE_PROC:counter[0]~2\ = CARRY(\I2C_ENGINE_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_ENGINE_PROC:counter[0]~q\,
	datad => VCC,
	combout => \I2C_ENGINE_PROC:counter[0]~1_combout\,
	cout => \I2C_ENGINE_PROC:counter[0]~2\);

-- Location: LCCOMB_X34_Y4_N6
\I2C_ENGINE_PROC:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[3]~1_combout\ = (\I2C_ENGINE_PROC:counter[3]~q\ & (!\I2C_ENGINE_PROC:counter[2]~2\)) # (!\I2C_ENGINE_PROC:counter[3]~q\ & ((\I2C_ENGINE_PROC:counter[2]~2\) # (GND)))
-- \I2C_ENGINE_PROC:counter[3]~2\ = CARRY((!\I2C_ENGINE_PROC:counter[2]~2\) # (!\I2C_ENGINE_PROC:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[3]~q\,
	datad => VCC,
	cin => \I2C_ENGINE_PROC:counter[2]~2\,
	combout => \I2C_ENGINE_PROC:counter[3]~1_combout\,
	cout => \I2C_ENGINE_PROC:counter[3]~2\);

-- Location: LCCOMB_X34_Y4_N8
\I2C_ENGINE_PROC:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[4]~1_combout\ = \I2C_ENGINE_PROC:counter[3]~2\ $ (!\I2C_ENGINE_PROC:counter[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C_ENGINE_PROC:counter[4]~q\,
	cin => \I2C_ENGINE_PROC:counter[3]~2\,
	combout => \I2C_ENGINE_PROC:counter[4]~1_combout\);

-- Location: LCCOMB_X34_Y4_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\I2C_ENGINE_PROC:counter[4]~q\ & !\I2C_ENGINE_PROC:counter[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[4]~q\,
	datad => \I2C_ENGINE_PROC:counter[3]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X34_Y4_N14
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = ((\I2C_ENGINE_PROC:counter[0]~q\ & (\I2C_ENGINE_PROC:counter[2]~q\ & \I2C_ENGINE_PROC:counter[1]~q\))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \I2C_ENGINE_PROC:counter[0]~q\,
	datac => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => \I2C_ENGINE_PROC:counter[1]~q\,
	combout => \counter~2_combout\);

-- Location: LCCOMB_X37_Y4_N26
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\i2cVariable.SETUP4~q\) # ((\i2cVariable.NEXT5~q\ & !\counter~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.SETUP4~q\,
	datac => \i2cVariable.NEXT5~q\,
	datad => \counter~2_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X37_Y4_N27
\i2cVariable.NEXT5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NEXT5~q\);

-- Location: LCCOMB_X36_Y5_N12
\I2C_ENGINE_PROC:data_bits[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:data_bits[0]~0_combout\ = !\I2C_ENGINE_PROC:data_bits[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_ENGINE_PROC:data_bits[0]~q\,
	combout => \I2C_ENGINE_PROC:data_bits[0]~0_combout\);

-- Location: LCCOMB_X36_Y5_N24
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = \I2C_ENGINE_PROC:data_bits[2]~q\ $ (((\I2C_ENGINE_PROC:data_bits[1]~q\ & \I2C_ENGINE_PROC:data_bits[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:data_bits[1]~q\,
	datac => \I2C_ENGINE_PROC:data_bits[2]~q\,
	datad => \I2C_ENGINE_PROC:data_bits[0]~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X36_Y5_N25
\I2C_ENGINE_PROC:data_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \I2C_ENGINE_PROC:data_bits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:data_bits[2]~q\);

-- Location: LCCOMB_X36_Y5_N30
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\I2C_ENGINE_PROC:data_bits[1]~q\ & (\I2C_ENGINE_PROC:data_bits[2]~q\ & (\counter~2_combout\ & \I2C_ENGINE_PROC:data_bits[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:data_bits[1]~q\,
	datab => \I2C_ENGINE_PROC:data_bits[2]~q\,
	datac => \counter~2_combout\,
	datad => \I2C_ENGINE_PROC:data_bits[0]~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X37_Y4_N28
\Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\LessThan1~0_combout\ & (\Selector10~3_combout\ & (\i2cVariable.NEXT1~q\))) # (!\LessThan1~0_combout\ & ((\i2cVariable.START~q\) # ((\Selector10~3_combout\ & \i2cVariable.NEXT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Selector10~3_combout\,
	datac => \i2cVariable.NEXT1~q\,
	datad => \i2cVariable.START~q\,
	combout => \Selector10~2_combout\);

-- Location: FF_X37_Y4_N29
\i2cVariable.SETUP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector10~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.SETUP1~q\);

-- Location: LCCOMB_X37_Y4_N6
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\i2cVariable.SETUP1~q\) # ((!\counter~2_combout\ & \i2cVariable.NEXT1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~2_combout\,
	datac => \i2cVariable.NEXT1~q\,
	datad => \i2cVariable.SETUP1~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X37_Y4_N7
\i2cVariable.NEXT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NEXT1~q\);

-- Location: LCCOMB_X36_Y4_N26
\Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\ & ((\i2cVariable.NEXT1~q\) # ((\Equal0~0_combout\ & \i2cVariable.NEXT2~q\)))) # (!\Selector12~0_combout\ & (\Equal0~0_combout\ & (\i2cVariable.NEXT2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \i2cVariable.NEXT2~q\,
	datad => \i2cVariable.NEXT1~q\,
	combout => \Selector12~1_combout\);

-- Location: FF_X36_Y4_N27
\i2cVariable.NEXT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector12~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NEXT2~q\);

-- Location: LCCOMB_X36_Y4_N18
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Selector16~0_combout\ & ((\i2cVariable.NEXT2~q\) # ((\Selector10~3_combout\ & \i2cVariable.NEXT3~q\)))) # (!\Selector16~0_combout\ & (((\Selector10~3_combout\ & \i2cVariable.NEXT3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \i2cVariable.NEXT2~q\,
	datac => \Selector10~3_combout\,
	datad => \i2cVariable.NEXT3~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X36_Y4_N19
\i2cVariable.SETUP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.SETUP2~q\);

-- Location: LCCOMB_X36_Y4_N6
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\i2cVariable.SETUP2~q\) # ((!\counter~2_combout\ & \i2cVariable.NEXT3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.SETUP2~q\,
	datab => \counter~2_combout\,
	datac => \i2cVariable.NEXT3~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X36_Y4_N7
\i2cVariable.NEXT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NEXT3~q\);

-- Location: LCCOMB_X36_Y4_N8
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\i2cVariable.NEXT3~q\ & (!\i2cVariable.NEXT5~q\ & !\i2cVariable.NEXT1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NEXT3~q\,
	datab => \i2cVariable.NEXT5~q\,
	datad => \i2cVariable.NEXT1~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X34_Y4_N20
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\I2C_ENGINE_PROC:counter[0]~q\ & !\I2C_ENGINE_PROC:counter[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_ENGINE_PROC:counter[0]~q\,
	datad => \I2C_ENGINE_PROC:counter[1]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X34_Y4_N12
\counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\I2C_ENGINE_PROC:counter[4]~q\) # ((\I2C_ENGINE_PROC:counter[3]~q\ & ((\I2C_ENGINE_PROC:counter[2]~q\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[3]~q\,
	datab => \Equal0~1_combout\,
	datac => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => \I2C_ENGINE_PROC:counter[4]~q\,
	combout => \counter~3_combout\);

-- Location: LCCOMB_X35_Y4_N4
\I2C_ENGINE_PROC:data_bits[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:data_bits[3]~0_combout\ = (\i2cVariable.NEXT7~q\ & (((\counter~3_combout\)))) # (!\i2cVariable.NEXT7~q\ & (\counter~2_combout\ & (!\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~2_combout\,
	datab => \i2cVariable.NEXT7~q\,
	datac => \Selector0~0_combout\,
	datad => \counter~3_combout\,
	combout => \I2C_ENGINE_PROC:data_bits[3]~0_combout\);

-- Location: LCCOMB_X36_Y5_N8
\I2C_ENGINE_PROC:data_bits[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:data_bits[3]~1_combout\ = (\rst~input_o\ & \I2C_ENGINE_PROC:data_bits[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \I2C_ENGINE_PROC:data_bits[3]~0_combout\,
	combout => \I2C_ENGINE_PROC:data_bits[3]~1_combout\);

-- Location: FF_X36_Y5_N13
\I2C_ENGINE_PROC:data_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \I2C_ENGINE_PROC:data_bits[0]~0_combout\,
	ena => \I2C_ENGINE_PROC:data_bits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:data_bits[0]~q\);

-- Location: LCCOMB_X36_Y5_N10
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = \I2C_ENGINE_PROC:data_bits[1]~q\ $ (\I2C_ENGINE_PROC:data_bits[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_ENGINE_PROC:data_bits[1]~q\,
	datad => \I2C_ENGINE_PROC:data_bits[0]~q\,
	combout => \Selector35~0_combout\);

-- Location: FF_X36_Y5_N11
\I2C_ENGINE_PROC:data_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector35~0_combout\,
	ena => \I2C_ENGINE_PROC:data_bits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:data_bits[1]~q\);

-- Location: LCCOMB_X36_Y5_N26
\Selector10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\counter~2_combout\ & (((!\I2C_ENGINE_PROC:data_bits[0]~q\) # (!\I2C_ENGINE_PROC:data_bits[2]~q\)) # (!\I2C_ENGINE_PROC:data_bits[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:data_bits[1]~q\,
	datab => \I2C_ENGINE_PROC:data_bits[2]~q\,
	datac => \counter~2_combout\,
	datad => \I2C_ENGINE_PROC:data_bits[0]~q\,
	combout => \Selector10~3_combout\);

-- Location: LCCOMB_X34_Y4_N24
\i2c_ack~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_ack~0_combout\ = (\rst~input_o\ & ((\I2C_ENGINE_PROC:counter[3]~q\) # ((\I2C_ENGINE_PROC:counter[2]~q\) # (\I2C_ENGINE_PROC:counter[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[3]~q\,
	datab => \I2C_ENGINE_PROC:counter[2]~q\,
	datac => \rst~input_o\,
	datad => \I2C_ENGINE_PROC:counter[4]~q\,
	combout => \i2c_ack~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\SDA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X36_Y4_N30
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Selector12~0_combout\ & ((\i2cVariable.NEXT5~q\) # ((\Equal0~0_combout\ & \i2cVariable.NEXT6~q\)))) # (!\Selector12~0_combout\ & (\Equal0~0_combout\ & (\i2cVariable.NEXT6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \i2cVariable.NEXT6~q\,
	datad => \i2cVariable.NEXT5~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X36_Y4_N31
\i2cVariable.NEXT6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NEXT6~q\);

-- Location: LCCOMB_X36_Y4_N12
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Selector12~0_combout\ & ((\i2cVariable.NEXT3~q\) # ((\Equal0~0_combout\ & \i2cVariable.NEXT4~q\)))) # (!\Selector12~0_combout\ & (\Equal0~0_combout\ & (\i2cVariable.NEXT4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \i2cVariable.NEXT4~q\,
	datad => \i2cVariable.NEXT3~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X36_Y4_N13
\i2cVariable.NEXT4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NEXT4~q\);

-- Location: LCCOMB_X36_Y4_N16
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\i2cVariable.NEXT6~q\ & (!\i2cVariable.NEXT2~q\ & !\i2cVariable.NEXT4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NEXT6~q\,
	datac => \i2cVariable.NEXT2~q\,
	datad => \i2cVariable.NEXT4~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X38_Y4_N6
\i2c_ack~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_ack~1_combout\ = (\i2c_ack~0_combout\ & ((\Selector0~1_combout\ & ((\i2c_ack~q\))) # (!\Selector0~1_combout\ & (\SDA~input_o\)))) # (!\i2c_ack~0_combout\ & (((\i2c_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ack~0_combout\,
	datab => \SDA~input_o\,
	datac => \i2c_ack~q\,
	datad => \Selector0~1_combout\,
	combout => \i2c_ack~1_combout\);

-- Location: FF_X38_Y4_N7
i2c_ack : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \i2c_ack~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ack~q\);

-- Location: LCCOMB_X36_Y4_N20
\Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (!\i2c_ack~q\ & (\i2cVariable.NEXT4~q\ & ((\I2C_ENGINE_PROC:counter[4]~q\) # (\I2C_ENGINE_PROC:counter[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[4]~q\,
	datab => \I2C_ENGINE_PROC:counter[3]~q\,
	datac => \i2c_ack~q\,
	datad => \i2cVariable.NEXT4~q\,
	combout => \Selector16~1_combout\);

-- Location: FF_X36_Y4_N21
\i2cVariable.SETUP3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector16~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.SETUP3~q\);

-- Location: LCCOMB_X37_Y4_N14
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\i2cVariable.SETUP3~q\) # ((\LessThan1~0_combout\ & \i2cVariable.RPT_START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.SETUP3~q\,
	datab => \LessThan1~0_combout\,
	datac => \i2cVariable.RPT_START~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X37_Y4_N15
\i2cVariable.RPT_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.RPT_START~q\);

-- Location: LCCOMB_X37_Y4_N16
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\i2cVariable.NEXT5~q\ & ((\Selector10~3_combout\) # ((\i2cVariable.RPT_START~q\ & !\LessThan1~0_combout\)))) # (!\i2cVariable.NEXT5~q\ & (((\i2cVariable.RPT_START~q\ & !\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NEXT5~q\,
	datab => \Selector10~3_combout\,
	datac => \i2cVariable.RPT_START~q\,
	datad => \LessThan1~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X37_Y4_N17
\i2cVariable.SETUP4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.SETUP4~q\);

-- Location: LCCOMB_X37_Y4_N30
\WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\i2cVariable.SETUP4~q\ & (!\i2cVariable.SETUP2~q\ & (!\i2cVariable.SETUP3~q\ & !\i2cVariable.SETUP1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.SETUP4~q\,
	datab => \i2cVariable.SETUP2~q\,
	datac => \i2cVariable.SETUP3~q\,
	datad => \i2cVariable.SETUP1~q\,
	combout => \WideOr4~0_combout\);

-- Location: FF_X34_Y4_N9
\I2C_ENGINE_PROC:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \I2C_ENGINE_PROC:counter[4]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \I2C_ENGINE_PROC:counter[0]~5_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:counter[4]~q\);

-- Location: LCCOMB_X34_Y4_N16
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\I2C_ENGINE_PROC:counter[4]~q\ & (!\I2C_ENGINE_PROC:counter[2]~q\ & !\I2C_ENGINE_PROC:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[4]~q\,
	datab => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => \I2C_ENGINE_PROC:counter[3]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y4_N2
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector0~1_combout\) # ((\Equal0~0_combout\ & ((\i2cVariable.INIT~q\))) # (!\Equal0~0_combout\ & (!\i2c_ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ack~q\,
	datab => \Equal0~0_combout\,
	datac => \i2cVariable.INIT~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X38_Y4_N3
\i2cVariable.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.INIT~q\);

-- Location: LCCOMB_X37_Y4_N20
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ((\LessThan1~0_combout\ & \i2cVariable.START~q\)) # (!\i2cVariable.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \i2cVariable.START~q\,
	datad => \i2cVariable.INIT~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X37_Y4_N21
\i2cVariable.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.START~q\);

-- Location: LCCOMB_X36_Y5_N28
\i2cVariable.STOP~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.STOP~4_combout\ = (\i2cVariable.STOP~q\) # (((!\counter~3_combout\ & \i2cVariable.NACK~q\)) # (!\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~3_combout\,
	datab => \i2cVariable.STOP~q\,
	datac => \rst~input_o\,
	datad => \i2cVariable.NACK~q\,
	combout => \i2cVariable.STOP~4_combout\);

-- Location: LCCOMB_X38_Y4_N4
\i2cVariable.STOP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.STOP~0_combout\ = (\Selector0~0_combout\ & (((\Selector0~1_combout\)) # (!\Equal0~0_combout\))) # (!\Selector0~0_combout\ & (\counter~2_combout\ & ((\Selector0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \counter~2_combout\,
	datad => \Selector0~1_combout\,
	combout => \i2cVariable.STOP~0_combout\);

-- Location: LCCOMB_X37_Y4_N18
\Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (!\i2cVariable.RPT_START~q\ & !\i2cVariable.START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cVariable.RPT_START~q\,
	datad => \i2cVariable.START~q\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X37_Y4_N0
\Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (!\i2cVariable.SETUP4~q\ & (!\i2cVariable.SETUP2~q\ & (!\i2cVariable.NACK~q\ & !\i2cVariable.SETUP1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.SETUP4~q\,
	datab => \i2cVariable.SETUP2~q\,
	datac => \i2cVariable.NACK~q\,
	datad => \i2cVariable.SETUP1~q\,
	combout => \Selector24~3_combout\);

-- Location: LCCOMB_X38_Y4_N8
\i2cVariable.STOP~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.STOP~2_combout\ = (!\i2cVariable.NEXT7~q\ & (\i2cVariable.INIT~q\ & (!\i2cVariable.SETUP3~q\ & \Selector24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NEXT7~q\,
	datab => \i2cVariable.INIT~q\,
	datac => \i2cVariable.SETUP3~q\,
	datad => \Selector24~3_combout\,
	combout => \i2cVariable.STOP~2_combout\);

-- Location: LCCOMB_X38_Y4_N10
\i2cVariable.STOP~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.STOP~3_combout\ = (\i2cVariable.STOP~2_combout\ & (((!\Selector24~1_combout\ & \LessThan1~0_combout\)) # (!\i2cVariable.STOP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.STOP~0_combout\,
	datab => \Selector24~1_combout\,
	datac => \i2cVariable.STOP~2_combout\,
	datad => \LessThan1~0_combout\,
	combout => \i2cVariable.STOP~3_combout\);

-- Location: LCCOMB_X36_Y5_N0
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\I2C_ENGINE_PROC:data_bits[1]~q\ & (\I2C_ENGINE_PROC:data_bits[2]~q\ & \I2C_ENGINE_PROC:data_bits[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:data_bits[1]~q\,
	datab => \I2C_ENGINE_PROC:data_bits[2]~q\,
	datad => \I2C_ENGINE_PROC:data_bits[0]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X36_Y5_N18
\i2cVariable.STOP~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.STOP~1_combout\ = (\i2cVariable.NEXT7~q\ & ((!\LessThan3~0_combout\) # (!\counter~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~3_combout\,
	datac => \i2cVariable.NEXT7~q\,
	datad => \LessThan3~0_combout\,
	combout => \i2cVariable.STOP~1_combout\);

-- Location: LCCOMB_X36_Y5_N22
\i2cVariable.STOP~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.STOP~5_combout\ = (!\i2cVariable.STOP~4_combout\ & (!\i2cVariable.STOP~3_combout\ & !\i2cVariable.STOP~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cVariable.STOP~4_combout\,
	datac => \i2cVariable.STOP~3_combout\,
	datad => \i2cVariable.STOP~1_combout\,
	combout => \i2cVariable.STOP~5_combout\);

-- Location: FF_X37_Y4_N3
\i2cVariable.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	asdata => \i2cVariable.NACK~q\,
	sload => VCC,
	ena => \i2cVariable.STOP~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.STOP~q\);

-- Location: LCCOMB_X37_Y4_N22
\I2C_ENGINE_PROC:counter[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[0]~4_combout\ = (\i2cVariable.START~q\) # ((\i2cVariable.RPT_START~q\) # (\i2cVariable.STOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cVariable.START~q\,
	datac => \i2cVariable.RPT_START~q\,
	datad => \i2cVariable.STOP~q\,
	combout => \I2C_ENGINE_PROC:counter[0]~4_combout\);

-- Location: LCCOMB_X38_Y4_N22
\I2C_ENGINE_PROC:counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[0]~3_combout\ = ((!\counter~3_combout\ & ((\i2cVariable.NEXT7~q\) # (\i2cVariable.NACK~q\)))) # (!\i2cVariable.STOP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NEXT7~q\,
	datab => \i2cVariable.STOP~0_combout\,
	datac => \i2cVariable.NACK~q\,
	datad => \counter~3_combout\,
	combout => \I2C_ENGINE_PROC:counter[0]~3_combout\);

-- Location: LCCOMB_X37_Y4_N8
\I2C_ENGINE_PROC:counter[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[0]~5_combout\ = ((!\I2C_ENGINE_PROC:counter[0]~3_combout\ & ((!\LessThan1~0_combout\) # (!\I2C_ENGINE_PROC:counter[0]~4_combout\)))) # (!\i2cVariable.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[0]~4_combout\,
	datab => \I2C_ENGINE_PROC:counter[0]~3_combout\,
	datac => \LessThan1~0_combout\,
	datad => \i2cVariable.INIT~q\,
	combout => \I2C_ENGINE_PROC:counter[0]~5_combout\);

-- Location: FF_X34_Y4_N1
\I2C_ENGINE_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \I2C_ENGINE_PROC:counter[0]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \I2C_ENGINE_PROC:counter[0]~5_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:counter[0]~q\);

-- Location: LCCOMB_X34_Y4_N2
\I2C_ENGINE_PROC:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[1]~1_combout\ = (\I2C_ENGINE_PROC:counter[1]~q\ & (!\I2C_ENGINE_PROC:counter[0]~2\)) # (!\I2C_ENGINE_PROC:counter[1]~q\ & ((\I2C_ENGINE_PROC:counter[0]~2\) # (GND)))
-- \I2C_ENGINE_PROC:counter[1]~2\ = CARRY((!\I2C_ENGINE_PROC:counter[0]~2\) # (!\I2C_ENGINE_PROC:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C_ENGINE_PROC:counter[1]~q\,
	datad => VCC,
	cin => \I2C_ENGINE_PROC:counter[0]~2\,
	combout => \I2C_ENGINE_PROC:counter[1]~1_combout\,
	cout => \I2C_ENGINE_PROC:counter[1]~2\);

-- Location: FF_X34_Y4_N3
\I2C_ENGINE_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \I2C_ENGINE_PROC:counter[1]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \I2C_ENGINE_PROC:counter[0]~5_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:counter[1]~q\);

-- Location: LCCOMB_X34_Y4_N4
\I2C_ENGINE_PROC:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2C_ENGINE_PROC:counter[2]~1_combout\ = (\I2C_ENGINE_PROC:counter[2]~q\ & (\I2C_ENGINE_PROC:counter[1]~2\ $ (GND))) # (!\I2C_ENGINE_PROC:counter[2]~q\ & (!\I2C_ENGINE_PROC:counter[1]~2\ & VCC))
-- \I2C_ENGINE_PROC:counter[2]~2\ = CARRY((\I2C_ENGINE_PROC:counter[2]~q\ & !\I2C_ENGINE_PROC:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => VCC,
	cin => \I2C_ENGINE_PROC:counter[1]~2\,
	combout => \I2C_ENGINE_PROC:counter[2]~1_combout\,
	cout => \I2C_ENGINE_PROC:counter[2]~2\);

-- Location: FF_X34_Y4_N5
\I2C_ENGINE_PROC:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \I2C_ENGINE_PROC:counter[2]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \I2C_ENGINE_PROC:counter[0]~5_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:counter[2]~q\);

-- Location: FF_X34_Y4_N7
\I2C_ENGINE_PROC:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \I2C_ENGINE_PROC:counter[3]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \I2C_ENGINE_PROC:counter[0]~5_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_ENGINE_PROC:counter[3]~q\);

-- Location: LCCOMB_X34_Y4_N28
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\i2c_ack~q\ & ((\I2C_ENGINE_PROC:counter[3]~q\) # (\I2C_ENGINE_PROC:counter[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[3]~q\,
	datac => \i2c_ack~q\,
	datad => \I2C_ENGINE_PROC:counter[4]~q\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X36_Y4_N2
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\i2cVariable.STOP~1_combout\) # ((\Selector16~0_combout\ & \i2cVariable.NEXT6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datac => \i2cVariable.NEXT6~q\,
	datad => \i2cVariable.STOP~1_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X36_Y4_N3
\i2cVariable.NEXT7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NEXT7~q\);

-- Location: FF_X37_Y4_N1
\i2cVariable.NACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	asdata => \i2cVariable.NEXT7~q\,
	sload => VCC,
	ena => \i2cVariable.STOP~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.NACK~q\);

-- Location: LCCOMB_X36_Y4_N0
\i2c_clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_clk_en~0_combout\ = (\i2c_clk_en~q\ & (((!\I2C_ENGINE_PROC:counter[2]~q\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => \i2c_clk_en~q\,
	combout => \i2c_clk_en~0_combout\);

-- Location: LCCOMB_X36_Y4_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\i2cVariable.NACK~q\ & ((\i2c_clk_en~0_combout\) # ((\counter~3_combout\)))) # (!\i2cVariable.NACK~q\ & (\i2cVariable.NEXT7~q\ & ((\i2c_clk_en~0_combout\) # (\counter~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NACK~q\,
	datab => \i2c_clk_en~0_combout\,
	datac => \counter~3_combout\,
	datad => \i2cVariable.NEXT7~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X38_Y4_N16
\Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\Selector0~1_combout\ & ((\LessThan1~0_combout\ & ((\i2c_clk_en~q\))) # (!\LessThan1~0_combout\ & (\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Selector0~1_combout\,
	datac => \Selector16~0_combout\,
	datad => \i2c_clk_en~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X37_Y4_N4
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\i2cVariable.SETUP4~q\ & (!\i2cVariable.SETUP2~q\ & !\i2cVariable.SETUP1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.SETUP4~q\,
	datab => \i2cVariable.SETUP2~q\,
	datad => \i2cVariable.SETUP1~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X38_Y4_N26
\Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector24~1_combout\ & (((!\Selector24~0_combout\ & \i2c_clk_en~q\)))) # (!\Selector24~1_combout\ & (((\i2c_clk_en~q\)) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Selector24~1_combout\,
	datac => \Selector24~0_combout\,
	datad => \i2c_clk_en~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X34_Y4_N10
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\ & ((!\I2C_ENGINE_PROC:counter[0]~q\) # (!\I2C_ENGINE_PROC:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_ENGINE_PROC:counter[1]~q\,
	datac => \I2C_ENGINE_PROC:counter[0]~q\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y4_N28
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector0~0_combout\ & ((\LessThan1~1_combout\ & ((\i2c_clk_en~q\))) # (!\LessThan1~1_combout\ & (\counter~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \counter~2_combout\,
	datac => \LessThan1~1_combout\,
	datad => \i2c_clk_en~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X38_Y4_N24
\Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~0_combout\) # ((\Selector1~2_combout\) # ((\Selector1~3_combout\) # (\Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector1~2_combout\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X38_Y4_N25
i2c_clk_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector1~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_clk_en~q\);

-- Location: LCCOMB_X36_Y4_N14
\Selector32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\i2cVariable.NEXT7~q\ & (((!\I2C_ENGINE_PROC:counter[2]~q\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => \i2cVariable.NEXT7~q\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X35_Y4_N8
\Selector32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\counter~2_combout\ & (((\LessThan1~0_combout\ & \i2cVariable.START~q\)))) # (!\counter~2_combout\ & (((\LessThan1~0_combout\ & \i2cVariable.START~q\)) # (!\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~2_combout\,
	datab => \Selector0~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \i2cVariable.START~q\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X36_Y4_N10
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\i2cVariable.START~q\ & (\Selector0~0_combout\ & (!\i2cVariable.NEXT2~q\ & !\i2cVariable.NEXT7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.START~q\,
	datab => \Selector0~0_combout\,
	datac => \i2cVariable.NEXT2~q\,
	datad => \i2cVariable.NEXT7~q\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X36_Y4_N4
\Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\Selector32~0_combout\) # ((\i2cVariable.NEXT2~q\ & ((\LessThan1~0_combout\) # (!\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \LessThan1~0_combout\,
	datac => \i2cVariable.NEXT2~q\,
	datad => \Selector32~0_combout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X35_Y4_N10
\Selector32~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = (i2c_dataToSend(0) & ((\Selector32~2_combout\) # ((\Selector32~3_combout\) # (\Selector32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2c_dataToSend(0),
	datab => \Selector32~2_combout\,
	datac => \Selector32~3_combout\,
	datad => \Selector32~1_combout\,
	combout => \Selector32~4_combout\);

-- Location: LCCOMB_X36_Y4_N22
\i2c_dataToSend[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_dataToSend[7]~1_combout\ = (\i2cVariable.NEXT2~q\ & (!\LessThan1~0_combout\ & \Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NEXT2~q\,
	datab => \LessThan1~0_combout\,
	datac => \Selector16~0_combout\,
	combout => \i2c_dataToSend[7]~1_combout\);

-- Location: IOIBUF_X31_Y0_N15
\W_ADDRESS[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(0),
	o => \W_ADDRESS[0]~input_o\);

-- Location: LCCOMB_X34_Y4_N18
\Selector32~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~5_combout\ = (\I2C_ENGINE_PROC:counter[3]~q\) # ((\I2C_ENGINE_PROC:counter[2]~q\) # ((\I2C_ENGINE_PROC:counter[4]~q\) # (i2c_dataToSend(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[3]~q\,
	datab => \I2C_ENGINE_PROC:counter[2]~q\,
	datac => \I2C_ENGINE_PROC:counter[4]~q\,
	datad => i2c_dataToSend(0),
	combout => \Selector32~5_combout\);

-- Location: LCCOMB_X35_Y4_N20
\Selector32~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~6_combout\ = (\i2cVariable.RPT_START~q\ & ((\Selector32~5_combout\) # ((\i2c_dataToSend[7]~1_combout\ & \W_ADDRESS[0]~input_o\)))) # (!\i2cVariable.RPT_START~q\ & (\i2c_dataToSend[7]~1_combout\ & (\W_ADDRESS[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.RPT_START~q\,
	datab => \i2c_dataToSend[7]~1_combout\,
	datac => \W_ADDRESS[0]~input_o\,
	datad => \Selector32~5_combout\,
	combout => \Selector32~6_combout\);

-- Location: LCCOMB_X36_Y4_N24
\i2c_dataToSend[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_dataToSend[7]~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\I2C_ENGINE_PROC:counter[2]~q\ & \i2cVariable.NEXT7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => \i2cVariable.NEXT7~q\,
	combout => \i2c_dataToSend[7]~2_combout\);

-- Location: LCCOMB_X35_Y4_N22
\Selector32~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~7_combout\ = (\Selector32~4_combout\) # ((\Selector32~6_combout\) # ((\SDA~input_o\ & \i2c_dataToSend[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~4_combout\,
	datab => \Selector32~6_combout\,
	datac => \SDA~input_o\,
	datad => \i2c_dataToSend[7]~2_combout\,
	combout => \Selector32~7_combout\);

-- Location: FF_X35_Y4_N23
\i2c_dataToSend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector32~7_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(0));

-- Location: LCCOMB_X35_Y4_N12
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (i2c_dataToSend(0)) # ((\i2cVariable.START~q\) # (\i2cVariable.RPT_START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2c_dataToSend(0),
	datab => \i2cVariable.START~q\,
	datad => \i2cVariable.RPT_START~q\,
	combout => \Selector31~0_combout\);

-- Location: IOIBUF_X34_Y0_N15
\W_ADDRESS[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(1),
	o => \W_ADDRESS[1]~input_o\);

-- Location: LCCOMB_X35_Y4_N14
\i2c_dataToSend[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_dataToSend[7]~0_combout\ = (\counter~2_combout\ & (((!\LessThan1~0_combout\ & \i2cVariable.START~q\)) # (!\Selector0~0_combout\))) # (!\counter~2_combout\ & (((!\LessThan1~0_combout\ & \i2cVariable.START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~2_combout\,
	datab => \Selector0~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \i2cVariable.START~q\,
	combout => \i2c_dataToSend[7]~0_combout\);

-- Location: LCCOMB_X35_Y4_N0
\i2c_dataToSend[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_dataToSend[7]~3_combout\ = (\i2c_dataToSend[7]~2_combout\) # ((\i2c_dataToSend[7]~1_combout\) # ((\i2cVariable.RPT_START~q\ & !\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.RPT_START~q\,
	datab => \i2c_dataToSend[7]~2_combout\,
	datac => \LessThan1~0_combout\,
	datad => \i2c_dataToSend[7]~1_combout\,
	combout => \i2c_dataToSend[7]~3_combout\);

-- Location: LCCOMB_X35_Y4_N26
\i2c_dataToSend[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2c_dataToSend[7]~4_combout\ = (\rst~input_o\ & ((\i2c_dataToSend[7]~0_combout\) # (\i2c_dataToSend[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_dataToSend[7]~0_combout\,
	datac => \rst~input_o\,
	datad => \i2c_dataToSend[7]~3_combout\,
	combout => \i2c_dataToSend[7]~4_combout\);

-- Location: FF_X35_Y4_N13
\i2c_dataToSend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector31~0_combout\,
	asdata => \W_ADDRESS[1]~input_o\,
	sload => \i2cVariable.NEXT2~q\,
	ena => \i2c_dataToSend[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(1));

-- Location: LCCOMB_X35_Y4_N2
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (i2c_dataToSend(1)) # ((\i2cVariable.START~q\) # (\i2cVariable.RPT_START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2c_dataToSend(1),
	datab => \i2cVariable.START~q\,
	datad => \i2cVariable.RPT_START~q\,
	combout => \Selector30~0_combout\);

-- Location: IOIBUF_X34_Y0_N22
\W_ADDRESS[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(2),
	o => \W_ADDRESS[2]~input_o\);

-- Location: FF_X35_Y4_N3
\i2c_dataToSend[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector30~0_combout\,
	asdata => \W_ADDRESS[2]~input_o\,
	sload => \i2cVariable.NEXT2~q\,
	ena => \i2c_dataToSend[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(2));

-- Location: LCCOMB_X35_Y4_N24
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\i2cVariable.RPT_START~q\) # ((i2c_dataToSend(2)) # (\i2cVariable.START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.RPT_START~q\,
	datab => i2c_dataToSend(2),
	datad => \i2cVariable.START~q\,
	combout => \Selector29~0_combout\);

-- Location: IOIBUF_X34_Y0_N1
\W_ADDRESS[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(3),
	o => \W_ADDRESS[3]~input_o\);

-- Location: FF_X35_Y4_N25
\i2c_dataToSend[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector29~0_combout\,
	asdata => \W_ADDRESS[3]~input_o\,
	sload => \i2cVariable.NEXT2~q\,
	ena => \i2c_dataToSend[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(3));

-- Location: LCCOMB_X35_Y4_N30
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\i2cVariable.RPT_START~q\ & (i2c_dataToSend(3) & !\i2cVariable.START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.RPT_START~q\,
	datab => i2c_dataToSend(3),
	datad => \i2cVariable.START~q\,
	combout => \Selector28~0_combout\);

-- Location: IOIBUF_X34_Y0_N8
\W_ADDRESS[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(4),
	o => \W_ADDRESS[4]~input_o\);

-- Location: FF_X35_Y4_N31
\i2c_dataToSend[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector28~0_combout\,
	asdata => \W_ADDRESS[4]~input_o\,
	sload => \i2cVariable.NEXT2~q\,
	ena => \i2c_dataToSend[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(4));

-- Location: LCCOMB_X35_Y4_N28
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (i2c_dataToSend(4)) # ((\i2cVariable.START~q\) # (\i2cVariable.RPT_START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2c_dataToSend(4),
	datab => \i2cVariable.START~q\,
	datad => \i2cVariable.RPT_START~q\,
	combout => \Selector27~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\W_ADDRESS[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(5),
	o => \W_ADDRESS[5]~input_o\);

-- Location: FF_X35_Y4_N29
\i2c_dataToSend[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector27~0_combout\,
	asdata => \W_ADDRESS[5]~input_o\,
	sload => \i2cVariable.NEXT2~q\,
	ena => \i2c_dataToSend[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(5));

-- Location: LCCOMB_X35_Y4_N18
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\i2cVariable.RPT_START~q\ & (i2c_dataToSend(5) & !\i2cVariable.START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.RPT_START~q\,
	datab => i2c_dataToSend(5),
	datad => \i2cVariable.START~q\,
	combout => \Selector26~0_combout\);

-- Location: IOIBUF_X36_Y0_N8
\W_ADDRESS[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(6),
	o => \W_ADDRESS[6]~input_o\);

-- Location: FF_X35_Y4_N19
\i2c_dataToSend[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector26~0_combout\,
	asdata => \W_ADDRESS[6]~input_o\,
	sload => \i2cVariable.NEXT2~q\,
	ena => \i2c_dataToSend[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(6));

-- Location: LCCOMB_X35_Y4_N16
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\i2cVariable.RPT_START~q\) # ((i2c_dataToSend(6)) # (\i2cVariable.START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.RPT_START~q\,
	datab => i2c_dataToSend(6),
	datad => \i2cVariable.START~q\,
	combout => \Selector25~0_combout\);

-- Location: IOIBUF_X34_Y0_N29
\W_ADDRESS[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_ADDRESS(7),
	o => \W_ADDRESS[7]~input_o\);

-- Location: FF_X35_Y4_N17
\i2c_dataToSend[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector25~0_combout\,
	asdata => \W_ADDRESS[7]~input_o\,
	sload => \i2cVariable.NEXT2~q\,
	ena => \i2c_dataToSend[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_dataToSend(7));

-- Location: LCCOMB_X37_Y4_N24
\Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (i2c_dataToSend(7) & ((\i2cVariable.SETUP2~q\) # ((\i2cVariable.SETUP4~q\) # (\i2cVariable.SETUP1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2c_dataToSend(7),
	datab => \i2cVariable.SETUP2~q\,
	datac => \i2cVariable.SETUP4~q\,
	datad => \i2cVariable.SETUP1~q\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X37_Y4_N12
\Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = (\Selector24~2_combout\) # ((\Selector24~1_combout\ & (\i2c_data~q\ & \Selector24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~2_combout\,
	datab => \Selector24~1_combout\,
	datac => \i2c_data~q\,
	datad => \Selector24~3_combout\,
	combout => \Selector24~4_combout\);

-- Location: LCCOMB_X37_Y4_N10
\Selector24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~5_combout\ = (\Selector24~4_combout\) # ((!\counter~3_combout\ & (\i2c_data~q\ & \i2cVariable.NACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~4_combout\,
	datab => \counter~3_combout\,
	datac => \i2c_data~q\,
	datad => \i2cVariable.NACK~q\,
	combout => \Selector24~5_combout\);

-- Location: FF_X37_Y4_N11
i2c_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector24~5_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data~q\);

-- Location: LCCOMB_X34_Y4_N22
\LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!\I2C_ENGINE_PROC:counter[4]~q\ & (!\I2C_ENGINE_PROC:counter[0]~q\ & (!\I2C_ENGINE_PROC:counter[2]~q\ & !\I2C_ENGINE_PROC:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[4]~q\,
	datab => \I2C_ENGINE_PROC:counter[0]~q\,
	datac => \I2C_ENGINE_PROC:counter[2]~q\,
	datad => \I2C_ENGINE_PROC:counter[1]~q\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X38_Y4_N30
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = ((\i2cVariable.NACK~q\ & (!\Equal0~0_combout\ & !\LessThan6~0_combout\))) # (!\Selector24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NACK~q\,
	datab => \Equal0~0_combout\,
	datac => \LessThan6~0_combout\,
	datad => \Selector24~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X37_Y4_N2
\Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\I2C_ENGINE_PROC:counter[2]~q\ & (!\I2C_ENGINE_PROC:counter[3]~q\ & (\i2cVariable.STOP~q\ & !\I2C_ENGINE_PROC:counter[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_ENGINE_PROC:counter[2]~q\,
	datab => \I2C_ENGINE_PROC:counter[3]~q\,
	datac => \i2cVariable.STOP~q\,
	datad => \I2C_ENGINE_PROC:counter[4]~q\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X38_Y4_N0
\Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\i2cVariable.NEXT7~q\) # (((\Selector0~4_combout\) # (!\Selector24~0_combout\)) # (!\Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.NEXT7~q\,
	datab => \Selector0~1_combout\,
	datac => \Selector24~0_combout\,
	datad => \Selector0~4_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X38_Y4_N20
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~0_combout\ & (\i2c_data_en~q\ & ((\LessThan1~1_combout\) # (!\Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \i2c_data_en~q\,
	datac => \LessThan1~1_combout\,
	datad => \Selector12~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X38_Y4_N18
\Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\Selector0~3_combout\) # ((\Selector0~2_combout\) # ((\Selector0~5_combout\ & \i2c_data_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~5_combout\,
	datac => \i2c_data_en~q\,
	datad => \Selector0~2_combout\,
	combout => \Selector0~6_combout\);

-- Location: FF_X38_Y4_N19
i2c_data_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1MHz~clkctrl_outclk\,
	d => \Selector0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_en~q\);

-- Location: IOIBUF_X56_Y54_N29
\SQ_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SQ_in,
	o => \SQ_in~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\SCL~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

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

ww_SCL <= \SCL~output_o\;

ww_SDA <= \SDA~output_o\;
END structure;


