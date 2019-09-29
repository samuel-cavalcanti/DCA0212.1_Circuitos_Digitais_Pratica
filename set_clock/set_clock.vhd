library ieee;
use ieee.std_logic_1164.all;

entity set_clock  is 
port (
	clk_in: in std_logic;
	clk_out :buffer std_logic;
	contador : buffer integer range 0 to 250
);
end set_clock;


architecture behavior of set_clock is begin
	process (clk_in) 
	
	begin
		if (clk_in'event and clk_in = '1') then
			contador <= contador + 1;
			if (contador = 250) then
				contador <= 0;
				if (clk_out = '1') then
					clk_out <= '0';
				else
					clk_out <= '1';
				end if;
			end if;
		end if;
		
end process;
end behavior;
