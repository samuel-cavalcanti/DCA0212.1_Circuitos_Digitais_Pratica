library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maiorq is
	port(inputdata1: in std_logic_vector (3 downto 0);
		  inputdata2: in std_logic_vector (3 downto 0);
		  resultmaq: out std_logic);
end entity;

architecture behaviormaiorq of maiorq is
begin
	process(inputdata1, inputdata2)
		variable maq: std_logic;
		begin
			
			maq := '0';
			for i in 3 downto 0 loop
				if inputdata2(i) > inputdata1(i) then
						maq := '1';
						exit;
				end if;
				
			end loop;
			
--			if inputdata1(3) > inputdata2(3) then
--				maq := '0'; -- inputdata1 é o maior
--			elsif inputdata1(2) > inputdata2(2) then
--				maq := '0';
--			elsif inputdata1(1) > inputdata2(1) then
--				maq := '0';
--			elsif inputdata1(0) > inputdata2(0) then
--				maq := '0';
--			else
--				maq := '1'; -- inputdata1 é o menor
--			end if;
		
			resultmaq <= maq;
		
	end process;
end behaviormaiorq;