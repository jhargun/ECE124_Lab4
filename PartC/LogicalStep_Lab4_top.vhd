-- Anish Aggarwal && Jaswin Hargun (Group 24) --

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   Clk			: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 
   leds			: out std_logic_vector(15 downto 0)	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS

-- Components
------------------------------------------------------------------- 
component Bidir_shift_reg_4bit is port
	(
		CLK				:	in std_logic := '0';
		RESET_n			:	in std_logic := '0';
		CLK_EN			:	in std_logic := '0';
		LEFT0_RIGHT1	:	in std_logic := '0';
		REG_BITS			:	out std_logic_vector(3 downto 0)
	);
	end component;

component Extender_State_Machine IS Port
	(
		clk_input, rst_n, Extender_Toggle, Extender_Enable		: IN std_logic;
		Extender_Position							 						: IN std_logic_vector(3 downto 0);
		Clk_en, LEFT0_RIGHT1, Extender_out, Grappler_Enable 	: OUT std_logic
	);
	END component;

component Grappler_Control is port
	(
		rst_n					:	in std_logic;
		Grappler_Toggle	:	in std_logic := '0';
		Grappler_Enable	:	in std_logic := '0';
		Grappler_Open		:	out std_logic
	);
	end component;
	
------------------------------------------------------------------	
-- Create any signals to be used

signal extender_enable			:	std_logic;  -- Set to true by if not in motion


signal extender_Clk_en			:	std_logic;  -- Used by Bidir_shift_reg for extender
signal extender_LEFT0_RIGHT1	:	std_logic;  -- Used by Bidir_shift_reg for extender

signal extender_out				:	std_logic;  -- Set to true by extender controller if not fully retracted
signal grappler_enable 			:	std_logic;  -- Set to true by extender controller if fully extended

------------------------------------------------------------------- 
	
-- Here the circuit begins

	
BEGIN

-- Extender controller
Extender_SM : Extender_State_Machine port map(Clk, rst_n, pb(1), extender_enable, leds(7 downto 4), 
															extender_Clk_en, extender_LEFT0_RIGHT1, extender_out, grappler_enable);
-- Extender 4 bit bidir_shift_reg
Extender_bsr : Bidir_shift_reg_4bit port map(Clk, rst_n, extender_Clk_en, extender_LEFT0_RIGHT1, leds(7 downto 4));
-- Grappler controller
g_controller: Grappler_Control port map(rst_n, pb(0), grappler_enable, leds(3));


END Circuit;
