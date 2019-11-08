library ieee;
use ieee.std_logic_1164.all; 
USE ieee.numeric_std.ALL;
entity controller is
	port (clock : in std_logic;
			readed : in std_logic;
			distance: in std_logic_vector(8 downto 0);
			start_button : in std_logic;
			left_motor : out std_logic_vector(8 downto 0);
			right_motor : out std_logic_vector(8 downto 0);
			waiting : out std_logic;
			acceleration : out std_logic_vector(8 downto 0));
end entity;


architecture behavior of controller is 

type t_state is (start_state, read_sensors_state, decision_state);
signal current_state : t_state := start_state;


begin
	process (clock)
	variable int_dist : integer;
	begin
		if (clock'event and clock = '1') then
		
			case current_state is
		
				when start_state =>
				
					if start_button = '1' then
						current_state <= read_sensors_state;
					end if;
				
					
				when read_sensors_state =>
					
					if readed = '1' then
						current_state <= decision_state;
					end if;
					
					
				when decision_state => 
				 int_dist := to_integer(unsigned(distance));
				 
				 if int_dist < 30 then
					left_motor <= "000000000";
					right_motor<= "011111111";
				 else 
					left_motor <= "011111111";
					right_motor<= "011111111";
				 end if;
				 
				 current_state <= read_sensors_state;
				 
				end case;
		
		end if;
	
	end process;

end architecture;