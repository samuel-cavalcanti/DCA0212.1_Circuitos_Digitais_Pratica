library ieee;
use ieee.std_logic_1164.all; 

entity utrassonic_sensor is 
	generic(number_bits : positive :=12);
	port(waiting : buffer std_logic; -- key 0
    	 fpga_clock : in std_logic; -- CLOCK_50 
		 pulse: in std_logic; -- nao sei 
		 trigger : inout   std_logic; -- nao sei 
		 thousands_display: out std_logic_vector(6 downto 0 ); -- hex3
		 hundreds_display : out std_logic_vector(6 downto 0 ); -- hex2
		 tens_display : out std_logic_vector(6 downto 0 ); -- hex1
		 units_display : out std_logic_vector(6 downto 0 )); -- hex0
		 
end entity;



architecture behavior of utrassonic_sensor is 

signal thousands_mm : std_logic_vector(3 downto 0) ;
signal hundreds_mm : std_logic_vector(3 downto 0);
signal tens_mm : std_logic_vector(3 downto 0);
signal units_mm : std_logic_vector(3 downto 0);
signal distance : std_logic_vector(number_bits-1 downto 0) := "000100101100";
type decimal_places_type is array(0 to 3) of std_logic_vector(3 downto 0);
type display_places_type is array(0 to 3) of std_logic_vector(6 downto 0 );

signal decimal_places : decimal_places_type;
signal display_places : display_places_type;

begin


 trigger_control : entity work.trigger_control(behavior)
							 port map( waiting=>waiting,
										  clock => fpga_clock,
										  trigger => trigger);
	 
 distance_calculation : entity work.distance_calculation(behavior)
									generic map(number_bits) -- length of distance
									port map(clock => fpga_clock,
												calculation_reset => not waiting,
												pulse => pulse,
												distance => distance);
																					
	
												
 binary_to_decimal : entity work.binary_to_decimal(behavior)
								generic map (number_bits)
								port map ( distance=>distance,
											  units_mm => decimal_places(0),
											  tens_mm => decimal_places(1),
											  hundreds_mm => decimal_places(2),
											  thousands_mm => decimal_places(3));

 seven_segments_generate: for i in 0 to 3 generate
					seven_segments: entity work.decodificador(table)
							port map(s => decimal_places(i),
										h => display_places(i));
					end generate seven_segments_generate;
										
	units_display<= display_places(0);
	tens_display <= display_places(1);
	hundreds_display <= display_places(2);
	thousands_display <= display_places(3);
						  
										 
end architecture;
