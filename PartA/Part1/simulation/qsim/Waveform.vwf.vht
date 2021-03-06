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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/31/2021 02:09:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LogicalStep_Lab4_top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LogicalStep_Lab4_top_vhd_vec_tst IS
END LogicalStep_Lab4_top_vhd_vec_tst;
ARCHITECTURE LogicalStep_Lab4_top_arch OF LogicalStep_Lab4_top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL leds : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pb : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst_n : STD_LOGIC;
SIGNAL sw : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT LogicalStep_Lab4_top
	PORT (
	Clk : IN STD_LOGIC;
	leds : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst_n : IN STD_LOGIC;
	sw : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LogicalStep_Lab4_top
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	leds => leds,
	pb => pb,
	rst_n => rst_n,
	sw => sw
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	FOR i IN 1 TO 49
	LOOP
		Clk <= '0';
		WAIT FOR 10000 ps;
		Clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 9000 ps;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- pb[0]
t_prcs_pb_0: PROCESS
BEGIN
	pb(0) <= '0';
	WAIT FOR 50000 ps;
	pb(0) <= '1';
WAIT;
END PROCESS t_prcs_pb_0;

-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '1';
	WAIT FOR 600000 ps;
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;

-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '1';
WAIT;
END PROCESS t_prcs_sw_0;
END LogicalStep_Lab4_top_arch;
