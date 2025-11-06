-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/21/2025 23:51:22"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Contador IS
    PORT (
	Q0 : OUT std_logic;
	PRN : IN std_logic;
	Q1 : OUT std_logic;
	clk : IN std_logic;
	Q5 : OUT std_logic;
	Q2 : OUT std_logic;
	Q4 : OUT std_logic;
	Q3 : OUT std_logic
	);
END Contador;

-- Design Ports Information
-- Q0	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRN	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_PRN : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q5~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q4~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \PRN~input_o\ : std_logic;
SIGNAL \FF0~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FF1~1_combout\ : std_logic;
SIGNAL \FF0~0_combout\ : std_logic;
SIGNAL \FF1~_emulated_q\ : std_logic;
SIGNAL \FF1~0_combout\ : std_logic;
SIGNAL \FF2~1_combout\ : std_logic;
SIGNAL \FF2~_emulated_q\ : std_logic;
SIGNAL \FF2~0_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \FF3~1_combout\ : std_logic;
SIGNAL \FF3~_emulated_q\ : std_logic;
SIGNAL \FF3~0_combout\ : std_logic;
SIGNAL \inst8~1_combout\ : std_logic;
SIGNAL \FF4~1_combout\ : std_logic;
SIGNAL \FF4~_emulated_q\ : std_logic;
SIGNAL \FF4~0_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \FF5~1_combout\ : std_logic;
SIGNAL \FF5~_emulated_q\ : std_logic;
SIGNAL \FF5~0_combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \FF0~3_combout\ : std_logic;
SIGNAL \FF0~_emulated_q\ : std_logic;
SIGNAL \FF0~2_combout\ : std_logic;
SIGNAL \ALT_INV_FF0~0_combout\ : std_logic;

BEGIN

Q0 <= ww_Q0;
ww_PRN <= PRN;
Q1 <= ww_Q1;
ww_clk <= clk;
Q5 <= ww_Q5;
Q2 <= ww_Q2;
Q4 <= ww_Q4;
Q3 <= ww_Q3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_FF0~0_combout\ <= NOT \FF0~0_combout\;

-- Location: IOOBUF_X8_Y0_N2
\Q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF0~2_combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF1~0_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\Q5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF5~0_combout\,
	devoe => ww_devoe,
	o => \Q5~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF2~0_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Q4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF4~0_combout\,
	devoe => ww_devoe,
	o => \Q4~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Q3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF3~0_combout\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\PRN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PRN,
	o => \PRN~input_o\);

-- Location: LCCOMB_X11_Y1_N24
\FF0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~1_combout\ = (!\inst11~combout\ & ((\FF0~1_combout\) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRN~input_o\,
	datab => \inst11~combout\,
	datad => \FF0~1_combout\,
	combout => \FF0~1_combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y1_N0
\FF1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF1~1_combout\ = \FF0~1_combout\ $ (\FF0~2_combout\ $ (\FF1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FF0~1_combout\,
	datac => \FF0~2_combout\,
	datad => \FF1~0_combout\,
	combout => \FF1~1_combout\);

-- Location: LCCOMB_X12_Y1_N24
\FF0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~0_combout\ = (\inst11~combout\) # (!\PRN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PRN~input_o\,
	datad => \inst11~combout\,
	combout => \FF0~0_combout\);

-- Location: FF_X12_Y1_N1
\FF1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF1~1_combout\,
	clrn => \ALT_INV_FF0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N6
\FF1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF1~0_combout\ = (!\inst11~combout\ & ((\FF0~1_combout\ $ (\FF1~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~combout\,
	datab => \FF0~1_combout\,
	datac => \PRN~input_o\,
	datad => \FF1~_emulated_q\,
	combout => \FF1~0_combout\);

-- Location: LCCOMB_X12_Y1_N12
\FF2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF2~1_combout\ = \FF2~0_combout\ $ (\FF0~1_combout\ $ (((\FF0~2_combout\ & \FF1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF2~0_combout\,
	datab => \FF0~1_combout\,
	datac => \FF0~2_combout\,
	datad => \FF1~0_combout\,
	combout => \FF2~1_combout\);

-- Location: FF_X12_Y1_N13
\FF2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF2~1_combout\,
	clrn => \ALT_INV_FF0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N30
\FF2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF2~0_combout\ = (!\inst11~combout\ & ((\FF2~_emulated_q\ $ (\FF0~1_combout\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF2~_emulated_q\,
	datab => \FF0~1_combout\,
	datac => \PRN~input_o\,
	datad => \inst11~combout\,
	combout => \FF2~0_combout\);

-- Location: LCCOMB_X13_Y1_N4
\inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\FF1~0_combout\ & \FF0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF1~0_combout\,
	datad => \FF0~2_combout\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X12_Y1_N4
\FF3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF3~1_combout\ = \FF0~1_combout\ $ (\FF3~0_combout\ $ (((\FF2~0_combout\ & \inst11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF2~0_combout\,
	datab => \FF0~1_combout\,
	datac => \FF3~0_combout\,
	datad => \inst11~0_combout\,
	combout => \FF3~1_combout\);

-- Location: FF_X12_Y1_N5
\FF3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF3~1_combout\,
	clrn => \ALT_INV_FF0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF3~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N22
\FF3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF3~0_combout\ = (!\inst11~combout\ & ((\FF0~1_combout\ $ (\FF3~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRN~input_o\,
	datab => \FF0~1_combout\,
	datac => \FF3~_emulated_q\,
	datad => \inst11~combout\,
	combout => \FF3~0_combout\);

-- Location: LCCOMB_X12_Y1_N26
\inst8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~1_combout\ = (\FF2~0_combout\ & (\FF0~2_combout\ & \FF1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF2~0_combout\,
	datac => \FF0~2_combout\,
	datad => \FF1~0_combout\,
	combout => \inst8~1_combout\);

-- Location: LCCOMB_X12_Y1_N8
\FF4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF4~1_combout\ = \FF0~1_combout\ $ (\FF4~0_combout\ $ (((\FF3~0_combout\ & \inst8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF3~0_combout\,
	datab => \FF0~1_combout\,
	datac => \FF4~0_combout\,
	datad => \inst8~1_combout\,
	combout => \FF4~1_combout\);

-- Location: FF_X12_Y1_N9
\FF4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF4~1_combout\,
	clrn => \ALT_INV_FF0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF4~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N10
\FF4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF4~0_combout\ = (!\inst11~combout\ & ((\FF0~1_combout\ $ (\FF4~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRN~input_o\,
	datab => \FF0~1_combout\,
	datac => \FF4~_emulated_q\,
	datad => \inst11~combout\,
	combout => \FF4~0_combout\);

-- Location: LCCOMB_X12_Y1_N28
\inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\FF2~0_combout\ & (\FF0~2_combout\ & (\FF3~0_combout\ & \FF1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF2~0_combout\,
	datab => \FF0~2_combout\,
	datac => \FF3~0_combout\,
	datad => \FF1~0_combout\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X12_Y1_N20
\FF5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF5~1_combout\ = \FF0~1_combout\ $ (((\FF5~0_combout\) # ((\FF4~0_combout\ & \inst8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF5~0_combout\,
	datab => \FF0~1_combout\,
	datac => \FF4~0_combout\,
	datad => \inst8~0_combout\,
	combout => \FF5~1_combout\);

-- Location: FF_X12_Y1_N21
\FF5~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF5~1_combout\,
	clrn => \ALT_INV_FF0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF5~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N2
\FF5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF5~0_combout\ = (!\inst11~combout\ & ((\FF0~1_combout\ $ (\FF5~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~combout\,
	datab => \FF0~1_combout\,
	datac => \PRN~input_o\,
	datad => \FF5~_emulated_q\,
	combout => \FF5~0_combout\);

-- Location: LCCOMB_X12_Y1_N18
inst11 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (\FF5~0_combout\ & (\FF0~2_combout\ & \FF1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF5~0_combout\,
	datab => \FF0~2_combout\,
	datad => \FF1~0_combout\,
	combout => \inst11~combout\);

-- Location: LCCOMB_X12_Y1_N16
\FF0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~3_combout\ = \FF0~2_combout\ $ (!\FF0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF0~2_combout\,
	datad => \FF0~1_combout\,
	combout => \FF0~3_combout\);

-- Location: FF_X12_Y1_N17
\FF0~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF0~3_combout\,
	clrn => \ALT_INV_FF0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N14
\FF0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~2_combout\ = (!\inst11~combout\ & ((\FF0~1_combout\ $ (\FF0~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~combout\,
	datab => \FF0~1_combout\,
	datac => \PRN~input_o\,
	datad => \FF0~_emulated_q\,
	combout => \FF0~2_combout\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q5 <= \Q5~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q4 <= \Q4~output_o\;

ww_Q3 <= \Q3~output_o\;
END structure;


