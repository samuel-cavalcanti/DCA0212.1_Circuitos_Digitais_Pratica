library ieee;
use ieee.std_logic_1164.all;

entity counter is 

	generic(size_counter : positive :=10);
	
	port (clock : in std_logic;
			enable : in std_logic;
			reset :  in std_logic;
			counter_data : out integer range 0 to size_counter);
			
end entity;


architecture behavior of counter is 

 signal count : integer range 0 to size_counter;
	
 begin 

 counting : process (clock, reset)
 
  begin
		
		if (reset ='1') then
			count <= 0;
		elsif (clock'event and clock = '1' and enable ='1') then
			count <= count + 1; 
		end if ;
		
  end process;
  
  counter_data <= count;
  
end architecture;
  
			