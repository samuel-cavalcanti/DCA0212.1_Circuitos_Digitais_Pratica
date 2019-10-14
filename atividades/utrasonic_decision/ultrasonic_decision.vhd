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
signal sensor_status : std_logic_vector (1 downto 0) := "00";
signal distance_array : real range 0.0 to 30.0 ;
signal decision_status :  std_logic_vector (1 downto 0) := "00";
signal start_timer : std_logic := '0';
signal time_is_over : std_logic := '0';
signal milliseconds_clock  : std_logic :='0';
signal option_banck  : std_logic := '0'; -- 0 para ler, 1 para escrever
signal data_banck  : std_logic_vector (9 downto 0);

begin  

  frequency_divider  : entity work.frequency_divider (behavior)
  port map (
			current_frequency  => clock,
			out_frequency  => milliseconds_clock );
	
timer : entity work.timer(behavior)
		  port map (
			start_timer => start_timer ,
			time_is_over => time_is_over ,
			clock => milliseconds_clock );
	
--register_banck : entity work.register_banck (behavior)
--					port (option_banck => option,
--							data_banck);

	 

process (clock) is  begin

		if (clock'event and clock = '1') then
		
			case current_state is
		
				when start_state =>
					if start_button = '0' then
						current_state <= wait_state ;
						start_timer <= '1';
						
					end if;
					
				when wait_state =>
					if time_is_over ='1' then
						current_state <= read_sensors_state ;
						start_timer <= '0';
					end if ;
					
					
				when read_sensors_state =>
					if sensor_status = "11" then
						current_state <= decision_state ;
					end if ;
					
				when decision_state => 
					if (data_banck < "1010") then -- 10 em binario ,  um exemplo
						decision_array  <= "00";
					elsif (data_banck < "10100") then
						decision_array  <= "01";
					else
						decision_array <= "10";
						
					end if;
					
					current_state <= wait_state ;
					
				end case;
		
		end if;

	end process;

end architecture;