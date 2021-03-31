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

-- DATE "03/31/2021 02:09:46"

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
-- rst_n	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[10]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[11]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[13]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[14]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[15]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \pb[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
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
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[0]~8_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \pb[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \UDBC|process_0~0_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[0]~9\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[1]~10_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[1]~11\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[2]~12_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[2]~13\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[3]~14_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[3]~15\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[4]~16_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[4]~17\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[5]~18_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[5]~19\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[6]~20_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[6]~21\ : std_logic;
SIGNAL \UDBC|ud_bin_counter[7]~22_combout\ : std_logic;
SIGNAL \UDBC|ud_bin_counter\ : std_logic_vector(7 DOWNTO 0);

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

\pb[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pb[0]~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
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

-- Location: IOOBUF_X17_Y0_N30
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(0),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(1),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(2),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(3),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(4),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(5),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(6),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDBC|ud_bin_counter\(7),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
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

-- Location: IOOBUF_X10_Y20_N16
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

-- Location: IOOBUF_X17_Y0_N9
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

-- Location: IOOBUF_X27_Y0_N16
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

-- Location: IOOBUF_X27_Y25_N30
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

-- Location: IOOBUF_X3_Y10_N9
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

-- Location: IOOBUF_X6_Y0_N2
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

-- Location: IOOBUF_X9_Y0_N30
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

-- Location: LCCOMB_X15_Y1_N14
\UDBC|ud_bin_counter[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[0]~8_combout\ = \UDBC|ud_bin_counter\(0) $ (VCC)
-- \UDBC|ud_bin_counter[0]~9\ = CARRY(\UDBC|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDBC|ud_bin_counter\(0),
	datad => VCC,
	combout => \UDBC|ud_bin_counter[0]~8_combout\,
	cout => \UDBC|ud_bin_counter[0]~9\);

-- Location: IOIBUF_X0_Y6_N22
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

-- Location: CLKCTRL_G4
\pb[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pb[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pb[0]~inputclkctrl_outclk\);

-- Location: IOIBUF_X15_Y0_N8
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

-- Location: FF_X15_Y1_N15
\UDBC|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[0]~8_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(0));

-- Location: IOIBUF_X15_Y0_N15
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

-- Location: LCCOMB_X15_Y1_N12
\UDBC|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|process_0~0_combout\ = (\sw[0]~input_o\ & \sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \UDBC|process_0~0_combout\);

-- Location: LCCOMB_X15_Y1_N16
\UDBC|ud_bin_counter[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[1]~10_combout\ = (\UDBC|process_0~0_combout\ & ((\UDBC|ud_bin_counter\(1) & (!\UDBC|ud_bin_counter[0]~9\)) # (!\UDBC|ud_bin_counter\(1) & ((\UDBC|ud_bin_counter[0]~9\) # (GND))))) # (!\UDBC|process_0~0_combout\ & 
-- ((\UDBC|ud_bin_counter\(1) & (\UDBC|ud_bin_counter[0]~9\ & VCC)) # (!\UDBC|ud_bin_counter\(1) & (!\UDBC|ud_bin_counter[0]~9\))))
-- \UDBC|ud_bin_counter[1]~11\ = CARRY((\UDBC|process_0~0_combout\ & ((!\UDBC|ud_bin_counter[0]~9\) # (!\UDBC|ud_bin_counter\(1)))) # (!\UDBC|process_0~0_combout\ & (!\UDBC|ud_bin_counter\(1) & !\UDBC|ud_bin_counter[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDBC|process_0~0_combout\,
	datab => \UDBC|ud_bin_counter\(1),
	datad => VCC,
	cin => \UDBC|ud_bin_counter[0]~9\,
	combout => \UDBC|ud_bin_counter[1]~10_combout\,
	cout => \UDBC|ud_bin_counter[1]~11\);

-- Location: FF_X15_Y1_N17
\UDBC|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[1]~10_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(1));

-- Location: LCCOMB_X15_Y1_N18
\UDBC|ud_bin_counter[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[2]~12_combout\ = ((\UDBC|process_0~0_combout\ $ (\UDBC|ud_bin_counter\(2) $ (\UDBC|ud_bin_counter[1]~11\)))) # (GND)
-- \UDBC|ud_bin_counter[2]~13\ = CARRY((\UDBC|process_0~0_combout\ & (\UDBC|ud_bin_counter\(2) & !\UDBC|ud_bin_counter[1]~11\)) # (!\UDBC|process_0~0_combout\ & ((\UDBC|ud_bin_counter\(2)) # (!\UDBC|ud_bin_counter[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDBC|process_0~0_combout\,
	datab => \UDBC|ud_bin_counter\(2),
	datad => VCC,
	cin => \UDBC|ud_bin_counter[1]~11\,
	combout => \UDBC|ud_bin_counter[2]~12_combout\,
	cout => \UDBC|ud_bin_counter[2]~13\);

-- Location: FF_X15_Y1_N19
\UDBC|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[2]~12_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(2));

-- Location: LCCOMB_X15_Y1_N20
\UDBC|ud_bin_counter[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[3]~14_combout\ = (\UDBC|process_0~0_combout\ & ((\UDBC|ud_bin_counter\(3) & (!\UDBC|ud_bin_counter[2]~13\)) # (!\UDBC|ud_bin_counter\(3) & ((\UDBC|ud_bin_counter[2]~13\) # (GND))))) # (!\UDBC|process_0~0_combout\ & 
-- ((\UDBC|ud_bin_counter\(3) & (\UDBC|ud_bin_counter[2]~13\ & VCC)) # (!\UDBC|ud_bin_counter\(3) & (!\UDBC|ud_bin_counter[2]~13\))))
-- \UDBC|ud_bin_counter[3]~15\ = CARRY((\UDBC|process_0~0_combout\ & ((!\UDBC|ud_bin_counter[2]~13\) # (!\UDBC|ud_bin_counter\(3)))) # (!\UDBC|process_0~0_combout\ & (!\UDBC|ud_bin_counter\(3) & !\UDBC|ud_bin_counter[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDBC|process_0~0_combout\,
	datab => \UDBC|ud_bin_counter\(3),
	datad => VCC,
	cin => \UDBC|ud_bin_counter[2]~13\,
	combout => \UDBC|ud_bin_counter[3]~14_combout\,
	cout => \UDBC|ud_bin_counter[3]~15\);

-- Location: FF_X15_Y1_N21
\UDBC|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[3]~14_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(3));

-- Location: LCCOMB_X15_Y1_N22
\UDBC|ud_bin_counter[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[4]~16_combout\ = ((\UDBC|ud_bin_counter\(4) $ (\UDBC|process_0~0_combout\ $ (\UDBC|ud_bin_counter[3]~15\)))) # (GND)
-- \UDBC|ud_bin_counter[4]~17\ = CARRY((\UDBC|ud_bin_counter\(4) & ((!\UDBC|ud_bin_counter[3]~15\) # (!\UDBC|process_0~0_combout\))) # (!\UDBC|ud_bin_counter\(4) & (!\UDBC|process_0~0_combout\ & !\UDBC|ud_bin_counter[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDBC|ud_bin_counter\(4),
	datab => \UDBC|process_0~0_combout\,
	datad => VCC,
	cin => \UDBC|ud_bin_counter[3]~15\,
	combout => \UDBC|ud_bin_counter[4]~16_combout\,
	cout => \UDBC|ud_bin_counter[4]~17\);

-- Location: FF_X15_Y1_N23
\UDBC|ud_bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[4]~16_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(4));

-- Location: LCCOMB_X15_Y1_N24
\UDBC|ud_bin_counter[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[5]~18_combout\ = (\UDBC|process_0~0_combout\ & ((\UDBC|ud_bin_counter\(5) & (!\UDBC|ud_bin_counter[4]~17\)) # (!\UDBC|ud_bin_counter\(5) & ((\UDBC|ud_bin_counter[4]~17\) # (GND))))) # (!\UDBC|process_0~0_combout\ & 
-- ((\UDBC|ud_bin_counter\(5) & (\UDBC|ud_bin_counter[4]~17\ & VCC)) # (!\UDBC|ud_bin_counter\(5) & (!\UDBC|ud_bin_counter[4]~17\))))
-- \UDBC|ud_bin_counter[5]~19\ = CARRY((\UDBC|process_0~0_combout\ & ((!\UDBC|ud_bin_counter[4]~17\) # (!\UDBC|ud_bin_counter\(5)))) # (!\UDBC|process_0~0_combout\ & (!\UDBC|ud_bin_counter\(5) & !\UDBC|ud_bin_counter[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDBC|process_0~0_combout\,
	datab => \UDBC|ud_bin_counter\(5),
	datad => VCC,
	cin => \UDBC|ud_bin_counter[4]~17\,
	combout => \UDBC|ud_bin_counter[5]~18_combout\,
	cout => \UDBC|ud_bin_counter[5]~19\);

-- Location: FF_X15_Y1_N25
\UDBC|ud_bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[5]~18_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(5));

-- Location: LCCOMB_X15_Y1_N26
\UDBC|ud_bin_counter[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[6]~20_combout\ = ((\UDBC|ud_bin_counter\(6) $ (\UDBC|process_0~0_combout\ $ (\UDBC|ud_bin_counter[5]~19\)))) # (GND)
-- \UDBC|ud_bin_counter[6]~21\ = CARRY((\UDBC|ud_bin_counter\(6) & ((!\UDBC|ud_bin_counter[5]~19\) # (!\UDBC|process_0~0_combout\))) # (!\UDBC|ud_bin_counter\(6) & (!\UDBC|process_0~0_combout\ & !\UDBC|ud_bin_counter[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDBC|ud_bin_counter\(6),
	datab => \UDBC|process_0~0_combout\,
	datad => VCC,
	cin => \UDBC|ud_bin_counter[5]~19\,
	combout => \UDBC|ud_bin_counter[6]~20_combout\,
	cout => \UDBC|ud_bin_counter[6]~21\);

-- Location: FF_X15_Y1_N27
\UDBC|ud_bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[6]~20_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(6));

-- Location: LCCOMB_X15_Y1_N28
\UDBC|ud_bin_counter[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDBC|ud_bin_counter[7]~22_combout\ = \UDBC|process_0~0_combout\ $ (\UDBC|ud_bin_counter[6]~21\ $ (!\UDBC|ud_bin_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDBC|process_0~0_combout\,
	datad => \UDBC|ud_bin_counter\(7),
	cin => \UDBC|ud_bin_counter[6]~21\,
	combout => \UDBC|ud_bin_counter[7]~22_combout\);

-- Location: FF_X15_Y1_N29
\UDBC|ud_bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UDBC|ud_bin_counter[7]~22_combout\,
	clrn => \pb[0]~inputclkctrl_outclk\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDBC|ud_bin_counter\(7));

-- Location: IOIBUF_X0_Y7_N22
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

-- Location: IOIBUF_X3_Y0_N29
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

-- Location: IOIBUF_X10_Y21_N22
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

-- Location: IOIBUF_X19_Y25_N22
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

-- Location: IOIBUF_X10_Y16_N8
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

-- Location: IOIBUF_X6_Y0_N15
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

-- Location: IOIBUF_X27_Y0_N8
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

-- Location: IOIBUF_X24_Y0_N22
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

-- Location: IOIBUF_X29_Y0_N22
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

-- Location: IOIBUF_X31_Y5_N1
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


