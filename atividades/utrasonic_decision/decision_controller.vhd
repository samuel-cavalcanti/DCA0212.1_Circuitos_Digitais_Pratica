library ieee;
use ieee.std_logic_1164.all; 
USE ieee.numeric_std.ALL;

entity decision_controller is 
	port ( distance_front : in std_logic_vector( 8 downto 0);
			 distance_left : in std_logic_vector( 8 downto 0);
			 left_motor : out std_logic_vector (1 downto 0);
			 right_motor : out std_logic_vector(1 downto 0));
			 
end entity; 




architecture behavior of decision_controller is 


	begin
	
	process (distance_front,distance_left)
	
	 variable dist_front : unsigned( 8 downto 0);
	 variable dist_left : unsigned( 8 downto 0);	 
		begin
			
			dist_front:= unsigned(distance_front);
			dist_left := unsigned(distance_left);
		
			if dist_front < 15 or dist_left < 15 then
				right_motor <= "00";
			
			else 
				 right_motor <= "10";
			end if ;
				
				
	end process;
		
		left_motor <= "10";
		
	
	end architecture;