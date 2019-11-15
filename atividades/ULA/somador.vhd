library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is
	port(inputdata1: in std_logic_vector(3 downto 0);
		  inputdata2: in std_logic_vector(3 downto 0);
		  cin: in std_logic:= '0';
		  cout: out std_logic_vector(4 downto 0);
		  resultsoma: out std_logic_vector(4 downto 0));
end entity;

architecture behaviorsomador of somador is
begin
	process (inputdata1, inputdata2, cin)
		variable c: std_logic_vector(4 downto 0); -- c é o vetor com todos os 'vai 1', carry
		variable s: std_logic_vector(4 downto 0); -- variável que armazena o resultado da operação
		begin
			c(0):= cin;
			
			for i in 0 to 3 loop
				s(i) := inputdata1(i) xor inputdata2(i) xor c(i);
				c(i+1) := (inputdata1(i) and inputdata2(i)) or (inputdata1(i) and c(i)) or (inputdata2(i) and c(i));
			end loop;
			
			
--			s(0):= (inputdata1(0) xor inputdata2(0) xor c(0)); -- se o resultado for 1 + 1 = 10, o c recebe o bit menos significativo, no caso o '0'
--			c(1):= (inputdata1(0) and inputdata2(0)) or (inputdata1(0) and c(0)) or (inputdata2(0) and c(0));
--			
--			s(1):= (inputdata1(1) xor inputdata2(1) xor c(1));
--			c(2):= (inputdata1(1) and inputdata2(1)) or (inputdata1(1) and c(1)) or (inputdata2(1) and c(1));
--			
--			s(2):= (inputdata1(2) xor inputdata2(2) xor c(2));
--			c(3):= (inputdata1(2) and inputdata2(2)) or (inputdata1(2) and c(2)) or (inputdata2(2) and c(2));
--			
--			s(3):= (inputdata1(3) xor inputdata2(3) xor c(3));
--			c(4):= (inputdata1(3) and inputdata2(3)) or (inputdata1(3) and c(3)) or (inputdata2(3) and c(3));
			
			s(4):= c(4);
			
			resultsoma <= s;
			cout <= c;
	
	end process;

			
			
	
end behaviorsomador;