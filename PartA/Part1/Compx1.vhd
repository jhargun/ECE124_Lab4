-- Anish Aggarwal && Jaswin Hargun (Group 24) --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity Compx1 is port (
			A, B					: in std_logic;  -- Single bit inputs
			AGTB, AEQB, ALTB	: out std_logic  -- Outputs are whether A is greater than, equal, less than B respectively
			);
end Compx1;


architecture Circuit of Compx1 is

-- Declare any Components to be Used ---
------------------------------------------------------------------- 
-- Declare any signals to be used within the design---
-------------------------------------------------------------------


begin

-- Outputs
AGTB <= A AND (NOT B);  -- True if A is 1 and B is 0
AEQB <= A XNOR B;       -- True if A and B are both 0 or both 1
ALTB <= (NOT A) AND B;  -- True if A is 0 and B is 1

end;