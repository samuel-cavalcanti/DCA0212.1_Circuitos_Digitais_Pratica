library ieee;
use ieee.std_logic_1164.all; 

entity robot is 
	port (fpga_clock : in std_logic; -- CLOCK_50 
		 pulse: in std_logic;  -- GPIO A0 --PIN_D25 
		 trigger : out std_logic; -- GPIO A1 --PIN_J22)
		 start_button : in std_logic;  -- Key 0 --PIN_G26
		 thousands_display: out std_logic_vector(6 downto 0 ); -- hex3
		 hundreds_display : out std_logic_vector(6 downto 0 ); -- hex2
		 tens_display : out std_logic_vector(6 downto 0 ); -- hex1
		 units_display : out std_logic_vector(6 downto 0 ); -- hex0
		 left_motor : out std_logic_vector(7 downto 0); -- nao sei
		 right_motor : out std_logic_vector(7 downto 0)); -- nao sei
		 
end entity;


architecture behavior of robot is 
 --		 waiting : in std_logic; -- para testes Key 0 --PIN_G26
signal distance:std_logic_vector(8 downto 0);

	begin
	
	ultrassonic : entity work.utrassonic_sensor(behavior)
					 port map (fpga_clock => fpga_clock,
								  pulse => pulse,
								  trigger => trigger,
								  start_button => start_button,
								  distance => distance);
								  
								  
	display : entity work.display (behavior)
				 port map (distance => distance,
							  thousands_display=> thousands_display,
							   hundreds_display => hundreds_display,
								tens_display => tens_display,
								units_display => units_display); 
	
	decision_controller : entity work.decision_controller(behavior)
									port map (distance => distance,
												 left_motor => left_motor,
												 right_motor => right_motor);
												 
	
	end architecture;