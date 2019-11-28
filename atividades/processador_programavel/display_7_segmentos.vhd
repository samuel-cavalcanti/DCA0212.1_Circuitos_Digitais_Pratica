library ieee;
use ieee.std_logic_1164.all;

entity display_7_segmentos is 

port (entrada_display : in std_logic_vector(3 downto 0);
		saida_diplay : out std_logic_vector(6 downto 0));
		
end entity;


architecture behavior of display_7_segmentos is


begin
	
	with entrada_display select saida_diplay <=
				 "1000000" when "0000", --0
				 "1111001" when "0001", --1
				 "0100100" when "0010", --2
				 "0110000" when "0011", --3
				 "0011001" when "0100", --4
				 "0010010" when "0101", --5
				 "0000010" when "0110", --6
				 "1111000" when "0111", --7
				 "0000000" when "1000", --8
				 "0010000" when "1001", --9
				 "0001000" when "1010", -- a 10
				 "0000011" when "1011", -- b 11
				 "1000110" when "1100", -- c 12
				 "0100001" when "1101", -- d 13
				 "0000110" when "1110", -- e 14
				 "0001110" when "1111"; -- f 15


end architecture;
