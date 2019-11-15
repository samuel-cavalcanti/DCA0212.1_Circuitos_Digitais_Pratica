library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity convdisplay is
	port(iny: in std_logic_vector (3 downto 0);
		  inctrl: in std_logic_vector (1 downto 0);
		  display: out std_logic_vector (6 downto 0));
end entity;

architecture behaviorconvdisplay of convdisplay is
begin

	process (inctrl, iny)
	begin
		if inctrl = "00" then
			case iny is--						6543210
				when "0000" => display <= "1000000"; --0
				when "0001" => display <= "1100111"; --1
				when "0010" => display <= "0000101"; --2
				when "0011" => display <= "0000011"; --3
				when "0100" => display <= "0100011"; --4
				--						         6543210
				when "0101" => display <= "0010010"; --5
				when "0110" => display <= "0010000"; --6
				when "0111" => display <= "1000111"; --7
				when "1000" => display <= "0000000"; --8
				when "1001" => display <= "0000001"; --9
				when "1010" => display <= "0000100"; -- a 10
				when "1011" => display <= "0110000"; -- b 11
				--   						      6543210
				when "1100" => display <= "1011000"; -- c 12
				when "1101" => display <= "0100001"; -- d 13
				when "1110" => display <= "0011000"; -- e 14
				when "1111" => display <= "0011100"; -- f 15
			end case;
		end if;
		
		if inctrl = "01" then
			--          6543210
			display <= "0100100"; --- representa o H de erro
		end if;	
		
		if inctrl = "10" then
			display <= "1111111"; --- tudo apagado
		end if;
		
	end process;
	
		
		
	
	
	
end behaviorconvdisplay;