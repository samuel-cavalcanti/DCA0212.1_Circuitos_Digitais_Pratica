library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity binary_to_decimal is 
 port ( distance : in std_logic_vector (8 downto 0);
		  thousands_mm : out std_logic_vector(3 downto 0);
        hundreds_mm : out std_logic_vector(3 downto 0);
		  tens_mm : out std_logic_vector(3 downto 0);
		  units_mm : out std_logic_vector(3 downto 0));
		  
end binary_to_decimal;

architecture behavior of binary_to_decimal is 

	begin
		process (distance)
	
  -- temporary variable
  variable temp : STD_LOGIC_VECTOR (11 downto 0);
  
  -- variable to store the output BCD number
  -- organized as follows
  -- thousands = bcd(15 downto 12)
  -- hundreds = bcd(11 downto 8)
  -- tens = bcd(7 downto 4)
  -- units = bcd(3 downto 0)
  variable bcd : UNSIGNED (15 downto 0) := (others => '0');

  -- by
  -- https://en.wikipedia.org/wiki/Double_dabble
  
  begin
    -- zero the bcd variable
    bcd := (others => '0');
    
    -- read input into temp variable
	 temp(11 downto 9) := "000"; 
    temp(8 downto 0) := distance;
    
    -- cycle 12 times as we have 12 input bits
    -- this could be optimized, we do not need to check and add 3 for the 
    -- first 3 iterations as the number can never be >4
    for i in 0 to 11 loop
    
      if bcd(3 downto 0) > 4 then 
        bcd(3 downto 0) := bcd(3 downto 0) + 3;
      end if;
      
      if bcd(7 downto 4) > 4 then 
        bcd(7 downto 4) := bcd(7 downto 4) + 3;
      end if;
    
      if bcd(11 downto 8) > 4 then  
        bcd(11 downto 8) := bcd(11 downto 8) + 3;
      end if;
    
      -- thousands can't be >4 for a 12-bit input number
      -- so don't need to do anything to upper 4 bits of bcd
    
      -- shift bcd left by 1 bit, copy MSB of temp into LSB of bcd
      bcd := bcd(14 downto 0) & temp(11);
    
      -- shift temp left by 1 bit
      temp := temp(10 downto 0) & '0';
    
    end loop;
 
    -- set outputs
    units_mm <= STD_LOGIC_VECTOR(bcd(3 downto 0));
    tens_mm <= STD_LOGIC_VECTOR(bcd(7 downto 4));
    hundreds_mm <= STD_LOGIC_VECTOR(bcd(11 downto 8));
    thousands_mm <= STD_LOGIC_VECTOR(bcd(15 downto 12));
 			
		end process;
		
end architecture;