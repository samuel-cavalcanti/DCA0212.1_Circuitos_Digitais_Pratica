library ieee;
use ieee.std_logic_1164.all;


entity frequency_divider is 
generic(n: positive := 10);
port( current_frequency : in std_logic;
		out_frequency : inout std_logic);

end entity;



architecture behavior of frequency_divider is
signal frequency_counter : integer range 0 to n; --5e4

 begin 
	
	process (current_frequency) is begin
		
		if (current_frequency'event and current_frequency ='1') then
			frequency_counter <= frequency_counter +1;
			
			if (frequency_counter = n) then
				out_frequency <= not out_frequency;
				frequency_counter <= 0;
				end if;
			
		end if;
			
	end process;

end architecture; 