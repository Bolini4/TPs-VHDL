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
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "04/25/2023 11:58:44"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	CLOCK_50_B6A : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_B6A : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clk_divider|compteur[0]~0_combout\ : std_logic;
SIGNAL \clk_divider|Add0~77_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~78\ : std_logic;
SIGNAL \clk_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~74\ : std_logic;
SIGNAL \clk_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~70\ : std_logic;
SIGNAL \clk_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~66\ : std_logic;
SIGNAL \clk_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~62\ : std_logic;
SIGNAL \clk_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~58\ : std_logic;
SIGNAL \clk_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~54\ : std_logic;
SIGNAL \clk_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~50\ : std_logic;
SIGNAL \clk_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~46\ : std_logic;
SIGNAL \clk_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~42\ : std_logic;
SIGNAL \clk_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~38\ : std_logic;
SIGNAL \clk_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~34\ : std_logic;
SIGNAL \clk_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~30\ : std_logic;
SIGNAL \clk_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~26\ : std_logic;
SIGNAL \clk_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~22\ : std_logic;
SIGNAL \clk_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~18\ : std_logic;
SIGNAL \clk_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~14\ : std_logic;
SIGNAL \clk_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~10\ : std_logic;
SIGNAL \clk_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clk_divider|Add0~6\ : std_logic;
SIGNAL \clk_divider|Add0~1_sumout\ : std_logic;
SIGNAL \clk_divider|CLKout~combout\ : std_logic;
SIGNAL \chenillard|CHEN[1]~feeder_combout\ : std_logic;
SIGNAL \chenillard|CHEN[2]~feeder_combout\ : std_logic;
SIGNAL \chenillard|CHEN[2]~DUPLICATE_q\ : std_logic;
SIGNAL \chenillard|CHEN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \chenillard|CHEN[4]~1_combout\ : std_logic;
SIGNAL \chenillard|CHEN[5]~feeder_combout\ : std_logic;
SIGNAL \chenillard|CHEN[6]~feeder_combout\ : std_logic;
SIGNAL \chenillard|CHEN[7]~feeder_combout\ : std_logic;
SIGNAL \chenillard|CHEN[8]~feeder_combout\ : std_logic;
SIGNAL \chenillard|CHEN[8]~DUPLICATE_q\ : std_logic;
SIGNAL \chenillard|CHEN[0]~0_combout\ : std_logic;
SIGNAL \chenillard|CHEN\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk_divider|compteur\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \chenillard|ALT_INV_CHEN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \clk_divider|ALT_INV_compteur\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \chenillard|ALT_INV_CHEN\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\chenillard|ALT_INV_CHEN[3]~DUPLICATE_q\ <= NOT \chenillard|CHEN[3]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\clk_divider|ALT_INV_compteur\(1) <= NOT \clk_divider|compteur\(1);
\clk_divider|ALT_INV_compteur\(0) <= NOT \clk_divider|compteur\(0);
\clk_divider|ALT_INV_compteur\(2) <= NOT \clk_divider|compteur\(2);
\clk_divider|ALT_INV_compteur\(3) <= NOT \clk_divider|compteur\(3);
\clk_divider|ALT_INV_compteur\(4) <= NOT \clk_divider|compteur\(4);
\clk_divider|ALT_INV_compteur\(5) <= NOT \clk_divider|compteur\(5);
\clk_divider|ALT_INV_compteur\(6) <= NOT \clk_divider|compteur\(6);
\clk_divider|ALT_INV_compteur\(7) <= NOT \clk_divider|compteur\(7);
\clk_divider|ALT_INV_compteur\(8) <= NOT \clk_divider|compteur\(8);
\clk_divider|ALT_INV_compteur\(9) <= NOT \clk_divider|compteur\(9);
\clk_divider|ALT_INV_compteur\(10) <= NOT \clk_divider|compteur\(10);
\clk_divider|ALT_INV_compteur\(11) <= NOT \clk_divider|compteur\(11);
\clk_divider|ALT_INV_compteur\(12) <= NOT \clk_divider|compteur\(12);
\clk_divider|ALT_INV_compteur\(13) <= NOT \clk_divider|compteur\(13);
\clk_divider|ALT_INV_compteur\(14) <= NOT \clk_divider|compteur\(14);
\clk_divider|ALT_INV_compteur\(15) <= NOT \clk_divider|compteur\(15);
\clk_divider|ALT_INV_compteur\(16) <= NOT \clk_divider|compteur\(16);
\clk_divider|ALT_INV_compteur\(17) <= NOT \clk_divider|compteur\(17);
\clk_divider|ALT_INV_compteur\(18) <= NOT \clk_divider|compteur\(18);
\clk_divider|ALT_INV_compteur\(19) <= NOT \clk_divider|compteur\(19);
\clk_divider|ALT_INV_compteur\(20) <= NOT \clk_divider|compteur\(20);
\chenillard|ALT_INV_CHEN\(9) <= NOT \chenillard|CHEN\(9);
\chenillard|ALT_INV_CHEN\(7) <= NOT \chenillard|CHEN\(7);
\chenillard|ALT_INV_CHEN\(6) <= NOT \chenillard|CHEN\(6);
\chenillard|ALT_INV_CHEN\(5) <= NOT \chenillard|CHEN\(5);
\chenillard|ALT_INV_CHEN\(4) <= NOT \chenillard|CHEN\(4);
\chenillard|ALT_INV_CHEN\(3) <= NOT \chenillard|CHEN\(3);
\chenillard|ALT_INV_CHEN\(2) <= NOT \chenillard|CHEN\(2);
\chenillard|ALT_INV_CHEN\(1) <= NOT \chenillard|CHEN\(1);
\chenillard|ALT_INV_CHEN\(0) <= NOT \chenillard|CHEN\(0);

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_CHEN\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_CHEN\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_CHEN\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_CHEN\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|CHEN\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|CHEN\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|CHEN\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|CHEN\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y61_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|CHEN\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X12_Y61_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|CHEN\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X68_Y32_N44
\CLOCK_50_B6A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B6A,
	o => \CLOCK_50_B6A~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50_B6A~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_B6A~input_o\,
	outclk => \CLOCK_50_B6A~inputCLKENA0_outclk\);

-- Location: LABCELL_X22_Y1_N0
\clk_divider|compteur[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|compteur[0]~0_combout\ = ( !\clk_divider|compteur\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \clk_divider|ALT_INV_compteur\(0),
	combout => \clk_divider|compteur[0]~0_combout\);

-- Location: FF_X22_Y1_N2
\clk_divider|compteur[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|compteur[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(0));

-- Location: LABCELL_X21_Y1_N0
\clk_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~77_sumout\ = SUM(( \clk_divider|compteur\(0) ) + ( \clk_divider|compteur\(1) ) + ( !VCC ))
-- \clk_divider|Add0~78\ = CARRY(( \clk_divider|compteur\(0) ) + ( \clk_divider|compteur\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(1),
	datad => \clk_divider|ALT_INV_compteur\(0),
	cin => GND,
	sumout => \clk_divider|Add0~77_sumout\,
	cout => \clk_divider|Add0~78\);

-- Location: FF_X21_Y1_N2
\clk_divider|compteur[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(1));

-- Location: LABCELL_X21_Y1_N3
\clk_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~73_sumout\ = SUM(( \clk_divider|compteur\(2) ) + ( GND ) + ( \clk_divider|Add0~78\ ))
-- \clk_divider|Add0~74\ = CARRY(( \clk_divider|compteur\(2) ) + ( GND ) + ( \clk_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|ALT_INV_compteur\(2),
	cin => \clk_divider|Add0~78\,
	sumout => \clk_divider|Add0~73_sumout\,
	cout => \clk_divider|Add0~74\);

-- Location: FF_X21_Y1_N5
\clk_divider|compteur[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(2));

-- Location: LABCELL_X21_Y1_N6
\clk_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~69_sumout\ = SUM(( \clk_divider|compteur\(3) ) + ( GND ) + ( \clk_divider|Add0~74\ ))
-- \clk_divider|Add0~70\ = CARRY(( \clk_divider|compteur\(3) ) + ( GND ) + ( \clk_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|ALT_INV_compteur\(3),
	cin => \clk_divider|Add0~74\,
	sumout => \clk_divider|Add0~69_sumout\,
	cout => \clk_divider|Add0~70\);

-- Location: FF_X21_Y1_N7
\clk_divider|compteur[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(3));

-- Location: LABCELL_X21_Y1_N9
\clk_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~65_sumout\ = SUM(( \clk_divider|compteur\(4) ) + ( GND ) + ( \clk_divider|Add0~70\ ))
-- \clk_divider|Add0~66\ = CARRY(( \clk_divider|compteur\(4) ) + ( GND ) + ( \clk_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(4),
	cin => \clk_divider|Add0~70\,
	sumout => \clk_divider|Add0~65_sumout\,
	cout => \clk_divider|Add0~66\);

-- Location: FF_X21_Y1_N11
\clk_divider|compteur[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(4));

-- Location: LABCELL_X21_Y1_N12
\clk_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~61_sumout\ = SUM(( \clk_divider|compteur\(5) ) + ( GND ) + ( \clk_divider|Add0~66\ ))
-- \clk_divider|Add0~62\ = CARRY(( \clk_divider|compteur\(5) ) + ( GND ) + ( \clk_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|ALT_INV_compteur\(5),
	cin => \clk_divider|Add0~66\,
	sumout => \clk_divider|Add0~61_sumout\,
	cout => \clk_divider|Add0~62\);

-- Location: FF_X21_Y1_N14
\clk_divider|compteur[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(5));

-- Location: LABCELL_X21_Y1_N15
\clk_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~57_sumout\ = SUM(( \clk_divider|compteur\(6) ) + ( GND ) + ( \clk_divider|Add0~62\ ))
-- \clk_divider|Add0~58\ = CARRY(( \clk_divider|compteur\(6) ) + ( GND ) + ( \clk_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(6),
	cin => \clk_divider|Add0~62\,
	sumout => \clk_divider|Add0~57_sumout\,
	cout => \clk_divider|Add0~58\);

-- Location: FF_X21_Y1_N17
\clk_divider|compteur[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(6));

-- Location: LABCELL_X21_Y1_N18
\clk_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~53_sumout\ = SUM(( \clk_divider|compteur\(7) ) + ( GND ) + ( \clk_divider|Add0~58\ ))
-- \clk_divider|Add0~54\ = CARRY(( \clk_divider|compteur\(7) ) + ( GND ) + ( \clk_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(7),
	cin => \clk_divider|Add0~58\,
	sumout => \clk_divider|Add0~53_sumout\,
	cout => \clk_divider|Add0~54\);

-- Location: FF_X21_Y1_N20
\clk_divider|compteur[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(7));

-- Location: LABCELL_X21_Y1_N21
\clk_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~49_sumout\ = SUM(( \clk_divider|compteur\(8) ) + ( GND ) + ( \clk_divider|Add0~54\ ))
-- \clk_divider|Add0~50\ = CARRY(( \clk_divider|compteur\(8) ) + ( GND ) + ( \clk_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|ALT_INV_compteur\(8),
	cin => \clk_divider|Add0~54\,
	sumout => \clk_divider|Add0~49_sumout\,
	cout => \clk_divider|Add0~50\);

-- Location: FF_X21_Y1_N23
\clk_divider|compteur[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(8));

-- Location: LABCELL_X21_Y1_N24
\clk_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~45_sumout\ = SUM(( \clk_divider|compteur\(9) ) + ( GND ) + ( \clk_divider|Add0~50\ ))
-- \clk_divider|Add0~46\ = CARRY(( \clk_divider|compteur\(9) ) + ( GND ) + ( \clk_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(9),
	cin => \clk_divider|Add0~50\,
	sumout => \clk_divider|Add0~45_sumout\,
	cout => \clk_divider|Add0~46\);

-- Location: FF_X21_Y1_N26
\clk_divider|compteur[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(9));

-- Location: LABCELL_X21_Y1_N27
\clk_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~41_sumout\ = SUM(( \clk_divider|compteur\(10) ) + ( GND ) + ( \clk_divider|Add0~46\ ))
-- \clk_divider|Add0~42\ = CARRY(( \clk_divider|compteur\(10) ) + ( GND ) + ( \clk_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|ALT_INV_compteur\(10),
	cin => \clk_divider|Add0~46\,
	sumout => \clk_divider|Add0~41_sumout\,
	cout => \clk_divider|Add0~42\);

-- Location: FF_X21_Y1_N29
\clk_divider|compteur[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(10));

-- Location: LABCELL_X21_Y1_N30
\clk_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~37_sumout\ = SUM(( \clk_divider|compteur\(11) ) + ( GND ) + ( \clk_divider|Add0~42\ ))
-- \clk_divider|Add0~38\ = CARRY(( \clk_divider|compteur\(11) ) + ( GND ) + ( \clk_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|ALT_INV_compteur\(11),
	cin => \clk_divider|Add0~42\,
	sumout => \clk_divider|Add0~37_sumout\,
	cout => \clk_divider|Add0~38\);

-- Location: FF_X21_Y1_N32
\clk_divider|compteur[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(11));

-- Location: LABCELL_X21_Y1_N33
\clk_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~33_sumout\ = SUM(( \clk_divider|compteur\(12) ) + ( GND ) + ( \clk_divider|Add0~38\ ))
-- \clk_divider|Add0~34\ = CARRY(( \clk_divider|compteur\(12) ) + ( GND ) + ( \clk_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|ALT_INV_compteur\(12),
	cin => \clk_divider|Add0~38\,
	sumout => \clk_divider|Add0~33_sumout\,
	cout => \clk_divider|Add0~34\);

-- Location: FF_X21_Y1_N35
\clk_divider|compteur[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(12));

-- Location: LABCELL_X21_Y1_N36
\clk_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~29_sumout\ = SUM(( \clk_divider|compteur\(13) ) + ( GND ) + ( \clk_divider|Add0~34\ ))
-- \clk_divider|Add0~30\ = CARRY(( \clk_divider|compteur\(13) ) + ( GND ) + ( \clk_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|ALT_INV_compteur\(13),
	cin => \clk_divider|Add0~34\,
	sumout => \clk_divider|Add0~29_sumout\,
	cout => \clk_divider|Add0~30\);

-- Location: FF_X21_Y1_N38
\clk_divider|compteur[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(13));

-- Location: LABCELL_X21_Y1_N39
\clk_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~25_sumout\ = SUM(( \clk_divider|compteur\(14) ) + ( GND ) + ( \clk_divider|Add0~30\ ))
-- \clk_divider|Add0~26\ = CARRY(( \clk_divider|compteur\(14) ) + ( GND ) + ( \clk_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(14),
	cin => \clk_divider|Add0~30\,
	sumout => \clk_divider|Add0~25_sumout\,
	cout => \clk_divider|Add0~26\);

-- Location: FF_X21_Y1_N41
\clk_divider|compteur[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(14));

-- Location: LABCELL_X21_Y1_N42
\clk_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~21_sumout\ = SUM(( \clk_divider|compteur\(15) ) + ( GND ) + ( \clk_divider|Add0~26\ ))
-- \clk_divider|Add0~22\ = CARRY(( \clk_divider|compteur\(15) ) + ( GND ) + ( \clk_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|ALT_INV_compteur\(15),
	cin => \clk_divider|Add0~26\,
	sumout => \clk_divider|Add0~21_sumout\,
	cout => \clk_divider|Add0~22\);

-- Location: FF_X21_Y1_N43
\clk_divider|compteur[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(15));

-- Location: LABCELL_X21_Y1_N45
\clk_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~17_sumout\ = SUM(( \clk_divider|compteur\(16) ) + ( GND ) + ( \clk_divider|Add0~22\ ))
-- \clk_divider|Add0~18\ = CARRY(( \clk_divider|compteur\(16) ) + ( GND ) + ( \clk_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(16),
	cin => \clk_divider|Add0~22\,
	sumout => \clk_divider|Add0~17_sumout\,
	cout => \clk_divider|Add0~18\);

-- Location: FF_X21_Y1_N47
\clk_divider|compteur[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(16));

-- Location: LABCELL_X21_Y1_N48
\clk_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~13_sumout\ = SUM(( \clk_divider|compteur\(17) ) + ( GND ) + ( \clk_divider|Add0~18\ ))
-- \clk_divider|Add0~14\ = CARRY(( \clk_divider|compteur\(17) ) + ( GND ) + ( \clk_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(17),
	cin => \clk_divider|Add0~18\,
	sumout => \clk_divider|Add0~13_sumout\,
	cout => \clk_divider|Add0~14\);

-- Location: FF_X21_Y1_N50
\clk_divider|compteur[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(17));

-- Location: LABCELL_X21_Y1_N51
\clk_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~9_sumout\ = SUM(( \clk_divider|compteur\(18) ) + ( GND ) + ( \clk_divider|Add0~14\ ))
-- \clk_divider|Add0~10\ = CARRY(( \clk_divider|compteur\(18) ) + ( GND ) + ( \clk_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|ALT_INV_compteur\(18),
	cin => \clk_divider|Add0~14\,
	sumout => \clk_divider|Add0~9_sumout\,
	cout => \clk_divider|Add0~10\);

-- Location: FF_X21_Y1_N53
\clk_divider|compteur[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(18));

-- Location: LABCELL_X21_Y1_N54
\clk_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~5_sumout\ = SUM(( \clk_divider|compteur\(19) ) + ( GND ) + ( \clk_divider|Add0~10\ ))
-- \clk_divider|Add0~6\ = CARRY(( \clk_divider|compteur\(19) ) + ( GND ) + ( \clk_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(19),
	cin => \clk_divider|Add0~10\,
	sumout => \clk_divider|Add0~5_sumout\,
	cout => \clk_divider|Add0~6\);

-- Location: FF_X21_Y1_N56
\clk_divider|compteur[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(19));

-- Location: LABCELL_X21_Y1_N57
\clk_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~1_sumout\ = SUM(( \clk_divider|compteur\(20) ) + ( GND ) + ( \clk_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|ALT_INV_compteur\(20),
	cin => \clk_divider|Add0~6\,
	sumout => \clk_divider|Add0~1_sumout\);

-- Location: FF_X21_Y1_N59
\clk_divider|compteur[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \clk_divider|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|compteur\(20));

-- Location: LABCELL_X22_Y1_N48
\clk_divider|CLKout\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_divider|CLKout~combout\ = LCELL(( \clk_divider|compteur\(20) & ( \KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \clk_divider|ALT_INV_compteur\(20),
	combout => \clk_divider|CLKout~combout\);

-- Location: LABCELL_X22_Y1_N12
\chenillard|CHEN[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[1]~feeder_combout\ = \chenillard|CHEN\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard|ALT_INV_CHEN\(0),
	combout => \chenillard|CHEN[1]~feeder_combout\);

-- Location: FF_X22_Y1_N13
\chenillard|CHEN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(1));

-- Location: LABCELL_X22_Y1_N57
\chenillard|CHEN[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[2]~feeder_combout\ = \chenillard|CHEN\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_CHEN\(1),
	combout => \chenillard|CHEN[2]~feeder_combout\);

-- Location: FF_X22_Y1_N58
\chenillard|CHEN[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN[2]~DUPLICATE_q\);

-- Location: FF_X22_Y1_N29
\chenillard|CHEN[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	asdata => \chenillard|CHEN[2]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN[3]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y1_N24
\chenillard|CHEN[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[4]~1_combout\ = !\chenillard|CHEN[3]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_CHEN[3]~DUPLICATE_q\,
	combout => \chenillard|CHEN[4]~1_combout\);

-- Location: FF_X22_Y1_N25
\chenillard|CHEN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[4]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(4));

-- Location: LABCELL_X22_Y1_N18
\chenillard|CHEN[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[5]~feeder_combout\ = \chenillard|CHEN\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_CHEN\(4),
	combout => \chenillard|CHEN[5]~feeder_combout\);

-- Location: FF_X22_Y1_N19
\chenillard|CHEN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(5));

-- Location: LABCELL_X22_Y1_N39
\chenillard|CHEN[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[6]~feeder_combout\ = \chenillard|CHEN\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_CHEN\(5),
	combout => \chenillard|CHEN[6]~feeder_combout\);

-- Location: FF_X22_Y1_N40
\chenillard|CHEN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(6));

-- Location: LABCELL_X22_Y1_N45
\chenillard|CHEN[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[7]~feeder_combout\ = \chenillard|CHEN\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_CHEN\(6),
	combout => \chenillard|CHEN[7]~feeder_combout\);

-- Location: FF_X22_Y1_N46
\chenillard|CHEN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(7));

-- Location: LABCELL_X22_Y1_N30
\chenillard|CHEN[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[8]~feeder_combout\ = \chenillard|CHEN\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_CHEN\(7),
	combout => \chenillard|CHEN[8]~feeder_combout\);

-- Location: FF_X22_Y1_N31
\chenillard|CHEN[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN[8]~DUPLICATE_q\);

-- Location: FF_X22_Y1_N53
\chenillard|CHEN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	asdata => \chenillard|CHEN[8]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(9));

-- Location: LABCELL_X22_Y1_N6
\chenillard|CHEN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|CHEN[0]~0_combout\ = !\chenillard|CHEN\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_CHEN\(9),
	combout => \chenillard|CHEN[0]~0_combout\);

-- Location: FF_X22_Y1_N7
\chenillard|CHEN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(0));

-- Location: FF_X22_Y1_N59
\chenillard|CHEN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(2));

-- Location: FF_X22_Y1_N28
\chenillard|CHEN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	asdata => \chenillard|CHEN[2]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(3));

-- Location: FF_X22_Y1_N32
\chenillard|CHEN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|CLKout~combout\,
	d => \chenillard|CHEN[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|CHEN\(8));

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X7_Y2_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


