-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/31/2021 23:37:33"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clk : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(15 DOWNTO 0)
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- pb[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[10]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[11]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[13]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \leds[12]~output_o\ : std_logic;
SIGNAL \leds[13]~output_o\ : std_logic;
SIGNAL \leds[14]~output_o\ : std_logic;
SIGNAL \leds[15]~output_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \Extender_SM|previous_extender_toggle~q\ : std_logic;
SIGNAL \Extender_SM|Selector1~0_combout\ : std_logic;
SIGNAL \Extender_bsr|sreg~0_combout\ : std_logic;
SIGNAL \Extender_SM|Clk_en~0_combout\ : std_logic;
SIGNAL \Extender_bsr|sreg~3_combout\ : std_logic;
SIGNAL \Extender_bsr|sreg~2_combout\ : std_logic;
SIGNAL \Extender_bsr|sreg~1_combout\ : std_logic;
SIGNAL \Extender_SM|Selector0~0_combout\ : std_logic;
SIGNAL \Extender_SM|Selector3~0_combout\ : std_logic;
SIGNAL \Extender_SM|current_state.S3~q\ : std_logic;
SIGNAL \Extender_SM|Selector0~1_combout\ : std_logic;
SIGNAL \Extender_SM|current_state.S0~q\ : std_logic;
SIGNAL \Extender_SM|Selector2~0_combout\ : std_logic;
SIGNAL \Extender_SM|Selector1~1_combout\ : std_logic;
SIGNAL \Extender_SM|current_state.S1~q\ : std_logic;
SIGNAL \Extender_SM|Selector2~1_combout\ : std_logic;
SIGNAL \Extender_SM|current_state.S2~q\ : std_logic;
SIGNAL \g_controller|sreg~0_combout\ : std_logic;
SIGNAL \g_controller|sreg~q\ : std_logic;
SIGNAL \Extender_bsr|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_pb[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_pb[0]~input_o\ <= NOT \pb[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X22_Y25_N9
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X31_Y7_N9
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_controller|sreg~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Extender_bsr|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X31_Y6_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Extender_bsr|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X31_Y7_N23
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Extender_bsr|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Extender_bsr|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X22_Y25_N30
\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[12]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\leds[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[13]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\leds[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[14]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\leds[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[15]~output_o\);

-- Location: IOIBUF_X31_Y7_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G3
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y6_N1
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G4
\rst_n~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: FF_X29_Y7_N27
\Extender_SM|previous_extender_toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \pb[1]~input_o\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_SM|previous_extender_toggle~q\);

-- Location: LCCOMB_X29_Y7_N26
\Extender_SM|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Selector1~0_combout\ = (!\pb[1]~input_o\ & \Extender_SM|previous_extender_toggle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datac => \Extender_SM|previous_extender_toggle~q\,
	combout => \Extender_SM|Selector1~0_combout\);

-- Location: LCCOMB_X29_Y7_N8
\Extender_bsr|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_bsr|sreg~0_combout\ = (\Extender_bsr|sreg\(1) & ((\Extender_SM|current_state.S1~q\) # (!\Extender_SM|current_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_bsr|sreg\(1),
	datac => \Extender_SM|current_state.S1~q\,
	datad => \Extender_SM|current_state.S0~q\,
	combout => \Extender_bsr|sreg~0_combout\);

-- Location: LCCOMB_X29_Y7_N6
\Extender_SM|Clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Clk_en~0_combout\ = (!\Extender_SM|current_state.S2~q\ & \Extender_SM|current_state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Extender_SM|current_state.S2~q\,
	datad => \Extender_SM|current_state.S0~q\,
	combout => \Extender_SM|Clk_en~0_combout\);

-- Location: FF_X29_Y7_N9
\Extender_bsr|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_bsr|sreg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Extender_SM|Clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_bsr|sreg\(0));

-- Location: LCCOMB_X29_Y7_N18
\Extender_bsr|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_bsr|sreg~3_combout\ = (\Extender_bsr|sreg\(2)) # ((\Extender_SM|current_state.S1~q\) # (!\Extender_SM|current_state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_bsr|sreg\(2),
	datac => \Extender_SM|current_state.S1~q\,
	datad => \Extender_SM|current_state.S0~q\,
	combout => \Extender_bsr|sreg~3_combout\);

-- Location: FF_X29_Y7_N19
\Extender_bsr|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_bsr|sreg~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Extender_SM|Clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_bsr|sreg\(3));

-- Location: LCCOMB_X29_Y7_N28
\Extender_bsr|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_bsr|sreg~2_combout\ = (\Extender_SM|current_state.S1~q\ & (\Extender_bsr|sreg\(3))) # (!\Extender_SM|current_state.S1~q\ & ((\Extender_SM|current_state.S0~q\ & ((\Extender_bsr|sreg\(1)))) # (!\Extender_SM|current_state.S0~q\ & 
-- (\Extender_bsr|sreg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_bsr|sreg\(3),
	datab => \Extender_bsr|sreg\(1),
	datac => \Extender_SM|current_state.S1~q\,
	datad => \Extender_SM|current_state.S0~q\,
	combout => \Extender_bsr|sreg~2_combout\);

-- Location: FF_X29_Y7_N29
\Extender_bsr|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_bsr|sreg~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Extender_SM|Clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_bsr|sreg\(2));

-- Location: LCCOMB_X29_Y7_N22
\Extender_bsr|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_bsr|sreg~1_combout\ = (\Extender_SM|current_state.S1~q\ & (((\Extender_bsr|sreg\(2))))) # (!\Extender_SM|current_state.S1~q\ & ((\Extender_SM|current_state.S0~q\ & (\Extender_bsr|sreg\(0))) # (!\Extender_SM|current_state.S0~q\ & 
-- ((\Extender_bsr|sreg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_SM|current_state.S1~q\,
	datab => \Extender_SM|current_state.S0~q\,
	datac => \Extender_bsr|sreg\(0),
	datad => \Extender_bsr|sreg\(2),
	combout => \Extender_bsr|sreg~1_combout\);

-- Location: FF_X29_Y7_N23
\Extender_bsr|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_bsr|sreg~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Extender_SM|Clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_bsr|sreg\(1));

-- Location: LCCOMB_X29_Y7_N10
\Extender_SM|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Selector0~0_combout\ = (!\Extender_bsr|sreg\(1) & (!\Extender_bsr|sreg\(3) & (!\Extender_bsr|sreg\(0) & !\Extender_bsr|sreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_bsr|sreg\(1),
	datab => \Extender_bsr|sreg\(3),
	datac => \Extender_bsr|sreg\(0),
	datad => \Extender_bsr|sreg\(2),
	combout => \Extender_SM|Selector0~0_combout\);

-- Location: LCCOMB_X29_Y7_N16
\Extender_SM|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Selector3~0_combout\ = (\Extender_SM|Selector1~0_combout\ & ((\Extender_SM|current_state.S2~q\) # ((\Extender_SM|current_state.S3~q\ & !\Extender_SM|Selector0~0_combout\)))) # (!\Extender_SM|Selector1~0_combout\ & 
-- (((\Extender_SM|current_state.S3~q\ & !\Extender_SM|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_SM|Selector1~0_combout\,
	datab => \Extender_SM|current_state.S2~q\,
	datac => \Extender_SM|current_state.S3~q\,
	datad => \Extender_SM|Selector0~0_combout\,
	combout => \Extender_SM|Selector3~0_combout\);

-- Location: FF_X29_Y7_N17
\Extender_SM|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_SM|Selector3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_SM|current_state.S3~q\);

-- Location: LCCOMB_X29_Y7_N12
\Extender_SM|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Selector0~1_combout\ = (\Extender_SM|Selector1~0_combout\ & (((!\Extender_SM|Selector0~0_combout\)) # (!\Extender_SM|current_state.S3~q\))) # (!\Extender_SM|Selector1~0_combout\ & (\Extender_SM|current_state.S0~q\ & 
-- ((!\Extender_SM|Selector0~0_combout\) # (!\Extender_SM|current_state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_SM|Selector1~0_combout\,
	datab => \Extender_SM|current_state.S3~q\,
	datac => \Extender_SM|current_state.S0~q\,
	datad => \Extender_SM|Selector0~0_combout\,
	combout => \Extender_SM|Selector0~1_combout\);

-- Location: FF_X29_Y7_N13
\Extender_SM|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_SM|Selector0~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_SM|current_state.S0~q\);

-- Location: LCCOMB_X29_Y7_N24
\Extender_SM|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Selector2~0_combout\ = (\Extender_bsr|sreg\(1) & (\Extender_bsr|sreg\(3) & (\Extender_bsr|sreg\(0) & \Extender_bsr|sreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_bsr|sreg\(1),
	datab => \Extender_bsr|sreg\(3),
	datac => \Extender_bsr|sreg\(0),
	datad => \Extender_bsr|sreg\(2),
	combout => \Extender_SM|Selector2~0_combout\);

-- Location: LCCOMB_X29_Y7_N14
\Extender_SM|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Selector1~1_combout\ = (\Extender_SM|Selector1~0_combout\ & (((\Extender_SM|current_state.S1~q\ & !\Extender_SM|Selector2~0_combout\)) # (!\Extender_SM|current_state.S0~q\))) # (!\Extender_SM|Selector1~0_combout\ & 
-- (((\Extender_SM|current_state.S1~q\ & !\Extender_SM|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_SM|Selector1~0_combout\,
	datab => \Extender_SM|current_state.S0~q\,
	datac => \Extender_SM|current_state.S1~q\,
	datad => \Extender_SM|Selector2~0_combout\,
	combout => \Extender_SM|Selector1~1_combout\);

-- Location: FF_X29_Y7_N15
\Extender_SM|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_SM|Selector1~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_SM|current_state.S1~q\);

-- Location: LCCOMB_X29_Y7_N20
\Extender_SM|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Extender_SM|Selector2~1_combout\ = (\Extender_SM|Selector1~0_combout\ & (\Extender_SM|current_state.S1~q\ & ((\Extender_SM|Selector2~0_combout\)))) # (!\Extender_SM|Selector1~0_combout\ & ((\Extender_SM|current_state.S2~q\) # 
-- ((\Extender_SM|current_state.S1~q\ & \Extender_SM|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Extender_SM|Selector1~0_combout\,
	datab => \Extender_SM|current_state.S1~q\,
	datac => \Extender_SM|current_state.S2~q\,
	datad => \Extender_SM|Selector2~0_combout\,
	combout => \Extender_SM|Selector2~1_combout\);

-- Location: FF_X29_Y7_N21
\Extender_SM|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Extender_SM|Selector2~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Extender_SM|current_state.S2~q\);

-- Location: LCCOMB_X30_Y7_N16
\g_controller|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g_controller|sreg~0_combout\ = \g_controller|sreg~q\ $ (\Extender_SM|current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g_controller|sreg~q\,
	datad => \Extender_SM|current_state.S2~q\,
	combout => \g_controller|sreg~0_combout\);

-- Location: FF_X30_Y7_N17
\g_controller|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[0]~input_o\,
	d => \g_controller|sreg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_controller|sreg~q\);

-- Location: IOIBUF_X31_Y22_N15
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N29
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N29
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X24_Y25_N8
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X29_Y25_N1
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X15_Y0_N8
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X11_Y25_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X31_Y6_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X24_Y25_N1
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;

ww_leds(12) <= \leds[12]~output_o\;

ww_leds(13) <= \leds[13]~output_o\;

ww_leds(14) <= \leds[14]~output_o\;

ww_leds(15) <= \leds[15]~output_o\;
END structure;


