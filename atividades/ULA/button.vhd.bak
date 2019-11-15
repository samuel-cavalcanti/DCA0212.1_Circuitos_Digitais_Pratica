library ieee;
use ieee.std_logic_1164.all;


entity button is port(
		key_0 : in std_logic;
		keyonoff : out std_logic);

end entity;



architecture behavior of button is	


begin

	process (key_0)
		variable on_off : std_logic:= '0';
		begin
		
			on_off := not on_off;
			
			keyonoff <= on_off;
		
		end process;



end architecture;