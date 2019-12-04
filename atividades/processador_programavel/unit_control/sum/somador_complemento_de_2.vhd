library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity somador_complemento_de_2 is 
	generic( numero_de_bits: positive := 16);
	port (a     : in std_logic_vector(numero_de_bits-1 downto 0);
			b     : in std_logic_vector(numero_de_bits-1 downto 0);
			saida : out std_logic_vector(numero_de_bits-1 downto 0));

end entity;


architecture behavior of somador_complemento_de_2 is 


begin

saida <= std_logic_vector( to_unsigned(to_integer(unsigned(a)) + to_integer(signed(b)) -1, numero_de_bits)) ;


end architecture;
