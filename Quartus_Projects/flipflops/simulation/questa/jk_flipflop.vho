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

-- DATE "02/26/2024 11:25:08"

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

ENTITY 	jk_flipflop IS
    PORT (
	CLK_50MHz : IN std_logic;
	LEDR : OUT std_logic_vector(0 TO 9);
	J_in : IN std_logic;
	K_in : IN std_logic
	);
END jk_flipflop;

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
-- J_in	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- K_in	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF jk_flipflop IS
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
SIGNAL ww_J_in : std_logic;
SIGNAL ww_K_in : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[0]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[9]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[10]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[10]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[10]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[11]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[11]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[11]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[12]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[12]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[12]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[13]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[13]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[13]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[14]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[14]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[14]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[15]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[15]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[15]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[16]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[16]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[16]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[17]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[17]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[17]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[18]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[18]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[18]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[19]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[19]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[19]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[20]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[20]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[20]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[21]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[21]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[21]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[22]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[22]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[22]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[23]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[23]~q\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[0]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[0]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[1]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[1]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[1]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[2]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[2]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[2]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[3]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[3]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[3]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[4]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[4]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[4]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[5]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[5]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[5]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[6]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[6]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[6]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[7]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[7]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[7]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[8]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[8]~q\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[8]~2\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[9]~1_combout\ : std_logic;
SIGNAL \CLK_10HZ_PROC:count[9]~q\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \clk_10Hz~0_combout\ : std_logic;
SIGNAL \clk_10Hz~feeder_combout\ : std_logic;
SIGNAL \clk_10Hz~q\ : std_logic;
SIGNAL \K_in~input_o\ : std_logic;
SIGNAL \J_in~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \d_out~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50MHz <= CLK_50MHz;
LEDR <= ww_LEDR;
ww_J_in <= J_in;
ww_K_in <= K_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
	i => \d_out~q\,
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
	i => \J_in~input_o\,
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
	i => \K_in~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X51_Y51_N8
\CLK_10HZ_PROC:count[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[0]~1_combout\ = \CLK_10HZ_PROC:count[0]~q\ $ (VCC)
-- \CLK_10HZ_PROC:count[0]~2\ = CARRY(\CLK_10HZ_PROC:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[0]~q\,
	datad => VCC,
	combout => \CLK_10HZ_PROC:count[0]~1_combout\,
	cout => \CLK_10HZ_PROC:count[0]~2\);

-- Location: LCCOMB_X51_Y51_N26
\CLK_10HZ_PROC:count[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[9]~1_combout\ = (\CLK_10HZ_PROC:count[9]~q\ & (!\CLK_10HZ_PROC:count[8]~2\)) # (!\CLK_10HZ_PROC:count[9]~q\ & ((\CLK_10HZ_PROC:count[8]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[9]~2\ = CARRY((!\CLK_10HZ_PROC:count[8]~2\) # (!\CLK_10HZ_PROC:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[9]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[8]~2\,
	combout => \CLK_10HZ_PROC:count[9]~1_combout\,
	cout => \CLK_10HZ_PROC:count[9]~2\);

-- Location: LCCOMB_X51_Y51_N28
\CLK_10HZ_PROC:count[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[10]~1_combout\ = (\CLK_10HZ_PROC:count[10]~q\ & (\CLK_10HZ_PROC:count[9]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[10]~q\ & (!\CLK_10HZ_PROC:count[9]~2\ & VCC))
-- \CLK_10HZ_PROC:count[10]~2\ = CARRY((\CLK_10HZ_PROC:count[10]~q\ & !\CLK_10HZ_PROC:count[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[10]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[9]~2\,
	combout => \CLK_10HZ_PROC:count[10]~1_combout\,
	cout => \CLK_10HZ_PROC:count[10]~2\);

-- Location: FF_X51_Y51_N29
\CLK_10HZ_PROC:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[10]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[10]~q\);

-- Location: LCCOMB_X51_Y51_N30
\CLK_10HZ_PROC:count[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[11]~1_combout\ = (\CLK_10HZ_PROC:count[11]~q\ & (!\CLK_10HZ_PROC:count[10]~2\)) # (!\CLK_10HZ_PROC:count[11]~q\ & ((\CLK_10HZ_PROC:count[10]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[11]~2\ = CARRY((!\CLK_10HZ_PROC:count[10]~2\) # (!\CLK_10HZ_PROC:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[11]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[10]~2\,
	combout => \CLK_10HZ_PROC:count[11]~1_combout\,
	cout => \CLK_10HZ_PROC:count[11]~2\);

-- Location: FF_X51_Y51_N31
\CLK_10HZ_PROC:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[11]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[11]~q\);

-- Location: LCCOMB_X51_Y50_N0
\CLK_10HZ_PROC:count[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[12]~1_combout\ = (\CLK_10HZ_PROC:count[12]~q\ & (\CLK_10HZ_PROC:count[11]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[12]~q\ & (!\CLK_10HZ_PROC:count[11]~2\ & VCC))
-- \CLK_10HZ_PROC:count[12]~2\ = CARRY((\CLK_10HZ_PROC:count[12]~q\ & !\CLK_10HZ_PROC:count[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[12]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[11]~2\,
	combout => \CLK_10HZ_PROC:count[12]~1_combout\,
	cout => \CLK_10HZ_PROC:count[12]~2\);

-- Location: FF_X51_Y50_N1
\CLK_10HZ_PROC:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[12]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[12]~q\);

-- Location: LCCOMB_X51_Y50_N2
\CLK_10HZ_PROC:count[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[13]~1_combout\ = (\CLK_10HZ_PROC:count[13]~q\ & (!\CLK_10HZ_PROC:count[12]~2\)) # (!\CLK_10HZ_PROC:count[13]~q\ & ((\CLK_10HZ_PROC:count[12]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[13]~2\ = CARRY((!\CLK_10HZ_PROC:count[12]~2\) # (!\CLK_10HZ_PROC:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[13]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[12]~2\,
	combout => \CLK_10HZ_PROC:count[13]~1_combout\,
	cout => \CLK_10HZ_PROC:count[13]~2\);

-- Location: FF_X51_Y50_N3
\CLK_10HZ_PROC:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[13]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[13]~q\);

-- Location: LCCOMB_X51_Y50_N4
\CLK_10HZ_PROC:count[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[14]~1_combout\ = (\CLK_10HZ_PROC:count[14]~q\ & (\CLK_10HZ_PROC:count[13]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[14]~q\ & (!\CLK_10HZ_PROC:count[13]~2\ & VCC))
-- \CLK_10HZ_PROC:count[14]~2\ = CARRY((\CLK_10HZ_PROC:count[14]~q\ & !\CLK_10HZ_PROC:count[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[14]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[13]~2\,
	combout => \CLK_10HZ_PROC:count[14]~1_combout\,
	cout => \CLK_10HZ_PROC:count[14]~2\);

-- Location: FF_X51_Y50_N5
\CLK_10HZ_PROC:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[14]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[14]~q\);

-- Location: LCCOMB_X51_Y50_N6
\CLK_10HZ_PROC:count[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[15]~1_combout\ = (\CLK_10HZ_PROC:count[15]~q\ & (!\CLK_10HZ_PROC:count[14]~2\)) # (!\CLK_10HZ_PROC:count[15]~q\ & ((\CLK_10HZ_PROC:count[14]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[15]~2\ = CARRY((!\CLK_10HZ_PROC:count[14]~2\) # (!\CLK_10HZ_PROC:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[15]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[14]~2\,
	combout => \CLK_10HZ_PROC:count[15]~1_combout\,
	cout => \CLK_10HZ_PROC:count[15]~2\);

-- Location: FF_X51_Y50_N7
\CLK_10HZ_PROC:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[15]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[15]~q\);

-- Location: LCCOMB_X51_Y50_N8
\CLK_10HZ_PROC:count[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[16]~1_combout\ = (\CLK_10HZ_PROC:count[16]~q\ & (\CLK_10HZ_PROC:count[15]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[16]~q\ & (!\CLK_10HZ_PROC:count[15]~2\ & VCC))
-- \CLK_10HZ_PROC:count[16]~2\ = CARRY((\CLK_10HZ_PROC:count[16]~q\ & !\CLK_10HZ_PROC:count[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[16]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[15]~2\,
	combout => \CLK_10HZ_PROC:count[16]~1_combout\,
	cout => \CLK_10HZ_PROC:count[16]~2\);

-- Location: FF_X51_Y50_N9
\CLK_10HZ_PROC:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[16]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[16]~q\);

-- Location: LCCOMB_X51_Y50_N10
\CLK_10HZ_PROC:count[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[17]~1_combout\ = (\CLK_10HZ_PROC:count[17]~q\ & (!\CLK_10HZ_PROC:count[16]~2\)) # (!\CLK_10HZ_PROC:count[17]~q\ & ((\CLK_10HZ_PROC:count[16]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[17]~2\ = CARRY((!\CLK_10HZ_PROC:count[16]~2\) # (!\CLK_10HZ_PROC:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[17]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[16]~2\,
	combout => \CLK_10HZ_PROC:count[17]~1_combout\,
	cout => \CLK_10HZ_PROC:count[17]~2\);

-- Location: FF_X51_Y50_N11
\CLK_10HZ_PROC:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[17]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[17]~q\);

-- Location: LCCOMB_X51_Y50_N12
\CLK_10HZ_PROC:count[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[18]~1_combout\ = (\CLK_10HZ_PROC:count[18]~q\ & (\CLK_10HZ_PROC:count[17]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[18]~q\ & (!\CLK_10HZ_PROC:count[17]~2\ & VCC))
-- \CLK_10HZ_PROC:count[18]~2\ = CARRY((\CLK_10HZ_PROC:count[18]~q\ & !\CLK_10HZ_PROC:count[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[18]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[17]~2\,
	combout => \CLK_10HZ_PROC:count[18]~1_combout\,
	cout => \CLK_10HZ_PROC:count[18]~2\);

-- Location: FF_X51_Y50_N13
\CLK_10HZ_PROC:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[18]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[18]~q\);

-- Location: LCCOMB_X51_Y50_N14
\CLK_10HZ_PROC:count[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[19]~1_combout\ = (\CLK_10HZ_PROC:count[19]~q\ & (!\CLK_10HZ_PROC:count[18]~2\)) # (!\CLK_10HZ_PROC:count[19]~q\ & ((\CLK_10HZ_PROC:count[18]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[19]~2\ = CARRY((!\CLK_10HZ_PROC:count[18]~2\) # (!\CLK_10HZ_PROC:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[19]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[18]~2\,
	combout => \CLK_10HZ_PROC:count[19]~1_combout\,
	cout => \CLK_10HZ_PROC:count[19]~2\);

-- Location: FF_X51_Y50_N15
\CLK_10HZ_PROC:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[19]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[19]~q\);

-- Location: LCCOMB_X51_Y50_N16
\CLK_10HZ_PROC:count[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[20]~1_combout\ = (\CLK_10HZ_PROC:count[20]~q\ & (\CLK_10HZ_PROC:count[19]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[20]~q\ & (!\CLK_10HZ_PROC:count[19]~2\ & VCC))
-- \CLK_10HZ_PROC:count[20]~2\ = CARRY((\CLK_10HZ_PROC:count[20]~q\ & !\CLK_10HZ_PROC:count[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[20]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[19]~2\,
	combout => \CLK_10HZ_PROC:count[20]~1_combout\,
	cout => \CLK_10HZ_PROC:count[20]~2\);

-- Location: FF_X51_Y50_N17
\CLK_10HZ_PROC:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[20]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[20]~q\);

-- Location: LCCOMB_X51_Y50_N18
\CLK_10HZ_PROC:count[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[21]~1_combout\ = (\CLK_10HZ_PROC:count[21]~q\ & (!\CLK_10HZ_PROC:count[20]~2\)) # (!\CLK_10HZ_PROC:count[21]~q\ & ((\CLK_10HZ_PROC:count[20]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[21]~2\ = CARRY((!\CLK_10HZ_PROC:count[20]~2\) # (!\CLK_10HZ_PROC:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[21]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[20]~2\,
	combout => \CLK_10HZ_PROC:count[21]~1_combout\,
	cout => \CLK_10HZ_PROC:count[21]~2\);

-- Location: FF_X51_Y50_N19
\CLK_10HZ_PROC:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[21]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[21]~q\);

-- Location: LCCOMB_X51_Y50_N20
\CLK_10HZ_PROC:count[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[22]~1_combout\ = (\CLK_10HZ_PROC:count[22]~q\ & (\CLK_10HZ_PROC:count[21]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[22]~q\ & (!\CLK_10HZ_PROC:count[21]~2\ & VCC))
-- \CLK_10HZ_PROC:count[22]~2\ = CARRY((\CLK_10HZ_PROC:count[22]~q\ & !\CLK_10HZ_PROC:count[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[22]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[21]~2\,
	combout => \CLK_10HZ_PROC:count[22]~1_combout\,
	cout => \CLK_10HZ_PROC:count[22]~2\);

-- Location: FF_X51_Y50_N21
\CLK_10HZ_PROC:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[22]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[22]~q\);

-- Location: LCCOMB_X51_Y50_N22
\CLK_10HZ_PROC:count[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[23]~1_combout\ = \CLK_10HZ_PROC:count[23]~q\ $ (\CLK_10HZ_PROC:count[22]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[23]~q\,
	cin => \CLK_10HZ_PROC:count[22]~2\,
	combout => \CLK_10HZ_PROC:count[23]~1_combout\);

-- Location: FF_X51_Y50_N23
\CLK_10HZ_PROC:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[23]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[23]~q\);

-- Location: LCCOMB_X51_Y50_N26
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!\CLK_10HZ_PROC:count[15]~q\ & !\CLK_10HZ_PROC:count[16]~q\)) # (!\CLK_10HZ_PROC:count[18]~q\)) # (!\CLK_10HZ_PROC:count[17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[15]~q\,
	datab => \CLK_10HZ_PROC:count[16]~q\,
	datac => \CLK_10HZ_PROC:count[17]~q\,
	datad => \CLK_10HZ_PROC:count[18]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X51_Y50_N24
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!\CLK_10HZ_PROC:count[21]~q\) # (!\CLK_10HZ_PROC:count[19]~q\)) # (!\CLK_10HZ_PROC:count[20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[20]~q\,
	datac => \CLK_10HZ_PROC:count[19]~q\,
	datad => \CLK_10HZ_PROC:count[21]~q\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X51_Y50_N30
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!\CLK_10HZ_PROC:count[22]~q\ & ((\LessThan0~4_combout\) # (\LessThan0~5_combout\)))) # (!\CLK_10HZ_PROC:count[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[23]~q\,
	datab => \CLK_10HZ_PROC:count[22]~q\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X51_Y51_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\LessThan0~6_combout\ & !\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~7_combout\);

-- Location: FF_X51_Y51_N9
\CLK_10HZ_PROC:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[0]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[0]~q\);

-- Location: LCCOMB_X51_Y51_N10
\CLK_10HZ_PROC:count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[1]~1_combout\ = (\CLK_10HZ_PROC:count[1]~q\ & (!\CLK_10HZ_PROC:count[0]~2\)) # (!\CLK_10HZ_PROC:count[1]~q\ & ((\CLK_10HZ_PROC:count[0]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[1]~2\ = CARRY((!\CLK_10HZ_PROC:count[0]~2\) # (!\CLK_10HZ_PROC:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[1]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[0]~2\,
	combout => \CLK_10HZ_PROC:count[1]~1_combout\,
	cout => \CLK_10HZ_PROC:count[1]~2\);

-- Location: FF_X51_Y51_N11
\CLK_10HZ_PROC:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[1]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[1]~q\);

-- Location: LCCOMB_X51_Y51_N12
\CLK_10HZ_PROC:count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[2]~1_combout\ = (\CLK_10HZ_PROC:count[2]~q\ & (\CLK_10HZ_PROC:count[1]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[2]~q\ & (!\CLK_10HZ_PROC:count[1]~2\ & VCC))
-- \CLK_10HZ_PROC:count[2]~2\ = CARRY((\CLK_10HZ_PROC:count[2]~q\ & !\CLK_10HZ_PROC:count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[2]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[1]~2\,
	combout => \CLK_10HZ_PROC:count[2]~1_combout\,
	cout => \CLK_10HZ_PROC:count[2]~2\);

-- Location: FF_X51_Y51_N13
\CLK_10HZ_PROC:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[2]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[2]~q\);

-- Location: LCCOMB_X51_Y51_N14
\CLK_10HZ_PROC:count[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[3]~1_combout\ = (\CLK_10HZ_PROC:count[3]~q\ & (!\CLK_10HZ_PROC:count[2]~2\)) # (!\CLK_10HZ_PROC:count[3]~q\ & ((\CLK_10HZ_PROC:count[2]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[3]~2\ = CARRY((!\CLK_10HZ_PROC:count[2]~2\) # (!\CLK_10HZ_PROC:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[3]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[2]~2\,
	combout => \CLK_10HZ_PROC:count[3]~1_combout\,
	cout => \CLK_10HZ_PROC:count[3]~2\);

-- Location: FF_X51_Y51_N15
\CLK_10HZ_PROC:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[3]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[3]~q\);

-- Location: LCCOMB_X51_Y51_N16
\CLK_10HZ_PROC:count[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[4]~1_combout\ = (\CLK_10HZ_PROC:count[4]~q\ & (\CLK_10HZ_PROC:count[3]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[4]~q\ & (!\CLK_10HZ_PROC:count[3]~2\ & VCC))
-- \CLK_10HZ_PROC:count[4]~2\ = CARRY((\CLK_10HZ_PROC:count[4]~q\ & !\CLK_10HZ_PROC:count[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[4]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[3]~2\,
	combout => \CLK_10HZ_PROC:count[4]~1_combout\,
	cout => \CLK_10HZ_PROC:count[4]~2\);

-- Location: FF_X51_Y51_N17
\CLK_10HZ_PROC:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[4]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[4]~q\);

-- Location: LCCOMB_X51_Y51_N18
\CLK_10HZ_PROC:count[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[5]~1_combout\ = (\CLK_10HZ_PROC:count[5]~q\ & (!\CLK_10HZ_PROC:count[4]~2\)) # (!\CLK_10HZ_PROC:count[5]~q\ & ((\CLK_10HZ_PROC:count[4]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[5]~2\ = CARRY((!\CLK_10HZ_PROC:count[4]~2\) # (!\CLK_10HZ_PROC:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[5]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[4]~2\,
	combout => \CLK_10HZ_PROC:count[5]~1_combout\,
	cout => \CLK_10HZ_PROC:count[5]~2\);

-- Location: FF_X51_Y51_N19
\CLK_10HZ_PROC:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[5]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[5]~q\);

-- Location: LCCOMB_X51_Y51_N20
\CLK_10HZ_PROC:count[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[6]~1_combout\ = (\CLK_10HZ_PROC:count[6]~q\ & (\CLK_10HZ_PROC:count[5]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[6]~q\ & (!\CLK_10HZ_PROC:count[5]~2\ & VCC))
-- \CLK_10HZ_PROC:count[6]~2\ = CARRY((\CLK_10HZ_PROC:count[6]~q\ & !\CLK_10HZ_PROC:count[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[6]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[5]~2\,
	combout => \CLK_10HZ_PROC:count[6]~1_combout\,
	cout => \CLK_10HZ_PROC:count[6]~2\);

-- Location: FF_X51_Y51_N21
\CLK_10HZ_PROC:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[6]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[6]~q\);

-- Location: LCCOMB_X51_Y51_N22
\CLK_10HZ_PROC:count[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[7]~1_combout\ = (\CLK_10HZ_PROC:count[7]~q\ & (!\CLK_10HZ_PROC:count[6]~2\)) # (!\CLK_10HZ_PROC:count[7]~q\ & ((\CLK_10HZ_PROC:count[6]~2\) # (GND)))
-- \CLK_10HZ_PROC:count[7]~2\ = CARRY((!\CLK_10HZ_PROC:count[6]~2\) # (!\CLK_10HZ_PROC:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[7]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[6]~2\,
	combout => \CLK_10HZ_PROC:count[7]~1_combout\,
	cout => \CLK_10HZ_PROC:count[7]~2\);

-- Location: FF_X51_Y51_N23
\CLK_10HZ_PROC:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[7]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[7]~q\);

-- Location: LCCOMB_X51_Y51_N24
\CLK_10HZ_PROC:count[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_10HZ_PROC:count[8]~1_combout\ = (\CLK_10HZ_PROC:count[8]~q\ & (\CLK_10HZ_PROC:count[7]~2\ $ (GND))) # (!\CLK_10HZ_PROC:count[8]~q\ & (!\CLK_10HZ_PROC:count[7]~2\ & VCC))
-- \CLK_10HZ_PROC:count[8]~2\ = CARRY((\CLK_10HZ_PROC:count[8]~q\ & !\CLK_10HZ_PROC:count[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[8]~q\,
	datad => VCC,
	cin => \CLK_10HZ_PROC:count[7]~2\,
	combout => \CLK_10HZ_PROC:count[8]~1_combout\,
	cout => \CLK_10HZ_PROC:count[8]~2\);

-- Location: FF_X51_Y51_N25
\CLK_10HZ_PROC:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[8]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[8]~q\);

-- Location: FF_X51_Y51_N27
\CLK_10HZ_PROC:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_10HZ_PROC:count[9]~1_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_10HZ_PROC:count[9]~q\);

-- Location: LCCOMB_X51_Y51_N2
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\CLK_10HZ_PROC:count[7]~q\ & (!\CLK_10HZ_PROC:count[6]~q\ & (!\CLK_10HZ_PROC:count[5]~q\ & !\CLK_10HZ_PROC:count[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[7]~q\,
	datab => \CLK_10HZ_PROC:count[6]~q\,
	datac => \CLK_10HZ_PROC:count[5]~q\,
	datad => \CLK_10HZ_PROC:count[8]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X51_Y51_N4
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!\CLK_10HZ_PROC:count[13]~q\) # (!\CLK_10HZ_PROC:count[11]~q\)) # (!\CLK_10HZ_PROC:count[12]~q\)) # (!\CLK_10HZ_PROC:count[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[10]~q\,
	datab => \CLK_10HZ_PROC:count[12]~q\,
	datac => \CLK_10HZ_PROC:count[11]~q\,
	datad => \CLK_10HZ_PROC:count[13]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X51_Y50_N28
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\CLK_10HZ_PROC:count[16]~q\ & (!\CLK_10HZ_PROC:count[14]~q\ & !\CLK_10HZ_PROC:count[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_10HZ_PROC:count[16]~q\,
	datac => \CLK_10HZ_PROC:count[14]~q\,
	datad => \CLK_10HZ_PROC:count[22]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y51_N0
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((!\CLK_10HZ_PROC:count[9]~q\ & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_10HZ_PROC:count[9]~q\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y51_N4
\clk_10Hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_10Hz~0_combout\ = \clk_10Hz~q\ $ (((!\LessThan0~3_combout\ & !\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_10Hz~q\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~6_combout\,
	combout => \clk_10Hz~0_combout\);

-- Location: LCCOMB_X50_Y51_N0
\clk_10Hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_10Hz~feeder_combout\ = \clk_10Hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_10Hz~0_combout\,
	combout => \clk_10Hz~feeder_combout\);

-- Location: FF_X50_Y51_N1
clk_10Hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_10Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10Hz~q\);

-- Location: IOIBUF_X51_Y54_N29
\K_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K_in,
	o => \K_in~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\J_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J_in,
	o => \J_in~input_o\);

-- Location: LCCOMB_X50_Y51_N18
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\d_out~q\ & (!\K_in~input_o\)) # (!\d_out~q\ & ((\J_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K_in~input_o\,
	datac => \d_out~q\,
	datad => \J_in~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X50_Y51_N19
d_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~q\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_out~q\);

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
END structure;


