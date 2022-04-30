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

-- DATE "04/30/2022 09:37:23"

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
-- adc[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \i1|count~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \i1|count_temp[0]~33_combout\ : std_logic;
SIGNAL \i1|count_temp[1]~11_combout\ : std_logic;
SIGNAL \i1|count_temp[1]~12\ : std_logic;
SIGNAL \i1|count_temp[2]~13_combout\ : std_logic;
SIGNAL \i1|count_temp[2]~14\ : std_logic;
SIGNAL \i1|count_temp[3]~15_combout\ : std_logic;
SIGNAL \i1|count_temp[3]~16\ : std_logic;
SIGNAL \i1|count_temp[4]~17_combout\ : std_logic;
SIGNAL \i1|count_temp[4]~18\ : std_logic;
SIGNAL \i1|count_temp[5]~19_combout\ : std_logic;
SIGNAL \i1|count_temp[5]~20\ : std_logic;
SIGNAL \i1|count_temp[6]~21_combout\ : std_logic;
SIGNAL \i1|count_temp[6]~22\ : std_logic;
SIGNAL \i1|count_temp[7]~23_combout\ : std_logic;
SIGNAL \i1|count_temp[7]~24\ : std_logic;
SIGNAL \i1|count_temp[8]~25_combout\ : std_logic;
SIGNAL \i1|count_temp[8]~26\ : std_logic;
SIGNAL \i1|count_temp[9]~27_combout\ : std_logic;
SIGNAL \i1|count_temp[9]~28\ : std_logic;
SIGNAL \i1|count_temp[10]~29_combout\ : std_logic;
SIGNAL \i1|count_temp[10]~30\ : std_logic;
SIGNAL \i1|count_temp[11]~31_combout\ : std_logic;
SIGNAL \i1|count_temp[11]~32\ : std_logic;
SIGNAL \i1|count~1_combout\ : std_logic;
SIGNAL \i1|count~q\ : std_logic;
SIGNAL \i1|count~clkctrl_outclk\ : std_logic;
SIGNAL \intr~input_o\ : std_logic;
SIGNAL \i3|current_state.s17~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \i3|current_state.s17~q\ : std_logic;
SIGNAL \i3|current_state.s18~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s18~q\ : std_logic;
SIGNAL \i3|current_state.s19~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s19~q\ : std_logic;
SIGNAL \i3|current_state.00000~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.00000~q\ : std_logic;
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
SIGNAL \i3|current_state.s11~q\ : std_logic;
SIGNAL \i3|current_state.s12~q\ : std_logic;
SIGNAL \i3|current_state.s13~q\ : std_logic;
SIGNAL \i3|current_state.s14~q\ : std_logic;
SIGNAL \i3|current_state.s15~q\ : std_logic;
SIGNAL \i3|current_state.s16~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s16~q\ : std_logic;
SIGNAL \i3|WideOr1~0_combout\ : std_logic;
SIGNAL \i3|WideOr1~1_combout\ : std_logic;
SIGNAL \i3|WideOr1~2_combout\ : std_logic;
SIGNAL \i3|WideOr2~0_combout\ : std_logic;
SIGNAL \adc[4]~input_o\ : std_logic;
SIGNAL \adc[3]~input_o\ : std_logic;
SIGNAL \adc[1]~input_o\ : std_logic;
SIGNAL \adc[2]~input_o\ : std_logic;
SIGNAL \adc[0]~input_o\ : std_logic;
SIGNAL \i0|LessThan0~0_combout\ : std_logic;
SIGNAL \adc[7]~input_o\ : std_logic;
SIGNAL \adc[6]~input_o\ : std_logic;
SIGNAL \adc[5]~input_o\ : std_logic;
SIGNAL \i2|bcd~0_combout\ : std_logic;
SIGNAL \i0|LessThan0~1_combout\ : std_logic;
SIGNAL \i2|bcd~2_combout\ : std_logic;
SIGNAL \i2|bcd~3_combout\ : std_logic;
SIGNAL \i2|bcd~1_combout\ : std_logic;
SIGNAL \i3|Selector4~0_combout\ : std_logic;
SIGNAL \i3|Selector4~1_combout\ : std_logic;
SIGNAL \i3|WideOr3~0_combout\ : std_logic;
SIGNAL \i3|Selector4~2_combout\ : std_logic;
SIGNAL \i3|Selector4~3_combout\ : std_logic;
SIGNAL \i3|lcd_data~0_combout\ : std_logic;
SIGNAL \i3|Selector4~4_combout\ : std_logic;
SIGNAL \i3|Selector4~5_combout\ : std_logic;
SIGNAL \i2|bcd[12]~4_combout\ : std_logic;
SIGNAL \i3|Selector3~6_combout\ : std_logic;
SIGNAL \i3|Selector3~2_combout\ : std_logic;
SIGNAL \i3|Selector3~3_combout\ : std_logic;
SIGNAL \i3|Selector3~4_combout\ : std_logic;
SIGNAL \i3|Selector3~5_combout\ : std_logic;
SIGNAL \i3|Selector2~0_combout\ : std_logic;
SIGNAL \i3|Selector2~1_combout\ : std_logic;
SIGNAL \i3|Selector1~2_combout\ : std_logic;
SIGNAL \i3|Selector1~3_combout\ : std_logic;
SIGNAL \i3|Selector2~2_combout\ : std_logic;
SIGNAL \i3|Selector1~5_combout\ : std_logic;
SIGNAL \i3|Selector1~4_combout\ : std_logic;
SIGNAL \i3|WideOr5~0_combout\ : std_logic;
SIGNAL \i3|WideOr5~1_combout\ : std_logic;
SIGNAL \i3|WideOr4~combout\ : std_logic;
SIGNAL \i3|lcd_data[7]~1_combout\ : std_logic;
SIGNAL \i1|count_temp\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \i3|ALT_INV_lcd_data[7]~1_combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr5~1_combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr3~0_combout\ : std_logic;
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

\i1|count~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i1|count~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\i3|ALT_INV_lcd_data[7]~1_combout\ <= NOT \i3|lcd_data[7]~1_combout\;
\i3|ALT_INV_WideOr4~combout\ <= NOT \i3|WideOr4~combout\;
\i3|ALT_INV_WideOr5~1_combout\ <= NOT \i3|WideOr5~1_combout\;
\i3|ALT_INV_WideOr3~0_combout\ <= NOT \i3|WideOr3~0_combout\;
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
	i => \i3|WideOr1~2_combout\,
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
	i => \i3|WideOr2~0_combout\,
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
	i => \i0|LessThan0~1_combout\,
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
	i => \i3|Selector4~5_combout\,
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
	i => \i3|Selector3~5_combout\,
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
	i => \i3|Selector1~4_combout\,
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
	i => \i3|ALT_INV_WideOr5~1_combout\,
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
	i => \i3|ALT_INV_WideOr4~combout\,
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
	i => \i3|ALT_INV_lcd_data[7]~1_combout\,
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

-- Location: LCCOMB_X28_Y1_N26
\i1|count_temp[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[0]~33_combout\ = !\i1|count_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|count_temp\(0),
	combout => \i1|count_temp[0]~33_combout\);

-- Location: FF_X28_Y1_N27
\i1|count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(0));

-- Location: LCCOMB_X28_Y1_N2
\i1|count_temp[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[1]~11_combout\ = (\i1|count_temp\(0) & (\i1|count_temp\(1) $ (VCC))) # (!\i1|count_temp\(0) & (\i1|count_temp\(1) & VCC))
-- \i1|count_temp[1]~12\ = CARRY((\i1|count_temp\(0) & \i1|count_temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count_temp\(0),
	datab => \i1|count_temp\(1),
	datad => VCC,
	combout => \i1|count_temp[1]~11_combout\,
	cout => \i1|count_temp[1]~12\);

-- Location: FF_X28_Y1_N3
\i1|count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(1));

-- Location: LCCOMB_X28_Y1_N4
\i1|count_temp[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[2]~13_combout\ = (\i1|count_temp\(2) & (!\i1|count_temp[1]~12\)) # (!\i1|count_temp\(2) & ((\i1|count_temp[1]~12\) # (GND)))
-- \i1|count_temp[2]~14\ = CARRY((!\i1|count_temp[1]~12\) # (!\i1|count_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count_temp\(2),
	datad => VCC,
	cin => \i1|count_temp[1]~12\,
	combout => \i1|count_temp[2]~13_combout\,
	cout => \i1|count_temp[2]~14\);

-- Location: FF_X28_Y1_N5
\i1|count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(2));

-- Location: LCCOMB_X28_Y1_N6
\i1|count_temp[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[3]~15_combout\ = (\i1|count_temp\(3) & (\i1|count_temp[2]~14\ $ (GND))) # (!\i1|count_temp\(3) & (!\i1|count_temp[2]~14\ & VCC))
-- \i1|count_temp[3]~16\ = CARRY((\i1|count_temp\(3) & !\i1|count_temp[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count_temp\(3),
	datad => VCC,
	cin => \i1|count_temp[2]~14\,
	combout => \i1|count_temp[3]~15_combout\,
	cout => \i1|count_temp[3]~16\);

-- Location: FF_X28_Y1_N7
\i1|count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(3));

-- Location: LCCOMB_X28_Y1_N8
\i1|count_temp[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[4]~17_combout\ = (\i1|count_temp\(4) & (!\i1|count_temp[3]~16\)) # (!\i1|count_temp\(4) & ((\i1|count_temp[3]~16\) # (GND)))
-- \i1|count_temp[4]~18\ = CARRY((!\i1|count_temp[3]~16\) # (!\i1|count_temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count_temp\(4),
	datad => VCC,
	cin => \i1|count_temp[3]~16\,
	combout => \i1|count_temp[4]~17_combout\,
	cout => \i1|count_temp[4]~18\);

-- Location: FF_X28_Y1_N9
\i1|count_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(4));

-- Location: LCCOMB_X28_Y1_N10
\i1|count_temp[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[5]~19_combout\ = (\i1|count_temp\(5) & (\i1|count_temp[4]~18\ $ (GND))) # (!\i1|count_temp\(5) & (!\i1|count_temp[4]~18\ & VCC))
-- \i1|count_temp[5]~20\ = CARRY((\i1|count_temp\(5) & !\i1|count_temp[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count_temp\(5),
	datad => VCC,
	cin => \i1|count_temp[4]~18\,
	combout => \i1|count_temp[5]~19_combout\,
	cout => \i1|count_temp[5]~20\);

-- Location: FF_X28_Y1_N11
\i1|count_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(5));

-- Location: LCCOMB_X28_Y1_N12
\i1|count_temp[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[6]~21_combout\ = (\i1|count_temp\(6) & (!\i1|count_temp[5]~20\)) # (!\i1|count_temp\(6) & ((\i1|count_temp[5]~20\) # (GND)))
-- \i1|count_temp[6]~22\ = CARRY((!\i1|count_temp[5]~20\) # (!\i1|count_temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count_temp\(6),
	datad => VCC,
	cin => \i1|count_temp[5]~20\,
	combout => \i1|count_temp[6]~21_combout\,
	cout => \i1|count_temp[6]~22\);

-- Location: FF_X28_Y1_N13
\i1|count_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(6));

-- Location: LCCOMB_X28_Y1_N14
\i1|count_temp[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[7]~23_combout\ = (\i1|count_temp\(7) & (\i1|count_temp[6]~22\ $ (GND))) # (!\i1|count_temp\(7) & (!\i1|count_temp[6]~22\ & VCC))
-- \i1|count_temp[7]~24\ = CARRY((\i1|count_temp\(7) & !\i1|count_temp[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count_temp\(7),
	datad => VCC,
	cin => \i1|count_temp[6]~22\,
	combout => \i1|count_temp[7]~23_combout\,
	cout => \i1|count_temp[7]~24\);

-- Location: FF_X28_Y1_N15
\i1|count_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(7));

-- Location: LCCOMB_X28_Y1_N16
\i1|count_temp[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[8]~25_combout\ = (\i1|count_temp\(8) & (!\i1|count_temp[7]~24\)) # (!\i1|count_temp\(8) & ((\i1|count_temp[7]~24\) # (GND)))
-- \i1|count_temp[8]~26\ = CARRY((!\i1|count_temp[7]~24\) # (!\i1|count_temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count_temp\(8),
	datad => VCC,
	cin => \i1|count_temp[7]~24\,
	combout => \i1|count_temp[8]~25_combout\,
	cout => \i1|count_temp[8]~26\);

-- Location: FF_X28_Y1_N17
\i1|count_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(8));

-- Location: LCCOMB_X28_Y1_N18
\i1|count_temp[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[9]~27_combout\ = (\i1|count_temp\(9) & (\i1|count_temp[8]~26\ $ (GND))) # (!\i1|count_temp\(9) & (!\i1|count_temp[8]~26\ & VCC))
-- \i1|count_temp[9]~28\ = CARRY((\i1|count_temp\(9) & !\i1|count_temp[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count_temp\(9),
	datad => VCC,
	cin => \i1|count_temp[8]~26\,
	combout => \i1|count_temp[9]~27_combout\,
	cout => \i1|count_temp[9]~28\);

-- Location: FF_X28_Y1_N19
\i1|count_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(9));

-- Location: LCCOMB_X28_Y1_N20
\i1|count_temp[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[10]~29_combout\ = (\i1|count_temp\(10) & (!\i1|count_temp[9]~28\)) # (!\i1|count_temp\(10) & ((\i1|count_temp[9]~28\) # (GND)))
-- \i1|count_temp[10]~30\ = CARRY((!\i1|count_temp[9]~28\) # (!\i1|count_temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count_temp\(10),
	datad => VCC,
	cin => \i1|count_temp[9]~28\,
	combout => \i1|count_temp[10]~29_combout\,
	cout => \i1|count_temp[10]~30\);

-- Location: FF_X28_Y1_N21
\i1|count_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(10));

-- Location: LCCOMB_X28_Y1_N22
\i1|count_temp[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count_temp[11]~31_combout\ = (\i1|count_temp\(11) & (\i1|count_temp[10]~30\ $ (GND))) # (!\i1|count_temp\(11) & (!\i1|count_temp[10]~30\ & VCC))
-- \i1|count_temp[11]~32\ = CARRY((\i1|count_temp\(11) & !\i1|count_temp[10]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count_temp\(11),
	datad => VCC,
	cin => \i1|count_temp[10]~30\,
	combout => \i1|count_temp[11]~31_combout\,
	cout => \i1|count_temp[11]~32\);

-- Location: FF_X28_Y1_N23
\i1|count_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count_temp[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count_temp\(11));

-- Location: LCCOMB_X28_Y1_N24
\i1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|count~1_combout\ = \i1|count_temp[11]~32\ $ (\i1|count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i1|count~q\,
	cin => \i1|count_temp[11]~32\,
	combout => \i1|count~1_combout\);

-- Location: FF_X28_Y1_N25
\i1|count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count~q\);

-- Location: CLKCTRL_G19
\i1|count~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i1|count~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i1|count~clkctrl_outclk\);

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

-- Location: LCCOMB_X25_Y30_N18
\i3|current_state.s17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s17~feeder_combout\ = \i3|current_state.s16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s16~q\,
	combout => \i3|current_state.s17~feeder_combout\);

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

-- Location: FF_X25_Y30_N19
\i3|current_state.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|current_state.s17~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s17~q\);

-- Location: LCCOMB_X25_Y30_N16
\i3|current_state.s18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s18~feeder_combout\ = \i3|current_state.s17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s17~q\,
	combout => \i3|current_state.s18~feeder_combout\);

-- Location: FF_X25_Y30_N17
\i3|current_state.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|current_state.s18~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s18~q\);

-- Location: LCCOMB_X25_Y30_N20
\i3|current_state.s19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s19~feeder_combout\ = \i3|current_state.s18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s18~q\,
	combout => \i3|current_state.s19~feeder_combout\);

-- Location: FF_X25_Y30_N21
\i3|current_state.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|current_state.s19~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s19~q\);

-- Location: LCCOMB_X25_Y30_N28
\i3|current_state.00000~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.00000~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i3|current_state.00000~feeder_combout\);

-- Location: FF_X25_Y30_N29
\i3|current_state.00000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|current_state.00000~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.00000~q\);

-- Location: LCCOMB_X25_Y30_N2
\i3|current_state.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s1~0_combout\ = !\i3|current_state.00000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.00000~q\,
	combout => \i3|current_state.s1~0_combout\);

-- Location: FF_X25_Y30_N3
\i3|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|current_state.s1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s1~q\);

-- Location: LCCOMB_X25_Y30_N24
\i3|next_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|next_state~2_combout\ = (\i3|current_state.s19~q\) # (\i3|current_state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|current_state.s19~q\,
	datad => \i3|current_state.s1~q\,
	combout => \i3|next_state~2_combout\);

-- Location: FF_X25_Y30_N25
\i3|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|next_state~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s2~q\);

-- Location: LCCOMB_X25_Y30_N4
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

-- Location: FF_X25_Y30_N5
\i3|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s3~q\);

-- Location: LCCOMB_X24_Y30_N8
\i3|next_state.s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|next_state.s4~0_combout\ = (!\intr~input_o\ & \i3|current_state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \intr~input_o\,
	datad => \i3|current_state.s3~q\,
	combout => \i3|next_state.s4~0_combout\);

-- Location: FF_X24_Y30_N9
\i3|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|next_state.s4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s4~q\);

-- Location: FF_X24_Y30_N29
\i3|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s5~q\);

-- Location: FF_X24_Y30_N5
\i3|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s6~q\);

-- Location: FF_X24_Y30_N19
\i3|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s7~q\);

-- Location: LCCOMB_X24_Y30_N30
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

-- Location: FF_X24_Y30_N31
\i3|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|current_state.s8~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s8~q\);

-- Location: FF_X24_Y30_N27
\i3|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s8~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s9~q\);

-- Location: FF_X24_Y30_N23
\i3|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s9~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s10~q\);

-- Location: FF_X24_Y30_N11
\i3|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s10~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s11~q\);

-- Location: FF_X24_Y30_N7
\i3|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s11~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s12~q\);

-- Location: FF_X24_Y30_N21
\i3|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s12~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s13~q\);

-- Location: FF_X24_Y30_N15
\i3|current_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s13~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s14~q\);

-- Location: FF_X24_Y30_N13
\i3|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	asdata => \i3|current_state.s14~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s15~q\);

-- Location: LCCOMB_X25_Y30_N6
\i3|current_state.s16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s16~feeder_combout\ = \i3|current_state.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s15~q\,
	combout => \i3|current_state.s16~feeder_combout\);

-- Location: FF_X25_Y30_N7
\i3|current_state.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|count~clkctrl_outclk\,
	d => \i3|current_state.s16~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s16~q\);

-- Location: LCCOMB_X25_Y30_N10
\i3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr1~0_combout\ = (\i3|current_state.s16~q\) # ((\i3|current_state.s8~q\) # ((\i3|current_state.s2~q\) # (!\i3|current_state.00000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|current_state.s8~q\,
	datac => \i3|current_state.00000~q\,
	datad => \i3|current_state.s2~q\,
	combout => \i3|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y30_N4
\i3|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr1~1_combout\ = (\i3|current_state.s10~q\) # ((\i3|current_state.s4~q\) # ((\i3|current_state.s6~q\) # (\i3|current_state.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s10~q\,
	datab => \i3|current_state.s4~q\,
	datac => \i3|current_state.s6~q\,
	datad => \i3|current_state.s12~q\,
	combout => \i3|WideOr1~1_combout\);

-- Location: LCCOMB_X25_Y30_N26
\i3|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr1~2_combout\ = (\i3|WideOr1~0_combout\) # ((\i3|current_state.s18~q\) # ((\i3|WideOr1~1_combout\) # (\i3|current_state.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|WideOr1~0_combout\,
	datab => \i3|current_state.s18~q\,
	datac => \i3|WideOr1~1_combout\,
	datad => \i3|current_state.s14~q\,
	combout => \i3|WideOr1~2_combout\);

-- Location: LCCOMB_X25_Y30_N12
\i3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr2~0_combout\ = (\i3|current_state.00000~q\ & (!\i3|current_state.s1~q\ & (!\i3|current_state.s3~q\ & !\i3|current_state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.00000~q\,
	datab => \i3|current_state.s1~q\,
	datac => \i3|current_state.s3~q\,
	datad => \i3|current_state.s2~q\,
	combout => \i3|WideOr2~0_combout\);

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

-- Location: LCCOMB_X24_Y30_N0
\i0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~0_combout\ = (\adc[3]~input_o\) # ((\adc[1]~input_o\ & (\adc[2]~input_o\ & \adc[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[3]~input_o\,
	datab => \adc[1]~input_o\,
	datac => \adc[2]~input_o\,
	datad => \adc[0]~input_o\,
	combout => \i0|LessThan0~0_combout\);

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

-- Location: LCCOMB_X23_Y30_N20
\i2|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|bcd~0_combout\ = (!\adc[6]~input_o\ & !\adc[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc[6]~input_o\,
	datad => \adc[5]~input_o\,
	combout => \i2|bcd~0_combout\);

-- Location: LCCOMB_X23_Y30_N14
\i0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~1_combout\ = (\adc[7]~input_o\ & (((\adc[4]~input_o\ & \i0|LessThan0~0_combout\)) # (!\i2|bcd~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[4]~input_o\,
	datab => \i0|LessThan0~0_combout\,
	datac => \adc[7]~input_o\,
	datad => \i2|bcd~0_combout\,
	combout => \i0|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y30_N10
\i2|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|bcd~2_combout\ = (\adc[6]~input_o\ & (!\adc[4]~input_o\ & (\adc[5]~input_o\ $ (!\adc[7]~input_o\)))) # (!\adc[6]~input_o\ & (!\adc[5]~input_o\ & (\adc[7]~input_o\ & \adc[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[5]~input_o\,
	datab => \adc[6]~input_o\,
	datac => \adc[7]~input_o\,
	datad => \adc[4]~input_o\,
	combout => \i2|bcd~2_combout\);

-- Location: LCCOMB_X23_Y30_N28
\i2|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|bcd~3_combout\ = (\adc[5]~input_o\ & (!\adc[7]~input_o\ & ((\adc[4]~input_o\) # (!\adc[6]~input_o\)))) # (!\adc[5]~input_o\ & (\adc[7]~input_o\ & ((\adc[6]~input_o\) # (!\adc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[5]~input_o\,
	datab => \adc[6]~input_o\,
	datac => \adc[7]~input_o\,
	datad => \adc[4]~input_o\,
	combout => \i2|bcd~3_combout\);

-- Location: LCCOMB_X23_Y30_N16
\i2|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|bcd~1_combout\ = (\adc[6]~input_o\ & ((\adc[5]~input_o\ & (!\adc[7]~input_o\ & !\adc[4]~input_o\)) # (!\adc[5]~input_o\ & (\adc[7]~input_o\ & \adc[4]~input_o\)))) # (!\adc[6]~input_o\ & (\adc[4]~input_o\ $ (((!\adc[5]~input_o\ & \adc[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[5]~input_o\,
	datab => \adc[6]~input_o\,
	datac => \adc[7]~input_o\,
	datad => \adc[4]~input_o\,
	combout => \i2|bcd~1_combout\);

-- Location: LCCOMB_X23_Y30_N2
\i3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~0_combout\ = \i2|bcd~2_combout\ $ (((\i2|bcd~3_combout\ & ((\adc[3]~input_o\) # (\i2|bcd~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|bcd~2_combout\,
	datab => \i2|bcd~3_combout\,
	datac => \adc[3]~input_o\,
	datad => \i2|bcd~1_combout\,
	combout => \i3|Selector4~0_combout\);

-- Location: LCCOMB_X24_Y30_N14
\i3|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~1_combout\ = (\i3|Selector4~0_combout\ & ((\i3|current_state.s5~q\) # (\i3|current_state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s5~q\,
	datab => \i3|current_state.s4~q\,
	datad => \i3|Selector4~0_combout\,
	combout => \i3|Selector4~1_combout\);

-- Location: LCCOMB_X25_Y30_N14
\i3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr3~0_combout\ = (!\i3|current_state.s16~q\ & (!\i3|current_state.s19~q\ & (!\i3|current_state.s17~q\ & !\i3|current_state.s18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|current_state.s19~q\,
	datac => \i3|current_state.s17~q\,
	datad => \i3|current_state.s18~q\,
	combout => \i3|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y30_N20
\i3|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~2_combout\ = (\adc[0]~input_o\ & ((\i3|current_state.s12~q\) # (\i3|current_state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|current_state.s12~q\,
	datac => \i3|current_state.s13~q\,
	datad => \adc[0]~input_o\,
	combout => \i3|Selector4~2_combout\);

-- Location: LCCOMB_X24_Y30_N22
\i3|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~3_combout\ = (!\i3|Selector4~2_combout\ & (((!\i3|current_state.s11~q\ & !\i3|current_state.s10~q\)) # (!\adc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s11~q\,
	datab => \adc[1]~input_o\,
	datac => \i3|current_state.s10~q\,
	datad => \i3|Selector4~2_combout\,
	combout => \i3|Selector4~3_combout\);

-- Location: LCCOMB_X24_Y30_N6
\i3|lcd_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|lcd_data~0_combout\ = (\i3|current_state.s6~q\) # (\i3|current_state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|current_state.s6~q\,
	datad => \i3|current_state.s7~q\,
	combout => \i3|lcd_data~0_combout\);

-- Location: LCCOMB_X24_Y30_N24
\i3|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~4_combout\ = (((\adc[2]~input_o\ & \i3|lcd_data~0_combout\)) # (!\i3|Selector4~3_combout\)) # (!\i3|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|WideOr3~0_combout\,
	datab => \i3|Selector4~3_combout\,
	datac => \adc[2]~input_o\,
	datad => \i3|lcd_data~0_combout\,
	combout => \i3|Selector4~4_combout\);

-- Location: LCCOMB_X25_Y30_N0
\i3|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector4~5_combout\ = (\i3|Selector4~1_combout\) # ((\i3|current_state.s2~q\) # ((\i3|current_state.s3~q\) # (\i3|Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Selector4~1_combout\,
	datab => \i3|current_state.s2~q\,
	datac => \i3|current_state.s3~q\,
	datad => \i3|Selector4~4_combout\,
	combout => \i3|Selector4~5_combout\);

-- Location: LCCOMB_X23_Y30_N24
\i2|bcd[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|bcd[12]~4_combout\ = (\i2|bcd~2_combout\) # ((\i2|bcd~3_combout\ & ((\adc[3]~input_o\) # (\i2|bcd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|bcd~2_combout\,
	datab => \i2|bcd~3_combout\,
	datac => \adc[3]~input_o\,
	datad => \i2|bcd~1_combout\,
	combout => \i2|bcd[12]~4_combout\);

-- Location: LCCOMB_X24_Y30_N18
\i3|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector3~6_combout\ = (\i3|current_state.s6~q\ & (\adc[3]~input_o\ $ (((\i2|bcd[12]~4_combout\))))) # (!\i3|current_state.s6~q\ & (\i3|current_state.s7~q\ & (\adc[3]~input_o\ $ (\i2|bcd[12]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[3]~input_o\,
	datab => \i3|current_state.s6~q\,
	datac => \i3|current_state.s7~q\,
	datad => \i2|bcd[12]~4_combout\,
	combout => \i3|Selector3~6_combout\);

-- Location: LCCOMB_X24_Y30_N10
\i3|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector3~2_combout\ = ((\adc[0]~input_o\ & ((\i3|current_state.s10~q\) # (\i3|current_state.s11~q\)))) # (!\i3|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s10~q\,
	datab => \i3|WideOr3~0_combout\,
	datac => \i3|current_state.s11~q\,
	datad => \adc[0]~input_o\,
	combout => \i3|Selector3~2_combout\);

-- Location: LCCOMB_X23_Y30_N18
\i3|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector3~3_combout\ = (\adc[5]~input_o\ & (\adc[6]~input_o\ & ((\adc[4]~input_o\) # (!\adc[7]~input_o\)))) # (!\adc[5]~input_o\ & ((\adc[6]~input_o\ & (!\adc[7]~input_o\ & \adc[4]~input_o\)) # (!\adc[6]~input_o\ & (\adc[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[5]~input_o\,
	datab => \adc[6]~input_o\,
	datac => \adc[7]~input_o\,
	datad => \adc[4]~input_o\,
	combout => \i3|Selector3~3_combout\);

-- Location: LCCOMB_X24_Y30_N16
\i3|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector3~4_combout\ = (\i3|Selector3~2_combout\) # ((\i3|Selector3~3_combout\ & ((\i3|current_state.s4~q\) # (\i3|current_state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Selector3~2_combout\,
	datab => \i3|Selector3~3_combout\,
	datac => \i3|current_state.s4~q\,
	datad => \i3|current_state.s5~q\,
	combout => \i3|Selector3~4_combout\);

-- Location: LCCOMB_X24_Y30_N2
\i3|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector3~5_combout\ = (\i3|current_state.s9~q\) # ((\i3|Selector3~6_combout\) # ((\i3|current_state.s8~q\) # (\i3|Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s9~q\,
	datab => \i3|Selector3~6_combout\,
	datac => \i3|current_state.s8~q\,
	datad => \i3|Selector3~4_combout\,
	combout => \i3|Selector3~5_combout\);

-- Location: LCCOMB_X23_Y30_N12
\i3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector2~0_combout\ = (\i3|lcd_data~0_combout\ & (\i2|bcd~1_combout\ $ (((\i2|bcd[12]~4_combout\ & !\adc[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|lcd_data~0_combout\,
	datab => \i2|bcd[12]~4_combout\,
	datac => \adc[3]~input_o\,
	datad => \i2|bcd~1_combout\,
	combout => \i3|Selector2~0_combout\);

-- Location: LCCOMB_X23_Y30_N30
\i3|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector2~1_combout\ = (\adc[7]~input_o\ & (!\i2|bcd~0_combout\ & ((\i3|current_state.s4~q\) # (\i3|current_state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[7]~input_o\,
	datab => \i2|bcd~0_combout\,
	datac => \i3|current_state.s4~q\,
	datad => \i3|current_state.s5~q\,
	combout => \i3|Selector2~1_combout\);

-- Location: LCCOMB_X25_Y30_N30
\i3|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector1~2_combout\ = (!\i3|current_state.s16~q\ & (\i3|current_state.00000~q\ & (!\i3|current_state.s1~q\ & !\i3|current_state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|current_state.00000~q\,
	datac => \i3|current_state.s1~q\,
	datad => \i3|current_state.s8~q\,
	combout => \i3|Selector1~2_combout\);

-- Location: LCCOMB_X24_Y30_N26
\i3|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector1~3_combout\ = (\i3|Selector1~2_combout\ & (!\i3|current_state.s17~q\ & !\i3|current_state.s9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Selector1~2_combout\,
	datab => \i3|current_state.s17~q\,
	datac => \i3|current_state.s9~q\,
	combout => \i3|Selector1~3_combout\);

-- Location: LCCOMB_X23_Y30_N4
\i3|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector2~2_combout\ = (\i3|Selector2~0_combout\) # (((\i3|Selector2~1_combout\) # (!\i3|Selector1~3_combout\)) # (!\i3|Selector4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Selector2~0_combout\,
	datab => \i3|Selector4~3_combout\,
	datac => \i3|Selector2~1_combout\,
	datad => \i3|Selector1~3_combout\,
	combout => \i3|Selector2~2_combout\);

-- Location: LCCOMB_X23_Y30_N8
\i3|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector1~5_combout\ = (\i2|bcd~2_combout\ & (((\adc[3]~input_o\) # (\i2|bcd~1_combout\)))) # (!\i2|bcd~2_combout\ & (\i2|bcd~3_combout\ & ((\adc[3]~input_o\) # (\i2|bcd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|bcd~2_combout\,
	datab => \i2|bcd~3_combout\,
	datac => \adc[3]~input_o\,
	datad => \i2|bcd~1_combout\,
	combout => \i3|Selector1~5_combout\);

-- Location: LCCOMB_X23_Y30_N22
\i3|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Selector1~4_combout\ = ((\i3|lcd_data~0_combout\ & (\i3|Selector1~5_combout\ $ (\i2|bcd~3_combout\)))) # (!\i3|Selector1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|lcd_data~0_combout\,
	datab => \i3|Selector1~3_combout\,
	datac => \i3|Selector1~5_combout\,
	datad => \i2|bcd~3_combout\,
	combout => \i3|Selector1~4_combout\);

-- Location: LCCOMB_X25_Y30_N8
\i3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~0_combout\ = (\i3|current_state.s18~q\) # ((\i3|current_state.s19~q\) # ((\i3|current_state.s9~q\) # (\i3|current_state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s18~q\,
	datab => \i3|current_state.s19~q\,
	datac => \i3|current_state.s9~q\,
	datad => \i3|current_state.s8~q\,
	combout => \i3|WideOr5~0_combout\);

-- Location: LCCOMB_X25_Y30_N22
\i3|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~1_combout\ = (\i3|current_state.s14~q\) # (((\i3|WideOr5~0_combout\) # (\i3|current_state.s15~q\)) # (!\i3|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s14~q\,
	datab => \i3|WideOr2~0_combout\,
	datac => \i3|WideOr5~0_combout\,
	datad => \i3|current_state.s15~q\,
	combout => \i3|WideOr5~1_combout\);

-- Location: LCCOMB_X24_Y30_N28
\i3|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr4~combout\ = (!\i3|WideOr3~0_combout\) # (!\i3|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|WideOr2~0_combout\,
	datad => \i3|WideOr3~0_combout\,
	combout => \i3|WideOr4~combout\);

-- Location: LCCOMB_X24_Y30_N12
\i3|lcd_data[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|lcd_data[7]~1_combout\ = (!\i3|current_state.s17~q\ & !\i3|current_state.s16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|current_state.s17~q\,
	datad => \i3|current_state.s16~q\,
	combout => \i3|lcd_data[7]~1_combout\);

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


