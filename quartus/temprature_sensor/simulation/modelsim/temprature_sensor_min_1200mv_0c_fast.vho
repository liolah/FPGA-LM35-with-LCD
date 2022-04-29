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

-- DATE "04/29/2022 13:23:13"

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
-- intr	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- adc[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \intr~input_o\ : std_logic;
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
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \i1|Add0~9\ : std_logic;
SIGNAL \i1|Add0~10_combout\ : std_logic;
SIGNAL \i1|Add0~11\ : std_logic;
SIGNAL \i1|Add0~12_combout\ : std_logic;
SIGNAL \i1|Add0~13\ : std_logic;
SIGNAL \i1|Add0~14_combout\ : std_logic;
SIGNAL \i1|Add0~15\ : std_logic;
SIGNAL \i1|Add0~16_combout\ : std_logic;
SIGNAL \i1|Add0~17\ : std_logic;
SIGNAL \i1|Add0~18_combout\ : std_logic;
SIGNAL \i1|Add0~19\ : std_logic;
SIGNAL \i1|Add0~20_combout\ : std_logic;
SIGNAL \i1|Add0~21\ : std_logic;
SIGNAL \i1|Add0~22_combout\ : std_logic;
SIGNAL \i1|Add0~23\ : std_logic;
SIGNAL \i1|Add0~24_combout\ : std_logic;
SIGNAL \i1|Add0~25\ : std_logic;
SIGNAL \i1|Add0~26_combout\ : std_logic;
SIGNAL \i1|Add0~27\ : std_logic;
SIGNAL \i1|Add0~28_combout\ : std_logic;
SIGNAL \i1|Add0~29\ : std_logic;
SIGNAL \i1|Add0~30_combout\ : std_logic;
SIGNAL \i1|Add0~31\ : std_logic;
SIGNAL \i1|Add0~32_combout\ : std_logic;
SIGNAL \i1|Add0~33\ : std_logic;
SIGNAL \i1|Add0~34_combout\ : std_logic;
SIGNAL \i1|Add0~35\ : std_logic;
SIGNAL \i1|Add0~36_combout\ : std_logic;
SIGNAL \i1|Add0~37\ : std_logic;
SIGNAL \i1|Add0~38_combout\ : std_logic;
SIGNAL \i1|Add0~39\ : std_logic;
SIGNAL \i1|Add0~40_combout\ : std_logic;
SIGNAL \i1|Add0~41\ : std_logic;
SIGNAL \i1|Add0~42_combout\ : std_logic;
SIGNAL \i1|Add0~43\ : std_logic;
SIGNAL \i1|Add0~44_combout\ : std_logic;
SIGNAL \i1|Add0~45\ : std_logic;
SIGNAL \i1|Add0~46_combout\ : std_logic;
SIGNAL \i1|Add0~47\ : std_logic;
SIGNAL \i1|Add0~48_combout\ : std_logic;
SIGNAL \i1|Add0~49\ : std_logic;
SIGNAL \i1|Add0~50_combout\ : std_logic;
SIGNAL \i1|out~feeder_combout\ : std_logic;
SIGNAL \i1|out~q\ : std_logic;
SIGNAL \i1|out~clkctrl_outclk\ : std_logic;
SIGNAL \i3|current_state.s17~q\ : std_logic;
SIGNAL \i3|current_state.s18~q\ : std_logic;
SIGNAL \i3|current_state.s19~q\ : std_logic;
SIGNAL \i3|current_state.00000~0_combout\ : std_logic;
SIGNAL \i3|current_state.00000~q\ : std_logic;
SIGNAL \i3|current_state.s1~0_combout\ : std_logic;
SIGNAL \i3|current_state.s1~q\ : std_logic;
SIGNAL \i3|current_state.s2~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s2~q\ : std_logic;
SIGNAL \i3|current_state.s3~q\ : std_logic;
SIGNAL \i3|current_state.s4~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s4~q\ : std_logic;
SIGNAL \i3|current_state.s5~q\ : std_logic;
SIGNAL \i3|current_state.s6~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s6~q\ : std_logic;
SIGNAL \i3|current_state.s7~q\ : std_logic;
SIGNAL \i3|current_state.s8~q\ : std_logic;
SIGNAL \i3|current_state.s9~q\ : std_logic;
SIGNAL \i3|current_state.s10~feeder_combout\ : std_logic;
SIGNAL \i3|current_state.s10~q\ : std_logic;
SIGNAL \i3|current_state.s11~q\ : std_logic;
SIGNAL \i3|current_state.s12~q\ : std_logic;
SIGNAL \i3|current_state.s13~q\ : std_logic;
SIGNAL \i3|current_state.s14~q\ : std_logic;
SIGNAL \i3|current_state.s15~q\ : std_logic;
SIGNAL \i3|current_state.s16~q\ : std_logic;
SIGNAL \i3|WideOr0~1_combout\ : std_logic;
SIGNAL \i3|WideOr0~0_combout\ : std_logic;
SIGNAL \i3|WideOr0~2_combout\ : std_logic;
SIGNAL \i3|WideOr1~0_combout\ : std_logic;
SIGNAL \adc[2]~input_o\ : std_logic;
SIGNAL \adc[1]~input_o\ : std_logic;
SIGNAL \adc[0]~input_o\ : std_logic;
SIGNAL \adc[3]~input_o\ : std_logic;
SIGNAL \i0|LessThan0~1_combout\ : std_logic;
SIGNAL \adc[6]~input_o\ : std_logic;
SIGNAL \adc[5]~input_o\ : std_logic;
SIGNAL \i0|LessThan0~0_combout\ : std_logic;
SIGNAL \adc[7]~input_o\ : std_logic;
SIGNAL \adc[4]~input_o\ : std_logic;
SIGNAL \i0|LessThan0~2_combout\ : std_logic;
SIGNAL \i3|WideOr6~0_combout\ : std_logic;
SIGNAL \i3|WideOr9~0_combout\ : std_logic;
SIGNAL \i3|WideOr9~1_combout\ : std_logic;
SIGNAL \i3|WideOr5~0_combout\ : std_logic;
SIGNAL \i3|WideOr8~0_combout\ : std_logic;
SIGNAL \i3|WideOr7~combout\ : std_logic;
SIGNAL \i3|WideOr6~combout\ : std_logic;
SIGNAL \i3|WideOr5~1_combout\ : std_logic;
SIGNAL \i3|WideOr5~2_combout\ : std_logic;
SIGNAL \i3|WideOr3~0_combout\ : std_logic;
SIGNAL \i3|WideOr4~combout\ : std_logic;
SIGNAL \i3|WideOr2~0_combout\ : std_logic;
SIGNAL \i1|count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_WideOr9~1_combout\ : std_logic;
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

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\i3|ALT_INV_WideOr2~0_combout\ <= NOT \i3|WideOr2~0_combout\;
\i3|ALT_INV_WideOr4~combout\ <= NOT \i3|WideOr4~combout\;
\i3|ALT_INV_WideOr3~0_combout\ <= NOT \i3|WideOr3~0_combout\;
\i3|ALT_INV_WideOr8~0_combout\ <= NOT \i3|WideOr8~0_combout\;
\i3|ALT_INV_WideOr9~1_combout\ <= NOT \i3|WideOr9~1_combout\;
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
	i => \i3|WideOr0~2_combout\,
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
	i => \i3|WideOr1~0_combout\,
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
	i => \i3|ALT_INV_WideOr9~1_combout\,
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
	i => \i3|ALT_INV_WideOr8~0_combout\,
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
	i => \i3|WideOr7~combout\,
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
	i => \i3|WideOr5~2_combout\,
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
	i => \i3|ALT_INV_WideOr2~0_combout\,
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

-- Location: IOIBUF_X0_Y16_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y15_N25
\i1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~50_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(26));

-- Location: LCCOMB_X1_Y16_N4
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

-- Location: FF_X1_Y16_N5
\i1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|count[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(0));

-- Location: LCCOMB_X1_Y16_N6
\i1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~0_combout\ = (\i1|count\(1) & (\i1|count\(0) $ (VCC))) # (!\i1|count\(1) & (\i1|count\(0) & VCC))
-- \i1|Add0~1\ = CARRY((\i1|count\(1) & \i1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(1),
	datab => \i1|count\(0),
	datad => VCC,
	combout => \i1|Add0~0_combout\,
	cout => \i1|Add0~1\);

-- Location: FF_X1_Y16_N7
\i1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(1));

-- Location: LCCOMB_X1_Y16_N8
\i1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~2_combout\ = (\i1|count\(2) & (!\i1|Add0~1\)) # (!\i1|count\(2) & ((\i1|Add0~1\) # (GND)))
-- \i1|Add0~3\ = CARRY((!\i1|Add0~1\) # (!\i1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(2),
	datad => VCC,
	cin => \i1|Add0~1\,
	combout => \i1|Add0~2_combout\,
	cout => \i1|Add0~3\);

-- Location: FF_X1_Y16_N9
\i1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(2));

-- Location: LCCOMB_X1_Y16_N10
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

-- Location: FF_X1_Y16_N11
\i1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(3));

-- Location: LCCOMB_X1_Y16_N12
\i1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~6_combout\ = (\i1|count\(4) & (!\i1|Add0~5\)) # (!\i1|count\(4) & ((\i1|Add0~5\) # (GND)))
-- \i1|Add0~7\ = CARRY((!\i1|Add0~5\) # (!\i1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(4),
	datad => VCC,
	cin => \i1|Add0~5\,
	combout => \i1|Add0~6_combout\,
	cout => \i1|Add0~7\);

-- Location: FF_X1_Y16_N13
\i1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(4));

-- Location: LCCOMB_X1_Y16_N14
\i1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~8_combout\ = (\i1|count\(5) & (\i1|Add0~7\ $ (GND))) # (!\i1|count\(5) & (!\i1|Add0~7\ & VCC))
-- \i1|Add0~9\ = CARRY((\i1|count\(5) & !\i1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(5),
	datad => VCC,
	cin => \i1|Add0~7\,
	combout => \i1|Add0~8_combout\,
	cout => \i1|Add0~9\);

-- Location: FF_X1_Y16_N15
\i1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(5));

-- Location: LCCOMB_X1_Y16_N16
\i1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~10_combout\ = (\i1|count\(6) & (!\i1|Add0~9\)) # (!\i1|count\(6) & ((\i1|Add0~9\) # (GND)))
-- \i1|Add0~11\ = CARRY((!\i1|Add0~9\) # (!\i1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(6),
	datad => VCC,
	cin => \i1|Add0~9\,
	combout => \i1|Add0~10_combout\,
	cout => \i1|Add0~11\);

-- Location: FF_X1_Y16_N17
\i1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(6));

-- Location: LCCOMB_X1_Y16_N18
\i1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~12_combout\ = (\i1|count\(7) & (\i1|Add0~11\ $ (GND))) # (!\i1|count\(7) & (!\i1|Add0~11\ & VCC))
-- \i1|Add0~13\ = CARRY((\i1|count\(7) & !\i1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(7),
	datad => VCC,
	cin => \i1|Add0~11\,
	combout => \i1|Add0~12_combout\,
	cout => \i1|Add0~13\);

-- Location: FF_X1_Y16_N19
\i1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(7));

-- Location: LCCOMB_X1_Y16_N20
\i1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~14_combout\ = (\i1|count\(8) & (!\i1|Add0~13\)) # (!\i1|count\(8) & ((\i1|Add0~13\) # (GND)))
-- \i1|Add0~15\ = CARRY((!\i1|Add0~13\) # (!\i1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(8),
	datad => VCC,
	cin => \i1|Add0~13\,
	combout => \i1|Add0~14_combout\,
	cout => \i1|Add0~15\);

-- Location: FF_X1_Y16_N21
\i1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(8));

-- Location: LCCOMB_X1_Y16_N22
\i1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~16_combout\ = (\i1|count\(9) & (\i1|Add0~15\ $ (GND))) # (!\i1|count\(9) & (!\i1|Add0~15\ & VCC))
-- \i1|Add0~17\ = CARRY((\i1|count\(9) & !\i1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(9),
	datad => VCC,
	cin => \i1|Add0~15\,
	combout => \i1|Add0~16_combout\,
	cout => \i1|Add0~17\);

-- Location: FF_X1_Y16_N23
\i1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(9));

-- Location: LCCOMB_X1_Y16_N24
\i1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~18_combout\ = (\i1|count\(10) & (!\i1|Add0~17\)) # (!\i1|count\(10) & ((\i1|Add0~17\) # (GND)))
-- \i1|Add0~19\ = CARRY((!\i1|Add0~17\) # (!\i1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(10),
	datad => VCC,
	cin => \i1|Add0~17\,
	combout => \i1|Add0~18_combout\,
	cout => \i1|Add0~19\);

-- Location: FF_X1_Y16_N25
\i1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(10));

-- Location: LCCOMB_X1_Y16_N26
\i1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~20_combout\ = (\i1|count\(11) & (\i1|Add0~19\ $ (GND))) # (!\i1|count\(11) & (!\i1|Add0~19\ & VCC))
-- \i1|Add0~21\ = CARRY((\i1|count\(11) & !\i1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(11),
	datad => VCC,
	cin => \i1|Add0~19\,
	combout => \i1|Add0~20_combout\,
	cout => \i1|Add0~21\);

-- Location: FF_X1_Y16_N27
\i1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(11));

-- Location: LCCOMB_X1_Y16_N28
\i1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~22_combout\ = (\i1|count\(12) & (!\i1|Add0~21\)) # (!\i1|count\(12) & ((\i1|Add0~21\) # (GND)))
-- \i1|Add0~23\ = CARRY((!\i1|Add0~21\) # (!\i1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(12),
	datad => VCC,
	cin => \i1|Add0~21\,
	combout => \i1|Add0~22_combout\,
	cout => \i1|Add0~23\);

-- Location: FF_X1_Y16_N29
\i1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(12));

-- Location: LCCOMB_X1_Y16_N30
\i1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~24_combout\ = (\i1|count\(13) & (\i1|Add0~23\ $ (GND))) # (!\i1|count\(13) & (!\i1|Add0~23\ & VCC))
-- \i1|Add0~25\ = CARRY((\i1|count\(13) & !\i1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(13),
	datad => VCC,
	cin => \i1|Add0~23\,
	combout => \i1|Add0~24_combout\,
	cout => \i1|Add0~25\);

-- Location: FF_X1_Y16_N31
\i1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(13));

-- Location: LCCOMB_X1_Y15_N0
\i1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~26_combout\ = (\i1|count\(14) & (!\i1|Add0~25\)) # (!\i1|count\(14) & ((\i1|Add0~25\) # (GND)))
-- \i1|Add0~27\ = CARRY((!\i1|Add0~25\) # (!\i1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(14),
	datad => VCC,
	cin => \i1|Add0~25\,
	combout => \i1|Add0~26_combout\,
	cout => \i1|Add0~27\);

-- Location: FF_X1_Y15_N1
\i1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~26_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(14));

-- Location: LCCOMB_X1_Y15_N2
\i1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~28_combout\ = (\i1|count\(15) & (\i1|Add0~27\ $ (GND))) # (!\i1|count\(15) & (!\i1|Add0~27\ & VCC))
-- \i1|Add0~29\ = CARRY((\i1|count\(15) & !\i1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(15),
	datad => VCC,
	cin => \i1|Add0~27\,
	combout => \i1|Add0~28_combout\,
	cout => \i1|Add0~29\);

-- Location: FF_X1_Y15_N3
\i1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~28_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(15));

-- Location: LCCOMB_X1_Y15_N4
\i1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~30_combout\ = (\i1|count\(16) & (!\i1|Add0~29\)) # (!\i1|count\(16) & ((\i1|Add0~29\) # (GND)))
-- \i1|Add0~31\ = CARRY((!\i1|Add0~29\) # (!\i1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(16),
	datad => VCC,
	cin => \i1|Add0~29\,
	combout => \i1|Add0~30_combout\,
	cout => \i1|Add0~31\);

-- Location: FF_X1_Y15_N5
\i1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~30_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(16));

-- Location: LCCOMB_X1_Y15_N6
\i1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~32_combout\ = (\i1|count\(17) & (\i1|Add0~31\ $ (GND))) # (!\i1|count\(17) & (!\i1|Add0~31\ & VCC))
-- \i1|Add0~33\ = CARRY((\i1|count\(17) & !\i1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(17),
	datad => VCC,
	cin => \i1|Add0~31\,
	combout => \i1|Add0~32_combout\,
	cout => \i1|Add0~33\);

-- Location: FF_X1_Y15_N7
\i1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~32_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(17));

-- Location: LCCOMB_X1_Y15_N8
\i1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~34_combout\ = (\i1|count\(18) & (!\i1|Add0~33\)) # (!\i1|count\(18) & ((\i1|Add0~33\) # (GND)))
-- \i1|Add0~35\ = CARRY((!\i1|Add0~33\) # (!\i1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(18),
	datad => VCC,
	cin => \i1|Add0~33\,
	combout => \i1|Add0~34_combout\,
	cout => \i1|Add0~35\);

-- Location: FF_X1_Y15_N9
\i1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~34_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(18));

-- Location: LCCOMB_X1_Y15_N10
\i1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~36_combout\ = (\i1|count\(19) & (\i1|Add0~35\ $ (GND))) # (!\i1|count\(19) & (!\i1|Add0~35\ & VCC))
-- \i1|Add0~37\ = CARRY((\i1|count\(19) & !\i1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(19),
	datad => VCC,
	cin => \i1|Add0~35\,
	combout => \i1|Add0~36_combout\,
	cout => \i1|Add0~37\);

-- Location: FF_X1_Y15_N11
\i1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~36_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(19));

-- Location: LCCOMB_X1_Y15_N12
\i1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~38_combout\ = (\i1|count\(20) & (!\i1|Add0~37\)) # (!\i1|count\(20) & ((\i1|Add0~37\) # (GND)))
-- \i1|Add0~39\ = CARRY((!\i1|Add0~37\) # (!\i1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(20),
	datad => VCC,
	cin => \i1|Add0~37\,
	combout => \i1|Add0~38_combout\,
	cout => \i1|Add0~39\);

-- Location: FF_X1_Y15_N13
\i1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~38_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(20));

-- Location: LCCOMB_X1_Y15_N14
\i1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~40_combout\ = (\i1|count\(21) & (\i1|Add0~39\ $ (GND))) # (!\i1|count\(21) & (!\i1|Add0~39\ & VCC))
-- \i1|Add0~41\ = CARRY((\i1|count\(21) & !\i1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(21),
	datad => VCC,
	cin => \i1|Add0~39\,
	combout => \i1|Add0~40_combout\,
	cout => \i1|Add0~41\);

-- Location: FF_X1_Y15_N15
\i1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~40_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(21));

-- Location: LCCOMB_X1_Y15_N16
\i1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~42_combout\ = (\i1|count\(22) & (!\i1|Add0~41\)) # (!\i1|count\(22) & ((\i1|Add0~41\) # (GND)))
-- \i1|Add0~43\ = CARRY((!\i1|Add0~41\) # (!\i1|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(22),
	datad => VCC,
	cin => \i1|Add0~41\,
	combout => \i1|Add0~42_combout\,
	cout => \i1|Add0~43\);

-- Location: FF_X1_Y15_N17
\i1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~42_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(22));

-- Location: LCCOMB_X1_Y15_N18
\i1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~44_combout\ = (\i1|count\(23) & (\i1|Add0~43\ $ (GND))) # (!\i1|count\(23) & (!\i1|Add0~43\ & VCC))
-- \i1|Add0~45\ = CARRY((\i1|count\(23) & !\i1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(23),
	datad => VCC,
	cin => \i1|Add0~43\,
	combout => \i1|Add0~44_combout\,
	cout => \i1|Add0~45\);

-- Location: FF_X1_Y15_N19
\i1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~44_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(23));

-- Location: LCCOMB_X1_Y15_N20
\i1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~46_combout\ = (\i1|count\(24) & (!\i1|Add0~45\)) # (!\i1|count\(24) & ((\i1|Add0~45\) # (GND)))
-- \i1|Add0~47\ = CARRY((!\i1|Add0~45\) # (!\i1|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|count\(24),
	datad => VCC,
	cin => \i1|Add0~45\,
	combout => \i1|Add0~46_combout\,
	cout => \i1|Add0~47\);

-- Location: FF_X1_Y15_N21
\i1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~46_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(24));

-- Location: LCCOMB_X1_Y15_N22
\i1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~48_combout\ = (\i1|count\(25) & (\i1|Add0~47\ $ (GND))) # (!\i1|count\(25) & (!\i1|Add0~47\ & VCC))
-- \i1|Add0~49\ = CARRY((\i1|count\(25) & !\i1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(25),
	datad => VCC,
	cin => \i1|Add0~47\,
	combout => \i1|Add0~48_combout\,
	cout => \i1|Add0~49\);

-- Location: FF_X1_Y15_N23
\i1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|Add0~48_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|count\(25));

-- Location: LCCOMB_X1_Y15_N24
\i1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Add0~50_combout\ = \i1|count\(26) $ (\i1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|count\(26),
	cin => \i1|Add0~49\,
	combout => \i1|Add0~50_combout\);

-- Location: LCCOMB_X1_Y15_N28
\i1|out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|out~feeder_combout\ = \i1|Add0~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i1|Add0~50_combout\,
	combout => \i1|out~feeder_combout\);

-- Location: FF_X1_Y15_N29
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

-- Location: CLKCTRL_G3
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

-- Location: FF_X28_Y31_N15
\i3|current_state.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s16~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s17~q\);

-- Location: FF_X28_Y31_N31
\i3|current_state.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s17~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s18~q\);

-- Location: FF_X28_Y31_N1
\i3|current_state.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s18~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s19~q\);

-- Location: LCCOMB_X28_Y31_N16
\i3|current_state.00000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.00000~0_combout\ = !\i3|current_state.s19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s19~q\,
	combout => \i3|current_state.00000~0_combout\);

-- Location: FF_X28_Y31_N17
\i3|current_state.00000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.00000~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.00000~q\);

-- Location: LCCOMB_X28_Y31_N12
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

-- Location: FF_X28_Y31_N13
\i3|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s1~q\);

-- Location: LCCOMB_X29_Y31_N30
\i3|current_state.s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s2~feeder_combout\ = \i3|current_state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s1~q\,
	combout => \i3|current_state.s2~feeder_combout\);

-- Location: FF_X29_Y31_N31
\i3|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s2~q\);

-- Location: FF_X29_Y31_N27
\i3|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s2~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s3~q\);

-- Location: LCCOMB_X29_Y31_N4
\i3|current_state.s4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s4~feeder_combout\ = \i3|current_state.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|current_state.s3~q\,
	combout => \i3|current_state.s4~feeder_combout\);

-- Location: FF_X29_Y31_N5
\i3|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s4~q\);

-- Location: FF_X29_Y31_N19
\i3|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s4~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s5~q\);

-- Location: LCCOMB_X28_Y31_N10
\i3|current_state.s6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s6~feeder_combout\ = \i3|current_state.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s5~q\,
	combout => \i3|current_state.s6~feeder_combout\);

-- Location: FF_X28_Y31_N11
\i3|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s6~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s6~q\);

-- Location: FF_X28_Y31_N3
\i3|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s6~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s7~q\);

-- Location: FF_X28_Y31_N21
\i3|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s7~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s8~q\);

-- Location: FF_X28_Y31_N7
\i3|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s8~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s9~q\);

-- Location: LCCOMB_X28_Y31_N4
\i3|current_state.s10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|current_state.s10~feeder_combout\ = \i3|current_state.s9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i3|current_state.s9~q\,
	combout => \i3|current_state.s10~feeder_combout\);

-- Location: FF_X28_Y31_N5
\i3|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	d => \i3|current_state.s10~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s10~q\);

-- Location: FF_X28_Y31_N25
\i3|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s10~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s11~q\);

-- Location: FF_X28_Y31_N29
\i3|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s11~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s12~q\);

-- Location: FF_X28_Y31_N23
\i3|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s12~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s13~q\);

-- Location: FF_X28_Y31_N9
\i3|current_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s13~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s14~q\);

-- Location: FF_X28_Y31_N27
\i3|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s14~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s15~q\);

-- Location: FF_X28_Y31_N19
\i3|current_state.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i1|out~clkctrl_outclk\,
	asdata => \i3|current_state.s15~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s16~q\);

-- Location: LCCOMB_X29_Y31_N28
\i3|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr0~1_combout\ = (\i3|current_state.s2~q\) # ((\i3|current_state.s10~q\) # ((\i3|current_state.s8~q\) # (!\i3|current_state.00000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s2~q\,
	datab => \i3|current_state.s10~q\,
	datac => \i3|current_state.00000~q\,
	datad => \i3|current_state.s8~q\,
	combout => \i3|WideOr0~1_combout\);

-- Location: LCCOMB_X28_Y31_N28
\i3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr0~0_combout\ = (\i3|current_state.s6~q\) # ((\i3|current_state.s14~q\) # ((\i3|current_state.s12~q\) # (\i3|current_state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s6~q\,
	datab => \i3|current_state.s14~q\,
	datac => \i3|current_state.s12~q\,
	datad => \i3|current_state.s4~q\,
	combout => \i3|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y31_N30
\i3|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr0~2_combout\ = (\i3|current_state.s16~q\) # ((\i3|WideOr0~1_combout\) # ((\i3|current_state.s18~q\) # (\i3|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|WideOr0~1_combout\,
	datac => \i3|current_state.s18~q\,
	datad => \i3|WideOr0~0_combout\,
	combout => \i3|WideOr0~2_combout\);

-- Location: LCCOMB_X29_Y31_N26
\i3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr1~0_combout\ = (!\i3|current_state.s2~q\ & (\i3|current_state.00000~q\ & (!\i3|current_state.s3~q\ & !\i3|current_state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s2~q\,
	datab => \i3|current_state.00000~q\,
	datac => \i3|current_state.s3~q\,
	datad => \i3|current_state.s1~q\,
	combout => \i3|WideOr1~0_combout\);

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

-- Location: LCCOMB_X20_Y33_N20
\i0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~1_combout\ = (\adc[3]~input_o\) # ((\adc[2]~input_o\ & (\adc[1]~input_o\ & \adc[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc[2]~input_o\,
	datab => \adc[1]~input_o\,
	datac => \adc[0]~input_o\,
	datad => \adc[3]~input_o\,
	combout => \i0|LessThan0~1_combout\);

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

-- Location: LCCOMB_X18_Y33_N24
\i0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~0_combout\ = (\adc[6]~input_o\) # (\adc[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc[6]~input_o\,
	datad => \adc[5]~input_o\,
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

-- Location: LCCOMB_X19_Y33_N0
\i0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|LessThan0~2_combout\ = (\adc[7]~input_o\ & ((\i0|LessThan0~0_combout\) # ((\i0|LessThan0~1_combout\ & \adc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|LessThan0~1_combout\,
	datab => \i0|LessThan0~0_combout\,
	datac => \adc[7]~input_o\,
	datad => \adc[4]~input_o\,
	combout => \i0|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y31_N20
\i3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr6~0_combout\ = (!\i3|current_state.s9~q\ & (\i3|current_state.00000~q\ & (!\i3|current_state.s8~q\ & !\i3|current_state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s9~q\,
	datab => \i3|current_state.00000~q\,
	datac => \i3|current_state.s8~q\,
	datad => \i3|current_state.s1~q\,
	combout => \i3|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y31_N8
\i3|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr9~0_combout\ = (\i3|current_state.s12~q\) # ((\i3|current_state.s7~q\) # ((\i3|current_state.s14~q\) # (\i3|current_state.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s12~q\,
	datab => \i3|current_state.s7~q\,
	datac => \i3|current_state.s14~q\,
	datad => \i3|current_state.s6~q\,
	combout => \i3|WideOr9~0_combout\);

-- Location: LCCOMB_X29_Y31_N8
\i3|WideOr9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr9~1_combout\ = (\i3|current_state.s13~q\) # (((\i3|current_state.s15~q\) # (\i3|WideOr9~0_combout\)) # (!\i3|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s13~q\,
	datab => \i3|WideOr6~0_combout\,
	datac => \i3|current_state.s15~q\,
	datad => \i3|WideOr9~0_combout\,
	combout => \i3|WideOr9~1_combout\);

-- Location: LCCOMB_X29_Y31_N18
\i3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~0_combout\ = (!\i3|current_state.s4~q\ & (!\i3|current_state.s5~q\ & !\i3|current_state.s12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|current_state.s4~q\,
	datac => \i3|current_state.s5~q\,
	datad => \i3|current_state.s12~q\,
	combout => \i3|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y31_N26
\i3|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr8~0_combout\ = ((\i3|current_state.s14~q\) # ((\i3|current_state.s15~q\) # (!\i3|WideOr1~0_combout\))) # (!\i3|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|WideOr5~0_combout\,
	datab => \i3|current_state.s14~q\,
	datac => \i3|current_state.s15~q\,
	datad => \i3|WideOr1~0_combout\,
	combout => \i3|WideOr8~0_combout\);

-- Location: LCCOMB_X28_Y31_N18
\i3|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr7~combout\ = (\i3|current_state.s12~q\) # ((\i3|current_state.s17~q\) # ((\i3|current_state.s16~q\) # (!\i3|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s12~q\,
	datab => \i3|current_state.s17~q\,
	datac => \i3|current_state.s16~q\,
	datad => \i3|WideOr6~0_combout\,
	combout => \i3|WideOr7~combout\);

-- Location: LCCOMB_X28_Y31_N22
\i3|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr6~combout\ = (\i3|current_state.s16~q\) # ((\i3|current_state.s17~q\) # ((\i3|current_state.s13~q\) # (!\i3|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|current_state.s17~q\,
	datac => \i3|current_state.s13~q\,
	datad => \i3|WideOr6~0_combout\,
	combout => \i3|WideOr6~combout\);

-- Location: LCCOMB_X28_Y31_N2
\i3|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~1_combout\ = (\i3|current_state.s17~q\) # ((\i3|current_state.s10~q\) # ((\i3|current_state.s7~q\) # (\i3|current_state.s16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s17~q\,
	datab => \i3|current_state.s10~q\,
	datac => \i3|current_state.s7~q\,
	datad => \i3|current_state.s16~q\,
	combout => \i3|WideOr5~1_combout\);

-- Location: LCCOMB_X28_Y31_N24
\i3|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~2_combout\ = ((\i3|current_state.s6~q\) # ((\i3|current_state.s11~q\) # (\i3|WideOr5~1_combout\))) # (!\i3|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|WideOr5~0_combout\,
	datab => \i3|current_state.s6~q\,
	datac => \i3|current_state.s11~q\,
	datad => \i3|WideOr5~1_combout\,
	combout => \i3|WideOr5~2_combout\);

-- Location: LCCOMB_X28_Y31_N0
\i3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr3~0_combout\ = (!\i3|current_state.s18~q\ & (!\i3|current_state.s17~q\ & (!\i3|current_state.s19~q\ & !\i3|current_state.s16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s18~q\,
	datab => \i3|current_state.s17~q\,
	datac => \i3|current_state.s19~q\,
	datad => \i3|current_state.s16~q\,
	combout => \i3|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y31_N6
\i3|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr4~combout\ = (!\i3|WideOr3~0_combout\) # (!\i3|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|WideOr1~0_combout\,
	datab => \i3|WideOr3~0_combout\,
	combout => \i3|WideOr4~combout\);

-- Location: LCCOMB_X28_Y31_N14
\i3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr2~0_combout\ = (!\i3|current_state.s16~q\ & (!\i3|current_state.s17~q\ & !\i3|current_state.s13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|current_state.s16~q\,
	datac => \i3|current_state.s17~q\,
	datad => \i3|current_state.s13~q\,
	combout => \i3|WideOr2~0_combout\);

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


