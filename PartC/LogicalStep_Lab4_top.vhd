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
	
component U_D_Bin_Counter4bit is port 
	(
		CLK						:	in std_logic := '0';
		RESET_n					:	in std_logic := '0';
		CLK_EN					:	in std_logic := '0';
		UP1_DOWN0				:	in std_logic := '0';
		COUNTER_BITS			:	out std_logic_vector(3 downto 0)
	);
	end component;
	
component Compx4 is port 
	(
		hex_val_A, hex_val_B 		: in std_logic_vector(3 downto 0);
		AGTB, AEQB, ALTB				: out std_logic  -- Outputs are whether A is greater than, equal, less than B respectively
	);
	end component;

component Motion_Driver is 
		port (
					MOTION							:	in std_logic;
					X_T, Y_T							:	in std_logic_vector(3 downto 0);
					EXTEND_OUT 						: 	in std_logic;
					CLK 								:	in std_logic;
					RST_N								:	in std_logic;
					
					X_EQ, X_GT, X_LT				: in std_logic;
					Y_EQ, Y_GT, Y_LT				: in std_logic;
					
					ERR				         	: out std_logic;
					XCLK_EN,YCLK_EN 	  			: out std_logic;
					X_UP0_DOWN1, Y_UP0_DOWN1	: out std_logic;
					X_OUT, Y_OUT 					: out std_logic_vector(3 downto 0);
					EXTEND_EN						: out std_logic
				);
	end component;
------------------------------------------------------------------	
-- Create any signals to be used

signal extender_enable			:	std_logic;  -- Set to true by if not in motion


signal extender_Clk_en			:	std_logic;  -- Used by Bidir_shift_reg for extender
signal extender_LEFT0_RIGHT1	:	std_logic;  -- Used by Bidir_shift_reg for extender

signal extender_out				:	std_logic;  -- Set to true by extender controller if not fully retracted
signal grappler_enable 			:	std_logic;  -- Set to true by extender controller if fully extended

signal extender_pos				:	std_logic_vector(3 downto 0); -- Positon of Extender

-- Clocks for Enabling Movement in X and Y respectively
signal XCLK_EN, YCLK_EN			:  std_logic;

-- New X and New Y after Motion Driver is applied
signal NEWX_OUT, NEWY_OUT		:  std_logic_vector(3 downto 0);

-- Comparisions of Target Position with Current Position
signal X_EQ, X_GT, X_LT			:  std_logic;
signal Y_EQ, Y_GT, Y_LT			:  std_logic;

-- Signals for Direction Machine needs to move in
signal X_UP0_DOWN1, Y_UP0_DOWN1 : std_logic;

-- Stored X and Y position from Previous Button Release
signal LATCHED_X, LATCHED_Y 	: std_logic_vector(3 downto 0);


------------------------------------------------------------------- 
	
-- Here the circuit begins

	
BEGIN

-- Below line is just for testing extender and grappler
-- extender_enable <= '1';

-- X Counter, Y Counter for incrementing Current Position
X_COUNTER : U_D_Bin_Counter4bit port map(Clk, rst_n, XCLK_EN, X_UP0_DOWN1, NEWX_OUT);
Y_COUNTER : U_D_Bin_Counter4bit port map(Clk, rst_n, YCLK_EN, Y_UP0_DOWN1, NEWY_OUT);

-- Comparing Current Position with Latched Positions to get equalities to move in correct way.
X_DRIVE : Compx4 port map (NEWX_OUT, LATCHED_X, X_GT, X_EQ, X_LT);
Y_DRIVE : Compx4 port map (NEWY_OUT, LATCHED_Y, Y_GT, Y_EQ, Y_LT);

-- Instantiate Motion Driver for Logic of Machine Motion
M_DRIVE: Motion_Driver port map (pb(2), sw(7 downto 4), sw(3 downto 0), extender_out, Clk, rst_n,
											X_EQ, X_GT, X_LT, Y_EQ, Y_GT, Y_LT, leds(0), XCLK_EN, YCLK_EN, X_UP0_DOWN1, Y_UP0_DOWN1,
											LATCHED_X, LATCHED_Y, extender_enable);
-- Extender controller
Extender_SM : Extender_State_Machine port map(Clk, rst_n, pb(1), extender_enable, extender_pos, 
															extender_Clk_en, extender_LEFT0_RIGHT1, extender_out, grappler_enable);
-- Extender 4 bit bidir_shift_reg
Extender_bsr : Bidir_shift_reg_4bit port map(Clk, rst_n, extender_Clk_en, extender_LEFT0_RIGHT1, extender_pos);
-- Grappler controller
g_controller: Grappler_Control port map(rst_n, pb(0), grappler_enable, leds(3));

-- Set Outputs
leds(7 downto 4) <= extender_pos;
leds(11 downto 8) <= NEWY_OUT;
leds(15 downto 12) <= NEWX_OUT;

END Circuit;
