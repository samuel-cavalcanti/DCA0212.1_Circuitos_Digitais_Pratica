library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maiorq is
	port(a: in std_logic_vector (3 downto 0);
		  b: in std_logic_vector (3 downto 0);
		  resultmaq: out std_logic);
end entity;

architecture behaviormaiorq of maiorq is
begin
	process(a, b)
		variable igual : std_logic;
		begin
			
			igual := '1';
			resultmaq <= '0';
			
			for i in 3 downto 0 loop
				if igual = '1' then
					
					if a(i) > b(i) then
						igual := '0';
						resultmaq <= '1';
					
					elsif b(i) > a(i) then
						igual := '0';
					
					end if;
				
				
				end if; 
								
			end loop;
		
	end process;
end behaviormaiorq;