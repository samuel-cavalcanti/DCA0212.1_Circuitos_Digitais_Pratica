library ieee;
use ieee.std_logic_1164.all; 

entity utrassonic_sensor is 
	port(--waiting : buffer std_logic; -- key 0
    	 fpga_clock : in std_logic; -- CLOCK_50 
		 pulse: in std_logic;  -- GPIO A0 --PIN_D25 
		 waiting : in std_logic; -- para testes Key 0 --PIN_G26
		 trigger : out std_logic; -- GPIO A1 --PIN_J22
		 distance : out std_logic_vector(8 downto 0);
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

type decimal_places_type is array(0 to 3) of std_logic_vector(3 downto 0);
type display_places_type is array(0 to 3) of std_logic_vector(6 downto 0 );

signal decimal_places : decimal_places_type;
signal display_places : display_places_type;

signal trigger_out : std_logic := '0';
signal dist : std_logic_vector(8 downto 0) := "000000000";

begin


trigger_generator : entity work.trigger_generator(Behavioral)
							port map (clk => fpga_clock,
										 waiting => waiting,
										 trigger => trigger_out);
	 
distance_calculator : entity work.distance_calculator(Behavioral)
									port map(clk => fpga_clock,
												Calculation_Reset => trigger_out, 
												pulse => pulse,
												Distance => dist);
																					
	
												
 binary_to_decimal : entity work.binary_to_decimal(behavior)
								port map ( distance=>dist,
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
	distance <= dist;
	trigger <= trigger_out;
										 
end architecture;
