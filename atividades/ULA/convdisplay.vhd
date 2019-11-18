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
			case iny is--						0123456
				when "0000" => display <= "1000000"; --0
				when "0001" => display <= "1111001"; --1
				when "0010" => display <= "0100100"; --2
				when "0011" => display <= "0110000"; --3
				when "0100" => display <= "0011001"; --4
				--						         0123456
				when "0101" => display <= "0010010"; --5
				when "0110" => display <= "0000010"; --6
				when "0111" => display <= "1111000"; --7
				when "1000" => display <= "0000000"; --8
				when "1001" => display <= "0010000"; --9
				when "1010" => display <= "0001000"; -- a 10
				when "1011" => display <= "0000011"; -- b 11
				--   						      0123456
				when "1100" => display <= "1000110"; -- c 12
				when "1101" => display <= "0100001"; -- d 13
				when "1110" => display <= "0000110"; -- e 14
				when "1111" => display <= "0001110"; -- f 15
			end case;
		end if;
		
		if inctrl = "01" then
			--          0123456
			display <= "0001001"; --- representa o H de erro
		end if;	
		
		if inctrl = "10" then
			display <= "1111111"; --- tudo apagado
		end if;
		
	end process;
	
		
		
	
	
	
end behaviorconvdisplay;