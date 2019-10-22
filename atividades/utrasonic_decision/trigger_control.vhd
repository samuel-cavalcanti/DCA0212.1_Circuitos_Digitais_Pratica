library ieee;
use ieee.std_logic_1164.all; 

entity trigger_control is port(waiting : buffer std_logic;
											clock : in std_logic;
											trigger : out std_logic);
end entity;



architecture behavior of trigger_control is 

type t_state is (trigger_state, wait_state );
signal current_state : t_state := wait_state;

signal microsecond_clock : std_logic := '0';
signal start_timer_triger : std_logic := '0';
signal time_of_triger_is_over : std_logic := '0';


begin

 frequency_divider_triger  : entity work.frequency_divider (behavior)
  generic map(500) -- divindo por 500 50mHz/500 
  port map (
			current_frequency  => clock,
			out_frequency  => microsecond_clock );
	
 timer_triger : entity work.timer(behavior)
  generic map(100) -- 100 microseconds , o minimo e 10, 100 pra ter certeza 
  port map (
			start_timer => start_timer_triger ,
			time_is_over => time_of_triger_is_over ,
 			clock => microsecond_clock );
			
	process (clock)
		 begin 
		 
				case current_state is 
			
					when wait_state =>
					
							if waiting = '0' then
								start_timer_triger <= '1';
								trigger <= '1';
								current_state <= trigger_state;
							end if;
					
					when trigger_state =>
							if time_of_triger_is_over = '1' then
								trigger <= '0';
								start_timer_triger <= '0';
								waiting <= '1';
								current_state <= wait_state;
							end if;
							

				end case;
				
	end process;


	
end architecture;