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

-- DATE "04/29/2022 17:26:34"

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
	en : OUT std_logic;
	rs : OUT std_logic;
	wr : OUT std_logic;
	led_state : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	clk_spd_test : OUT std_logic
	);
END temprature_sensor;

-- Design Ports Information
-- intr	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_state	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_spd_test	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk_spd_test : std_logic;
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
SIGNAL \clk_spd_test~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \i3|current_state.s8~feeder_combout\ : std_logic;
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
SIGNAL \count_temp[0]~72_combout\ : std_logic;
SIGNAL \count_temp[1]~24_combout\ : std_logic;
SIGNAL \count_temp[1]~25\ : std_logic;
SIGNAL \count_temp[2]~26_combout\ : std_logic;
SIGNAL \count_temp[2]~27\ : std_logic;
SIGNAL \count_temp[3]~28_combout\ : std_logic;
SIGNAL \count_temp[3]~29\ : std_logic;
SIGNAL \count_temp[4]~30_combout\ : std_logic;
SIGNAL \count_temp[4]~31\ : std_logic;
SIGNAL \count_temp[5]~32_combout\ : std_logic;
SIGNAL \count_temp[5]~33\ : std_logic;
SIGNAL \count_temp[6]~34_combout\ : std_logic;
SIGNAL \count_temp[6]~35\ : std_logic;
SIGNAL \count_temp[7]~36_combout\ : std_logic;
SIGNAL \count_temp[7]~37\ : std_logic;
SIGNAL \count_temp[8]~38_combout\ : std_logic;
SIGNAL \count_temp[8]~39\ : std_logic;
SIGNAL \count_temp[9]~40_combout\ : std_logic;
SIGNAL \count_temp[9]~41\ : std_logic;
SIGNAL \count_temp[10]~42_combout\ : std_logic;
SIGNAL \count_temp[10]~43\ : std_logic;
SIGNAL \count_temp[11]~44_combout\ : std_logic;
SIGNAL \count_temp[11]~45\ : std_logic;
SIGNAL \count_temp[12]~46_combout\ : std_logic;
SIGNAL \count_temp[12]~47\ : std_logic;
SIGNAL \count_temp[13]~48_combout\ : std_logic;
SIGNAL \count_temp[13]~49\ : std_logic;
SIGNAL \count_temp[14]~50_combout\ : std_logic;
SIGNAL \count_temp[14]~51\ : std_logic;
SIGNAL \count_temp[15]~52_combout\ : std_logic;
SIGNAL \count_temp[15]~53\ : std_logic;
SIGNAL \count_temp[16]~54_combout\ : std_logic;
SIGNAL \count_temp[16]~55\ : std_logic;
SIGNAL \count_temp[17]~56_combout\ : std_logic;
SIGNAL \count_temp[17]~57\ : std_logic;
SIGNAL \count_temp[18]~58_combout\ : std_logic;
SIGNAL \count_temp[18]~59\ : std_logic;
SIGNAL \count_temp[19]~60_combout\ : std_logic;
SIGNAL \count_temp[19]~61\ : std_logic;
SIGNAL \count_temp[20]~62_combout\ : std_logic;
SIGNAL \count_temp[20]~63\ : std_logic;
SIGNAL \count_temp[21]~64_combout\ : std_logic;
SIGNAL \count_temp[21]~65\ : std_logic;
SIGNAL \count_temp[22]~66_combout\ : std_logic;
SIGNAL \count_temp[22]~67\ : std_logic;
SIGNAL \count_temp[23]~68_combout\ : std_logic;
SIGNAL \count_temp[23]~69\ : std_logic;
SIGNAL \count_temp[24]~70_combout\ : std_logic;
SIGNAL count_temp : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
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
clk_spd_test <= ww_clk_spd_test;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
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

-- Location: IOOBUF_X7_Y34_N2
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X11_Y34_N2
\clk_spd_test~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_temp(24),
	devoe => ww_devoe,
	o => \clk_spd_test~output_o\);

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

-- Location: FF_X18_Y32_N15
\i3|current_state.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s16~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s17~q\);

-- Location: FF_X18_Y32_N5
\i3|current_state.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s17~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s18~q\);

-- Location: FF_X18_Y32_N19
\i3|current_state.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s18~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s19~q\);

-- Location: LCCOMB_X17_Y32_N20
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

-- Location: FF_X17_Y32_N21
\i3|current_state.00000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|current_state.00000~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.00000~q\);

-- Location: LCCOMB_X17_Y32_N28
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

-- Location: FF_X17_Y32_N29
\i3|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|current_state.s1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s1~q\);

-- Location: LCCOMB_X17_Y32_N26
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

-- Location: FF_X17_Y32_N27
\i3|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|current_state.s2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s2~q\);

-- Location: FF_X17_Y32_N31
\i3|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s2~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s3~q\);

-- Location: LCCOMB_X17_Y32_N4
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

-- Location: FF_X17_Y32_N5
\i3|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|current_state.s4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s4~q\);

-- Location: FF_X17_Y32_N13
\i3|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s4~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s5~q\);

-- Location: LCCOMB_X18_Y32_N30
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

-- Location: FF_X18_Y32_N31
\i3|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|current_state.s6~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s6~q\);

-- Location: FF_X18_Y32_N29
\i3|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s6~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s7~q\);

-- Location: LCCOMB_X18_Y32_N2
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

-- Location: FF_X18_Y32_N3
\i3|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|current_state.s8~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s8~q\);

-- Location: FF_X18_Y32_N17
\i3|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s8~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s9~q\);

-- Location: LCCOMB_X18_Y32_N8
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

-- Location: FF_X18_Y32_N9
\i3|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i3|current_state.s10~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s10~q\);

-- Location: FF_X18_Y32_N1
\i3|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s10~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s11~q\);

-- Location: FF_X18_Y32_N25
\i3|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s11~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s12~q\);

-- Location: FF_X18_Y32_N13
\i3|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s12~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s13~q\);

-- Location: FF_X18_Y32_N27
\i3|current_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s13~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s14~q\);

-- Location: FF_X18_Y32_N11
\i3|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s14~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s15~q\);

-- Location: FF_X18_Y32_N23
\i3|current_state.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i3|current_state.s15~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i3|current_state.s16~q\);

-- Location: LCCOMB_X17_Y32_N22
\i3|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr0~1_combout\ = (\i3|current_state.s8~q\) # ((\i3|current_state.s10~q\) # ((\i3|current_state.s2~q\) # (!\i3|current_state.00000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s8~q\,
	datab => \i3|current_state.s10~q\,
	datac => \i3|current_state.s2~q\,
	datad => \i3|current_state.00000~q\,
	combout => \i3|WideOr0~1_combout\);

-- Location: LCCOMB_X18_Y32_N6
\i3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr0~0_combout\ = (\i3|current_state.s14~q\) # ((\i3|current_state.s4~q\) # ((\i3|current_state.s6~q\) # (\i3|current_state.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s14~q\,
	datab => \i3|current_state.s4~q\,
	datac => \i3|current_state.s6~q\,
	datad => \i3|current_state.s12~q\,
	combout => \i3|WideOr0~0_combout\);

-- Location: LCCOMB_X18_Y32_N4
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

-- Location: LCCOMB_X17_Y32_N30
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

-- Location: LCCOMB_X18_Y33_N24
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

-- Location: LCCOMB_X18_Y32_N16
\i3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr6~0_combout\ = (!\i3|current_state.s1~q\ & (!\i3|current_state.s8~q\ & (!\i3|current_state.s9~q\ & \i3|current_state.00000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s1~q\,
	datab => \i3|current_state.s8~q\,
	datac => \i3|current_state.s9~q\,
	datad => \i3|current_state.00000~q\,
	combout => \i3|WideOr6~0_combout\);

-- Location: LCCOMB_X18_Y32_N26
\i3|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr9~0_combout\ = (\i3|current_state.s6~q\) # ((\i3|current_state.s12~q\) # ((\i3|current_state.s14~q\) # (\i3|current_state.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s6~q\,
	datab => \i3|current_state.s12~q\,
	datac => \i3|current_state.s14~q\,
	datad => \i3|current_state.s7~q\,
	combout => \i3|WideOr9~0_combout\);

-- Location: LCCOMB_X18_Y32_N20
\i3|WideOr9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr9~1_combout\ = ((\i3|current_state.s13~q\) # ((\i3|current_state.s15~q\) # (\i3|WideOr9~0_combout\))) # (!\i3|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|WideOr6~0_combout\,
	datab => \i3|current_state.s13~q\,
	datac => \i3|current_state.s15~q\,
	datad => \i3|WideOr9~0_combout\,
	combout => \i3|WideOr9~1_combout\);

-- Location: LCCOMB_X17_Y32_N12
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

-- Location: LCCOMB_X18_Y32_N10
\i3|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr8~0_combout\ = (\i3|current_state.s14~q\) # (((\i3|current_state.s15~q\) # (!\i3|WideOr5~0_combout\)) # (!\i3|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s14~q\,
	datab => \i3|WideOr1~0_combout\,
	datac => \i3|current_state.s15~q\,
	datad => \i3|WideOr5~0_combout\,
	combout => \i3|WideOr8~0_combout\);

-- Location: LCCOMB_X18_Y32_N22
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

-- Location: LCCOMB_X18_Y32_N12
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

-- Location: LCCOMB_X18_Y32_N28
\i3|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~1_combout\ = (\i3|current_state.s16~q\) # ((\i3|current_state.s17~q\) # ((\i3|current_state.s7~q\) # (\i3|current_state.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|current_state.s17~q\,
	datac => \i3|current_state.s7~q\,
	datad => \i3|current_state.s10~q\,
	combout => \i3|WideOr5~1_combout\);

-- Location: LCCOMB_X18_Y32_N0
\i3|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr5~2_combout\ = (\i3|current_state.s6~q\) # ((\i3|WideOr5~1_combout\) # ((\i3|current_state.s11~q\) # (!\i3|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s6~q\,
	datab => \i3|WideOr5~1_combout\,
	datac => \i3|current_state.s11~q\,
	datad => \i3|WideOr5~0_combout\,
	combout => \i3|WideOr5~2_combout\);

-- Location: LCCOMB_X18_Y32_N18
\i3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr3~0_combout\ = (!\i3|current_state.s16~q\ & (!\i3|current_state.s18~q\ & (!\i3|current_state.s19~q\ & !\i3|current_state.s17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|current_state.s18~q\,
	datac => \i3|current_state.s19~q\,
	datad => \i3|current_state.s17~q\,
	combout => \i3|WideOr3~0_combout\);

-- Location: LCCOMB_X18_Y32_N24
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

-- Location: LCCOMB_X18_Y32_N14
\i3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|WideOr2~0_combout\ = (!\i3|current_state.s16~q\ & (!\i3|current_state.s13~q\ & !\i3|current_state.s17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|current_state.s16~q\,
	datab => \i3|current_state.s13~q\,
	datac => \i3|current_state.s17~q\,
	combout => \i3|WideOr2~0_combout\);

-- Location: LCCOMB_X12_Y32_N4
\count_temp[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[0]~72_combout\ = !count_temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_temp(0),
	combout => \count_temp[0]~72_combout\);

-- Location: FF_X12_Y32_N5
\count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(0));

-- Location: LCCOMB_X12_Y32_N8
\count_temp[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[1]~24_combout\ = (count_temp(0) & (count_temp(1) $ (VCC))) # (!count_temp(0) & (count_temp(1) & VCC))
-- \count_temp[1]~25\ = CARRY((count_temp(0) & count_temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(0),
	datab => count_temp(1),
	datad => VCC,
	combout => \count_temp[1]~24_combout\,
	cout => \count_temp[1]~25\);

-- Location: FF_X12_Y32_N9
\count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(1));

-- Location: LCCOMB_X12_Y32_N10
\count_temp[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[2]~26_combout\ = (count_temp(2) & (!\count_temp[1]~25\)) # (!count_temp(2) & ((\count_temp[1]~25\) # (GND)))
-- \count_temp[2]~27\ = CARRY((!\count_temp[1]~25\) # (!count_temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(2),
	datad => VCC,
	cin => \count_temp[1]~25\,
	combout => \count_temp[2]~26_combout\,
	cout => \count_temp[2]~27\);

-- Location: FF_X12_Y32_N11
\count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(2));

-- Location: LCCOMB_X12_Y32_N12
\count_temp[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[3]~28_combout\ = (count_temp(3) & (\count_temp[2]~27\ $ (GND))) # (!count_temp(3) & (!\count_temp[2]~27\ & VCC))
-- \count_temp[3]~29\ = CARRY((count_temp(3) & !\count_temp[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(3),
	datad => VCC,
	cin => \count_temp[2]~27\,
	combout => \count_temp[3]~28_combout\,
	cout => \count_temp[3]~29\);

-- Location: FF_X12_Y32_N13
\count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(3));

-- Location: LCCOMB_X12_Y32_N14
\count_temp[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[4]~30_combout\ = (count_temp(4) & (!\count_temp[3]~29\)) # (!count_temp(4) & ((\count_temp[3]~29\) # (GND)))
-- \count_temp[4]~31\ = CARRY((!\count_temp[3]~29\) # (!count_temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(4),
	datad => VCC,
	cin => \count_temp[3]~29\,
	combout => \count_temp[4]~30_combout\,
	cout => \count_temp[4]~31\);

-- Location: FF_X12_Y32_N15
\count_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(4));

-- Location: LCCOMB_X12_Y32_N16
\count_temp[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[5]~32_combout\ = (count_temp(5) & (\count_temp[4]~31\ $ (GND))) # (!count_temp(5) & (!\count_temp[4]~31\ & VCC))
-- \count_temp[5]~33\ = CARRY((count_temp(5) & !\count_temp[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(5),
	datad => VCC,
	cin => \count_temp[4]~31\,
	combout => \count_temp[5]~32_combout\,
	cout => \count_temp[5]~33\);

-- Location: FF_X12_Y32_N17
\count_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(5));

-- Location: LCCOMB_X12_Y32_N18
\count_temp[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[6]~34_combout\ = (count_temp(6) & (!\count_temp[5]~33\)) # (!count_temp(6) & ((\count_temp[5]~33\) # (GND)))
-- \count_temp[6]~35\ = CARRY((!\count_temp[5]~33\) # (!count_temp(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(6),
	datad => VCC,
	cin => \count_temp[5]~33\,
	combout => \count_temp[6]~34_combout\,
	cout => \count_temp[6]~35\);

-- Location: FF_X12_Y32_N19
\count_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(6));

-- Location: LCCOMB_X12_Y32_N20
\count_temp[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[7]~36_combout\ = (count_temp(7) & (\count_temp[6]~35\ $ (GND))) # (!count_temp(7) & (!\count_temp[6]~35\ & VCC))
-- \count_temp[7]~37\ = CARRY((count_temp(7) & !\count_temp[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(7),
	datad => VCC,
	cin => \count_temp[6]~35\,
	combout => \count_temp[7]~36_combout\,
	cout => \count_temp[7]~37\);

-- Location: FF_X12_Y32_N21
\count_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(7));

-- Location: LCCOMB_X12_Y32_N22
\count_temp[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[8]~38_combout\ = (count_temp(8) & (!\count_temp[7]~37\)) # (!count_temp(8) & ((\count_temp[7]~37\) # (GND)))
-- \count_temp[8]~39\ = CARRY((!\count_temp[7]~37\) # (!count_temp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(8),
	datad => VCC,
	cin => \count_temp[7]~37\,
	combout => \count_temp[8]~38_combout\,
	cout => \count_temp[8]~39\);

-- Location: FF_X12_Y32_N23
\count_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(8));

-- Location: LCCOMB_X12_Y32_N24
\count_temp[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[9]~40_combout\ = (count_temp(9) & (\count_temp[8]~39\ $ (GND))) # (!count_temp(9) & (!\count_temp[8]~39\ & VCC))
-- \count_temp[9]~41\ = CARRY((count_temp(9) & !\count_temp[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(9),
	datad => VCC,
	cin => \count_temp[8]~39\,
	combout => \count_temp[9]~40_combout\,
	cout => \count_temp[9]~41\);

-- Location: FF_X12_Y32_N25
\count_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(9));

-- Location: LCCOMB_X12_Y32_N26
\count_temp[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[10]~42_combout\ = (count_temp(10) & (!\count_temp[9]~41\)) # (!count_temp(10) & ((\count_temp[9]~41\) # (GND)))
-- \count_temp[10]~43\ = CARRY((!\count_temp[9]~41\) # (!count_temp(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(10),
	datad => VCC,
	cin => \count_temp[9]~41\,
	combout => \count_temp[10]~42_combout\,
	cout => \count_temp[10]~43\);

-- Location: FF_X12_Y32_N27
\count_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(10));

-- Location: LCCOMB_X12_Y32_N28
\count_temp[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[11]~44_combout\ = (count_temp(11) & (\count_temp[10]~43\ $ (GND))) # (!count_temp(11) & (!\count_temp[10]~43\ & VCC))
-- \count_temp[11]~45\ = CARRY((count_temp(11) & !\count_temp[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(11),
	datad => VCC,
	cin => \count_temp[10]~43\,
	combout => \count_temp[11]~44_combout\,
	cout => \count_temp[11]~45\);

-- Location: FF_X12_Y32_N29
\count_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(11));

-- Location: LCCOMB_X12_Y32_N30
\count_temp[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[12]~46_combout\ = (count_temp(12) & (!\count_temp[11]~45\)) # (!count_temp(12) & ((\count_temp[11]~45\) # (GND)))
-- \count_temp[12]~47\ = CARRY((!\count_temp[11]~45\) # (!count_temp(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(12),
	datad => VCC,
	cin => \count_temp[11]~45\,
	combout => \count_temp[12]~46_combout\,
	cout => \count_temp[12]~47\);

-- Location: FF_X12_Y32_N31
\count_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(12));

-- Location: LCCOMB_X12_Y31_N0
\count_temp[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[13]~48_combout\ = (count_temp(13) & (\count_temp[12]~47\ $ (GND))) # (!count_temp(13) & (!\count_temp[12]~47\ & VCC))
-- \count_temp[13]~49\ = CARRY((count_temp(13) & !\count_temp[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(13),
	datad => VCC,
	cin => \count_temp[12]~47\,
	combout => \count_temp[13]~48_combout\,
	cout => \count_temp[13]~49\);

-- Location: FF_X12_Y31_N1
\count_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(13));

-- Location: LCCOMB_X12_Y31_N2
\count_temp[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[14]~50_combout\ = (count_temp(14) & (!\count_temp[13]~49\)) # (!count_temp(14) & ((\count_temp[13]~49\) # (GND)))
-- \count_temp[14]~51\ = CARRY((!\count_temp[13]~49\) # (!count_temp(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(14),
	datad => VCC,
	cin => \count_temp[13]~49\,
	combout => \count_temp[14]~50_combout\,
	cout => \count_temp[14]~51\);

-- Location: FF_X12_Y31_N3
\count_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(14));

-- Location: LCCOMB_X12_Y31_N4
\count_temp[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[15]~52_combout\ = (count_temp(15) & (\count_temp[14]~51\ $ (GND))) # (!count_temp(15) & (!\count_temp[14]~51\ & VCC))
-- \count_temp[15]~53\ = CARRY((count_temp(15) & !\count_temp[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(15),
	datad => VCC,
	cin => \count_temp[14]~51\,
	combout => \count_temp[15]~52_combout\,
	cout => \count_temp[15]~53\);

-- Location: FF_X12_Y31_N5
\count_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(15));

-- Location: LCCOMB_X12_Y31_N6
\count_temp[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[16]~54_combout\ = (count_temp(16) & (!\count_temp[15]~53\)) # (!count_temp(16) & ((\count_temp[15]~53\) # (GND)))
-- \count_temp[16]~55\ = CARRY((!\count_temp[15]~53\) # (!count_temp(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(16),
	datad => VCC,
	cin => \count_temp[15]~53\,
	combout => \count_temp[16]~54_combout\,
	cout => \count_temp[16]~55\);

-- Location: FF_X12_Y31_N7
\count_temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(16));

-- Location: LCCOMB_X12_Y31_N8
\count_temp[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[17]~56_combout\ = (count_temp(17) & (\count_temp[16]~55\ $ (GND))) # (!count_temp(17) & (!\count_temp[16]~55\ & VCC))
-- \count_temp[17]~57\ = CARRY((count_temp(17) & !\count_temp[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(17),
	datad => VCC,
	cin => \count_temp[16]~55\,
	combout => \count_temp[17]~56_combout\,
	cout => \count_temp[17]~57\);

-- Location: FF_X12_Y31_N9
\count_temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(17));

-- Location: LCCOMB_X12_Y31_N10
\count_temp[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[18]~58_combout\ = (count_temp(18) & (!\count_temp[17]~57\)) # (!count_temp(18) & ((\count_temp[17]~57\) # (GND)))
-- \count_temp[18]~59\ = CARRY((!\count_temp[17]~57\) # (!count_temp(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(18),
	datad => VCC,
	cin => \count_temp[17]~57\,
	combout => \count_temp[18]~58_combout\,
	cout => \count_temp[18]~59\);

-- Location: FF_X12_Y31_N11
\count_temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(18));

-- Location: LCCOMB_X12_Y31_N12
\count_temp[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[19]~60_combout\ = (count_temp(19) & (\count_temp[18]~59\ $ (GND))) # (!count_temp(19) & (!\count_temp[18]~59\ & VCC))
-- \count_temp[19]~61\ = CARRY((count_temp(19) & !\count_temp[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(19),
	datad => VCC,
	cin => \count_temp[18]~59\,
	combout => \count_temp[19]~60_combout\,
	cout => \count_temp[19]~61\);

-- Location: FF_X12_Y31_N13
\count_temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(19));

-- Location: LCCOMB_X12_Y31_N14
\count_temp[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[20]~62_combout\ = (count_temp(20) & (!\count_temp[19]~61\)) # (!count_temp(20) & ((\count_temp[19]~61\) # (GND)))
-- \count_temp[20]~63\ = CARRY((!\count_temp[19]~61\) # (!count_temp(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(20),
	datad => VCC,
	cin => \count_temp[19]~61\,
	combout => \count_temp[20]~62_combout\,
	cout => \count_temp[20]~63\);

-- Location: FF_X12_Y31_N15
\count_temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(20));

-- Location: LCCOMB_X12_Y31_N16
\count_temp[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[21]~64_combout\ = (count_temp(21) & (\count_temp[20]~63\ $ (GND))) # (!count_temp(21) & (!\count_temp[20]~63\ & VCC))
-- \count_temp[21]~65\ = CARRY((count_temp(21) & !\count_temp[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(21),
	datad => VCC,
	cin => \count_temp[20]~63\,
	combout => \count_temp[21]~64_combout\,
	cout => \count_temp[21]~65\);

-- Location: FF_X12_Y31_N17
\count_temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(21));

-- Location: LCCOMB_X12_Y31_N18
\count_temp[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[22]~66_combout\ = (count_temp(22) & (!\count_temp[21]~65\)) # (!count_temp(22) & ((\count_temp[21]~65\) # (GND)))
-- \count_temp[22]~67\ = CARRY((!\count_temp[21]~65\) # (!count_temp(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(22),
	datad => VCC,
	cin => \count_temp[21]~65\,
	combout => \count_temp[22]~66_combout\,
	cout => \count_temp[22]~67\);

-- Location: FF_X12_Y31_N19
\count_temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(22));

-- Location: LCCOMB_X12_Y31_N20
\count_temp[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[23]~68_combout\ = (count_temp(23) & (\count_temp[22]~67\ $ (GND))) # (!count_temp(23) & (!\count_temp[22]~67\ & VCC))
-- \count_temp[23]~69\ = CARRY((count_temp(23) & !\count_temp[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_temp(23),
	datad => VCC,
	cin => \count_temp[22]~67\,
	combout => \count_temp[23]~68_combout\,
	cout => \count_temp[23]~69\);

-- Location: FF_X12_Y31_N21
\count_temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(23));

-- Location: LCCOMB_X12_Y31_N22
\count_temp[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_temp[24]~70_combout\ = count_temp(24) $ (\count_temp[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_temp(24),
	cin => \count_temp[23]~69\,
	combout => \count_temp[24]~70_combout\);

-- Location: FF_X12_Y31_N23
\count_temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_temp[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_temp(24));

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

ww_clk_spd_test <= \clk_spd_test~output_o\;
END structure;


