library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity inverter is
	port(inputdata1: in std_logic_vector(3 downto 0);
		  resultinv: out std_logic_vector(3 downto 0));
end entity;

architecture behaviorinverter of inverter is
begin
	process (inputdata1)
		variable sinv: std_logic_vector (3 downto 0);
		begin
			sinv:= (not inputdata1);
			resultinv <= sinv;
	end process;
end behaviorinverter;