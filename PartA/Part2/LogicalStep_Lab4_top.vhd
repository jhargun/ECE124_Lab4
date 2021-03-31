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
component Bidir_shift_reg port
	(
		CLK				:	in std_logic;
		RESET_n			:	in std_logic;
		CLK_EN			:	in std_logic;
		LEFT0_RIGHT1	:	in std_logic;
		REG_BITS			:	out std_logic_vector(7 downto 0)
	);
	end component;

component U_D_Bin_Counter8bit port
	(
		CLK						:	in std_logic := '0';
		RESET_n					:	in std_logic := '0';
		CLK_EN					:	in std_logic := '0';
		UP1_DOWN0				:	in std_logic := '0';
		COUNTER_BITS			:	out std_logic_vector(7 downto 0)
	);
	end component;

------------------------------------------------------------------
-- Create any signals to be used

-------------------------------------------------------------------

-- Here the circuit begins


BEGIN

-- Uncomment to run simulation for Part 1 of part A (1.3.5.2)
-- Bsr: Bidir_shift_reg port map(Clk, pb(0), sw(0), sw(1), leds(7 downto 0));

-- Uncomment to run simulation for Part 2 of part A (1.3.5.4)
UDBC: U_D_Bin_Counter8bit port map(Clk, pb(0), sw(0), sw(1), leds(7 downto 0));


END Circuit;
