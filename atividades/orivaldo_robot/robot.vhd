library ieee;
use ieee.std_logic_1164.all; 

entity robot is 
	port (fpga_clock : in std_logic; -- CLOCK_50 
		 pulse_front: in std_logic;  -- GPIO0 A0 --PIN_D25 
		 trigger_front : out std_logic; -- GPIO A1 --PIN_J22)
		 pulse_left: in std_logic; -- GPIO B0 --PIN_K25
		 trigger_left:  out std_logic; -- GPIO B1 --PIN_K26
		 start_button : in std_logic;  -- Key 0 --PIN_G26
		 thousands_display_front: out std_logic_vector(6 downto 0 ); -- hex3
		 hundreds_display_front : out std_logic_vector(6 downto 0 ); -- hex2
		 tens_display_front : out std_logic_vector(6 downto 0 ); -- hex1
		 units_display_front : out std_logic_vector(6 downto 0 ); -- hex0
		 thousands_display_left: out std_logic_vector(6 downto 0 ); -- hex7
		 hundreds_display_left : out std_logic_vector(6 downto 0 ); -- hex6
		 tens_display_left : out std_logic_vector(6 downto 0 ); -- hex5
		 units_display_left : out std_logic_vector(6 downto 0 ); -- hex4
		 left_motor : out std_logic_vector (1 downto 0); -- GPIO A4 -- PIN_F24
		 right_motor : out std_logic_vector (1 downto 0)); -- GPIO A5 -- PIN_F23
		 
end entity;


architecture behavior of robot is 
 --		 waiting : in std_logic; -- para testes Key 0 --PIN_G26
signal distance_front : std_logic_vector(8 downto 0);
signal distance_left : std_logic_vector(8 downto 0);
	begin
	
	ultrassonic_front : entity work.utrassonic_sensor(behavior)
					 port map (fpga_clock => fpga_clock,
								  pulse => pulse_front,
								  trigger => trigger_front,
								  start_button => start_button,
								  distance => distance_front);
								  
	ultrassonic_left : entity work.utrassonic_sensor(behavior)
					 port map (fpga_clock => fpga_clock,
								  pulse => pulse_left,
								  trigger => trigger_left,
								  start_button => start_button,
								  distance => distance_left);
								  
				
								  
								  
	display_front : entity work.display (behavior)
				 port map (distance => distance_front,
							  thousands_display=> thousands_display_front,
							   hundreds_display => hundreds_display_front,
								tens_display => tens_display_front,
								units_display => units_display_front); 
								
								
	display_left : entity work.display (behavior)
				 port map (distance => distance_left,
							  thousands_display=> thousands_display_left,
							   hundreds_display => hundreds_display_left,
								tens_display => tens_display_left,
								units_display => units_display_left); 
	
	decision_controller : entity work.decision_controller(behavior)
									port map (distance_front => distance_front,
												 distance_left => distance_left,
												 left_motor => left_motor,
												 right_motor => right_motor);
												 
	
	end architecture;