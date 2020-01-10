-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/15/2018 12:31:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	Blocks IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(11 DOWNTO 0)
	);
END Blocks;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Blocks IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst9|Add2~0_combout\ : std_logic;
SIGNAL \inst9|Add2~1\ : std_logic;
SIGNAL \inst9|Add2~2_combout\ : std_logic;
SIGNAL \inst9|Add2~3\ : std_logic;
SIGNAL \inst9|Add2~4_combout\ : std_logic;
SIGNAL \inst9|Add2~5\ : std_logic;
SIGNAL \inst9|Add2~6_combout\ : std_logic;
SIGNAL \inst9|Add2~7\ : std_logic;
SIGNAL \inst9|Add2~8_combout\ : std_logic;
SIGNAL \inst9|Add2~9\ : std_logic;
SIGNAL \inst9|Add2~10_combout\ : std_logic;
SIGNAL \inst9|Add2~11\ : std_logic;
SIGNAL \inst9|Add2~12_combout\ : std_logic;
SIGNAL \inst9|Equal0~5_combout\ : std_logic;
SIGNAL \inst9|Equal0~10_combout\ : std_logic;
SIGNAL \inst9|Add2~13\ : std_logic;
SIGNAL \inst9|Add2~14_combout\ : std_logic;
SIGNAL \inst9|s_counter~11_combout\ : std_logic;
SIGNAL \inst9|Add2~15\ : std_logic;
SIGNAL \inst9|Add2~16_combout\ : std_logic;
SIGNAL \inst9|Add2~17\ : std_logic;
SIGNAL \inst9|Add2~18_combout\ : std_logic;
SIGNAL \inst9|Add2~19\ : std_logic;
SIGNAL \inst9|Add2~20_combout\ : std_logic;
SIGNAL \inst9|Add2~21\ : std_logic;
SIGNAL \inst9|Add2~22_combout\ : std_logic;
SIGNAL \inst9|Add2~23\ : std_logic;
SIGNAL \inst9|Add2~24_combout\ : std_logic;
SIGNAL \inst9|s_counter~10_combout\ : std_logic;
SIGNAL \inst9|Add2~25\ : std_logic;
SIGNAL \inst9|Add2~26_combout\ : std_logic;
SIGNAL \inst9|s_counter~9_combout\ : std_logic;
SIGNAL \inst9|Add2~27\ : std_logic;
SIGNAL \inst9|Add2~28_combout\ : std_logic;
SIGNAL \inst9|s_counter~8_combout\ : std_logic;
SIGNAL \inst9|Add2~29\ : std_logic;
SIGNAL \inst9|Add2~30_combout\ : std_logic;
SIGNAL \inst9|s_counter~3_combout\ : std_logic;
SIGNAL \inst9|Add2~31\ : std_logic;
SIGNAL \inst9|Add2~32_combout\ : std_logic;
SIGNAL \inst9|Add2~33\ : std_logic;
SIGNAL \inst9|Add2~34_combout\ : std_logic;
SIGNAL \inst9|s_counter~2_combout\ : std_logic;
SIGNAL \inst9|Add2~35\ : std_logic;
SIGNAL \inst9|Add2~36_combout\ : std_logic;
SIGNAL \inst9|Add2~37\ : std_logic;
SIGNAL \inst9|Add2~38_combout\ : std_logic;
SIGNAL \inst9|s_counter~7_combout\ : std_logic;
SIGNAL \inst9|Add2~39\ : std_logic;
SIGNAL \inst9|Add2~40_combout\ : std_logic;
SIGNAL \inst9|s_counter~6_combout\ : std_logic;
SIGNAL \inst9|Add2~41\ : std_logic;
SIGNAL \inst9|Add2~42_combout\ : std_logic;
SIGNAL \inst9|s_counter~5_combout\ : std_logic;
SIGNAL \inst9|Add2~43\ : std_logic;
SIGNAL \inst9|Add2~44_combout\ : std_logic;
SIGNAL \inst9|s_counter~4_combout\ : std_logic;
SIGNAL \inst9|Add2~45\ : std_logic;
SIGNAL \inst9|Add2~46_combout\ : std_logic;
SIGNAL \inst9|s_counter~1_combout\ : std_logic;
SIGNAL \inst9|Add2~47\ : std_logic;
SIGNAL \inst9|Add2~48_combout\ : std_logic;
SIGNAL \inst9|Add2~49\ : std_logic;
SIGNAL \inst9|Add2~51\ : std_logic;
SIGNAL \inst9|Add2~52_combout\ : std_logic;
SIGNAL \inst9|Add2~53\ : std_logic;
SIGNAL \inst9|Add2~54_combout\ : std_logic;
SIGNAL \inst9|Add2~55\ : std_logic;
SIGNAL \inst9|Add2~56_combout\ : std_logic;
SIGNAL \inst9|Add2~57\ : std_logic;
SIGNAL \inst9|Add2~58_combout\ : std_logic;
SIGNAL \inst9|Add2~59\ : std_logic;
SIGNAL \inst9|Add2~60_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst9|Equal0~4_combout\ : std_logic;
SIGNAL \inst9|Equal0~7_combout\ : std_logic;
SIGNAL \inst9|Equal0~8_combout\ : std_logic;
SIGNAL \inst9|Equal0~9_combout\ : std_logic;
SIGNAL \inst9|Equal0~11_combout\ : std_logic;
SIGNAL \inst9|Add2~50_combout\ : std_logic;
SIGNAL \inst9|s_counter~0_combout\ : std_logic;
SIGNAL \inst9|clkOut~0_combout\ : std_logic;
SIGNAL \inst9|clkOut~1_combout\ : std_logic;
SIGNAL \inst9|clkOut~2_combout\ : std_logic;
SIGNAL \inst9|Equal0~6_combout\ : std_logic;
SIGNAL \inst9|clkOut~3_combout\ : std_logic;
SIGNAL \inst9|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst9|clkOut~q\ : std_logic;
SIGNAL \inst9|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~35_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|s_cont3[11]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst6|s_cont~0_combout\ : std_logic;
SIGNAL \inst6|s_cont~q\ : std_logic;
SIGNAL \inst6|s_ver~feeder_combout\ : std_logic;
SIGNAL \inst6|s_ver~q\ : std_logic;
SIGNAL \inst6|s_stop~0_combout\ : std_logic;
SIGNAL \inst6|s_stop~1_combout\ : std_logic;
SIGNAL \inst6|s_stop~q\ : std_logic;
SIGNAL \inst1|s_cont3[11]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~33_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~31_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~29_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~27_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~25_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|s_cont3[11]~2_combout\ : std_logic;
SIGNAL \inst1|s_stop3~0_combout\ : std_logic;
SIGNAL \inst1|s_stop3~feeder_combout\ : std_logic;
SIGNAL \inst1|s_stop3~q\ : std_logic;
SIGNAL \inst7|s_reset~0_combout\ : std_logic;
SIGNAL \inst7|s_reset~feeder_combout\ : std_logic;
SIGNAL \inst7|s_reset~q\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|s_luz~0_combout\ : std_logic;
SIGNAL \inst1|s_luz~1_combout\ : std_logic;
SIGNAL \inst1|s_luz~q\ : std_logic;
SIGNAL \inst1|s_cont3\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst9|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst1|ALT_INV_s_cont3\ : std_logic_vector(11 DOWNTO 4);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst9|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst9|clkOut~q\);
\inst1|ALT_INV_s_cont3\(4) <= NOT \inst1|s_cont3\(4);
\inst1|ALT_INV_s_cont3\(9) <= NOT \inst1|s_cont3\(9);
\inst1|ALT_INV_s_cont3\(10) <= NOT \inst1|s_cont3\(10);
\inst1|ALT_INV_s_cont3\(11) <= NOT \inst1|s_cont3\(11);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_luz~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s_cont3\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s_cont3\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s_cont3\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s_cont3\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_cont3\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X48_Y10_N2
\inst9|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~0_combout\ = \inst9|s_counter\(0) $ (VCC)
-- \inst9|Add2~1\ = CARRY(\inst9|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(0),
	datad => VCC,
	combout => \inst9|Add2~0_combout\,
	cout => \inst9|Add2~1\);

-- Location: FF_X48_Y10_N3
\inst9|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(0));

-- Location: LCCOMB_X48_Y10_N4
\inst9|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~2_combout\ = (\inst9|s_counter\(1) & (!\inst9|Add2~1\)) # (!\inst9|s_counter\(1) & ((\inst9|Add2~1\) # (GND)))
-- \inst9|Add2~3\ = CARRY((!\inst9|Add2~1\) # (!\inst9|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(1),
	datad => VCC,
	cin => \inst9|Add2~1\,
	combout => \inst9|Add2~2_combout\,
	cout => \inst9|Add2~3\);

-- Location: FF_X48_Y10_N5
\inst9|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(1));

-- Location: LCCOMB_X48_Y10_N6
\inst9|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~4_combout\ = (\inst9|s_counter\(2) & (\inst9|Add2~3\ $ (GND))) # (!\inst9|s_counter\(2) & (!\inst9|Add2~3\ & VCC))
-- \inst9|Add2~5\ = CARRY((\inst9|s_counter\(2) & !\inst9|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(2),
	datad => VCC,
	cin => \inst9|Add2~3\,
	combout => \inst9|Add2~4_combout\,
	cout => \inst9|Add2~5\);

-- Location: FF_X48_Y10_N7
\inst9|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(2));

-- Location: LCCOMB_X48_Y10_N8
\inst9|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~6_combout\ = (\inst9|s_counter\(3) & (!\inst9|Add2~5\)) # (!\inst9|s_counter\(3) & ((\inst9|Add2~5\) # (GND)))
-- \inst9|Add2~7\ = CARRY((!\inst9|Add2~5\) # (!\inst9|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(3),
	datad => VCC,
	cin => \inst9|Add2~5\,
	combout => \inst9|Add2~6_combout\,
	cout => \inst9|Add2~7\);

-- Location: FF_X48_Y10_N9
\inst9|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(3));

-- Location: LCCOMB_X48_Y10_N10
\inst9|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~8_combout\ = (\inst9|s_counter\(4) & (\inst9|Add2~7\ $ (GND))) # (!\inst9|s_counter\(4) & (!\inst9|Add2~7\ & VCC))
-- \inst9|Add2~9\ = CARRY((\inst9|s_counter\(4) & !\inst9|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(4),
	datad => VCC,
	cin => \inst9|Add2~7\,
	combout => \inst9|Add2~8_combout\,
	cout => \inst9|Add2~9\);

-- Location: FF_X48_Y10_N11
\inst9|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(4));

-- Location: LCCOMB_X48_Y10_N12
\inst9|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~10_combout\ = (\inst9|s_counter\(5) & (!\inst9|Add2~9\)) # (!\inst9|s_counter\(5) & ((\inst9|Add2~9\) # (GND)))
-- \inst9|Add2~11\ = CARRY((!\inst9|Add2~9\) # (!\inst9|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(5),
	datad => VCC,
	cin => \inst9|Add2~9\,
	combout => \inst9|Add2~10_combout\,
	cout => \inst9|Add2~11\);

-- Location: FF_X48_Y10_N13
\inst9|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(5));

-- Location: LCCOMB_X48_Y10_N14
\inst9|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~12_combout\ = (\inst9|s_counter\(6) & (\inst9|Add2~11\ $ (GND))) # (!\inst9|s_counter\(6) & (!\inst9|Add2~11\ & VCC))
-- \inst9|Add2~13\ = CARRY((\inst9|s_counter\(6) & !\inst9|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(6),
	datad => VCC,
	cin => \inst9|Add2~11\,
	combout => \inst9|Add2~12_combout\,
	cout => \inst9|Add2~13\);

-- Location: FF_X48_Y10_N15
\inst9|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(6));

-- Location: LCCOMB_X49_Y10_N28
\inst9|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~5_combout\ = (\inst9|s_counter\(4) & (\inst9|s_counter\(2) & (\inst9|s_counter\(5) & \inst9|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(4),
	datab => \inst9|s_counter\(2),
	datac => \inst9|s_counter\(5),
	datad => \inst9|s_counter\(3),
	combout => \inst9|Equal0~5_combout\);

-- Location: LCCOMB_X49_Y9_N24
\inst9|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~10_combout\ = (\inst9|s_counter\(0) & \inst9|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(0),
	datad => \inst9|s_counter\(1),
	combout => \inst9|Equal0~10_combout\);

-- Location: LCCOMB_X48_Y10_N16
\inst9|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~14_combout\ = (\inst9|s_counter\(7) & (!\inst9|Add2~13\)) # (!\inst9|s_counter\(7) & ((\inst9|Add2~13\) # (GND)))
-- \inst9|Add2~15\ = CARRY((!\inst9|Add2~13\) # (!\inst9|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(7),
	datad => VCC,
	cin => \inst9|Add2~13\,
	combout => \inst9|Add2~14_combout\,
	cout => \inst9|Add2~15\);

-- Location: LCCOMB_X47_Y9_N2
\inst9|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~11_combout\ = (\inst9|Add2~14_combout\ & !\inst9|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add2~14_combout\,
	datac => \inst9|Equal0~11_combout\,
	combout => \inst9|s_counter~11_combout\);

-- Location: FF_X47_Y9_N3
\inst9|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(7));

-- Location: LCCOMB_X48_Y10_N18
\inst9|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~16_combout\ = (\inst9|s_counter\(8) & (\inst9|Add2~15\ $ (GND))) # (!\inst9|s_counter\(8) & (!\inst9|Add2~15\ & VCC))
-- \inst9|Add2~17\ = CARRY((\inst9|s_counter\(8) & !\inst9|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(8),
	datad => VCC,
	cin => \inst9|Add2~15\,
	combout => \inst9|Add2~16_combout\,
	cout => \inst9|Add2~17\);

-- Location: FF_X48_Y10_N19
\inst9|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(8));

-- Location: LCCOMB_X48_Y10_N20
\inst9|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~18_combout\ = (\inst9|s_counter\(9) & (!\inst9|Add2~17\)) # (!\inst9|s_counter\(9) & ((\inst9|Add2~17\) # (GND)))
-- \inst9|Add2~19\ = CARRY((!\inst9|Add2~17\) # (!\inst9|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(9),
	datad => VCC,
	cin => \inst9|Add2~17\,
	combout => \inst9|Add2~18_combout\,
	cout => \inst9|Add2~19\);

-- Location: FF_X48_Y10_N21
\inst9|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(9));

-- Location: LCCOMB_X48_Y10_N22
\inst9|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~20_combout\ = (\inst9|s_counter\(10) & (\inst9|Add2~19\ $ (GND))) # (!\inst9|s_counter\(10) & (!\inst9|Add2~19\ & VCC))
-- \inst9|Add2~21\ = CARRY((\inst9|s_counter\(10) & !\inst9|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(10),
	datad => VCC,
	cin => \inst9|Add2~19\,
	combout => \inst9|Add2~20_combout\,
	cout => \inst9|Add2~21\);

-- Location: FF_X48_Y10_N23
\inst9|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(10));

-- Location: LCCOMB_X48_Y10_N24
\inst9|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~22_combout\ = (\inst9|s_counter\(11) & (!\inst9|Add2~21\)) # (!\inst9|s_counter\(11) & ((\inst9|Add2~21\) # (GND)))
-- \inst9|Add2~23\ = CARRY((!\inst9|Add2~21\) # (!\inst9|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(11),
	datad => VCC,
	cin => \inst9|Add2~21\,
	combout => \inst9|Add2~22_combout\,
	cout => \inst9|Add2~23\);

-- Location: FF_X48_Y10_N25
\inst9|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(11));

-- Location: LCCOMB_X48_Y10_N26
\inst9|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~24_combout\ = (\inst9|s_counter\(12) & (\inst9|Add2~23\ $ (GND))) # (!\inst9|s_counter\(12) & (!\inst9|Add2~23\ & VCC))
-- \inst9|Add2~25\ = CARRY((\inst9|s_counter\(12) & !\inst9|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(12),
	datad => VCC,
	cin => \inst9|Add2~23\,
	combout => \inst9|Add2~24_combout\,
	cout => \inst9|Add2~25\);

-- Location: LCCOMB_X48_Y10_N0
\inst9|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~10_combout\ = (\inst9|Add2~24_combout\ & !\inst9|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add2~24_combout\,
	datad => \inst9|Equal0~11_combout\,
	combout => \inst9|s_counter~10_combout\);

-- Location: FF_X48_Y10_N1
\inst9|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(12));

-- Location: LCCOMB_X48_Y10_N28
\inst9|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~26_combout\ = (\inst9|s_counter\(13) & (!\inst9|Add2~25\)) # (!\inst9|s_counter\(13) & ((\inst9|Add2~25\) # (GND)))
-- \inst9|Add2~27\ = CARRY((!\inst9|Add2~25\) # (!\inst9|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(13),
	datad => VCC,
	cin => \inst9|Add2~25\,
	combout => \inst9|Add2~26_combout\,
	cout => \inst9|Add2~27\);

-- Location: LCCOMB_X47_Y9_N18
\inst9|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~9_combout\ = (!\inst9|Equal0~11_combout\ & \inst9|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Equal0~11_combout\,
	datad => \inst9|Add2~26_combout\,
	combout => \inst9|s_counter~9_combout\);

-- Location: FF_X47_Y9_N19
\inst9|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(13));

-- Location: LCCOMB_X48_Y10_N30
\inst9|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~28_combout\ = (\inst9|s_counter\(14) & (\inst9|Add2~27\ $ (GND))) # (!\inst9|s_counter\(14) & (!\inst9|Add2~27\ & VCC))
-- \inst9|Add2~29\ = CARRY((\inst9|s_counter\(14) & !\inst9|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(14),
	datad => VCC,
	cin => \inst9|Add2~27\,
	combout => \inst9|Add2~28_combout\,
	cout => \inst9|Add2~29\);

-- Location: LCCOMB_X47_Y9_N0
\inst9|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~8_combout\ = (!\inst9|Equal0~11_combout\ & \inst9|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Equal0~11_combout\,
	datad => \inst9|Add2~28_combout\,
	combout => \inst9|s_counter~8_combout\);

-- Location: FF_X47_Y9_N1
\inst9|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(14));

-- Location: LCCOMB_X48_Y9_N0
\inst9|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~30_combout\ = (\inst9|s_counter\(15) & (!\inst9|Add2~29\)) # (!\inst9|s_counter\(15) & ((\inst9|Add2~29\) # (GND)))
-- \inst9|Add2~31\ = CARRY((!\inst9|Add2~29\) # (!\inst9|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(15),
	datad => VCC,
	cin => \inst9|Add2~29\,
	combout => \inst9|Add2~30_combout\,
	cout => \inst9|Add2~31\);

-- Location: LCCOMB_X49_Y9_N18
\inst9|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~3_combout\ = (\inst9|Add2~30_combout\ & !\inst9|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add2~30_combout\,
	datad => \inst9|Equal0~11_combout\,
	combout => \inst9|s_counter~3_combout\);

-- Location: FF_X49_Y9_N19
\inst9|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(15));

-- Location: LCCOMB_X48_Y9_N2
\inst9|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~32_combout\ = (\inst9|s_counter\(16) & (\inst9|Add2~31\ $ (GND))) # (!\inst9|s_counter\(16) & (!\inst9|Add2~31\ & VCC))
-- \inst9|Add2~33\ = CARRY((\inst9|s_counter\(16) & !\inst9|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(16),
	datad => VCC,
	cin => \inst9|Add2~31\,
	combout => \inst9|Add2~32_combout\,
	cout => \inst9|Add2~33\);

-- Location: FF_X48_Y9_N3
\inst9|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(16));

-- Location: LCCOMB_X48_Y9_N4
\inst9|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~34_combout\ = (\inst9|s_counter\(17) & (!\inst9|Add2~33\)) # (!\inst9|s_counter\(17) & ((\inst9|Add2~33\) # (GND)))
-- \inst9|Add2~35\ = CARRY((!\inst9|Add2~33\) # (!\inst9|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(17),
	datad => VCC,
	cin => \inst9|Add2~33\,
	combout => \inst9|Add2~34_combout\,
	cout => \inst9|Add2~35\);

-- Location: LCCOMB_X49_Y9_N26
\inst9|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~2_combout\ = (\inst9|Add2~34_combout\ & !\inst9|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add2~34_combout\,
	datad => \inst9|Equal0~11_combout\,
	combout => \inst9|s_counter~2_combout\);

-- Location: FF_X49_Y9_N27
\inst9|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(17));

-- Location: LCCOMB_X48_Y9_N6
\inst9|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~36_combout\ = (\inst9|s_counter\(18) & (\inst9|Add2~35\ $ (GND))) # (!\inst9|s_counter\(18) & (!\inst9|Add2~35\ & VCC))
-- \inst9|Add2~37\ = CARRY((\inst9|s_counter\(18) & !\inst9|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(18),
	datad => VCC,
	cin => \inst9|Add2~35\,
	combout => \inst9|Add2~36_combout\,
	cout => \inst9|Add2~37\);

-- Location: FF_X48_Y9_N7
\inst9|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(18));

-- Location: LCCOMB_X48_Y9_N8
\inst9|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~38_combout\ = (\inst9|s_counter\(19) & (!\inst9|Add2~37\)) # (!\inst9|s_counter\(19) & ((\inst9|Add2~37\) # (GND)))
-- \inst9|Add2~39\ = CARRY((!\inst9|Add2~37\) # (!\inst9|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(19),
	datad => VCC,
	cin => \inst9|Add2~37\,
	combout => \inst9|Add2~38_combout\,
	cout => \inst9|Add2~39\);

-- Location: LCCOMB_X47_Y9_N26
\inst9|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~7_combout\ = (!\inst9|Equal0~11_combout\ & \inst9|Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~11_combout\,
	datac => \inst9|Add2~38_combout\,
	combout => \inst9|s_counter~7_combout\);

-- Location: FF_X47_Y9_N27
\inst9|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(19));

-- Location: LCCOMB_X48_Y9_N10
\inst9|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~40_combout\ = (\inst9|s_counter\(20) & (\inst9|Add2~39\ $ (GND))) # (!\inst9|s_counter\(20) & (!\inst9|Add2~39\ & VCC))
-- \inst9|Add2~41\ = CARRY((\inst9|s_counter\(20) & !\inst9|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(20),
	datad => VCC,
	cin => \inst9|Add2~39\,
	combout => \inst9|Add2~40_combout\,
	cout => \inst9|Add2~41\);

-- Location: LCCOMB_X47_Y9_N14
\inst9|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~6_combout\ = (!\inst9|Equal0~11_combout\ & \inst9|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~11_combout\,
	datac => \inst9|Add2~40_combout\,
	combout => \inst9|s_counter~6_combout\);

-- Location: FF_X47_Y9_N15
\inst9|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(20));

-- Location: LCCOMB_X48_Y9_N12
\inst9|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~42_combout\ = (\inst9|s_counter\(21) & (!\inst9|Add2~41\)) # (!\inst9|s_counter\(21) & ((\inst9|Add2~41\) # (GND)))
-- \inst9|Add2~43\ = CARRY((!\inst9|Add2~41\) # (!\inst9|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(21),
	datad => VCC,
	cin => \inst9|Add2~41\,
	combout => \inst9|Add2~42_combout\,
	cout => \inst9|Add2~43\);

-- Location: LCCOMB_X47_Y9_N16
\inst9|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~5_combout\ = (!\inst9|Equal0~11_combout\ & \inst9|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~11_combout\,
	datac => \inst9|Add2~42_combout\,
	combout => \inst9|s_counter~5_combout\);

-- Location: FF_X47_Y9_N17
\inst9|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(21));

-- Location: LCCOMB_X48_Y9_N14
\inst9|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~44_combout\ = (\inst9|s_counter\(22) & (\inst9|Add2~43\ $ (GND))) # (!\inst9|s_counter\(22) & (!\inst9|Add2~43\ & VCC))
-- \inst9|Add2~45\ = CARRY((\inst9|s_counter\(22) & !\inst9|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(22),
	datad => VCC,
	cin => \inst9|Add2~43\,
	combout => \inst9|Add2~44_combout\,
	cout => \inst9|Add2~45\);

-- Location: LCCOMB_X47_Y9_N30
\inst9|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~4_combout\ = (!\inst9|Equal0~11_combout\ & \inst9|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~11_combout\,
	datac => \inst9|Add2~44_combout\,
	combout => \inst9|s_counter~4_combout\);

-- Location: FF_X47_Y9_N31
\inst9|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(22));

-- Location: LCCOMB_X48_Y9_N16
\inst9|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~46_combout\ = (\inst9|s_counter\(23) & (!\inst9|Add2~45\)) # (!\inst9|s_counter\(23) & ((\inst9|Add2~45\) # (GND)))
-- \inst9|Add2~47\ = CARRY((!\inst9|Add2~45\) # (!\inst9|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(23),
	datad => VCC,
	cin => \inst9|Add2~45\,
	combout => \inst9|Add2~46_combout\,
	cout => \inst9|Add2~47\);

-- Location: LCCOMB_X49_Y9_N22
\inst9|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~1_combout\ = (\inst9|Add2~46_combout\ & !\inst9|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add2~46_combout\,
	datad => \inst9|Equal0~11_combout\,
	combout => \inst9|s_counter~1_combout\);

-- Location: FF_X49_Y9_N23
\inst9|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(23));

-- Location: LCCOMB_X48_Y9_N18
\inst9|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~48_combout\ = (\inst9|s_counter\(24) & (\inst9|Add2~47\ $ (GND))) # (!\inst9|s_counter\(24) & (!\inst9|Add2~47\ & VCC))
-- \inst9|Add2~49\ = CARRY((\inst9|s_counter\(24) & !\inst9|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(24),
	datad => VCC,
	cin => \inst9|Add2~47\,
	combout => \inst9|Add2~48_combout\,
	cout => \inst9|Add2~49\);

-- Location: FF_X48_Y9_N19
\inst9|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(24));

-- Location: LCCOMB_X48_Y9_N20
\inst9|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~50_combout\ = (\inst9|s_counter\(25) & (!\inst9|Add2~49\)) # (!\inst9|s_counter\(25) & ((\inst9|Add2~49\) # (GND)))
-- \inst9|Add2~51\ = CARRY((!\inst9|Add2~49\) # (!\inst9|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(25),
	datad => VCC,
	cin => \inst9|Add2~49\,
	combout => \inst9|Add2~50_combout\,
	cout => \inst9|Add2~51\);

-- Location: LCCOMB_X48_Y9_N22
\inst9|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~52_combout\ = (\inst9|s_counter\(26) & (\inst9|Add2~51\ $ (GND))) # (!\inst9|s_counter\(26) & (!\inst9|Add2~51\ & VCC))
-- \inst9|Add2~53\ = CARRY((\inst9|s_counter\(26) & !\inst9|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(26),
	datad => VCC,
	cin => \inst9|Add2~51\,
	combout => \inst9|Add2~52_combout\,
	cout => \inst9|Add2~53\);

-- Location: FF_X48_Y9_N23
\inst9|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(26));

-- Location: LCCOMB_X48_Y9_N24
\inst9|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~54_combout\ = (\inst9|s_counter\(27) & (!\inst9|Add2~53\)) # (!\inst9|s_counter\(27) & ((\inst9|Add2~53\) # (GND)))
-- \inst9|Add2~55\ = CARRY((!\inst9|Add2~53\) # (!\inst9|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(27),
	datad => VCC,
	cin => \inst9|Add2~53\,
	combout => \inst9|Add2~54_combout\,
	cout => \inst9|Add2~55\);

-- Location: FF_X48_Y9_N25
\inst9|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(27));

-- Location: LCCOMB_X48_Y9_N26
\inst9|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~56_combout\ = (\inst9|s_counter\(28) & (\inst9|Add2~55\ $ (GND))) # (!\inst9|s_counter\(28) & (!\inst9|Add2~55\ & VCC))
-- \inst9|Add2~57\ = CARRY((\inst9|s_counter\(28) & !\inst9|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(28),
	datad => VCC,
	cin => \inst9|Add2~55\,
	combout => \inst9|Add2~56_combout\,
	cout => \inst9|Add2~57\);

-- Location: FF_X48_Y9_N27
\inst9|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(28));

-- Location: LCCOMB_X48_Y9_N28
\inst9|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~58_combout\ = (\inst9|s_counter\(29) & (!\inst9|Add2~57\)) # (!\inst9|s_counter\(29) & ((\inst9|Add2~57\) # (GND)))
-- \inst9|Add2~59\ = CARRY((!\inst9|Add2~57\) # (!\inst9|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(29),
	datad => VCC,
	cin => \inst9|Add2~57\,
	combout => \inst9|Add2~58_combout\,
	cout => \inst9|Add2~59\);

-- Location: FF_X48_Y9_N29
\inst9|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(29));

-- Location: LCCOMB_X48_Y9_N30
\inst9|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add2~60_combout\ = \inst9|s_counter\(30) $ (!\inst9|Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(30),
	cin => \inst9|Add2~59\,
	combout => \inst9|Add2~60_combout\);

-- Location: FF_X48_Y9_N31
\inst9|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(30));

-- Location: LCCOMB_X47_Y9_N12
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|s_counter\(30) & (!\inst9|s_counter\(29) & (!\inst9|s_counter\(28) & !\inst9|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(30),
	datab => \inst9|s_counter\(29),
	datac => \inst9|s_counter\(28),
	datad => \inst9|s_counter\(27),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y9_N4
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (\inst9|s_counter\(22) & (\inst9|s_counter\(21) & (\inst9|s_counter\(20) & !\inst9|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(22),
	datab => \inst9|s_counter\(21),
	datac => \inst9|s_counter\(20),
	datad => \inst9|s_counter\(26),
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y9_N8
\inst9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~2_combout\ = (\inst9|s_counter\(19) & (\inst9|s_counter\(14) & (\inst9|s_counter\(13) & \inst9|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(19),
	datab => \inst9|s_counter\(14),
	datac => \inst9|s_counter\(13),
	datad => \inst9|s_counter\(12),
	combout => \inst9|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y9_N20
\inst9|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~3_combout\ = (!\inst9|s_counter\(9) & (!\inst9|s_counter\(7) & (!\inst9|s_counter\(10) & !\inst9|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(9),
	datab => \inst9|s_counter\(7),
	datac => \inst9|s_counter\(10),
	datad => \inst9|s_counter\(8),
	combout => \inst9|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y9_N22
\inst9|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~4_combout\ = (\inst9|Equal0~0_combout\ & (\inst9|Equal0~1_combout\ & (\inst9|Equal0~2_combout\ & \inst9|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~0_combout\,
	datab => \inst9|Equal0~1_combout\,
	datac => \inst9|Equal0~2_combout\,
	datad => \inst9|Equal0~3_combout\,
	combout => \inst9|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y9_N12
\inst9|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~7_combout\ = (\inst9|s_counter\(23) & (!\inst9|s_counter\(18) & (\inst9|s_counter\(25) & !\inst9|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(23),
	datab => \inst9|s_counter\(18),
	datac => \inst9|s_counter\(25),
	datad => \inst9|s_counter\(24),
	combout => \inst9|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y9_N28
\inst9|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~8_combout\ = (\inst9|s_counter\(17) & (\inst9|s_counter\(15) & (!\inst9|s_counter\(11) & !\inst9|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(17),
	datab => \inst9|s_counter\(15),
	datac => \inst9|s_counter\(11),
	datad => \inst9|s_counter\(16),
	combout => \inst9|Equal0~8_combout\);

-- Location: LCCOMB_X49_Y9_N2
\inst9|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~9_combout\ = (\inst9|Equal0~7_combout\ & (\inst9|s_counter\(6) & \inst9|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~7_combout\,
	datac => \inst9|s_counter\(6),
	datad => \inst9|Equal0~8_combout\,
	combout => \inst9|Equal0~9_combout\);

-- Location: LCCOMB_X49_Y9_N0
\inst9|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~11_combout\ = (\inst9|Equal0~5_combout\ & (\inst9|Equal0~10_combout\ & (\inst9|Equal0~4_combout\ & \inst9|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~5_combout\,
	datab => \inst9|Equal0~10_combout\,
	datac => \inst9|Equal0~4_combout\,
	datad => \inst9|Equal0~9_combout\,
	combout => \inst9|Equal0~11_combout\);

-- Location: LCCOMB_X49_Y9_N30
\inst9|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_counter~0_combout\ = (!\inst9|Equal0~11_combout\ & \inst9|Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~11_combout\,
	datad => \inst9|Add2~50_combout\,
	combout => \inst9|s_counter~0_combout\);

-- Location: FF_X49_Y9_N31
\inst9|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_counter\(25));

-- Location: LCCOMB_X49_Y9_N8
\inst9|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clkOut~0_combout\ = (!\inst9|s_counter\(25) & (\inst9|s_counter\(18) & (!\inst9|s_counter\(23) & \inst9|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(25),
	datab => \inst9|s_counter\(18),
	datac => \inst9|s_counter\(23),
	datad => \inst9|s_counter\(24),
	combout => \inst9|clkOut~0_combout\);

-- Location: LCCOMB_X49_Y9_N20
\inst9|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clkOut~1_combout\ = (!\inst9|s_counter\(17) & (!\inst9|s_counter\(15) & (\inst9|s_counter\(11) & \inst9|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(17),
	datab => \inst9|s_counter\(15),
	datac => \inst9|s_counter\(11),
	datad => \inst9|s_counter\(16),
	combout => \inst9|clkOut~1_combout\);

-- Location: LCCOMB_X49_Y9_N10
\inst9|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clkOut~2_combout\ = (!\inst9|s_counter\(6) & (\inst9|clkOut~0_combout\ & \inst9|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_counter\(6),
	datac => \inst9|clkOut~0_combout\,
	datad => \inst9|clkOut~1_combout\,
	combout => \inst9|clkOut~2_combout\);

-- Location: LCCOMB_X49_Y9_N16
\inst9|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~6_combout\ = (\inst9|s_counter\(0) & (\inst9|s_counter\(1) & (\inst9|Equal0~5_combout\ & \inst9|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_counter\(0),
	datab => \inst9|s_counter\(1),
	datac => \inst9|Equal0~5_combout\,
	datad => \inst9|Equal0~4_combout\,
	combout => \inst9|Equal0~6_combout\);

-- Location: LCCOMB_X49_Y9_N6
\inst9|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clkOut~3_combout\ = (\inst9|Equal0~6_combout\ & (!\inst9|Equal0~9_combout\ & ((\inst9|clkOut~2_combout\) # (\inst9|clkOut~q\)))) # (!\inst9|Equal0~6_combout\ & (((\inst9|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|clkOut~2_combout\,
	datab => \inst9|Equal0~9_combout\,
	datac => \inst9|clkOut~q\,
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|clkOut~3_combout\);

-- Location: LCCOMB_X49_Y9_N4
\inst9|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clkOut~feeder_combout\ = \inst9|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|clkOut~3_combout\,
	combout => \inst9|clkOut~feeder_combout\);

-- Location: FF_X49_Y9_N5
\inst9|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clkOut~q\);

-- Location: CLKCTRL_G18
\inst9|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X109_Y48_N4
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|s_cont3\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|s_cont3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_cont3\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X109_Y48_N0
\inst1|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~35_combout\ = (\inst1|Add0~0_combout\ & !\inst7|s_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~0_combout\,
	datad => \inst7|s_reset~q\,
	combout => \inst1|Add0~35_combout\);

-- Location: LCCOMB_X110_Y48_N24
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|s_cont3\(5) & (\inst1|s_cont3\(4) & (!\inst1|s_cont3\(7) & !\inst1|s_cont3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(5),
	datab => \inst1|s_cont3\(4),
	datac => \inst1|s_cont3\(7),
	datad => \inst1|s_cont3\(6),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y48_N8
\inst1|s_cont3[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cont3[11]~0_combout\ = (\inst1|Equal0~2_combout\ & \inst1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|s_cont3[11]~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X111_Y48_N10
\inst6|s_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_cont~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \inst6|s_cont~0_combout\);

-- Location: FF_X111_Y48_N11
\inst6|s_cont\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_cont~q\);

-- Location: LCCOMB_X111_Y48_N4
\inst6|s_ver~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_ver~feeder_combout\ = \inst1|s_stop3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_stop3~q\,
	combout => \inst6|s_ver~feeder_combout\);

-- Location: FF_X111_Y48_N5
\inst6|s_ver\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_ver~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_ver~q\);

-- Location: LCCOMB_X111_Y48_N18
\inst6|s_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_stop~0_combout\ = (\inst6|s_ver~q\) # (!\inst1|s_stop3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_ver~q\,
	datad => \inst1|s_stop3~q\,
	combout => \inst6|s_stop~0_combout\);

-- Location: LCCOMB_X111_Y48_N14
\inst6|s_stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_stop~1_combout\ = (\inst6|s_stop~q\ & (\inst6|s_stop~0_combout\ & ((\inst6|s_cont~q\) # (\KEY[0]~input_o\)))) # (!\inst6|s_stop~q\ & (!\inst6|s_cont~q\ & (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_cont~q\,
	datab => \KEY[0]~input_o\,
	datac => \inst6|s_stop~q\,
	datad => \inst6|s_stop~0_combout\,
	combout => \inst6|s_stop~1_combout\);

-- Location: FF_X111_Y48_N15
\inst6|s_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_stop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_stop~q\);

-- Location: LCCOMB_X110_Y48_N26
\inst1|s_cont3[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cont3[11]~1_combout\ = (\inst7|s_reset~q\) # ((\inst6|s_stop~q\ & ((!\inst1|s_cont3[11]~0_combout\) # (!\inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|s_cont3[11]~0_combout\,
	datac => \inst6|s_stop~q\,
	datad => \inst7|s_reset~q\,
	combout => \inst1|s_cont3[11]~1_combout\);

-- Location: FF_X109_Y48_N1
\inst1|s_cont3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~35_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(0));

-- Location: LCCOMB_X109_Y48_N6
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_cont3\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|s_cont3\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|s_cont3\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X109_Y48_N30
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (!\inst7|s_reset~q\ & \inst1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|Add0~34_combout\);

-- Location: FF_X109_Y48_N31
\inst1|s_cont3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~34_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(1));

-- Location: LCCOMB_X109_Y48_N8
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_cont3\(2) & ((GND) # (!\inst1|Add0~3\))) # (!\inst1|s_cont3\(2) & (\inst1|Add0~3\ $ (GND)))
-- \inst1|Add0~5\ = CARRY((\inst1|s_cont3\(2)) # (!\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_cont3\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X109_Y48_N28
\inst1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~33_combout\ = (\inst1|Add0~4_combout\ & !\inst7|s_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~4_combout\,
	datad => \inst7|s_reset~q\,
	combout => \inst1|Add0~33_combout\);

-- Location: FF_X109_Y48_N29
\inst1|s_cont3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~33_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(2));

-- Location: LCCOMB_X109_Y48_N10
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_cont3\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|s_cont3\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|s_cont3\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X109_Y48_N12
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_cont3\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|s_cont3\(4) & ((GND) # (!\inst1|Add0~7\)))
-- \inst1|Add0~9\ = CARRY((!\inst1|Add0~7\) # (!\inst1|s_cont3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X110_Y48_N20
\inst1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~31_combout\ = (!\inst7|s_reset~q\ & !\inst1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~8_combout\,
	combout => \inst1|Add0~31_combout\);

-- Location: FF_X110_Y48_N21
\inst1|s_cont3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~31_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(4));

-- Location: LCCOMB_X109_Y48_N14
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|s_cont3\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|s_cont3\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|s_cont3\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_cont3\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X110_Y48_N10
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (!\inst7|s_reset~q\ & \inst1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|Add0~30_combout\);

-- Location: FF_X110_Y48_N11
\inst1|s_cont3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~30_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(5));

-- Location: LCCOMB_X109_Y48_N16
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|s_cont3\(6) & ((GND) # (!\inst1|Add0~11\))) # (!\inst1|s_cont3\(6) & (\inst1|Add0~11\ $ (GND)))
-- \inst1|Add0~13\ = CARRY((\inst1|s_cont3\(6)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_cont3\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X110_Y48_N12
\inst1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_combout\ = (\inst1|Add0~12_combout\ & !\inst7|s_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~12_combout\,
	datad => \inst7|s_reset~q\,
	combout => \inst1|Add0~29_combout\);

-- Location: FF_X110_Y48_N13
\inst1|s_cont3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~29_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(6));

-- Location: LCCOMB_X109_Y48_N18
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|s_cont3\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|s_cont3\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|s_cont3\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X110_Y48_N30
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (!\inst7|s_reset~q\ & \inst1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|Add0~28_combout\);

-- Location: FF_X110_Y48_N31
\inst1|s_cont3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~28_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(7));

-- Location: LCCOMB_X109_Y48_N20
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|s_cont3\(8) & ((GND) # (!\inst1|Add0~15\))) # (!\inst1|s_cont3\(8) & (\inst1|Add0~15\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|s_cont3\(8)) # (!\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X110_Y48_N4
\inst1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~27_combout\ = (!\inst7|s_reset~q\ & \inst1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|Add0~27_combout\);

-- Location: FF_X110_Y48_N5
\inst1|s_cont3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~27_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(8));

-- Location: LCCOMB_X109_Y48_N22
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|s_cont3\(9) & (!\inst1|Add0~17\)) # (!\inst1|s_cont3\(9) & (\inst1|Add0~17\ & VCC))
-- \inst1|Add0~19\ = CARRY((\inst1|s_cont3\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_cont3\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X110_Y48_N22
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (!\inst7|s_reset~q\ & !\inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|Add0~26_combout\);

-- Location: FF_X110_Y48_N23
\inst1|s_cont3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~26_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(9));

-- Location: LCCOMB_X109_Y48_N24
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|s_cont3\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|s_cont3\(10) & ((GND) # (!\inst1|Add0~19\)))
-- \inst1|Add0~21\ = CARRY((!\inst1|Add0~19\) # (!\inst1|s_cont3\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_cont3\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X110_Y48_N0
\inst1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_combout\ = (!\inst7|s_reset~q\ & !\inst1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|Add0~25_combout\);

-- Location: FF_X110_Y48_N1
\inst1|s_cont3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~25_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(10));

-- Location: LCCOMB_X109_Y48_N26
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = \inst1|Add0~21\ $ (\inst1|s_cont3\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_cont3\(11),
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\);

-- Location: LCCOMB_X110_Y48_N2
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (!\inst1|Add0~22_combout\ & !\inst7|s_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~22_combout\,
	datad => \inst7|s_reset~q\,
	combout => \inst1|Add0~24_combout\);

-- Location: FF_X110_Y48_N3
\inst1|s_cont3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~24_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(11));

-- Location: LCCOMB_X110_Y48_N14
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|s_cont3\(9) & (\inst1|s_cont3\(11) & (!\inst1|s_cont3\(8) & \inst1|s_cont3\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(9),
	datab => \inst1|s_cont3\(11),
	datac => \inst1|s_cont3\(8),
	datad => \inst1|s_cont3\(10),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y48_N26
\inst1|s_cont3[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cont3[11]~2_combout\ = ((\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & \inst1|Equal0~0_combout\))) # (!\inst6|s_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst6|s_stop~q\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|s_cont3[11]~2_combout\);

-- Location: LCCOMB_X111_Y48_N28
\inst1|s_stop3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_stop3~0_combout\ = (\inst1|s_stop3~q\ & \inst1|s_cont3[11]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_stop3~q\,
	datad => \inst1|s_cont3[11]~2_combout\,
	combout => \inst1|s_stop3~0_combout\);

-- Location: LCCOMB_X111_Y48_N16
\inst1|s_stop3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_stop3~feeder_combout\ = \inst1|s_stop3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_stop3~0_combout\,
	combout => \inst1|s_stop3~feeder_combout\);

-- Location: FF_X111_Y48_N17
\inst1|s_stop3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|s_stop3~feeder_combout\,
	asdata => VCC,
	sload => \inst7|s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_stop3~q\);

-- Location: LCCOMB_X111_Y48_N20
\inst7|s_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_reset~0_combout\ = (!\inst1|s_stop3~q\ & ((\inst7|s_reset~q\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst7|s_reset~q\,
	datad => \inst1|s_stop3~q\,
	combout => \inst7|s_reset~0_combout\);

-- Location: LCCOMB_X111_Y48_N24
\inst7|s_reset~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_reset~feeder_combout\ = \inst7|s_reset~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|s_reset~0_combout\,
	combout => \inst7|s_reset~feeder_combout\);

-- Location: FF_X111_Y48_N25
\inst7|s_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_reset~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_reset~q\);

-- Location: LCCOMB_X110_Y48_N6
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (!\inst7|s_reset~q\ & \inst1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_reset~q\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|Add0~32_combout\);

-- Location: FF_X110_Y48_N7
\inst1|s_cont3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|Add0~32_combout\,
	ena => \inst1|s_cont3[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cont3\(3));

-- Location: LCCOMB_X110_Y48_N18
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|s_cont3\(3) & (!\inst1|s_cont3\(1) & (!\inst1|s_cont3\(0) & !\inst1|s_cont3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cont3\(3),
	datab => \inst1|s_cont3\(1),
	datac => \inst1|s_cont3\(0),
	datad => \inst1|s_cont3\(2),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y48_N28
\inst1|s_luz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_luz~0_combout\ = (!\inst6|s_stop~q\ & \inst1|s_luz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_stop~q\,
	datad => \inst1|s_luz~q\,
	combout => \inst1|s_luz~0_combout\);

-- Location: LCCOMB_X110_Y48_N16
\inst1|s_luz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_luz~1_combout\ = (\inst1|s_luz~0_combout\) # ((\inst1|Equal0~0_combout\ & (\inst1|Equal0~2_combout\ & \inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~2_combout\,
	datac => \inst1|s_luz~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|s_luz~1_combout\);

-- Location: FF_X110_Y48_N17
\inst1|s_luz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|clkOut~clkctrl_outclk\,
	d => \inst1|s_luz~1_combout\,
	sclr => \inst7|s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_luz~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

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


