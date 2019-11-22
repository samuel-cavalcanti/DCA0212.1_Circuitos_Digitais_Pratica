library ieee;
use ieee.std_logic_1164.all;

entity timer is 
generic( n: positive := 10 );
port( clock : in std_logic;
		start_timer : in std_logic;
		time_is_over : out std_logic);
end entity;

architecture behavior of timer is 
	signal count_clock : integer range 0 to n ;
	
	begin
	
		process (clock) is begin
		
			if (clock'event and clock ='1') then
				
				if start_timer = '1' then 
						
					if (count_clock = n)  then -- 1000ms = 1s 
						time_is_over <= '1';
						count_clock <= 0;
					else
						count_clock <= count_clock + 1;
					end if;
					
				else
					count_clock <= 0;
					time_is_over <= '0';
				end if;
				
				
			end if;
		end process;
		
end architecture;
	