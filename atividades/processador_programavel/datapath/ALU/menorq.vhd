library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity menorq is
	generic(numero_de_bits : positive := 16 );
	port(a: in std_logic_vector (numero_de_bits-1 downto 0);
		  b: in std_logic_vector (numero_de_bits-1 downto 0);
		  resultmeq: out std_logic);
end entity;

architecture behavior of menorq is
begin
	process(a, b)
	variable igual : std_logic; 
		begin
			resultmeq <=  '0';
			igual := '1';
			
			for i in numero_de_bits-1 downto 0 loop
				if igual = '1' then 
					
					if  a(i) < b(i) then
						resultmeq <= '1';
						igual := '0';
					elsif b(i) > a(i) then
							igual := '0';
					end if;
				
				end if;
			
								
			end loop;
		
	end process;
end architecture;