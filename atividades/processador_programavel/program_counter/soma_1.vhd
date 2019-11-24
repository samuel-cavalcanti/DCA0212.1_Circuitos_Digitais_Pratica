library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity soma_1 is
	generic(numero_de_bits : positive := 16);
	
	port(a: in std_logic_vector(numero_de_bits-1 downto 0);
		  resultado_soma: out std_logic_vector(numero_de_bits-1 downto 0));
end entity;

architecture behavior of soma_1 is
begin
	
	resultado_soma <= std_logic_vector(unsigned(a) +1 );
	
end architecture;