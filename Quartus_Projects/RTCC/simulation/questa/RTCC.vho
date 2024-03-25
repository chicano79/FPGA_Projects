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

-- DATE "03/22/2024 06:35:15"

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
	CLK50MHZ : IN std_logic;
	CPU_RESETN : IN std_logic;
	clk_out : OUT std_logic;
	SCL : OUT std_logic;
	SDA : INOUT std_logic
	);
END I2C_controller;

-- Design Ports Information
-- clk_out	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- SCL	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- SDA	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CLK50MHZ	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- CPU_RESETN	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_CLK50MHZ : std_logic;
SIGNAL ww_CPU_RESETN : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK1MHZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \CLK50MHZ~input_o\ : std_logic;
SIGNAL \CLK50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \CL_PROC:counter[0]~1_combout\ : std_logic;
SIGNAL \CPU_RESETN~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \CL_PROC:counter[0]~q\ : std_logic;
SIGNAL \CL_PROC:counter[0]~2\ : std_logic;
SIGNAL \CL_PROC:counter[1]~1_combout\ : std_logic;
SIGNAL \CL_PROC:counter[1]~q\ : std_logic;
SIGNAL \CL_PROC:counter[1]~2\ : std_logic;
SIGNAL \CL_PROC:counter[2]~1_combout\ : std_logic;
SIGNAL \CL_PROC:counter[2]~q\ : std_logic;
SIGNAL \CL_PROC:counter[2]~2\ : std_logic;
SIGNAL \CL_PROC:counter[3]~1_combout\ : std_logic;
SIGNAL \CL_PROC:counter[3]~q\ : std_logic;
SIGNAL \CL_PROC:counter[3]~2\ : std_logic;
SIGNAL \CL_PROC:counter[4]~1_combout\ : std_logic;
SIGNAL \CL_PROC:counter[4]~q\ : std_logic;
SIGNAL \CLK1MHZ~0_combout\ : std_logic;
SIGNAL \CLK1MHZ~feeder_combout\ : std_logic;
SIGNAL \CLK1MHZ~q\ : std_logic;
SIGNAL \CLK1MHZ~clkctrl_outclk\ : std_logic;
SIGNAL \i2cVariable.INIT~feeder_combout\ : std_logic;
SIGNAL \i2cVariable.START~0_combout\ : std_logic;
SIGNAL \i2cVariable.START~q\ : std_logic;
SIGNAL \i2cVariable.WAIT1~q\ : std_logic;
SIGNAL \counter_i2c[0]~5_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \counter_i2c[4]~7_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \counter_i2c[0]~6\ : std_logic;
SIGNAL \counter_i2c[1]~8_combout\ : std_logic;
SIGNAL \counter_i2c[1]~9\ : std_logic;
SIGNAL \counter_i2c[2]~10_combout\ : std_logic;
SIGNAL \counter_i2c[2]~11\ : std_logic;
SIGNAL \counter_i2c[3]~12_combout\ : std_logic;
SIGNAL \counter_i2c[3]~13\ : std_logic;
SIGNAL \counter_i2c[4]~14_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \i2cVariable.WAIT2~0_combout\ : std_logic;
SIGNAL \i2cVariable.WAIT2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \SDA_internal~q\ : std_logic;
SIGNAL \sda_delay[0]~feeder_combout\ : std_logic;
SIGNAL \i2cVariable.INIT~0_combout\ : std_logic;
SIGNAL \i2cVariable.INIT~1_combout\ : std_logic;
SIGNAL \i2cVariable.INIT~2_combout\ : std_logic;
SIGNAL \i2cVariable.INIT~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \SCL_internal~q\ : std_logic;
SIGNAL counter_i2c : std_logic_vector(4 DOWNTO 0);
SIGNAL sda_delay : std_logic_vector(0 DOWNTO 0);
SIGNAL ALT_INV_sda_delay : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_SCL_internal~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK50MHZ <= CLK50MHZ;
ww_CPU_RESETN <= CPU_RESETN;
clk_out <= ww_clk_out;
SCL <= ww_SCL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK1MHZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK1MHZ~q\);

\CLK50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK50MHZ~input_o\);
ALT_INV_sda_delay(0) <= NOT sda_delay(0);
\ALT_INV_SCL_internal~q\ <= NOT \SCL_internal~q\;
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

-- Location: IOOBUF_X26_Y0_N2
\SCL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SCL_internal~q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\SDA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_sda_delay(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK1MHZ~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

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

-- Location: LCCOMB_X45_Y1_N10
\CL_PROC:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CL_PROC:counter[0]~1_combout\ = \CL_PROC:counter[0]~q\ $ (VCC)
-- \CL_PROC:counter[0]~2\ = CARRY(\CL_PROC:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CL_PROC:counter[0]~q\,
	datad => VCC,
	combout => \CL_PROC:counter[0]~1_combout\,
	cout => \CL_PROC:counter[0]~2\);

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

-- Location: LCCOMB_X45_Y1_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\CL_PROC:counter[3]~q\ & \CL_PROC:counter[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CL_PROC:counter[3]~q\,
	datad => \CL_PROC:counter[4]~q\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X45_Y1_N11
\CL_PROC:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \CL_PROC:counter[0]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL_PROC:counter[0]~q\);

-- Location: LCCOMB_X45_Y1_N12
\CL_PROC:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CL_PROC:counter[1]~1_combout\ = (\CL_PROC:counter[1]~q\ & (!\CL_PROC:counter[0]~2\)) # (!\CL_PROC:counter[1]~q\ & ((\CL_PROC:counter[0]~2\) # (GND)))
-- \CL_PROC:counter[1]~2\ = CARRY((!\CL_PROC:counter[0]~2\) # (!\CL_PROC:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CL_PROC:counter[1]~q\,
	datad => VCC,
	cin => \CL_PROC:counter[0]~2\,
	combout => \CL_PROC:counter[1]~1_combout\,
	cout => \CL_PROC:counter[1]~2\);

-- Location: FF_X45_Y1_N13
\CL_PROC:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \CL_PROC:counter[1]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL_PROC:counter[1]~q\);

-- Location: LCCOMB_X45_Y1_N14
\CL_PROC:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CL_PROC:counter[2]~1_combout\ = (\CL_PROC:counter[2]~q\ & (\CL_PROC:counter[1]~2\ $ (GND))) # (!\CL_PROC:counter[2]~q\ & (!\CL_PROC:counter[1]~2\ & VCC))
-- \CL_PROC:counter[2]~2\ = CARRY((\CL_PROC:counter[2]~q\ & !\CL_PROC:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CL_PROC:counter[2]~q\,
	datad => VCC,
	cin => \CL_PROC:counter[1]~2\,
	combout => \CL_PROC:counter[2]~1_combout\,
	cout => \CL_PROC:counter[2]~2\);

-- Location: FF_X45_Y1_N15
\CL_PROC:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \CL_PROC:counter[2]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL_PROC:counter[2]~q\);

-- Location: LCCOMB_X45_Y1_N16
\CL_PROC:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CL_PROC:counter[3]~1_combout\ = (\CL_PROC:counter[3]~q\ & (!\CL_PROC:counter[2]~2\)) # (!\CL_PROC:counter[3]~q\ & ((\CL_PROC:counter[2]~2\) # (GND)))
-- \CL_PROC:counter[3]~2\ = CARRY((!\CL_PROC:counter[2]~2\) # (!\CL_PROC:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CL_PROC:counter[3]~q\,
	datad => VCC,
	cin => \CL_PROC:counter[2]~2\,
	combout => \CL_PROC:counter[3]~1_combout\,
	cout => \CL_PROC:counter[3]~2\);

-- Location: FF_X45_Y1_N17
\CL_PROC:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \CL_PROC:counter[3]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL_PROC:counter[3]~q\);

-- Location: LCCOMB_X45_Y1_N18
\CL_PROC:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CL_PROC:counter[4]~1_combout\ = \CL_PROC:counter[3]~2\ $ (!\CL_PROC:counter[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CL_PROC:counter[4]~q\,
	cin => \CL_PROC:counter[3]~2\,
	combout => \CL_PROC:counter[4]~1_combout\);

-- Location: FF_X45_Y1_N19
\CL_PROC:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \CL_PROC:counter[4]~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL_PROC:counter[4]~q\);

-- Location: LCCOMB_X45_Y1_N20
\CLK1MHZ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1MHZ~0_combout\ = \CLK1MHZ~q\ $ (((\CL_PROC:counter[4]~q\ & \CL_PROC:counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CL_PROC:counter[4]~q\,
	datac => \CLK1MHZ~q\,
	datad => \CL_PROC:counter[3]~q\,
	combout => \CLK1MHZ~0_combout\);

-- Location: LCCOMB_X45_Y1_N0
\CLK1MHZ~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1MHZ~feeder_combout\ = \CLK1MHZ~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1MHZ~0_combout\,
	combout => \CLK1MHZ~feeder_combout\);

-- Location: FF_X45_Y1_N1
CLK1MHZ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50MHZ~inputclkctrl_outclk\,
	d => \CLK1MHZ~feeder_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1MHZ~q\);

-- Location: CLKCTRL_G15
\CLK1MHZ~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1MHZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK1MHZ~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y41_N30
\i2cVariable.INIT~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.INIT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i2cVariable.INIT~feeder_combout\);

-- Location: LCCOMB_X45_Y41_N14
\i2cVariable.START~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.START~0_combout\ = (!\i2cVariable.INIT~q\ & !\i2cVariable.START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.INIT~q\,
	datac => \i2cVariable.START~q\,
	combout => \i2cVariable.START~0_combout\);

-- Location: FF_X45_Y41_N15
\i2cVariable.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \i2cVariable.START~0_combout\,
	ena => \i2cVariable.INIT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.START~q\);

-- Location: FF_X45_Y41_N13
\i2cVariable.WAIT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	asdata => \i2cVariable.START~q\,
	sload => VCC,
	ena => \i2cVariable.INIT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.WAIT1~q\);

-- Location: LCCOMB_X46_Y41_N0
\counter_i2c[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_i2c[0]~5_combout\ = counter_i2c(0) $ (VCC)
-- \counter_i2c[0]~6\ = CARRY(counter_i2c(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_i2c(0),
	datad => VCC,
	combout => \counter_i2c[0]~5_combout\,
	cout => \counter_i2c[0]~6\);

-- Location: LCCOMB_X46_Y41_N26
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!counter_i2c(3) & (((!counter_i2c(1)) # (!counter_i2c(2))) # (!counter_i2c(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_i2c(3),
	datab => counter_i2c(0),
	datac => counter_i2c(2),
	datad => counter_i2c(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X46_Y41_N28
\counter_i2c[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_i2c[4]~7_combout\ = (counter_i2c(4)) # ((\i2cVariable.START~q\) # (!\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_i2c(4),
	datac => \LessThan1~0_combout\,
	datad => \i2cVariable.START~q\,
	combout => \counter_i2c[4]~7_combout\);

-- Location: LCCOMB_X46_Y41_N30
WideOr3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\i2cVariable.INIT~q\ & !\i2cVariable.WAIT2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cVariable.INIT~q\,
	datad => \i2cVariable.WAIT2~q\,
	combout => \WideOr3~combout\);

-- Location: FF_X46_Y41_N1
\counter_i2c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \counter_i2c[0]~5_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \counter_i2c[4]~7_combout\,
	ena => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_i2c(0));

-- Location: LCCOMB_X46_Y41_N2
\counter_i2c[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_i2c[1]~8_combout\ = (counter_i2c(1) & (!\counter_i2c[0]~6\)) # (!counter_i2c(1) & ((\counter_i2c[0]~6\) # (GND)))
-- \counter_i2c[1]~9\ = CARRY((!\counter_i2c[0]~6\) # (!counter_i2c(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_i2c(1),
	datad => VCC,
	cin => \counter_i2c[0]~6\,
	combout => \counter_i2c[1]~8_combout\,
	cout => \counter_i2c[1]~9\);

-- Location: FF_X46_Y41_N3
\counter_i2c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \counter_i2c[1]~8_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \counter_i2c[4]~7_combout\,
	ena => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_i2c(1));

-- Location: LCCOMB_X46_Y41_N4
\counter_i2c[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_i2c[2]~10_combout\ = (counter_i2c(2) & (\counter_i2c[1]~9\ $ (GND))) # (!counter_i2c(2) & (!\counter_i2c[1]~9\ & VCC))
-- \counter_i2c[2]~11\ = CARRY((counter_i2c(2) & !\counter_i2c[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_i2c(2),
	datad => VCC,
	cin => \counter_i2c[1]~9\,
	combout => \counter_i2c[2]~10_combout\,
	cout => \counter_i2c[2]~11\);

-- Location: FF_X46_Y41_N5
\counter_i2c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \counter_i2c[2]~10_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \counter_i2c[4]~7_combout\,
	ena => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_i2c(2));

-- Location: LCCOMB_X46_Y41_N6
\counter_i2c[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_i2c[3]~12_combout\ = (counter_i2c(3) & (!\counter_i2c[2]~11\)) # (!counter_i2c(3) & ((\counter_i2c[2]~11\) # (GND)))
-- \counter_i2c[3]~13\ = CARRY((!\counter_i2c[2]~11\) # (!counter_i2c(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_i2c(3),
	datad => VCC,
	cin => \counter_i2c[2]~11\,
	combout => \counter_i2c[3]~12_combout\,
	cout => \counter_i2c[3]~13\);

-- Location: FF_X46_Y41_N7
\counter_i2c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \counter_i2c[3]~12_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \counter_i2c[4]~7_combout\,
	ena => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_i2c(3));

-- Location: LCCOMB_X46_Y41_N8
\counter_i2c[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_i2c[4]~14_combout\ = counter_i2c(4) $ (!\counter_i2c[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_i2c(4),
	cin => \counter_i2c[3]~13\,
	combout => \counter_i2c[4]~14_combout\);

-- Location: FF_X46_Y41_N9
\counter_i2c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \counter_i2c[4]~14_combout\,
	clrn => \CPU_RESETN~input_o\,
	sclr => \counter_i2c[4]~7_combout\,
	ena => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_i2c(4));

-- Location: LCCOMB_X45_Y41_N18
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!counter_i2c(4) & \LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_i2c(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y41_N28
\i2cVariable.WAIT2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.WAIT2~0_combout\ = (\i2cVariable.WAIT2~q\) # ((\CPU_RESETN~input_o\ & (\i2cVariable.WAIT1~q\ & !\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_RESETN~input_o\,
	datab => \i2cVariable.WAIT1~q\,
	datac => \i2cVariable.WAIT2~q\,
	datad => \LessThan1~1_combout\,
	combout => \i2cVariable.WAIT2~0_combout\);

-- Location: FF_X45_Y41_N29
\i2cVariable.WAIT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \i2cVariable.WAIT2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.WAIT2~q\);

-- Location: LCCOMB_X45_Y41_N16
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\i2cVariable.INIT~q\ & ((\SDA_internal~q\) # ((!\i2cVariable.WAIT1~q\ & !\i2cVariable.WAIT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.INIT~q\,
	datab => \i2cVariable.WAIT1~q\,
	datac => \SDA_internal~q\,
	datad => \i2cVariable.WAIT2~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X45_Y41_N17
SDA_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDA_internal~q\);

-- Location: LCCOMB_X45_Y41_N24
\sda_delay[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sda_delay[0]~feeder_combout\ = \SDA_internal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDA_internal~q\,
	combout => \sda_delay[0]~feeder_combout\);

-- Location: FF_X45_Y41_N25
\sda_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \sda_delay[0]~feeder_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sda_delay(0));

-- Location: LCCOMB_X45_Y41_N6
\i2cVariable.INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.INIT~0_combout\ = ((!\i2cVariable.INIT~q\ & ((\SCL_internal~q\) # (sda_delay(0))))) # (!\CPU_RESETN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.INIT~q\,
	datab => \CPU_RESETN~input_o\,
	datac => \SCL_internal~q\,
	datad => sda_delay(0),
	combout => \i2cVariable.INIT~0_combout\);

-- Location: LCCOMB_X45_Y41_N4
\i2cVariable.INIT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.INIT~1_combout\ = (\i2cVariable.WAIT1~q\ & !counter_i2c(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cVariable.WAIT1~q\,
	datac => counter_i2c(4),
	combout => \i2cVariable.INIT~1_combout\);

-- Location: LCCOMB_X45_Y41_N2
\i2cVariable.INIT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2cVariable.INIT~2_combout\ = (!\i2cVariable.INIT~0_combout\ & (!\i2cVariable.WAIT2~q\ & ((!\LessThan1~0_combout\) # (!\i2cVariable.INIT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.INIT~0_combout\,
	datab => \i2cVariable.WAIT2~q\,
	datac => \i2cVariable.INIT~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \i2cVariable.INIT~2_combout\);

-- Location: FF_X45_Y41_N31
\i2cVariable.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \i2cVariable.INIT~feeder_combout\,
	ena => \i2cVariable.INIT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cVariable.INIT~q\);

-- Location: LCCOMB_X45_Y41_N12
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((!\SCL_internal~q\ & ((\i2cVariable.WAIT2~q\) # (\i2cVariable.START~q\)))) # (!\i2cVariable.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cVariable.INIT~q\,
	datab => \i2cVariable.WAIT2~q\,
	datac => \i2cVariable.START~q\,
	datad => \SCL_internal~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X45_Y41_N8
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector1~0_combout\ & (((\SCL_internal~q\) # (!\LessThan1~1_combout\)) # (!\i2cVariable.WAIT1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \i2cVariable.WAIT1~q\,
	datac => \SCL_internal~q\,
	datad => \LessThan1~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X45_Y41_N9
SCL_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1MHZ~clkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \CPU_RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCL_internal~q\);

-- Location: IOIBUF_X29_Y0_N22
\SDA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \SDA~input_o\);

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

ww_clk_out <= \clk_out~output_o\;

ww_SCL <= \SCL~output_o\;

SDA <= \SDA~output_o\;
END structure;


