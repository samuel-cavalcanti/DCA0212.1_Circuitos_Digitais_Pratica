library ieee;
use ieee.std_logic_1164.all;


entity frequency_divider is 
port( current_frequency : in std_logic;
		out_frequency : inout std_logic);

end entity;



architecture behavior of frequency_divider is
signal frequency_counter : integer range 0 to 5e4;

 begin 
	
	process (current_frequency) is begin
		
		if (current_frequency'event and current_frequency ='1') then
			frequency_counter <= frequency_counter +1;
			
			if (frequency_counter = 5e4) then
				out_frequency <= not out_frequency;
				end if;
			
		end if;
			
	end process;

end architecture; 