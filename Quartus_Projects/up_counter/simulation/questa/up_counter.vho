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

-- DATE "02/12/2024 08:33:52"

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

ENTITY 	up_counter IS
    PORT (
	clk_50MHz : IN std_logic;
	rst_main : IN std_logic;
	SEG0 : OUT std_logic_vector(0 TO 6);
	SEG1 : OUT std_logic_vector(0 TO 6)
	);
END up_counter;

-- Design Ports Information
-- SEG0[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG0[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG0[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG0[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[6]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG1[5]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG1[4]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG1[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG1[1]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG1[0]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst_main	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF up_counter IS
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
SIGNAL ww_rst_main : std_logic;
SIGNAL ww_SEG0 : std_logic_vector(0 TO 6);
SIGNAL ww_SEG1 : std_logic_vector(0 TO 6);
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_clk~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG0[6]~output_o\ : std_logic;
SIGNAL \SEG0[5]~output_o\ : std_logic;
SIGNAL \SEG0[4]~output_o\ : std_logic;
SIGNAL \SEG0[3]~output_o\ : std_logic;
SIGNAL \SEG0[2]~output_o\ : std_logic;
SIGNAL \SEG0[1]~output_o\ : std_logic;
SIGNAL \SEG0[0]~output_o\ : std_logic;
SIGNAL \SEG1[6]~output_o\ : std_logic;
SIGNAL \SEG1[5]~output_o\ : std_logic;
SIGNAL \SEG1[4]~output_o\ : std_logic;
SIGNAL \SEG1[3]~output_o\ : std_logic;
SIGNAL \SEG1[2]~output_o\ : std_logic;
SIGNAL \SEG1[1]~output_o\ : std_logic;
SIGNAL \SEG1[0]~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \scaler[0]~25_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \scaler[0]~26\ : std_logic;
SIGNAL \scaler[1]~27_combout\ : std_logic;
SIGNAL \scaler[1]~28\ : std_logic;
SIGNAL \scaler[2]~29_combout\ : std_logic;
SIGNAL \scaler[2]~30\ : std_logic;
SIGNAL \scaler[3]~31_combout\ : std_logic;
SIGNAL \scaler[3]~32\ : std_logic;
SIGNAL \scaler[4]~33_combout\ : std_logic;
SIGNAL \scaler[4]~34\ : std_logic;
SIGNAL \scaler[5]~35_combout\ : std_logic;
SIGNAL \scaler[5]~36\ : std_logic;
SIGNAL \scaler[6]~37_combout\ : std_logic;
SIGNAL \scaler[6]~38\ : std_logic;
SIGNAL \scaler[7]~39_combout\ : std_logic;
SIGNAL \scaler[7]~40\ : std_logic;
SIGNAL \scaler[8]~41_combout\ : std_logic;
SIGNAL \scaler[8]~42\ : std_logic;
SIGNAL \scaler[9]~43_combout\ : std_logic;
SIGNAL \scaler[9]~44\ : std_logic;
SIGNAL \scaler[10]~45_combout\ : std_logic;
SIGNAL \scaler[10]~46\ : std_logic;
SIGNAL \scaler[11]~47_combout\ : std_logic;
SIGNAL \scaler[11]~48\ : std_logic;
SIGNAL \scaler[12]~49_combout\ : std_logic;
SIGNAL \scaler[12]~50\ : std_logic;
SIGNAL \scaler[13]~51_combout\ : std_logic;
SIGNAL \scaler[13]~52\ : std_logic;
SIGNAL \scaler[14]~53_combout\ : std_logic;
SIGNAL \scaler[14]~54\ : std_logic;
SIGNAL \scaler[15]~55_combout\ : std_logic;
SIGNAL \scaler[15]~56\ : std_logic;
SIGNAL \scaler[16]~57_combout\ : std_logic;
SIGNAL \scaler[16]~58\ : std_logic;
SIGNAL \scaler[17]~59_combout\ : std_logic;
SIGNAL \scaler[17]~60\ : std_logic;
SIGNAL \scaler[18]~61_combout\ : std_logic;
SIGNAL \scaler[18]~62\ : std_logic;
SIGNAL \scaler[19]~63_combout\ : std_logic;
SIGNAL \scaler[19]~64\ : std_logic;
SIGNAL \scaler[20]~65_combout\ : std_logic;
SIGNAL \scaler[20]~66\ : std_logic;
SIGNAL \scaler[21]~67_combout\ : std_logic;
SIGNAL \scaler[21]~68\ : std_logic;
SIGNAL \scaler[22]~69_combout\ : std_logic;
SIGNAL \scaler[22]~70\ : std_logic;
SIGNAL \scaler[23]~71_combout\ : std_logic;
SIGNAL \scaler[23]~72\ : std_logic;
SIGNAL \scaler[24]~73_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \counter_clk[0]~1_combout\ : std_logic;
SIGNAL \counter_clk[0]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_INST1|counter~1_combout\ : std_logic;
SIGNAL \COUNTER_INST1|counter[1]~feeder_combout\ : std_logic;
SIGNAL \rst_main~input_o\ : std_logic;
SIGNAL \COUNTER_INST1|counter~0_combout\ : std_logic;
SIGNAL \COUNTER_INST1|counter[0]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_INST1|counter~3_combout\ : std_logic;
SIGNAL \COUNTER_INST1|counter[3]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_INST1|counter~2_combout\ : std_logic;
SIGNAL \COUNTER_INST1|counter[2]~feeder_combout\ : std_logic;
SIGNAL \DECODER_INST1|Mux6~0_combout\ : std_logic;
SIGNAL \DECODER_INST1|Mux5~0_combout\ : std_logic;
SIGNAL \DECODER_INST1|Mux4~0_combout\ : std_logic;
SIGNAL \DECODER_INST1|Mux3~0_combout\ : std_logic;
SIGNAL \DECODER_INST1|Mux2~0_combout\ : std_logic;
SIGNAL \DECODER_INST1|Mux1~0_combout\ : std_logic;
SIGNAL \DECODER_INST1|Mux0~0_combout\ : std_logic;
SIGNAL \counter_clk~0_combout\ : std_logic;
SIGNAL \counter_clk~0clkctrl_outclk\ : std_logic;
SIGNAL \COUNTER_INST2|counter~0_combout\ : std_logic;
SIGNAL \COUNTER_INST2|counter~2_combout\ : std_logic;
SIGNAL \COUNTER_INST2|counter~3_combout\ : std_logic;
SIGNAL \COUNTER_INST2|counter~1_combout\ : std_logic;
SIGNAL \DECODER_INST2|Mux6~0_combout\ : std_logic;
SIGNAL \DECODER_INST2|Mux5~0_combout\ : std_logic;
SIGNAL \DECODER_INST2|Mux4~0_combout\ : std_logic;
SIGNAL \DECODER_INST2|Mux3~0_combout\ : std_logic;
SIGNAL \DECODER_INST2|Mux2~0_combout\ : std_logic;
SIGNAL \DECODER_INST2|Mux1~0_combout\ : std_logic;
SIGNAL \DECODER_INST2|Mux0~0_combout\ : std_logic;
SIGNAL scaler : std_logic_vector(24 DOWNTO 0);
SIGNAL \COUNTER_INST1|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COUNTER_INST2|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_clk : std_logic_vector(1 DOWNTO 0);
SIGNAL \DECODER_INST2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \DECODER_INST1|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHz <= clk_50MHz;
ww_rst_main <= rst_main;
SEG0 <= ww_SEG0;
SEG1 <= ww_SEG1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);

\counter_clk~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \counter_clk~0_combout\);
\DECODER_INST2|ALT_INV_Mux6~0_combout\ <= NOT \DECODER_INST2|Mux6~0_combout\;
\DECODER_INST1|ALT_INV_Mux6~0_combout\ <= NOT \DECODER_INST1|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\SEG0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\SEG0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\SEG0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\SEG0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\SEG0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\SEG0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\SEG0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\SEG1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\SEG1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\SEG1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\SEG1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\SEG1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\SEG1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\SEG1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INST2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[0]~output_o\);

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

-- Location: LCCOMB_X113_Y43_N8
\scaler[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[0]~25_combout\ = scaler(0) $ (VCC)
-- \scaler[0]~26\ = CARRY(scaler(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scaler(0),
	datad => VCC,
	combout => \scaler[0]~25_combout\,
	cout => \scaler[0]~26\);

-- Location: LCCOMB_X113_Y43_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!scaler(7) & (!scaler(6) & (!scaler(9) & !scaler(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scaler(7),
	datab => scaler(6),
	datac => scaler(9),
	datad => scaler(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y43_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!scaler(14)) # (!scaler(12))) # (!scaler(13))) # (!scaler(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scaler(11),
	datab => scaler(13),
	datac => scaler(12),
	datad => scaler(14),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X112_Y42_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!scaler(15) & (!scaler(17) & !scaler(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scaler(15),
	datac => scaler(17),
	datad => scaler(23),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y43_N0
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & !scaler(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => scaler(10),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X113_Y43_N2
\LessThan0~7\ : cycloneive_lcell_comb
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

-- Location: FF_X113_Y43_N9
\scaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[0]~25_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(0));

-- Location: LCCOMB_X113_Y43_N10
\scaler[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[1]~27_combout\ = (scaler(1) & (!\scaler[0]~26\)) # (!scaler(1) & ((\scaler[0]~26\) # (GND)))
-- \scaler[1]~28\ = CARRY((!\scaler[0]~26\) # (!scaler(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(1),
	datad => VCC,
	cin => \scaler[0]~26\,
	combout => \scaler[1]~27_combout\,
	cout => \scaler[1]~28\);

-- Location: FF_X113_Y43_N11
\scaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[1]~27_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(1));

-- Location: LCCOMB_X113_Y43_N12
\scaler[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[2]~29_combout\ = (scaler(2) & (\scaler[1]~28\ $ (GND))) # (!scaler(2) & (!\scaler[1]~28\ & VCC))
-- \scaler[2]~30\ = CARRY((scaler(2) & !\scaler[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(2),
	datad => VCC,
	cin => \scaler[1]~28\,
	combout => \scaler[2]~29_combout\,
	cout => \scaler[2]~30\);

-- Location: FF_X113_Y43_N13
\scaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[2]~29_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(2));

-- Location: LCCOMB_X113_Y43_N14
\scaler[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[3]~31_combout\ = (scaler(3) & (!\scaler[2]~30\)) # (!scaler(3) & ((\scaler[2]~30\) # (GND)))
-- \scaler[3]~32\ = CARRY((!\scaler[2]~30\) # (!scaler(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(3),
	datad => VCC,
	cin => \scaler[2]~30\,
	combout => \scaler[3]~31_combout\,
	cout => \scaler[3]~32\);

-- Location: FF_X113_Y43_N15
\scaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[3]~31_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(3));

-- Location: LCCOMB_X113_Y43_N16
\scaler[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[4]~33_combout\ = (scaler(4) & (\scaler[3]~32\ $ (GND))) # (!scaler(4) & (!\scaler[3]~32\ & VCC))
-- \scaler[4]~34\ = CARRY((scaler(4) & !\scaler[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(4),
	datad => VCC,
	cin => \scaler[3]~32\,
	combout => \scaler[4]~33_combout\,
	cout => \scaler[4]~34\);

-- Location: FF_X113_Y43_N17
\scaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[4]~33_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(4));

-- Location: LCCOMB_X113_Y43_N18
\scaler[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[5]~35_combout\ = (scaler(5) & (!\scaler[4]~34\)) # (!scaler(5) & ((\scaler[4]~34\) # (GND)))
-- \scaler[5]~36\ = CARRY((!\scaler[4]~34\) # (!scaler(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(5),
	datad => VCC,
	cin => \scaler[4]~34\,
	combout => \scaler[5]~35_combout\,
	cout => \scaler[5]~36\);

-- Location: FF_X113_Y43_N19
\scaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[5]~35_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(5));

-- Location: LCCOMB_X113_Y43_N20
\scaler[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[6]~37_combout\ = (scaler(6) & (\scaler[5]~36\ $ (GND))) # (!scaler(6) & (!\scaler[5]~36\ & VCC))
-- \scaler[6]~38\ = CARRY((scaler(6) & !\scaler[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(6),
	datad => VCC,
	cin => \scaler[5]~36\,
	combout => \scaler[6]~37_combout\,
	cout => \scaler[6]~38\);

-- Location: FF_X113_Y43_N21
\scaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[6]~37_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(6));

-- Location: LCCOMB_X113_Y43_N22
\scaler[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[7]~39_combout\ = (scaler(7) & (!\scaler[6]~38\)) # (!scaler(7) & ((\scaler[6]~38\) # (GND)))
-- \scaler[7]~40\ = CARRY((!\scaler[6]~38\) # (!scaler(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(7),
	datad => VCC,
	cin => \scaler[6]~38\,
	combout => \scaler[7]~39_combout\,
	cout => \scaler[7]~40\);

-- Location: FF_X113_Y43_N23
\scaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[7]~39_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(7));

-- Location: LCCOMB_X113_Y43_N24
\scaler[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[8]~41_combout\ = (scaler(8) & (\scaler[7]~40\ $ (GND))) # (!scaler(8) & (!\scaler[7]~40\ & VCC))
-- \scaler[8]~42\ = CARRY((scaler(8) & !\scaler[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(8),
	datad => VCC,
	cin => \scaler[7]~40\,
	combout => \scaler[8]~41_combout\,
	cout => \scaler[8]~42\);

-- Location: FF_X113_Y43_N25
\scaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[8]~41_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(8));

-- Location: LCCOMB_X113_Y43_N26
\scaler[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[9]~43_combout\ = (scaler(9) & (!\scaler[8]~42\)) # (!scaler(9) & ((\scaler[8]~42\) # (GND)))
-- \scaler[9]~44\ = CARRY((!\scaler[8]~42\) # (!scaler(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(9),
	datad => VCC,
	cin => \scaler[8]~42\,
	combout => \scaler[9]~43_combout\,
	cout => \scaler[9]~44\);

-- Location: FF_X113_Y43_N27
\scaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[9]~43_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(9));

-- Location: LCCOMB_X113_Y43_N28
\scaler[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[10]~45_combout\ = (scaler(10) & (\scaler[9]~44\ $ (GND))) # (!scaler(10) & (!\scaler[9]~44\ & VCC))
-- \scaler[10]~46\ = CARRY((scaler(10) & !\scaler[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(10),
	datad => VCC,
	cin => \scaler[9]~44\,
	combout => \scaler[10]~45_combout\,
	cout => \scaler[10]~46\);

-- Location: FF_X113_Y43_N29
\scaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[10]~45_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(10));

-- Location: LCCOMB_X113_Y43_N30
\scaler[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[11]~47_combout\ = (scaler(11) & (!\scaler[10]~46\)) # (!scaler(11) & ((\scaler[10]~46\) # (GND)))
-- \scaler[11]~48\ = CARRY((!\scaler[10]~46\) # (!scaler(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(11),
	datad => VCC,
	cin => \scaler[10]~46\,
	combout => \scaler[11]~47_combout\,
	cout => \scaler[11]~48\);

-- Location: FF_X113_Y43_N31
\scaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[11]~47_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(11));

-- Location: LCCOMB_X113_Y42_N0
\scaler[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[12]~49_combout\ = (scaler(12) & (\scaler[11]~48\ $ (GND))) # (!scaler(12) & (!\scaler[11]~48\ & VCC))
-- \scaler[12]~50\ = CARRY((scaler(12) & !\scaler[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(12),
	datad => VCC,
	cin => \scaler[11]~48\,
	combout => \scaler[12]~49_combout\,
	cout => \scaler[12]~50\);

-- Location: FF_X112_Y43_N29
\scaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \scaler[12]~49_combout\,
	sclr => \LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(12));

-- Location: LCCOMB_X113_Y42_N2
\scaler[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[13]~51_combout\ = (scaler(13) & (!\scaler[12]~50\)) # (!scaler(13) & ((\scaler[12]~50\) # (GND)))
-- \scaler[13]~52\ = CARRY((!\scaler[12]~50\) # (!scaler(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(13),
	datad => VCC,
	cin => \scaler[12]~50\,
	combout => \scaler[13]~51_combout\,
	cout => \scaler[13]~52\);

-- Location: FF_X112_Y43_N31
\scaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \scaler[13]~51_combout\,
	sclr => \LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(13));

-- Location: LCCOMB_X113_Y42_N4
\scaler[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[14]~53_combout\ = (scaler(14) & (\scaler[13]~52\ $ (GND))) # (!scaler(14) & (!\scaler[13]~52\ & VCC))
-- \scaler[14]~54\ = CARRY((scaler(14) & !\scaler[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(14),
	datad => VCC,
	cin => \scaler[13]~52\,
	combout => \scaler[14]~53_combout\,
	cout => \scaler[14]~54\);

-- Location: FF_X112_Y43_N21
\scaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \scaler[14]~53_combout\,
	sclr => \LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(14));

-- Location: LCCOMB_X113_Y42_N6
\scaler[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[15]~55_combout\ = (scaler(15) & (!\scaler[14]~54\)) # (!scaler(15) & ((\scaler[14]~54\) # (GND)))
-- \scaler[15]~56\ = CARRY((!\scaler[14]~54\) # (!scaler(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(15),
	datad => VCC,
	cin => \scaler[14]~54\,
	combout => \scaler[15]~55_combout\,
	cout => \scaler[15]~56\);

-- Location: FF_X113_Y42_N7
\scaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[15]~55_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(15));

-- Location: LCCOMB_X113_Y42_N8
\scaler[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[16]~57_combout\ = (scaler(16) & (\scaler[15]~56\ $ (GND))) # (!scaler(16) & (!\scaler[15]~56\ & VCC))
-- \scaler[16]~58\ = CARRY((scaler(16) & !\scaler[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(16),
	datad => VCC,
	cin => \scaler[15]~56\,
	combout => \scaler[16]~57_combout\,
	cout => \scaler[16]~58\);

-- Location: FF_X113_Y42_N9
\scaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[16]~57_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(16));

-- Location: LCCOMB_X113_Y42_N10
\scaler[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[17]~59_combout\ = (scaler(17) & (!\scaler[16]~58\)) # (!scaler(17) & ((\scaler[16]~58\) # (GND)))
-- \scaler[17]~60\ = CARRY((!\scaler[16]~58\) # (!scaler(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(17),
	datad => VCC,
	cin => \scaler[16]~58\,
	combout => \scaler[17]~59_combout\,
	cout => \scaler[17]~60\);

-- Location: FF_X113_Y42_N11
\scaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[17]~59_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(17));

-- Location: LCCOMB_X113_Y42_N12
\scaler[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[18]~61_combout\ = (scaler(18) & (\scaler[17]~60\ $ (GND))) # (!scaler(18) & (!\scaler[17]~60\ & VCC))
-- \scaler[18]~62\ = CARRY((scaler(18) & !\scaler[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(18),
	datad => VCC,
	cin => \scaler[17]~60\,
	combout => \scaler[18]~61_combout\,
	cout => \scaler[18]~62\);

-- Location: FF_X113_Y42_N13
\scaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[18]~61_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(18));

-- Location: LCCOMB_X113_Y42_N14
\scaler[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[19]~63_combout\ = (scaler(19) & (!\scaler[18]~62\)) # (!scaler(19) & ((\scaler[18]~62\) # (GND)))
-- \scaler[19]~64\ = CARRY((!\scaler[18]~62\) # (!scaler(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(19),
	datad => VCC,
	cin => \scaler[18]~62\,
	combout => \scaler[19]~63_combout\,
	cout => \scaler[19]~64\);

-- Location: FF_X113_Y42_N15
\scaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[19]~63_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(19));

-- Location: LCCOMB_X113_Y42_N16
\scaler[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[20]~65_combout\ = (scaler(20) & (\scaler[19]~64\ $ (GND))) # (!scaler(20) & (!\scaler[19]~64\ & VCC))
-- \scaler[20]~66\ = CARRY((scaler(20) & !\scaler[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(20),
	datad => VCC,
	cin => \scaler[19]~64\,
	combout => \scaler[20]~65_combout\,
	cout => \scaler[20]~66\);

-- Location: FF_X113_Y42_N17
\scaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[20]~65_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(20));

-- Location: LCCOMB_X113_Y42_N18
\scaler[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[21]~67_combout\ = (scaler(21) & (!\scaler[20]~66\)) # (!scaler(21) & ((\scaler[20]~66\) # (GND)))
-- \scaler[21]~68\ = CARRY((!\scaler[20]~66\) # (!scaler(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(21),
	datad => VCC,
	cin => \scaler[20]~66\,
	combout => \scaler[21]~67_combout\,
	cout => \scaler[21]~68\);

-- Location: FF_X113_Y42_N19
\scaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[21]~67_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(21));

-- Location: LCCOMB_X113_Y42_N20
\scaler[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[22]~69_combout\ = (scaler(22) & (\scaler[21]~68\ $ (GND))) # (!scaler(22) & (!\scaler[21]~68\ & VCC))
-- \scaler[22]~70\ = CARRY((scaler(22) & !\scaler[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => scaler(22),
	datad => VCC,
	cin => \scaler[21]~68\,
	combout => \scaler[22]~69_combout\,
	cout => \scaler[22]~70\);

-- Location: FF_X113_Y42_N21
\scaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[22]~69_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(22));

-- Location: LCCOMB_X113_Y42_N22
\scaler[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[23]~71_combout\ = (scaler(23) & (!\scaler[22]~70\)) # (!scaler(23) & ((\scaler[22]~70\) # (GND)))
-- \scaler[23]~72\ = CARRY((!\scaler[22]~70\) # (!scaler(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => scaler(23),
	datad => VCC,
	cin => \scaler[22]~70\,
	combout => \scaler[23]~71_combout\,
	cout => \scaler[23]~72\);

-- Location: FF_X113_Y42_N23
\scaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[23]~71_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(23));

-- Location: LCCOMB_X113_Y42_N24
\scaler[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \scaler[24]~73_combout\ = \scaler[23]~72\ $ (!scaler(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => scaler(24),
	cin => \scaler[23]~72\,
	combout => \scaler[24]~73_combout\);

-- Location: FF_X113_Y42_N25
\scaler[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \scaler[24]~73_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scaler(24));

-- Location: LCCOMB_X113_Y42_N26
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!scaler(17) & !scaler(16))) # (!scaler(18))) # (!scaler(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scaler(17),
	datab => scaler(16),
	datac => scaler(19),
	datad => scaler(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X113_Y42_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!scaler(21)) # (!scaler(22))) # (!scaler(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => scaler(20),
	datac => scaler(22),
	datad => scaler(21),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X113_Y42_N30
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!scaler(23) & ((\LessThan0~4_combout\) # (\LessThan0~5_combout\)))) # (!scaler(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scaler(23),
	datab => scaler(24),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X114_Y43_N12
\counter_clk[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_clk[0]~1_combout\ = counter_clk(0) $ (((!\LessThan0~6_combout\ & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datac => \LessThan0~3_combout\,
	datad => counter_clk(0),
	combout => \counter_clk[0]~1_combout\);

-- Location: LCCOMB_X114_Y43_N10
\counter_clk[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_clk[0]~feeder_combout\ = \counter_clk[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_clk[0]~1_combout\,
	combout => \counter_clk[0]~feeder_combout\);

-- Location: FF_X114_Y43_N11
\counter_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter_clk[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_clk(0));

-- Location: LCCOMB_X114_Y43_N20
\COUNTER_INST1|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter~1_combout\ = (!\COUNTER_INST1|counter\(3) & (\COUNTER_INST1|counter\(0) $ (\COUNTER_INST1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_INST1|counter\(0),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(1),
	combout => \COUNTER_INST1|counter~1_combout\);

-- Location: LCCOMB_X114_Y43_N28
\COUNTER_INST1|counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter[1]~feeder_combout\ = \COUNTER_INST1|counter~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter~1_combout\,
	combout => \COUNTER_INST1|counter[1]~feeder_combout\);

-- Location: IOIBUF_X115_Y40_N8
\rst_main~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_main,
	o => \rst_main~input_o\);

-- Location: FF_X114_Y43_N29
\COUNTER_INST1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => counter_clk(0),
	d => \COUNTER_INST1|counter[1]~feeder_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST1|counter\(1));

-- Location: LCCOMB_X114_Y43_N16
\COUNTER_INST1|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter~0_combout\ = (!\COUNTER_INST1|counter\(0) & (((!\COUNTER_INST1|counter\(2) & !\COUNTER_INST1|counter\(1))) # (!\COUNTER_INST1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(3),
	datab => \COUNTER_INST1|counter\(0),
	datac => \COUNTER_INST1|counter\(2),
	datad => \COUNTER_INST1|counter\(1),
	combout => \COUNTER_INST1|counter~0_combout\);

-- Location: LCCOMB_X114_Y43_N26
\COUNTER_INST1|counter[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter[0]~feeder_combout\ = \COUNTER_INST1|counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_INST1|counter~0_combout\,
	combout => \COUNTER_INST1|counter[0]~feeder_combout\);

-- Location: FF_X114_Y43_N27
\COUNTER_INST1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => counter_clk(0),
	d => \COUNTER_INST1|counter[0]~feeder_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST1|counter\(0));

-- Location: LCCOMB_X114_Y43_N24
\COUNTER_INST1|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter~3_combout\ = (\COUNTER_INST1|counter\(3) & (!\COUNTER_INST1|counter\(0) & (!\COUNTER_INST1|counter\(2) & !\COUNTER_INST1|counter\(1)))) # (!\COUNTER_INST1|counter\(3) & (\COUNTER_INST1|counter\(0) & (\COUNTER_INST1|counter\(2) & 
-- \COUNTER_INST1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(3),
	datab => \COUNTER_INST1|counter\(0),
	datac => \COUNTER_INST1|counter\(2),
	datad => \COUNTER_INST1|counter\(1),
	combout => \COUNTER_INST1|counter~3_combout\);

-- Location: LCCOMB_X114_Y43_N30
\COUNTER_INST1|counter[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter[3]~feeder_combout\ = \COUNTER_INST1|counter~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter~3_combout\,
	combout => \COUNTER_INST1|counter[3]~feeder_combout\);

-- Location: FF_X114_Y43_N31
\COUNTER_INST1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => counter_clk(0),
	d => \COUNTER_INST1|counter[3]~feeder_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST1|counter\(3));

-- Location: LCCOMB_X114_Y43_N22
\COUNTER_INST1|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter~2_combout\ = (!\COUNTER_INST1|counter\(3) & (\COUNTER_INST1|counter\(2) $ (((\COUNTER_INST1|counter\(0) & \COUNTER_INST1|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(3),
	datab => \COUNTER_INST1|counter\(0),
	datac => \COUNTER_INST1|counter\(2),
	datad => \COUNTER_INST1|counter\(1),
	combout => \COUNTER_INST1|counter~2_combout\);

-- Location: LCCOMB_X114_Y43_N14
\COUNTER_INST1|counter[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST1|counter[2]~feeder_combout\ = \COUNTER_INST1|counter~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_INST1|counter~2_combout\,
	combout => \COUNTER_INST1|counter[2]~feeder_combout\);

-- Location: FF_X114_Y43_N15
\COUNTER_INST1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => counter_clk(0),
	d => \COUNTER_INST1|counter[2]~feeder_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST1|counter\(2));

-- Location: LCCOMB_X114_Y50_N12
\DECODER_INST1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST1|Mux6~0_combout\ = (\COUNTER_INST1|counter\(2) & (!\COUNTER_INST1|counter\(3) & ((!\COUNTER_INST1|counter\(0)) # (!\COUNTER_INST1|counter\(1))))) # (!\COUNTER_INST1|counter\(2) & (\COUNTER_INST1|counter\(1) $ ((\COUNTER_INST1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(2),
	datab => \COUNTER_INST1|counter\(1),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \DECODER_INST1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y50_N26
\DECODER_INST1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST1|Mux5~0_combout\ = (!\COUNTER_INST1|counter\(3) & ((\COUNTER_INST1|counter\(2) & (\COUNTER_INST1|counter\(1) & \COUNTER_INST1|counter\(0))) # (!\COUNTER_INST1|counter\(2) & ((\COUNTER_INST1|counter\(1)) # (\COUNTER_INST1|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(2),
	datab => \COUNTER_INST1|counter\(1),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \DECODER_INST1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y50_N0
\DECODER_INST1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST1|Mux4~0_combout\ = (\COUNTER_INST1|counter\(1) & (((!\COUNTER_INST1|counter\(3) & \COUNTER_INST1|counter\(0))))) # (!\COUNTER_INST1|counter\(1) & ((\COUNTER_INST1|counter\(2) & (!\COUNTER_INST1|counter\(3))) # (!\COUNTER_INST1|counter\(2) & 
-- ((\COUNTER_INST1|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(2),
	datab => \COUNTER_INST1|counter\(1),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \DECODER_INST1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y50_N2
\DECODER_INST1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST1|Mux3~0_combout\ = (!\COUNTER_INST1|counter\(3) & ((\COUNTER_INST1|counter\(2) & (\COUNTER_INST1|counter\(1) $ (!\COUNTER_INST1|counter\(0)))) # (!\COUNTER_INST1|counter\(2) & (!\COUNTER_INST1|counter\(1) & \COUNTER_INST1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(2),
	datab => \COUNTER_INST1|counter\(1),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \DECODER_INST1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y50_N24
\DECODER_INST1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST1|Mux2~0_combout\ = (!\COUNTER_INST1|counter\(2) & (\COUNTER_INST1|counter\(1) & (!\COUNTER_INST1|counter\(3) & !\COUNTER_INST1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(2),
	datab => \COUNTER_INST1|counter\(1),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \DECODER_INST1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y50_N22
\DECODER_INST1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST1|Mux1~0_combout\ = (\COUNTER_INST1|counter\(2) & (!\COUNTER_INST1|counter\(3) & (\COUNTER_INST1|counter\(1) $ (\COUNTER_INST1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(2),
	datab => \COUNTER_INST1|counter\(1),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \DECODER_INST1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y50_N28
\DECODER_INST1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST1|Mux0~0_combout\ = (!\COUNTER_INST1|counter\(1) & (!\COUNTER_INST1|counter\(3) & (\COUNTER_INST1|counter\(2) $ (\COUNTER_INST1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(2),
	datab => \COUNTER_INST1|counter\(1),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \DECODER_INST1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y43_N18
\counter_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_clk~0_combout\ = LCELL((\COUNTER_INST1|counter\(1)) # ((\COUNTER_INST1|counter\(2)) # ((!\COUNTER_INST1|counter\(0)) # (!\COUNTER_INST1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST1|counter\(1),
	datab => \COUNTER_INST1|counter\(2),
	datac => \COUNTER_INST1|counter\(3),
	datad => \COUNTER_INST1|counter\(0),
	combout => \counter_clk~0_combout\);

-- Location: CLKCTRL_G8
\counter_clk~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter_clk~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter_clk~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y28_N0
\COUNTER_INST2|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST2|counter~0_combout\ = (!\COUNTER_INST2|counter\(0) & (((!\COUNTER_INST2|counter\(1) & !\COUNTER_INST2|counter\(2))) # (!\COUNTER_INST2|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(3),
	datab => \COUNTER_INST2|counter\(1),
	datac => \COUNTER_INST2|counter\(0),
	datad => \COUNTER_INST2|counter\(2),
	combout => \COUNTER_INST2|counter~0_combout\);

-- Location: FF_X114_Y28_N1
\COUNTER_INST2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_clk~0clkctrl_outclk\,
	d => \COUNTER_INST2|counter~0_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST2|counter\(0));

-- Location: LCCOMB_X114_Y28_N12
\COUNTER_INST2|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST2|counter~2_combout\ = (!\COUNTER_INST2|counter\(3) & (\COUNTER_INST2|counter\(2) $ (((\COUNTER_INST2|counter\(0) & \COUNTER_INST2|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(3),
	datab => \COUNTER_INST2|counter\(0),
	datac => \COUNTER_INST2|counter\(2),
	datad => \COUNTER_INST2|counter\(1),
	combout => \COUNTER_INST2|counter~2_combout\);

-- Location: FF_X114_Y28_N13
\COUNTER_INST2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_clk~0clkctrl_outclk\,
	d => \COUNTER_INST2|counter~2_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST2|counter\(2));

-- Location: LCCOMB_X114_Y28_N10
\COUNTER_INST2|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST2|counter~3_combout\ = (\COUNTER_INST2|counter\(2) & (\COUNTER_INST2|counter\(0) & (!\COUNTER_INST2|counter\(3) & \COUNTER_INST2|counter\(1)))) # (!\COUNTER_INST2|counter\(2) & (!\COUNTER_INST2|counter\(0) & (\COUNTER_INST2|counter\(3) & 
-- !\COUNTER_INST2|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(2),
	datab => \COUNTER_INST2|counter\(0),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(1),
	combout => \COUNTER_INST2|counter~3_combout\);

-- Location: FF_X114_Y28_N11
\COUNTER_INST2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_clk~0clkctrl_outclk\,
	d => \COUNTER_INST2|counter~3_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST2|counter\(3));

-- Location: LCCOMB_X114_Y28_N2
\COUNTER_INST2|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_INST2|counter~1_combout\ = (!\COUNTER_INST2|counter\(3) & (\COUNTER_INST2|counter\(1) $ (\COUNTER_INST2|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(3),
	datac => \COUNTER_INST2|counter\(1),
	datad => \COUNTER_INST2|counter\(0),
	combout => \COUNTER_INST2|counter~1_combout\);

-- Location: FF_X114_Y28_N3
\COUNTER_INST2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_clk~0clkctrl_outclk\,
	d => \COUNTER_INST2|counter~1_combout\,
	clrn => \rst_main~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_INST2|counter\(1));

-- Location: LCCOMB_X114_Y28_N20
\DECODER_INST2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST2|Mux6~0_combout\ = (\COUNTER_INST2|counter\(1) & (!\COUNTER_INST2|counter\(3) & ((!\COUNTER_INST2|counter\(0)) # (!\COUNTER_INST2|counter\(2))))) # (!\COUNTER_INST2|counter\(1) & (\COUNTER_INST2|counter\(2) $ ((\COUNTER_INST2|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(1),
	datab => \COUNTER_INST2|counter\(2),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(0),
	combout => \DECODER_INST2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y28_N22
\DECODER_INST2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST2|Mux5~0_combout\ = (!\COUNTER_INST2|counter\(3) & ((\COUNTER_INST2|counter\(1) & ((\COUNTER_INST2|counter\(0)) # (!\COUNTER_INST2|counter\(2)))) # (!\COUNTER_INST2|counter\(1) & (!\COUNTER_INST2|counter\(2) & \COUNTER_INST2|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(1),
	datab => \COUNTER_INST2|counter\(2),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(0),
	combout => \DECODER_INST2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y28_N8
\DECODER_INST2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST2|Mux4~0_combout\ = (\COUNTER_INST2|counter\(1) & (((!\COUNTER_INST2|counter\(3) & \COUNTER_INST2|counter\(0))))) # (!\COUNTER_INST2|counter\(1) & ((\COUNTER_INST2|counter\(2) & (!\COUNTER_INST2|counter\(3))) # (!\COUNTER_INST2|counter\(2) & 
-- ((\COUNTER_INST2|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(1),
	datab => \COUNTER_INST2|counter\(2),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(0),
	combout => \DECODER_INST2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y28_N18
\DECODER_INST2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST2|Mux3~0_combout\ = (!\COUNTER_INST2|counter\(3) & ((\COUNTER_INST2|counter\(1) & (\COUNTER_INST2|counter\(2) & \COUNTER_INST2|counter\(0))) # (!\COUNTER_INST2|counter\(1) & (\COUNTER_INST2|counter\(2) $ (\COUNTER_INST2|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(1),
	datab => \COUNTER_INST2|counter\(2),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(0),
	combout => \DECODER_INST2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y28_N28
\DECODER_INST2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST2|Mux2~0_combout\ = (\COUNTER_INST2|counter\(1) & (!\COUNTER_INST2|counter\(2) & (!\COUNTER_INST2|counter\(3) & !\COUNTER_INST2|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(1),
	datab => \COUNTER_INST2|counter\(2),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(0),
	combout => \DECODER_INST2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y28_N26
\DECODER_INST2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST2|Mux1~0_combout\ = (\COUNTER_INST2|counter\(2) & (!\COUNTER_INST2|counter\(3) & (\COUNTER_INST2|counter\(1) $ (\COUNTER_INST2|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(1),
	datab => \COUNTER_INST2|counter\(2),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(0),
	combout => \DECODER_INST2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y28_N16
\DECODER_INST2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER_INST2|Mux0~0_combout\ = (!\COUNTER_INST2|counter\(1) & (!\COUNTER_INST2|counter\(3) & (\COUNTER_INST2|counter\(2) $ (\COUNTER_INST2|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_INST2|counter\(1),
	datab => \COUNTER_INST2|counter\(2),
	datac => \COUNTER_INST2|counter\(3),
	datad => \COUNTER_INST2|counter\(0),
	combout => \DECODER_INST2|Mux0~0_combout\);

ww_SEG0(6) <= \SEG0[6]~output_o\;

ww_SEG0(5) <= \SEG0[5]~output_o\;

ww_SEG0(4) <= \SEG0[4]~output_o\;

ww_SEG0(3) <= \SEG0[3]~output_o\;

ww_SEG0(2) <= \SEG0[2]~output_o\;

ww_SEG0(1) <= \SEG0[1]~output_o\;

ww_SEG0(0) <= \SEG0[0]~output_o\;

ww_SEG1(6) <= \SEG1[6]~output_o\;

ww_SEG1(5) <= \SEG1[5]~output_o\;

ww_SEG1(4) <= \SEG1[4]~output_o\;

ww_SEG1(3) <= \SEG1[3]~output_o\;

ww_SEG1(2) <= \SEG1[2]~output_o\;

ww_SEG1(1) <= \SEG1[1]~output_o\;

ww_SEG1(0) <= \SEG1[0]~output_o\;
END structure;


