library ieee;
use ieee.std_logic_1164.all;


entity button is port(
		key_0 : in std_logic;
		keyonoff : buffer std_logic);

end entity;



architecture behavior of button is	


begin

	process (key_0)
--		variable on_off : std_logic:= '0';
		begin
			if key_0'event and key_0 ='1' then
		
--				on_off := not on_off;
			
				keyonoff <= not keyonoff;
			end if ;
		
		end process;



end architecture;