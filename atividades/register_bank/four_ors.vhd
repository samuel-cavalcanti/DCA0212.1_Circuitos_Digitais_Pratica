library ieee;
use ieee.std_logic_1164.all; 


entity four_ors is 
port( vec1 : in std_logic_vector (7 downto 0);
		vec2 : in std_logic_vector (7 downto 0);
	   vec3 : in std_logic_vector (7 downto 0); 		
		vec4 : in std_logic_vector (7 downto 0);
		output_vec : out std_logic_vector (7 downto 0));
end entity;

architecture behavior of four_ors is 

begin
		for_loop: for i in 0 to 7 generate
			output_vec(i) <= vec1(i) or vec2(i) or vec3(i) or vec4(i);
		end generate for_loop;
end architecture;
