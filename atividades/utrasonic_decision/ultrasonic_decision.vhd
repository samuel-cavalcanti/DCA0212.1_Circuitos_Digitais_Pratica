library ieee;
use ieee.std_logic_1164.all; 

entity ultrasonic_decision is 
port (start_button : in std_logic;
		clock : in std_logic;
		decision_array : out std_logic_vector(2 downto 0) );
end entity; 



architecture behavior of ultrasonic_decision is 

type t_state is (start_state,wait_state, read_sensors_state, decision_state);

signal current_state : t_state := start_state;
signal sensor_status : std_logic_vector(1 downto 0) := "00";
signal distance_array : real range 0.0 to 30.0 ;
signal decision_status :  std_logic_vector(1 downto 0) := "00";
signal time_is_over : std_logic := '0';

begin  

--port maps 


process (clock) is  begin

		if (clock'event and clock = '1') then
		
			case current_state is
		
				when start_state =>
					if start_button = '0' then
						current_state <= wait_state;
					end if;
					
				when wait_state =>
					if time_is_over ='1' then
						current_state <= read_sensors_state;
					end if ;
					
					
					
				when read_sensors_state =>
	
					if sensor_status = "11" then
						current_state <= decision_state;
					end if ;
					
				when decision_state =>
					current_state <= wait_state;
					
				end case;
		
		end if;

	end process;

end architecture;