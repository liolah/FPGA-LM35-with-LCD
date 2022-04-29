-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/29/2022 11:26:12"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	temprature_sensor IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	intr : IN std_logic;
	adc : IN std_logic_vector(7 DOWNTO 0);
	en : BUFFER std_logic;
	rs : BUFFER std_logic;
	wr : BUFFER std_logic;
	led_state : BUFFER std_logic;
	lcd_data : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END temprature_sensor;

-- Design Ports Information
-- en	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_state	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intr	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF temprature_sensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_intr : std_logic;
SIGNAL ww_adc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_led_state : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \en~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \wr~output_o\ : std_logic;
SIGNAL \led_state~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \i1|count[0]~0_combout\ : std_logic;
SIGNAL \i1|Add0~0_combout\ : std_logic;
SIGNAL \i1|Add0~1\ : std_logic;
SIGNAL \i1|Add0~2_combout\ : std_logic;
SIGNAL \i1|Add0~3\ : std_logic;
SIGNAL \i1|Add0~4_combout\ : std_logic;
SIGNAL \i1|Add0~5\ : std_logic;
SIGNAL \i1|Add0~6_combout\ : std_logic;
SIGNAL \i1|Add0~7\ : std_logic;
SIGNAL \i1|Add0~8_combout\ : std_logic;
SIGNAL \i1|out~feeder_combout\ : std_logic;
SIGNAL \i1|out~q\ : std_logic;
SIGNAL \i1|out~clkctrl_outclk\ : std_logic;
SIGNAL \intr~input_o\ : std_logic;
SIGNAL \i3|current_state.s11~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s11~q\ : std_logic;
SIGNAL \i3|current_state.s12~q\ : std_logic;
SIGNAL \i3|current_state.s13~q\ : std_logic;
SIGNAL \i3|current_state.0000~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.0000~q\ : std_logic;
SIGNAL \i3|current_state.s1~0_combout\ : std_logic;
SIGNAL \i3|current_state.s1~q\ : std_logic;
SIGNAL \i3|next_state~2_combout\ : std_logic;
SIGNAL \i3|current_state.s2~q\ : std_logic;
SIGNAL \i3|Selector0~0_combout\ : std_logic;
SIGNAL \i3|current_state.s3~q\ : std_logic;
SIGNAL \i3|next_state.s4~0_combout\ : std_logic;
SIGNAL \i3|current_state.s4~q\ : std_logic;
SIGNAL \i3|current_state.s5~q\ : std_logic;
SIGNAL \i3|current_state.s6~q\ : std_logic;
SIGNAL \i3|current_state.s7~q\ : std_logic;
SIGNAL \i3|current_state.s8~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s8~q\ : std_logic;
SIGNAL \i3|current_state.s9~q\ : std_logic;
SIGNAL \i3|current_state.s10~q\ : std_logic;
SIGNAL \i3|WideOr1~0_combout\ : std_logic;
SIGNAL \i3|WideOr1~combout\ : std_logic;
SIGNAL \i3|WideOr2~0_combout\ : std_logic;
SIGNAL \adc[3]~input_o\ : std_logic;
SIGNAL \adc[5]~input_o\ : std_logic;
SIGNAL \adc[6]~input_o\ : std_logic;
SIGNAL \adc[4]~input_o\ : std_logic;
SIGNAL \i0|LessThan0~1_combout\ : std_logic;
SIGNAL \adc[7]~input_o\ : std_logic;
SIGNAL \adc[2]~input_o\ : std_logic;
SIGNAL \adc[1]~input_o\ : std_logic;
SIGNAL \adc[0]~input_o\ : std_logic;
SIGNAL \i0|LessThan0~0_combout\ : std_logic;
SIGNAL \i0|LessThan0~2_combout\ : std_logic;
SIGNAL \i3|WideOr3~0_combout\ : std_logic;
SIGNAL \i3|Selector4~0_combout\ : std_logic;
SIGNAL \i3|Selector4~1_combout\ : std_logic;
SIGNAL \i3|WideOr9~combout\ : std_logic;
SIGNAL \i3|lcd_data[7]~0_combout\ : std_logic;
SIGNAL \i3|WideOr4~0_combout\ : std_logic;
SIGNAL \i3|WideOr6~combout\ : std_logic;
SIGNAL \i3|Selector2~2_combout\ : std_logic;
SIGNAL \i3|WideOr5~combout\ : std_logic;
SIGNAL \i3|WideOr4~1_combout\ : std_logic;
SIGNAL \i3|WideOr4~combout\ : std_logic;
SIGNAL \i1|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \i3|ALT_INV_lcd_data[7]~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_current_state.s2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_intr <= intr;
ww_adc <= adc;
en <= ww_en;
rs <= ww_rs;
wr <= ww_wr;
led_state <= ww_led_state;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i1|out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i1|out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\i3|ALT_INV_lcd_data[7]~0_combout\ <= NOT \i3|lcd_data[7]~0_combout\;
\i3|ALT_INV_WideOr3~0_combout\ <= NOT \i3|WideOr3~0_combout\;
\i3|ALT_INV_WideOr2~0_combout\ <= NOT \i3|WideOr2~0_combout\;
\i3|ALT_INV_current_state.s2~q\ <= NOT \i3|current_state.s2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y34_N9
\en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|WideOr1~combout\,
	devoe => ww_devoe,
	o => \en~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\wr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|ALT_INV_current_state.s2~q\,
	devoe => ww_devoe,
	o => \wr~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\led_state~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \led_state~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Selector4~1_combout\,
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|WideOr9~combout\,
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Selector2~2_combout\,
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|WideOr6~combout\,
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|WideOr5~combout\,
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|WideOr4~combout\,
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|ALT_INV_lcd_data[7]~0_combout\,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X53_Y14_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X52_Y17_N17
\i1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(5));

-- Location: LCCOMB_X52_Y17_N26
\i1|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count[0]~0_combout\ = !\i1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|count\(0),
	combout => \i1|count[0]~0_combout\);

-- Location: FF_X52_Y17_N27
\i1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(0));

-- Location: LCCOMB_X52_Y17_N8
\i1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~0_combout\ = (\i1|count\(0) & (\i1|count\(1) $ (VCC))) # (!\i1|count\(0) & (\i1|count\(1) & VCC))
-- \i1|Add0~1\ = CARRY((\i1|count\(0) & \i1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(0),
	datab => \i1|count\(1),
	datad => VCC,
	combout => \i1|Add0~0_combout\,
	cout => \i1|Add0~1\);

-- Location: FF_X52_Y17_N9
\i1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(1));

-- Location: LCCOMB_X52_Y17_N10
\i1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~2_combout\ = (\i1|count\(2) & (!\i1|Add0~1\)) # (!\i1|count\(2) & ((\i1|Add0~1\) # (GND)))
-- \i1|Add0~3\ = CARRY((!\i1|Add0~1\) # (!\i1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(2),
	datad => VCC,
	cin => \i1|Add0~1\,
	combout => \i1|Add0~2_combout\,
	cout => \i1|Add0~3\);

-- Location: FF_X52_Y17_N11
\i1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(2));

-- Location: LCCOMB_X52_Y17_N12
\i1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~4_combout\ = (\i1|count\(3) & (\i1|Add0~3\ $ (GND))) # (!\i1|count\(3) & (!\i1|Add0~3\ & VCC))
-- \i1|Add0~5\ = CARRY((\i1|count\(3) & !\i1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(3),
	datad => VCC,
	cin => \i1|Add0~3\,
	combout => \i1|Add0~4_combout\,
	cout => \i1|Add0~5\);

-- Location: FF_X52_Y17_N13
\i1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(3));

-- Location: LCCOMB_X52_Y17_N14
\i1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~6_combout\ = (\i1|count\(4) & (!\i1|Add0~5\)) # (!\i1|count\(4) & ((\i1|Add0~5\) # (GND)))
-- \i1|Add0~7\ = CARRY((!\i1|Add0~5\) # (!\i1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(4),
	datad => VCC,
	cin => \i1|Add0~5\,
	combout => \i1|Add0~6_combout\,
	cout => \i1|Add0~7\);

-- Location: FF_X52_Y17_N15
\i1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(4));

-- Location: LCCOMB_X52_Y17_N16
\i1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~8_combout\ = \i1|count\(5) $ (!\i1|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(5),
	cin => \i1|Add0~7\,
	combout => \i1|Add0~8_combout\);

-- Location: LCCOMB_X52_Y17_N6
\i1|out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|out~feeder_combout\ = \i1|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i1|Add0~8_combout\,
	combout => \i1|out~feeder_combout\);

-- Location: FF_X52_Y17_N7
\i1|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|out~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|out~q\);

-- Location: CLKCTRL_G6
\i1|out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i1|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i1|out~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y34_N22
\intr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_intr,
	o => \intr~input_o\);

-- Location: LCCOMB_X27_Y32_N20
\i3|current_state.s11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s11~feeder_combout\ = \i3|current_state.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s10~q\,
	combout => \i3|current_state.s11~feeder_combout\);

-- Location: FF_X27_Y32_N21
\i3|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s11~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s11~q\);

-- Location: FF_X27_Y32_N15
\i3|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s11~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s12~q\);

-- Location: FF_X27_Y32_N13
\i3|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s12~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s13~q\);

-- Location: LCCOMB_X28_Y32_N28
\i3|current_state.0000~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.0000~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i3|current_state.0000~feeder_combout\);

-- Location: FF_X28_Y32_N29
\i3|current_state.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.0000~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.0000~q\);

-- Location: LCCOMB_X28_Y32_N6
\i3|current_state.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s1~0_combout\ = !\i3|current_state.0000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.0000~q\,
	combout => \i3|current_state.s1~0_combout\);

-- Location: FF_X28_Y32_N7
\i3|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s1~q\);

-- Location: LCCOMB_X27_Y32_N10
\i3|next_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|next_state~2_combout\ = (\i3|current_state.s13~q\) # (\i3|current_state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s13~q\,
	datad => \i3|current_state.s1~q\,
	combout => \i3|next_state~2_combout\);

-- Location: FF_X27_Y32_N11
\i3|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|next_state~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s2~q\);

-- Location: LCCOMB_X27_Y32_N18
\i3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector0~0_combout\ = (\i3|current_state.s2~q\) # ((\intr~input_o\ & \i3|current_state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \intr~input_o\,
	datac => \i3|current_state.s3~q\,
	datad => \i3|current_state.s2~q\,
	combout => \i3|Selector0~0_combout\);

-- Location: FF_X27_Y32_N19
\i3|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s3~q\);

-- Location: LCCOMB_X27_Y32_N8
\i3|next_state.s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|next_state.s4~0_combout\ = (!\intr~input_o\ & \i3|current_state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \intr~input_o\,
	datad => \i3|current_state.s3~q\,
	combout => \i3|next_state.s4~0_combout\);

-- Location: FF_X27_Y32_N9
\i3|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|next_state.s4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s4~q\);

-- Location: FF_X27_Y32_N5
\i3|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s5~q\);

-- Location: FF_X27_Y32_N23
\i3|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s6~q\);

-- Location: FF_X27_Y32_N17
\i3|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s7~q\);

-- Location: LCCOMB_X27_Y32_N30
\i3|current_state.s8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s8~feeder_combout\ = \i3|current_state.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s7~q\,
	combout => \i3|current_state.s8~feeder_combout\);

-- Location: FF_X27_Y32_N31
\i3|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s8~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s8~q\);

-- Location: FF_X27_Y32_N27
\i3|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s8~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s9~q\);

-- Location: FF_X27_Y32_N3
\i3|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s9~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s10~q\);

-- Location: LCCOMB_X28_Y32_N18
\i3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr1~0_combout\ = (\i3|current_state.s4~q\) # ((\i3|current_state.s2~q\) # ((\i3|current_state.s6~q\) # (!\i3|current_state.0000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s4~q\,
	datab => \i3|current_state.s2~q\,
	datac => \i3|current_state.s6~q\,
	datad => \i3|current_state.0000~q\,
	combout => \i3|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y32_N24
\i3|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr1~combout\ = (\i3|current_state.s10~q\) # ((\i3|current_state.s8~q\) # ((\i3|current_state.s12~q\) # (\i3|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s10~q\,
	datab => \i3|current_state.s8~q\,
	datac => \i3|current_state.s12~q\,
	datad => \i3|WideOr1~0_combout\,
	combout => \i3|WideOr1~combout\);

-- Location: LCCOMB_X28_Y32_N0
\i3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr2~0_combout\ = (\i3|current_state.s1~q\) # (((\i3|current_state.s3~q\) # (\i3|current_state.s2~q\)) # (!\i3|current_state.0000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s1~q\,
	datab => \i3|current_state.0000~q\,
	datac => \i3|current_state.s3~q\,
	datad => \i3|current_state.s2~q\,
	combout => \i3|WideOr2~0_combout\);

-- Location: IOIBUF_X23_Y34_N15
\adc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(3),
	o => \adc[3]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\adc[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(5),
	o => \adc[5]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\adc[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(6),
	o => \adc[6]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\adc[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(4),
	o => \adc[4]~input_o\);

-- Location: LCCOMB_X19_Y33_N6
\i0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~1_combout\ = (\adc[5]~input_o\) # ((\adc[6]~input_o\) # ((\adc[3]~input_o\ & \adc[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[3]~input_o\,
	datab => \adc[5]~input_o\,
	datac => \adc[6]~input_o\,
	datad => \adc[4]~input_o\,
	combout => \i0|LessThan0~1_combout\);

-- Location: IOIBUF_X14_Y34_N22
\adc[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(7),
	o => \adc[7]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\adc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(2),
	o => \adc[2]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\adc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(1),
	o => \adc[1]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\adc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc(0),
	o => \adc[0]~input_o\);

-- Location: LCCOMB_X19_Y33_N24
\i0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~0_combout\ = (\adc[2]~input_o\ & (\adc[1]~input_o\ & (\adc[0]~input_o\ & \adc[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[2]~input_o\,
	datab => \adc[1]~input_o\,
	datac => \adc[0]~input_o\,
	datad => \adc[4]~input_o\,
	combout => \i0|LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y33_N4
\i0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~2_combout\ = (\adc[7]~input_o\ & ((\i0|LessThan0~1_combout\) # (\i0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|LessThan0~1_combout\,
	datac => \adc[7]~input_o\,
	datad => \i0|LessThan0~0_combout\,
	combout => \i0|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y32_N12
\i3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr3~0_combout\ = (!\i3|current_state.s12~q\ & (!\i3|current_state.s11~q\ & (!\i3|current_state.s13~q\ & !\i3|current_state.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s12~q\,
	datab => \i3|current_state.s11~q\,
	datac => \i3|current_state.s13~q\,
	datad => \i3|current_state.s10~q\,
	combout => \i3|WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y32_N0
\i3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~0_combout\ = (\adc[0]~input_o\ & ((\i3|current_state.s4~q\) # (\i3|current_state.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[0]~input_o\,
	datab => \i3|current_state.s4~q\,
	datac => \i3|current_state.s5~q\,
	combout => \i3|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y32_N24
\i3|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~1_combout\ = (\i3|current_state.s2~q\) # (((\i3|Selector4~0_combout\) # (\i3|current_state.s3~q\)) # (!\i3|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s2~q\,
	datab => \i3|WideOr3~0_combout\,
	datac => \i3|Selector4~0_combout\,
	datad => \i3|current_state.s3~q\,
	combout => \i3|Selector4~1_combout\);

-- Location: LCCOMB_X27_Y32_N16
\i3|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr9~combout\ = (\i3|current_state.s6~q\) # ((\i3|current_state.s7~q\) # (!\i3|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s6~q\,
	datac => \i3|current_state.s7~q\,
	datad => \i3|WideOr3~0_combout\,
	combout => \i3|WideOr9~combout\);

-- Location: LCCOMB_X27_Y32_N2
\i3|lcd_data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|lcd_data[7]~0_combout\ = (!\i3|current_state.s11~q\ & !\i3|current_state.s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s11~q\,
	datac => \i3|current_state.s10~q\,
	combout => \i3|lcd_data[7]~0_combout\);

-- Location: LCCOMB_X27_Y32_N22
\i3|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr4~0_combout\ = (!\i3|current_state.s6~q\ & !\i3|current_state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|current_state.s6~q\,
	datad => \i3|current_state.s7~q\,
	combout => \i3|WideOr4~0_combout\);

-- Location: LCCOMB_X27_Y32_N6
\i3|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr6~combout\ = (((\i3|current_state.s1~q\) # (!\i3|current_state.0000~q\)) # (!\i3|WideOr4~0_combout\)) # (!\i3|lcd_data[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|lcd_data[7]~0_combout\,
	datab => \i3|WideOr4~0_combout\,
	datac => \i3|current_state.0000~q\,
	datad => \i3|current_state.s1~q\,
	combout => \i3|WideOr6~combout\);

-- Location: LCCOMB_X27_Y32_N4
\i3|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector2~2_combout\ = (\i3|WideOr6~combout\) # ((\adc[0]~input_o\ & ((\i3|current_state.s4~q\) # (\i3|current_state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[0]~input_o\,
	datab => \i3|current_state.s4~q\,
	datac => \i3|current_state.s5~q\,
	datad => \i3|WideOr6~combout\,
	combout => \i3|Selector2~2_combout\);

-- Location: LCCOMB_X27_Y32_N28
\i3|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~combout\ = (\i3|current_state.s4~q\) # ((\i3|current_state.s11~q\) # ((\i3|current_state.s5~q\) # (\i3|current_state.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s4~q\,
	datab => \i3|current_state.s11~q\,
	datac => \i3|current_state.s5~q\,
	datad => \i3|current_state.s10~q\,
	combout => \i3|WideOr5~combout\);

-- Location: LCCOMB_X27_Y32_N14
\i3|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr4~1_combout\ = (!\i3|current_state.s5~q\ & !\i3|current_state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|current_state.s5~q\,
	datad => \i3|current_state.s4~q\,
	combout => \i3|WideOr4~1_combout\);

-- Location: LCCOMB_X27_Y32_N26
\i3|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr4~combout\ = (\i3|current_state.s8~q\) # (((\i3|current_state.s9~q\) # (!\i3|WideOr4~1_combout\)) # (!\i3|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s8~q\,
	datab => \i3|WideOr4~0_combout\,
	datac => \i3|current_state.s9~q\,
	datad => \i3|WideOr4~1_combout\,
	combout => \i3|WideOr4~combout\);

ww_en <= \en~output_o\;

ww_rs <= \rs~output_o\;

ww_wr <= \wr~output_o\;

ww_led_state <= \led_state~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;
END structure;


