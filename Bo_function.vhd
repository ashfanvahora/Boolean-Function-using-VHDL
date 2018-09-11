library IEEE;
use IEEE.STD_LOGIC_1164.all;  -- library that include std_logic data type
use IEEE.STD_LOGIC_UNSIGNED.all;

-- VHDL code for Boolean function y = a'b' + b'c' + a'c'

Entity Bo_Function is 
	port( a,b,c : in std_logic; -- 'in' keyword to declare inputs and std_logic is data type use to declare
			y     : out std_logic); -- digital signal that have value 1 or 0 and also floating and undefined values
end Bo_Function;

architecture behav of Bo_function is 

begin
		y <= (( not a) and ( not b)) OR ((not b ) and (not c)) OR (( not a) and ( not c));
end behav;