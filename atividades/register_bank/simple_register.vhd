library ieee;
use ieee.std_logic_1164.all; 

entity simple_register is 
generic (number_bits : positive := 8);
port (d : in std_logic_vector (number_bits-1 downto 0);
		sx : in std_logic;
		sy : in std_logic;
		w : in std_logic;
		clock : in std_logic;
	   data_out: out std_logic_vector(number_bits-1 downto 0));
		
end entity;


architecture behavior of simple_register is 
signal mux_out : std_logic;
signal q: std_logic_vector(number_bits-1 downto 0);
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
				data_out <= (others => '0');
			else
				data_out <= q;
			end if;
		end if; 
	end process;
end architecture;