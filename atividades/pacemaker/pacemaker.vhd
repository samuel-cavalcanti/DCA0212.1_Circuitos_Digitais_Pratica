library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity pacemaker is 
port (recieved_contraction :in std_logic;
		make_contraction: out std_logic);
end pacemaker;


architecture behavior of pacemaker is 

constant clock_frequency : integer :=100e6; -- 100 MHZ
constant clock_period : time := 1000 ms / clock_frequency;

signal clock : std_logic :='1';
signal time_is_over : std_logic := '0';
signal start_timer : std_logic;

type t_state is (reset_timer_state, wait_state, contraction_state);

signal state : t_state;


begin	 
	 timer : entity work.timer(behavior)
	 port map (
		clock => clock,
		start_timer => start_timer,
		time_is_over => time_is_over);
	
	clock <= not clock after clock_period /2;
	
	process is 
	begin
		wait until rising_edge(clock);
		case state is 
			
			when reset_timer_state =>
				make_contraction <= '0';
				start_timer <= '1';
				state <= wait_state;
				
			when wait_state =>
				if recieved_contraction = '1'then
					start_timer <= '0';
					state <= reset_timer_state;
				elsif time_is_over = '1' then
					state <= contraction_state;
				else
					state <= wait_state;
				end if;
								
			when contraction_state =>
			 make_contraction <='1';
			 start_timer <= '0';
			 state <= reset_timer_state;
			
		end case;
		
	end process;
		
end architecture;