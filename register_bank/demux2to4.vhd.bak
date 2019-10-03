library ieee;
use ieee.std_logic_1164.all;
entity demux2to4 is 

port (s:in std_logic_vector(1 downto 0);
		c: out std_logic_vector(3 downto 0));
end demux2to4;


architecture behavior of demux2to4 is 
begin
	with s select
		c <= 	"1000" when "00",
				"0100" when "01",
				"0010" when "10",
				"0001" when "11";
end behavior;