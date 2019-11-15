library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is
	port(inputdata1: in std_logic_vector(3 downto 0);
		  inputdata2: in std_logic_vector(3 downto 0);
		  cin: in std_logic:= '0';
		  cout: out std_logic_vector(4 downto 0);
		  resultsubt: out std_logic_vector(4 downto 0));
end entity;

architecture behaviorsubtrator of subtrator is 
begin
	process (inputdata1, inputdata2, cin)
		variable carry: std_logic_vector(4 downto 0); -- carry é o vetor com todos os 'vai 1'
		variable result: std_logic_vector(4 downto 0); -- resultado da operação
		begin
					
			carry(0):= cin;
			
			for i in 0 to 3 loop
				result(i):= (inputdata1(i) xor inputdata2(i) xor carry(i)); -- se o resultado for 0 - 1 = 11, o c recebe o bit menos significativo, no caso o '0'
				carry(i+1):= (not inputdata1(i) and  inputdata2(i)) or (not inputdata1(i) and carry(i)) or (inputdata2(i) and carry(i));

			end loop;
			
--			result(0):= (inputdata1(0) xor inputdata2(0) xor carry(0)); -- se o resultado for 0 - 1 = 11, o c recebe o bit menos significativo, no caso o '0'
--			carry(1):= (not inputdata1(0) and  inputdata2(0)) or (not inputdata1(0) and carry(0)) or (inputdata2(0) and carry(0));
--			
--			result(1):= (inputdata1(1) xor inputdata2(1) xor carry(1));
--			carry(2):= (not inputdata1(1) and inputdata2(1)) or (not inputdata1(1) and carry(1)) or (inputdata2(1) and carry(1));
--			
--			result(2):= (inputdata1(2) xor inputdata2(2) xor carry(2));
--			carry(3):= (not inputdata1(2) and inputdata2(2)) or (not inputdata1(2) and carry(2)) or (inputdata2(2) and carry(2));
--			
--			result(3):= (inputdata1(3) xor inputdata2(3) xor carry(3));
--			carry(4):= (not inputdata1(3) and inputdata2(3)) or (not inputdata1(3) and carry(3)) or (inputdata2(3) and carry(3));
			
			result(4):= carry(4);
		
			resultsubt <= result;
			cout <= carry;
		end process;
		
end behaviorsubtrator;