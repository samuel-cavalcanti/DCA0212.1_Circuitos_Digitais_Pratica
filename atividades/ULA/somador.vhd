library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is
	port(a: in std_logic_vector(3 downto 0);
		  b: in std_logic_vector(3 downto 0);
		  resultsoma: out std_logic_vector(4 downto 0));
end entity;

architecture behaviorsomador of somador is
begin
	process (a, b)
		variable carry: std_logic; -- c é o vetor com todos os 'vai 1', carry
		begin
			carry := '0';
			
			for i in 0 to 3 loop
				resultsoma(i) <= a(i) xor b(i) xor carry ;
				carry := (a(i) and carry) or (b(i) and carry) or (a(i) and b(i)) ;
			end loop;
			
			resultsoma(4) <= carry;
	
	end process;

			
			
	
end behaviorsomador;