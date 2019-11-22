library ieee;
use ieee.std_logic_1164.all; 

entity utrassonic_sensor is 
	port(--start_button : buffer std_logic; -- key 0
    	 fpga_clock : in std_logic; -- CLOCK_50 
		 pulse: in std_logic;  -- GPIO A0 --PIN_D25 
		 start_button : in std_logic; -- para testes Key 0 --PIN_G26
		 trigger : out std_logic; -- GPIO A1 --PIN_J22
		 distance : out std_logic_vector(8 downto 0));
		 
end entity;



architecture behavior of utrassonic_sensor is 


signal trigger_out : std_logic := '0';
signal dist : std_logic_vector(8 downto 0) := "000000000";

begin


trigger_generator : entity work.trigger_generator(Behavioral)
							port map (clk => fpga_clock,
										 start_button => start_button,
										 trigger => trigger_out);
	 
distance_calculator : entity work.distance_calculator(Behavioral)
									port map(clk => fpga_clock,
												Calculation_Reset => trigger_out, 
												pulse => pulse,
												Distance => dist);
																					
	distance <= dist;
	trigger <= trigger_out;
										 
end architecture;
