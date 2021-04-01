-- Anish Aggarwal && Jaswin Hargun (Group 24) --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Grappler_Control is port
	(
		rst_n					:	in std_logic;
		Grappler_Toggle	:	in std_logic := '0';
		Grappler_Enable	:	in std_logic := '0';
		Grappler_Open		:	out std_logic
	);
	end Entity;
	
	Architecture one OF Grappler_Control IS
	
	Signal sreg				: std_logic;

BEGIN

process (Grappler_Toggle) is
begin
	IF (rst_n = '0') THEN
		sreg <= '0';
	ELSIF(falling_edge(Grappler_Toggle) AND (Grappler_Enable = '1')) then
		sreg <= NOT sreg;
	
	end if;

end process;
Grappler_Open <= sreg;

END one;	