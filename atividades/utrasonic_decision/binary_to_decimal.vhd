library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity binary_to_decimal is 
 generic(number_bits : positive :=12);
 port ( distance : in std_logic_vector (number_bits-1 downto 0);
		  thousands_mm : out std_logic_vector(3 downto 0); -- extender isso a milhares
        hundreds_mm : out std_logic_vector(3 downto 0);
		  tens_mm : out std_logic_vector(3 downto 0);
		  units_mm : out std_logic_vector(3 downto 0));
		  
end binary_to_decimal;

architecture behavior of binary_to_decimal is 

	begin
		process (distance)
		variable i : integer := 0;
		
		variable bdc : std_logic_vector (24 downto 0); -- entender esse carai
		
		begin
			bdc := (others => '0');
			bdc (11 downto 0) := distance;
			
			for i in 0 to 11 loop
					-- left shift one bit
					bdc(23 downto 0) := bdc(22 downto 0) & '0';
					
					-- check phase
					
					if ( i < 11) then	
					
						if (bdc(12 downto 9) > "0100") then
							bdc(12 downto 9) := 	bdc(12 downto 9) + "0011";
						end if;
						
						if (bdc(16 downto 13) > "0100") then
							bdc(16 downto 13) := bdc(16 downto 13) +"0011";
						end if;
							
							
						if (bdc(20 downto 17) > "0100" ) then
							bdc(20 downto 17) := bdc(20 downto 17) +"0011";
						end if; 
						
						if (bdc(24 downto 21) > "0100" ) then
							bdc(24 downto 21) := bdc(24 downto 21) +"0011";
						end if; 
						
					end if;
					
				end loop;
		
				-- the three BDC number are put in output
				thousands_mm <= bdc(24 downto 21);
				hundreds_mm <= bdc(20 downto 17);
				tens_mm <= bdc(16 downto 13);
				units_mm <= bdc(12 downto 9);
				
		end process;
		
end architecture;