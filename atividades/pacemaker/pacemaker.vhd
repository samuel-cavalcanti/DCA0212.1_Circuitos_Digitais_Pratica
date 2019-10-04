library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity pacemaker is 
port (recieved_contraction :in std_logic;
		clock : in std_logic;
		make_contraction: out std_logic);
end pacemaker;


architecture behavior of pacemaker is 

signal time_is_over : std_logic := '0';
signal start_timer : std_logic;

type t_state is (reset_timer_state, wait_state, contraction_state);

signal current_state : t_state;
signal next_state : t_state;


begin	
 
	 timer : entity work.timer(behavior)
	 port map (
		clock => clock,
		start_timer => start_timer,
		time_is_over => time_is_over);
		

	process (clock) is  
	begin
	
		 current_state <= next_state;
		 
		if (clock'event and clock ='1') then
			case current_state is 
				when reset_timer_state =>
					make_contraction <= '0';
					start_timer <= '1';
					next_state <= wait_state;
					
				when wait_state =>
					if recieved_contraction = '1'then
						start_timer <= '0';
						next_state <= reset_timer_state;
					elsif time_is_over = '1' then
						next_state <= contraction_state;
					else
						next_state <= wait_state;
					end if;
									
				when contraction_state =>
				 make_contraction <='1';
				 start_timer <= '0';
				 next_state <= reset_timer_state;
				
			end case;
		
		end if;
		
	end process;
		
end architecture;