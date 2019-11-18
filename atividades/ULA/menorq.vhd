library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity menorq is
	port(a: in std_logic_vector (3 downto 0);
		  b: in std_logic_vector (3 downto 0);
		  resultmeq: out std_logic);
end entity;

architecture behaviormenorq of menorq is
begin
	process(a, b)
		variable igual : std_logic;
		begin

			igual := '1';
			resultmeq <= '0';
			
			for i in 3 downto 0 loop
				if igual = '1' then

					if a(i) < b(i) then
						igual := '0';
						resultmeq <= '1';
					
					elsif b(i) < a(i) then
						igual := '0';

					end if;
				
				end if; 
								
			end loop;
		
	end process;
end behaviormenorq;