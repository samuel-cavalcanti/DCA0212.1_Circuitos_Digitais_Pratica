library ieee;
use ieee.std_logic_1164.all; 

entity decodificador  is 
	port ( s: in std_logic_vector (4 downto 1);
       	 h: out std_logic_vector (6 downto 0 ));
			 
end decodificador;


architecture table of decodificador is begin
	 h(0) <= (not s(4) and not s(3) and not s(2) and s(1)) or (not s(4) and s(3) and not s(2) and not s(1)) or ( s(4) and not s(3) and s(2) and  s(1))
	 or ( s(4) and s(3) and not  s(2) and s(1));
	 
	 
	 h(1) <= (not s(4) and s(3) and not s(2) and s(1)) or  (not s(4) and s(3) and s(2) and not s(1)) or ( s(4) and not s(3) and s(2) and  s(1)) 
	 or ( s(4) and s(3) and not  s(2) and not  s(1)) or ( s(4) and s(3) and s(2) and not s(1)) or ( s(4) and s(3) and  s(2) and  s(1));
	 
	 h(2) <= (not s(4) and not s(3) and s(2) and not s(1)) or ( s(4) and s(3) and s(2) and not s(1)) or ( s(4) and s(3) and  s(2) and  s(1))
	 or ( s(4) and s(3) and not  s(2) and not  s(1));
	 
	 h(3) <= (not s(4) and not s(3)  and not s(2)  and s(1)) or (not s(4) and s(3) and  not s(2) and not s(1) ) or  ( not s(4) and s(3) and s(2) and s(1) )
	 or ( s(4) and s(3) and  s(2) and  s(1)) or ( s(4) and  not s(3) and s(2) and not s(1));  
	 
	 h(4) <= (not s(4) and not s(3) and not s(2) and s(1)) or ( not s(4) and not s(3) and s(2) and s(1)) or ( not s(4) and s(3) and not s(2) and not s(1) ) or
	 (not s(4) and s(3) and  not s(2) and s(1)) or  (not s(4) and s(3) and s(2) and s(1)) or  (s(4) and not s(3) and not s(2) and not s(2) and s(1)) ;
	 

	 h(5) <= (not s(4) and not s(3) and not s(2) and s(1))  or ( not s(4) and not s(3) and  s(2) and not s(1)) or ( not s(4) and not s(3) and s(2) and s(1) ) or
	 (not s(4) and s(3) and s(2) and s(1)) or ( s(4) and s(3) and not  s(2) and s(1)) ;
	 
	 h(6) <= (not s(4) and not s(3) and not s(2) and not s(1)) or ( not s(4) and not s(3) and  not s(2) and s(1)) or ( not s(4) and s(3) and s(2) and s(1) )
	 or ( s(4) and s(3) and not  s(2) and  not s(1)) ;
	 
end table;
	 
