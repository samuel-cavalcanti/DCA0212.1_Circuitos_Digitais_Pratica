library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity menorq is
	generic(numero_de_bits : positive := 16 );
	port(a: in std_logic_vector (numero_de_bits-1 downto 0);
		  b: in std_logic_vector (numero_de_bits-1 downto 0);
		  resultmeq: out std_logic);
end entity;

architecture behavior of menorq is
begin
	
	
	resultmeq <= '1' when unsigned(a) < unsigned(b) else
					 '0';

	
end architecture;