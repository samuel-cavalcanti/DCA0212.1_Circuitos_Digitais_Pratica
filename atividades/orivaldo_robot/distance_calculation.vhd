library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity distance_calculation is
	generic (number_bits : positive :=9);

	port (clock : in std_logic; 
			calculation_reset : in std_logic;
			pulse: in std_logic;
			distance: out std_logic_vector ( number_bits - 1 downto 0));

end entity;


architecture behavior of distance_calculation is 

signal pulse_width : integer;
signal microsecond_clock : std_logic;


begin

 frequency_divider_triger  : entity work.frequency_divider (behavior)
  generic map(500)
  port map (
			current_frequency  => clock,
			out_frequency  => microsecond_clock );

counter_pulse : entity work.counter(behavior)
					 generic map (23200) -- max range of counter, 2610/58 = 400 cm (valor maximo do ultrassom)
					 port map(clock => microsecond_clock, -- clock em microseconds !! conta +1 a cada 1 microsegundo 
								 enable => pulse,
								 reset  => calculation_reset,
								 counter_data => pulse_width);
								 
								 
-- segundo o datasheet para calcular a a distancia do sensor em cm
-- deve-se dividir a duracao do pulso por 58
distance_calculation : process (pulse)
								variable integer_distance : integer range 0 to 232000;
								begin
									if (pulse = '0') then
										integer_distance := pulse_width*10; -- agora esta em mm 
										integer_distance := integer_distance/58;
										distance <= std_logic_vector(to_unsigned(integer_distance,distance'length));
									end if;
							 end process;
							
					
					
end architecture;