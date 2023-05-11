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

-- DATE "04/25/2023 08:40:42"

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

ENTITY 	shift_register_universal8 IS
    PORT (
	SSR : IN std_logic;
	SSL : IN std_logic;
	Pi : IN std_logic_vector(7 DOWNTO 0);
	SEL : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	SETn : IN std_logic;
	RSTn : IN std_logic;
	SOR : BUFFER std_logic;
	SOL : BUFFER std_logic;
	Qo : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END shift_register_universal8;

-- Design Ports Information
-- SSR	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSL	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pi[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SETn	=>  Location: PIN_E23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOR	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOL	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[1]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[3]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[6]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qo[7]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSTn	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift_register_universal8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SSR : std_logic;
SIGNAL ww_SSL : std_logic;
SIGNAL ww_Pi : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SETn : std_logic;
SIGNAL ww_RSTn : std_logic;
SIGNAL ww_SOR : std_logic;
SIGNAL ww_SOL : std_logic;
SIGNAL ww_Qo : std_logic_vector(7 DOWNTO 0);
SIGNAL \SSR~input_o\ : std_logic;
SIGNAL \SSL~input_o\ : std_logic;
SIGNAL \Pi[0]~input_o\ : std_logic;
SIGNAL \Pi[1]~input_o\ : std_logic;
SIGNAL \Pi[2]~input_o\ : std_logic;
SIGNAL \Pi[3]~input_o\ : std_logic;
SIGNAL \Pi[4]~input_o\ : std_logic;
SIGNAL \Pi[5]~input_o\ : std_logic;
SIGNAL \Pi[6]~input_o\ : std_logic;
SIGNAL \Pi[7]~input_o\ : std_logic;
SIGNAL \SETn~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SEL[2]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \register8b~1_combout\ : std_logic;
SIGNAL \RSTn~input_o\ : std_logic;
SIGNAL \register8b~8_combout\ : std_logic;
SIGNAL \register8b[1]~3_combout\ : std_logic;
SIGNAL \register8b~7_combout\ : std_logic;
SIGNAL \register8b~6_combout\ : std_logic;
SIGNAL \register8b~5_combout\ : std_logic;
SIGNAL \register8b~4_combout\ : std_logic;
SIGNAL \register8b~2_combout\ : std_logic;
SIGNAL \register8b[0]~0_combout\ : std_logic;
SIGNAL register8b : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_register8b : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SEL[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RSTn~input_o\ : std_logic;

BEGIN

ww_SSR <= SSR;
ww_SSL <= SSL;
ww_Pi <= Pi;
ww_SEL <= SEL;
ww_CLK <= CLK;
ww_SETn <= SETn;
ww_RSTn <= RSTn;
SOR <= ww_SOR;
SOL <= ww_SOL;
Qo <= ww_Qo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_register8b(0) <= NOT register8b(0);
ALT_INV_register8b(7) <= NOT register8b(7);
ALT_INV_register8b(1) <= NOT register8b(1);
ALT_INV_register8b(3) <= NOT register8b(3);
ALT_INV_register8b(2) <= NOT register8b(2);
ALT_INV_register8b(4) <= NOT register8b(4);
ALT_INV_register8b(5) <= NOT register8b(5);
ALT_INV_register8b(6) <= NOT register8b(6);
\ALT_INV_SEL[2]~input_o\ <= NOT \SEL[2]~input_o\;
\ALT_INV_SEL[0]~input_o\ <= NOT \SEL[0]~input_o\;
\ALT_INV_SEL[1]~input_o\ <= NOT \SEL[1]~input_o\;
\ALT_INV_RSTn~input_o\ <= NOT \RSTn~input_o\;

-- Location: IOOBUF_X68_Y22_N62
\SOR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(0),
	devoe => ww_devoe,
	o => ww_SOR);

-- Location: IOOBUF_X68_Y26_N22
\SOL~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(7),
	devoe => ww_devoe,
	o => ww_SOL);

-- Location: IOOBUF_X68_Y22_N96
\Qo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(0),
	devoe => ww_devoe,
	o => ww_Qo(0));

-- Location: IOOBUF_X68_Y24_N39
\Qo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(1),
	devoe => ww_devoe,
	o => ww_Qo(1));

-- Location: IOOBUF_X68_Y24_N5
\Qo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(2),
	devoe => ww_devoe,
	o => ww_Qo(2));

-- Location: IOOBUF_X68_Y24_N22
\Qo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(3),
	devoe => ww_devoe,
	o => ww_Qo(3));

-- Location: IOOBUF_X68_Y24_N56
\Qo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(4),
	devoe => ww_devoe,
	o => ww_Qo(4));

-- Location: IOOBUF_X68_Y26_N39
\Qo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(5),
	devoe => ww_devoe,
	o => ww_Qo(5));

-- Location: IOOBUF_X68_Y26_N56
\Qo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(6),
	devoe => ww_devoe,
	o => ww_Qo(6));

-- Location: IOOBUF_X68_Y26_N5
\Qo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => register8b(7),
	devoe => ww_devoe,
	o => ww_Qo(7));

-- Location: IOIBUF_X21_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y27_N55
\SEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(2),
	o => \SEL[2]~input_o\);

-- Location: IOIBUF_X68_Y27_N38
\SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X68_Y27_N4
\SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: LABCELL_X67_Y26_N54
\register8b~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b~1_combout\ = ( register8b(7) & ( register8b(0) & ( ((!\SEL[0]~input_o\ & ((!\SEL[1]~input_o\) # (register8b(6)))) # (\SEL[0]~input_o\ & ((\SEL[1]~input_o\)))) # (\SEL[2]~input_o\) ) ) ) # ( !register8b(7) & ( register8b(0) & ( 
-- (!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & (register8b(6) & \SEL[1]~input_o\))) # (\SEL[2]~input_o\ & (\SEL[0]~input_o\ & ((!\SEL[1]~input_o\)))) ) ) ) # ( register8b(7) & ( !register8b(0) & ( (!\SEL[0]~input_o\ & (((!\SEL[1]~input_o\) # (register8b(6))) # 
-- (\SEL[2]~input_o\))) # (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) ) ) ) # ( !register8b(7) & ( !register8b(0) & ( (!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & (register8b(6) & \SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110011000111111100010001000010001101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => ALT_INV_register8b(6),
	datad => \ALT_INV_SEL[1]~input_o\,
	datae => ALT_INV_register8b(7),
	dataf => ALT_INV_register8b(0),
	combout => \register8b~1_combout\);

-- Location: IOIBUF_X68_Y27_N21
\RSTn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSTn,
	o => \RSTn~input_o\);

-- Location: FF_X67_Y26_N56
\register8b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b~1_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(7));

-- Location: LABCELL_X67_Y26_N18
\register8b~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b~8_combout\ = ( register8b(5) & ( ((!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & \SEL[1]~input_o\))) # (register8b(7)) ) ) # ( !register8b(5) & ( (register8b(7) & (((!\SEL[1]~input_o\) # (\SEL[0]~input_o\)) # (\SEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000011100001111100011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => ALT_INV_register8b(7),
	datad => \ALT_INV_SEL[1]~input_o\,
	dataf => ALT_INV_register8b(5),
	combout => \register8b~8_combout\);

-- Location: LABCELL_X67_Y26_N21
\register8b[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b[1]~3_combout\ = (!\SEL[0]~input_o\ & (!\SEL[2]~input_o\ & \SEL[1]~input_o\)) # (\SEL[0]~input_o\ & ((!\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000111000001110000011100000111000001110000011100000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[1]~input_o\,
	combout => \register8b[1]~3_combout\);

-- Location: FF_X67_Y26_N20
\register8b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b~8_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	ena => \register8b[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(6));

-- Location: LABCELL_X67_Y26_N27
\register8b~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b~7_combout\ = ( register8b(4) & ( register8b(6) ) ) # ( !register8b(4) & ( register8b(6) & ( ((!\SEL[1]~input_o\) # (\SEL[0]~input_o\)) # (\SEL[2]~input_o\) ) ) ) # ( register8b(4) & ( !register8b(6) & ( (!\SEL[2]~input_o\ & (\SEL[1]~input_o\ & 
-- !\SEL[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000011011111110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datae => ALT_INV_register8b(4),
	dataf => ALT_INV_register8b(6),
	combout => \register8b~7_combout\);

-- Location: FF_X67_Y26_N29
\register8b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b~7_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	ena => \register8b[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(5));

-- Location: LABCELL_X67_Y26_N45
\register8b~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b~6_combout\ = ( register8b(5) & ( register8b(3) ) ) # ( !register8b(5) & ( register8b(3) & ( (!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & \SEL[1]~input_o\)) ) ) ) # ( register8b(5) & ( !register8b(3) & ( ((!\SEL[1]~input_o\) # (\SEL[0]~input_o\)) 
-- # (\SEL[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111011100001000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[1]~input_o\,
	datae => ALT_INV_register8b(5),
	dataf => ALT_INV_register8b(3),
	combout => \register8b~6_combout\);

-- Location: FF_X67_Y26_N47
\register8b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b~6_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	ena => \register8b[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(4));

-- Location: LABCELL_X67_Y26_N6
\register8b~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b~5_combout\ = ( register8b(4) & ( (((!\SEL[1]~input_o\) # (register8b(2))) # (\SEL[0]~input_o\)) # (\SEL[2]~input_o\) ) ) # ( !register8b(4) & ( (!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & (register8b(2) & \SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111111110111111100000000000010001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => ALT_INV_register8b(2),
	datad => \ALT_INV_SEL[1]~input_o\,
	datae => ALT_INV_register8b(4),
	combout => \register8b~5_combout\);

-- Location: FF_X67_Y26_N8
\register8b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b~5_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	ena => \register8b[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(3));

-- Location: LABCELL_X67_Y26_N51
\register8b~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b~4_combout\ = ( register8b(1) & ( ((!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & \SEL[1]~input_o\))) # (register8b(3)) ) ) # ( !register8b(1) & ( (register8b(3) & (((!\SEL[1]~input_o\) # (\SEL[0]~input_o\)) # (\SEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000011100001111100011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => ALT_INV_register8b(3),
	datad => \ALT_INV_SEL[1]~input_o\,
	dataf => ALT_INV_register8b(1),
	combout => \register8b~4_combout\);

-- Location: FF_X67_Y26_N53
\register8b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b~4_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	ena => \register8b[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(2));

-- Location: LABCELL_X67_Y26_N48
\register8b~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b~2_combout\ = ( register8b(0) & ( ((!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & \SEL[1]~input_o\))) # (register8b(2)) ) ) # ( !register8b(0) & ( (register8b(2) & (((!\SEL[1]~input_o\) # (\SEL[0]~input_o\)) # (\SEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000011100001111100011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => ALT_INV_register8b(2),
	datad => \ALT_INV_SEL[1]~input_o\,
	dataf => ALT_INV_register8b(0),
	combout => \register8b~2_combout\);

-- Location: FF_X67_Y26_N50
\register8b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b~2_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	ena => \register8b[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(1));

-- Location: LABCELL_X67_Y26_N36
\register8b[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register8b[0]~0_combout\ = ( register8b(0) & ( register8b(1) & ( ((!\SEL[1]~input_o\) # (\SEL[0]~input_o\)) # (\SEL[2]~input_o\) ) ) ) # ( !register8b(0) & ( register8b(1) & ( (\SEL[0]~input_o\ & !\SEL[1]~input_o\) ) ) ) # ( register8b(0) & ( 
-- !register8b(1) & ( (!\SEL[0]~input_o\ & ((!\SEL[1]~input_o\) # (\SEL[2]~input_o\))) # (\SEL[0]~input_o\ & ((\SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000111011100110011000000001111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_SEL[1]~input_o\,
	datae => ALT_INV_register8b(0),
	dataf => ALT_INV_register8b(1),
	combout => \register8b[0]~0_combout\);

-- Location: FF_X67_Y26_N38
\register8b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \register8b[0]~0_combout\,
	clrn => \ALT_INV_RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => register8b(0));

-- Location: IOIBUF_X68_Y17_N21
\SSR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSR,
	o => \SSR~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\SSL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSL,
	o => \SSL~input_o\);

-- Location: IOIBUF_X68_Y47_N61
\Pi[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(0),
	o => \Pi[0]~input_o\);

-- Location: IOIBUF_X15_Y61_N18
\Pi[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(1),
	o => \Pi[1]~input_o\);

-- Location: IOIBUF_X42_Y61_N35
\Pi[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(2),
	o => \Pi[2]~input_o\);

-- Location: IOIBUF_X68_Y51_N38
\Pi[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(3),
	o => \Pi[3]~input_o\);

-- Location: IOIBUF_X48_Y0_N41
\Pi[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(4),
	o => \Pi[4]~input_o\);

-- Location: IOIBUF_X51_Y61_N52
\Pi[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(5),
	o => \Pi[5]~input_o\);

-- Location: IOIBUF_X53_Y61_N18
\Pi[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(6),
	o => \Pi[6]~input_o\);

-- Location: IOIBUF_X17_Y61_N58
\Pi[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pi(7),
	o => \Pi[7]~input_o\);

-- Location: IOIBUF_X68_Y51_N55
\SETn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SETn,
	o => \SETn~input_o\);

-- Location: LABCELL_X38_Y28_N3
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


