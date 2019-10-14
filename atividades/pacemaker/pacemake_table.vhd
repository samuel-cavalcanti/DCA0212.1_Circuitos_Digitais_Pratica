library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pacemake_table is 
port(recieved_contraction : in std_logic;
	  time_is_over : in std_logic;
	  current_state :in bit_vector (1 downto 0);
	  next_state : out bit_vector (1 downto 0);
	  start_timer : out std_logic;
	  make_contraction: out std_logic);
end entity;	  
	
architecture behavior of pacemake_table is 

begin

--	with  current_state select
--	next_state <= "01" when ("00" or time_is_over), 
--					  --"01" when "01" ,--and  not recieved_contraction and not time_is_over
--					 -- "00" when "01" , --and  recieved_contraction
--				     "10" when "01" , --and not recieved_contraction and time_is_over
--					  "11" when "11",
--					  "00" when "10";
--	
	
	
	
	
end architecture;
