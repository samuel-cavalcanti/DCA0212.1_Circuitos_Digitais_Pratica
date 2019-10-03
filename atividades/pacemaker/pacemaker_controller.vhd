library ieee;
use ieee.std_logic_1164.all;

entity pacemaker_controller is
port(recieved_contraction : in std_logic;
	  time_is_over : in std_logic;	
	  start_timer : out std_logic;
	  make_contraction : out std_logic);
	  
end pacemaker_controller;

architecture behavior of pacemaker_controller is 
begin
		
		start_timer <= not ( not recieved_contraction and  not time_is_over );
		make_contraction <= not recieved_contraction and time_is_over;
	
end architecture;