-- Anish Aggarwal && Jaswin Hargun (Group 24) --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity Compx4 is port (
			hex_val_A, hex_val_B 		: in std_logic_vector(3 downto 0);
			AGTB, AEQB, ALTB				: out std_logic  -- Outputs are whether A is greater than, equal, less than B respectively
			);
end Compx4;


architecture Circuit of Compx4 is

-- Declare any Components to be Used ---
------------------------------------------------------------------- 
-------------------------------------------------------------------
component Compx1 
	port (
			A, B					: in std_logic;
			AGTB, AEQB, ALTB	: out std_logic  -- Outputs are whether A is greater than, equal, less than B respectively
			);
end component;


-- Declare any signals to be used within the design---
-------------------------------------------------------------------
signal AgtB_1bit, AeqB_1bit, AltB_1bit : std_logic_vector(3 downto 0);  -- Represents outputs of 1 bit comparators

-------------------------------------------------------------------
-------------------------------------------------------------------

begin

-- Single bit comparator for each bit of A and B
-- Note: 0 represents the lowest order bit, 3 represents the highest order bit
comp0: Compx1 port map (hex_val_A(0), hex_val_B(0), AgtB_1bit(0), AeqB_1bit(0), AltB_1bit(0));
comp1: Compx1 port map (hex_val_A(1), hex_val_B(1), AgtB_1bit(1), AeqB_1bit(1), AltB_1bit(1));
comp2: Compx1 port map (hex_val_A(2), hex_val_B(2), AgtB_1bit(2), AeqB_1bit(2), AltB_1bit(2));
comp3: Compx1 port map (hex_val_A(3), hex_val_B(3), AgtB_1bit(3), AeqB_1bit(3), AltB_1bit(3));


-- Outputs
AEQB <= AeqB_1bit(0) AND AeqB_1bit(1) AND AeqB_1bit(2) AND AeqB_1bit(3);  -- true if all bits of A and B are the same
-- Greater if largest bit greater or larger bits equal and next largest bit greater (continued for rest of bits)
AGTB <= AgtB_1bit(3) OR (AeqB_1bit(3) AND (AgtB_1bit(2) OR (AeqB_1bit(2) AND (AgtB_1bit(1) OR (AeqB_1bit(1) AND AgtB_1bit(0))))));
-- Opposite of above, less if largest bit less or larger bits equal and next largest bit less (continued)
ALTB <= AltB_1bit(3) OR (AeqB_1bit(3) AND (AltB_1bit(2) OR (AeqB_1bit(2) AND (AltB_1bit(1) OR (AeqB_1bit(1) AND AltB_1bit(0))))));

-- Note: For greater simplicity, ALTB could be written as AEQB NOR AGTB (since if A is neither equal nor greater, it must be less)

end;