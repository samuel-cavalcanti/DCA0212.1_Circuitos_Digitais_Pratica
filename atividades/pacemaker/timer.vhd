library ieee;
use ieee.std_logic_1164.all;

entity timer is 
port( clock : in std_logic;
		start_timer : in std_logic;
		time_is_over : out std_logic);
end entity;

architecture behavior of timer is 
	signal milliseconds : integer range 0 to 800 ;
	
	begin
	
		process (clock) is begin
		
			if (clock'event and clock ='1') then
				
				if start_timer = '1' then 
						
					if milliseconds = 800 then -- 800ms = 0.8s 
						time_is_over <= '1';
						milliseconds <= 0;
					else
						milliseconds <= milliseconds + 1;
					end if;
					
				else
					milliseconds <= 0;
					time_is_over <= '0';
				end if;
				
				
			end if;
		end process;
		
end architecture;
	