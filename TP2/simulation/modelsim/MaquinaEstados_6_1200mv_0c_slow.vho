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

-- DATE "06/22/2025 01:38:31"

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

ENTITY 	MaquinaEstados IS
    PORT (
	Q0 : OUT std_logic;
	CLR : IN std_logic;
	clk : IN std_logic;
	X : IN std_logic;
	PRN : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic
	);
END MaquinaEstados;

-- Design Ports Information
-- Q0	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRN	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaEstados IS
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
SIGNAL ww_CLR : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_PRN : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FF0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \PRN~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \FF0~1_combout\ : std_logic;
SIGNAL \FF0~3_combout\ : std_logic;
SIGNAL \FF0~0_combout\ : std_logic;
SIGNAL \FF0~0clkctrl_outclk\ : std_logic;
SIGNAL \FF0~_emulated_q\ : std_logic;
SIGNAL \FF0~2_combout\ : std_logic;
SIGNAL \FF2~1_combout\ : std_logic;
SIGNAL \FF2~_emulated_q\ : std_logic;
SIGNAL \FF2~0_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \FF1~1_combout\ : std_logic;
SIGNAL \FF1~_emulated_q\ : std_logic;
SIGNAL \FF1~0_combout\ : std_logic;
SIGNAL \ALT_INV_FF0~0clkctrl_outclk\ : std_logic;

BEGIN

Q0 <= ww_Q0;
ww_CLR <= CLR;
ww_clk <= clk;
ww_X <= X;
ww_PRN <= PRN;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\FF0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FF0~0_combout\);
\ALT_INV_FF0~0clkctrl_outclk\ <= NOT \FF0~0clkctrl_outclk\;

-- Location: IOOBUF_X8_Y0_N9
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

-- Location: IOOBUF_X10_Y0_N9
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOIBUF_X14_Y0_N1
\CLR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

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

-- Location: IOIBUF_X12_Y0_N8
\X~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X12_Y1_N16
\FF0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~1_combout\ = (\CLR~input_o\ & ((\FF0~1_combout\) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datac => \PRN~input_o\,
	datad => \FF0~1_combout\,
	combout => \FF0~1_combout\);

-- Location: LCCOMB_X12_Y1_N22
\FF0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~3_combout\ = \X~input_o\ $ (\FF0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X~input_o\,
	datad => \FF0~1_combout\,
	combout => \FF0~3_combout\);

-- Location: LCCOMB_X12_Y1_N24
\FF0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~0_combout\ = (!\PRN~input_o\) # (!\CLR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datac => \PRN~input_o\,
	combout => \FF0~0_combout\);

-- Location: CLKCTRL_G18
\FF0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FF0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FF0~0clkctrl_outclk\);

-- Location: FF_X12_Y1_N29
\FF0~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FF0~3_combout\,
	clrn => \ALT_INV_FF0~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N28
\FF0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~2_combout\ = (\CLR~input_o\ & ((\FF0~_emulated_q\ $ (\FF0~1_combout\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \PRN~input_o\,
	datac => \FF0~_emulated_q\,
	datad => \FF0~1_combout\,
	combout => \FF0~2_combout\);

-- Location: LCCOMB_X12_Y1_N10
\FF2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF2~1_combout\ = \FF0~1_combout\ $ (((!\FF0~2_combout\) # (!\FF2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FF0~1_combout\,
	datac => \FF2~0_combout\,
	datad => \FF0~2_combout\,
	combout => \FF2~1_combout\);

-- Location: FF_X12_Y1_N11
\FF2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF2~1_combout\,
	clrn => \ALT_INV_FF0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N12
\FF2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF2~0_combout\ = (\CLR~input_o\ & ((\FF0~1_combout\ $ (\FF2~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \FF0~1_combout\,
	datac => \PRN~input_o\,
	datad => \FF2~_emulated_q\,
	combout => \FF2~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\FF2~0_combout\) # ((\X~input_o\ & \FF1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \FF1~0_combout\,
	datad => \FF2~0_combout\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X12_Y1_N18
\FF1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF1~1_combout\ = \FF0~1_combout\ $ (((\FF0~2_combout\ & ((\inst~0_combout\))) # (!\FF0~2_combout\ & (\FF1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FF0~1_combout\,
	datab => \FF0~2_combout\,
	datac => \FF1~0_combout\,
	datad => \inst~0_combout\,
	combout => \FF1~1_combout\);

-- Location: FF_X12_Y1_N19
\FF1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FF1~1_combout\,
	clrn => \ALT_INV_FF0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1~_emulated_q\);

-- Location: LCCOMB_X12_Y1_N8
\FF1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF1~0_combout\ = (\CLR~input_o\ & ((\FF0~1_combout\ $ (\FF1~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \FF0~1_combout\,
	datac => \PRN~input_o\,
	datad => \FF1~_emulated_q\,
	combout => \FF1~0_combout\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


