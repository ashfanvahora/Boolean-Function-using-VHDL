-- testbench for Bo_function entity

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testbench1 is
end;

architecture tb of testbench1 is
	
	component Bo_Function
		port ( a,b,c : in std_logic;
				 y     : out std_logic);
	end component;
	
signal a,b,c,y : std_logic; -- 'signal' is use to define internal signals 

begin
-- instantiate dut
X : Bo_Function port map ( a,b,c,y);

-- apply inputs one at a time

process begin

a <= '0'; b <= '0'; c <= '0'; wait for 10 ns; -- here 'wait' statement is use to introduce delay of 10 ns before the input changes
						  c <= '1'; wait for 10 ns;
			 b <= '1'; c <= '0'; wait for 10 ns;
						  c <= '1'; wait for 10 ns;
a <= '1'; b <= '0'; c <= '0'; wait for 10 ns;
						  c <= '1'; wait for 10 ns;
			 b <= '1'; c <= '0'; wait for 10 ns;
						  c <= '1'; wait;
end process;
end;