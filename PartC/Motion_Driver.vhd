library ieee;
use ieee.std_logic_1164.all;
library work;

entity Motion_Driver is 
		port (
					MOTION							:	in std_logic; -- Button for Motion Activator
					X_T, Y_T							:	in std_logic_vector(3 downto 0); -- Target Position Inputs
					EXTEND_OUT 						: 	in std_logic; -- Extender_Out Input From Extender_State_Machine
					CLK 								:	in std_logic; -- Clock
					RST_N								:	in std_logic; -- Rest States and Machine
					
					-- Comparison for Components of Current Position & Target Position
					X_EQ, X_GT, X_LT				: in std_logic;
					Y_EQ, Y_GT, Y_LT				: in std_logic;
					
					ERR				         	: out std_logic; -- SYSTEM FAULT ERROR
					XCLK_EN,YCLK_EN 	  			: out std_logic; -- Enable Change for X,Y
					X_UP0_DOWN1, Y_UP0_DOWN1	: out std_logic; -- Directions of Change
					X_OUT, Y_OUT 					: out std_logic_vector(3 downto 0); -- Latched Positions
					EXTEND_EN						: out std_logic -- Extender Enabled for Extender_State_Machine
				);
end Motion_Driver;


architecture Circuit of Motion_Driver is 

-- States for State_Machine (Mealy Form)
type STATE_NAME is (STOPPED, BDOWN, IN_MOTION, ERR_STATE);
-- Signals for Storage
signal cur_state, next_state 					: STATE_NAME;


begin
		-- Register Current State Dependent on mainly on CLK (Mealy Form)
		Register_Section: process (CLK, RST_N, next_state) 
		begin
			if (RST_N = '0') then
				cur_state <= STOPPED; -- Back to initial state when RST_N is active (ACTIVE_LOW)
			elsif (rising_edge(CLK)) then -- Otherwise Next State
				cur_state <= next_state;
			end if;
			
		end process;
		
		-- Deal With Transitions from one state to another (Mealy Form)
		Transition_Section: process(MOTION, EXTEND_OUT, cur_state, X_EQ, X_GT, X_LT, Y_EQ, Y_GT, Y_LT)
		begin
			case cur_state is 
				when STOPPED =>
					if (MOTION = '1') then
						if (EXTEND_OUT = '0') then -- Motion is wanted when Extender is NOT out.
							next_state <= BDOWN; -- change to BDOWN state
						else -- Extender IS out, so we must transition to ERR_STATE.
							next_state <= ERR_STATE;
						end if;
					else -- No Motion is asked, cur_state STOPPED stays.
						next_state <= STOPPED;
					end if;
					
				when BDOWN =>
					if (MOTION = '0') then -- BDOWN -> BUP means Button Release so we need to latch new values
						next_state <= IN_MOTION; -- Go to IN_MOTION state with new Target Vals
						X_OUT <= X_T;
						Y_OUT <= Y_T;
					else 
						next_state <= BDOWN;
					end if;
				
				when IN_MOTION =>
					if (X_EQ = '1' AND Y_EQ = '1') then -- In Motion and latched position is reached => Stop Motion
						next_state <= STOPPED;
					else -- Final Position is not reached yet => Continue in Motion
						next_state <= IN_MOTION;
					end if;
				
				when ERR_STATE => -- If in ERR_State, machine needs to wait for Extender to retract FULLY.
					if (EXTEND_OUT = '0') then
						next_state <= STOPPED;
					else
						next_state <= ERR_STATE;
					end if;
					
				end case;
			end process;
		
		-- Decoder Section of State_Machine (Mealy Form)
		Decoder_Section: process(cur_state, X_EQ, X_GT, X_LT, Y_EQ, Y_GT, Y_LT)
		begin
			-- Adjust Outputs based on States
			case cur_state is 
				when STOPPED => 
					EXTEND_EN <= '1'; -- Stopped => Extender can move
					
					-- Drivers are Disabled (No where to Move)
					XCLK_EN <= '0';
					YCLK_EN <= '0';
					
					X_UP0_DOWN1 <= '0';
					Y_UP0_DOWN1 <= '0';
					
					ERR <= '0'; -- Not in Error State
				
				when BDOWN =>
					-- Button Down means motion about to begin ???
					EXTEND_EN <= '0';	
	
					-- Drivers Disabled as Motion not Started
					XCLK_EN <= '0';
					YCLK_EN <= '0';
					X_UP0_DOWN1 <= '0';
					Y_UP0_DOWN1 <= '0';
					
					ERR <= '0';
					
				when IN_MOTION =>
					-- Enable Clocks for components that are not reaached
					XCLK_EN <= NOT X_EQ;
					YCLK_EN <= NOT Y_EQ;
					
					-- As Down1 is 1 -> Connect to LT
					X_UP0_DOWN1 <= X_LT;
					Y_UP0_DOWN1 <= Y_LT;
					
					-- Extender Disabled
					EXTEND_EN <= '0';
					ERR <= '0';
					
				when ERR_STATE =>
					ERR <= '1'; -- Output ERR as 1
					-- Disable Movement
					XCLK_EN <= '0';
					YCLK_EN <= '0';
					
					
				end case;	
			end process;
		
	end Circuit;
			
		