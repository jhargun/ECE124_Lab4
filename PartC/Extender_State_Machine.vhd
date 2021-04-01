-- Anish Aggarwal && Jaswin Hargun (Group 24) --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Extender_State_Machine IS Port
	(
		clk_input, rst_n, Extender_Toggle, Extender_Enable		: IN std_logic;
		Extender_Position							 						: IN std_logic_vector(3 downto 0);
		Clk_en, LEFT0_RIGHT1, Extender_out, Grappler_Enable 	: OUT std_logic
	);
	END ENTITY;
 

 Architecture SM of Extender_State_Machine is
 
 
 -- s0 = retracted, s1 = extending, s2 = extended, s3 = retracting
 TYPE STATE_NAMES IS (S0, S1, S2, S3);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES
 
 -- This signal is used to find if the button has been released since the last rising edge of the clock
 signal previous_extender_toggle		:	std_logic;  -- Stores previous value of Extender_Toggle


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= S0;
		previous_extender_toggle <= '0';
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
		previous_extender_toggle <= Extender_Toggle;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (Extender_Toggle, Extender_Enable, current_state, Extender_Position) 

BEGIN
     CASE current_state IS
          WHEN S0 =>		
				-- If extender enabled and Extender_Toggle button released, begin extending; else stay retracted
				IF(Extender_Enable='1' AND Extender_Toggle='0' AND previous_extender_toggle='1') THEN
					next_state <= S1;
				ELSE
					next_state <= S0;
				END IF;

         WHEN S1 =>		
				-- If fully extended, enter "extended state" (s2), else continue extending
				IF(Extender_Position(0)='1' AND Extender_Position(1)='1' AND Extender_Position(2)='1' AND Extender_Position(3)='1') THEN
					next_state <= S2;
				ELSE
					next_state <= S1;
				END IF;

         WHEN S2 =>		
				-- If extender enabled and Extender_Toggle button released, begin retracting; else stay extended
				IF(Extender_Enable='1' AND Extender_Toggle='0' AND previous_extender_toggle='1') THEN
					next_state <= S3;
				ELSE
					next_state <= S2;
				END IF;
				
         WHEN S3 =>
				-- If fully retracted, enter "retracted state" (s0), else continue retracting
				IF(Extender_Position(0)='0' AND Extender_Position(1)='0' AND Extender_Position(2)='0' AND Extender_Position(3)='0') THEN
					next_state <= S0;
				ELSE
					next_state <= S3;
				END IF;

	WHEN OTHERS =>
               next_state <= S0;
 	END CASE;

 END PROCESS;

-- DECODER SECTION PROCESS (Moore Form)

Decoder_Section: PROCESS (current_state) 

BEGIN
--	-- Clk_en 1 if extender extending or retracting, 0 if extender stationary
--	Clk_en <= '0' when (current_state = s0 OR current_state = s2) else '1';
--	-- LEFT0_RIGHT1 0 if extender retracting, 1 if extending (value is x, or doesn't matter, when extender stationary)
--	LEFT0_RIGHT1 <= '0' when current_state = s3 else '1';
--	-- Extender_out 0 if fully retracted (s0), 1 otherwise
--	Extender_out <= '0' when current_state = s0 else '1';
--	-- Grappler_Enable 1 if fully extended (s2), 0 otherwise
--	Grappler_Enable <= '1' when current_state = s2 else '0';
	CASE current_state IS
         WHEN S0 =>		
				Clk_en <= '0';
				LEFT0_RIGHT1 <= '1';  -- Doesn't matter
				Extender_out <= '0';
				Grappler_Enable <= '0';
			WHEN S1 =>		
				Clk_en <= '1';
				LEFT0_RIGHT1 <= '1';
				Extender_out <= '1';
				Grappler_Enable <= '0';
			WHEN S2 =>		
				Clk_en <= '0';
				LEFT0_RIGHT1 <= '0';  -- Doesn't matter
				Extender_out <= '1';
				Grappler_Enable <= '1';
			WHEN S3 =>		
				Clk_en <= '1';
				LEFT0_RIGHT1 <= '0';
				Extender_out <= '1';
				Grappler_Enable <= '0';
			WHEN others =>		-- Should never happen
				Clk_en <= '0';
				LEFT0_RIGHT1 <= '0';
				Extender_out <= '1';
				Grappler_Enable <= '0';
	END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
