library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is
	port(a: in std_logic_vector(3 downto 0);
		  b: in std_logic_vector(3 downto 0);
		  resultsubt: out std_logic_vector(4 downto 0));
end entity;

architecture behaviorsubtrator of subtrator is 
signal a_menorq_b : std_logic;

begin
				 
 comparador_menor_q : entity work.menorq(behaviormenorq) -- menorq
		port map(a => a, 
					b => b, 
					resultmeq => a_menorq_b);			

	process (a_menorq_b)
		variable borrow: std_logic; -- borrow é o vetor com todos os 'vai 1'
		begin
				
				borrow:= a_menorq_b ;
				
				if (borrow = '0') then
					
					for i in 0 to 3 loop
						resultsubt(i)<= (a(i) xor b(i) xor borrow); -- se o resultado for 0 - 1 = 11, o c recebe o bit menos significativo, no caso o '0'
						borrow := (not a(i) and  b(i)) or (not a(i) and borrow) or (b(i) and borrow);

					end loop;
				else
					resultsubt(3 downto 0) <= "0000";
					
				end if ;
		
		resultsubt(4) <= a_menorq_b ;
			
		end process;
		
		
		
		
end behaviorsubtrator;