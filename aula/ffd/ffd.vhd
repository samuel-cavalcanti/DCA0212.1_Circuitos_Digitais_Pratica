library ieee;
use ieee.std_logic_1164.all; 

entity ffd is 
port (input_data: in std_logic_vector (7 downto 0);
		load : in std_logic;
		clock : in std_logic; 
	   data : buffer std_logic_vector(7 downto 0));
		
end ffd;

architecture behavior of ffd is 

begin
	process (clock,load)
		begin
			if clock'event and clock = '1' then
				if load ='1' then
					data <= input_data;
				else
					data <= data;
				end if ;
				
			end if; 
	end process;
	
end architecture;