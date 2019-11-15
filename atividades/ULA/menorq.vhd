library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity menorq is
	port(inputdata1: in std_logic_vector (3 downto 0);
		  inputdata2: in std_logic_vector (3 downto 0);
		  resultmeq: out std_logic);
end entity;

architecture behaviormenorq of menorq is
begin
	process(inputdata1, inputdata2)
		variable meq: std_logic;
		begin
			
			meq := '0';
			
			for i in 3 downto 0 loop
				if inputdata2(i) < inputdata1(i) then
					meq :='1';
				end if;
			
			end loop;
		

--			if inputdata1(3) < inputdata2(3) then
--				meq := '0'; -- inputdata1 é o menor
--			elsif inputdata1(2) < inputdata2(2) then
--				meq := '0';
--			elsif inputdata1(1) < inputdata2(1) then
--				meq := '0';
--			elsif inputdata1(0) < inputdata2(0) then
--				meq := '0';
--			else
--				meq := '1';
--			end if;

			resultmeq <= meq;
			
	end process;
end behaviormenorq;