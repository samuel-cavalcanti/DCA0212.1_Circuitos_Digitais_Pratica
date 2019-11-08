library ieee;
use ieee.std_logic_1164.all; 
USE ieee.numeric_std.ALL;

entity decision_controller is 
	port ( distance : in std_logic_vector( 8 downto 0);
			 left_motor : out std_logic_vector(7 downto 0);
			 right_motor : out std_logic_vector(7 downto 0));
			 
end entity; 




architecture behavior of decision_controller is 

signal last_distance : std_logic_vector(8 downto 0); 


	begin
	
	process (distance)
	
	 variable dist : unsigned( 8 downto 0);

		begin
			dist := unsigned(distance);
			
			-- distance < 15 --"00001111"
			if dist < 15 then
				left_motor <=  "11111111";
				right_motor <= "00000000";
			
			else 
				left_motor <=  "11111111";
				right_motor <=  "11111111";
			end if ;
			
			last_distance <= distance;
			
	end process;
	
	
	
	
	end architecture;