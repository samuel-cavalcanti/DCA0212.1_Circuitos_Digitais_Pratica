library ieee;
use ieee.std_logic_1164.all; 

entity ffd is 
port (d: in std_logic_vector (7 downto 0);
		sx, sy,w,clock:in std_logic;
	   data_out: out std_logic_vector(7 downto 0)	
	 );
end ffd;

architecture behavior of ffd is 
signal mux_out : std_logic;
signal q: std_logic_vector(7 downto 0);
signal load : std_logic;
begin
load <= sx and sy and w;
mux_out <= sy and sx;

process (clock,load)
begin
if clock'event and clock = '1' then
	if load = '0' then
		q <= q;
	else
		q <= d;
	end if; 
	
	if mux_out = '0' then
		data_out <= "00000000";
	else
		data_out <= q;
	end if;
end if; 
end process;
end behavior;