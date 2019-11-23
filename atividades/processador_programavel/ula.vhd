library ieee;
use ieee.std_logic_1164.all;

entity ula is 
	generic( numero_de_bits : positive := 16);
		port (a : in std_logic_vector(numero_de_bits-1 downto 0);
				b : in std_logic_vector(numero_de_bits-1 downto 0);
				operador : in std_logic_vector(1 downto 0);
				saida_ula : out std_logic_vector(numero_de_bits-1 downto 0) );
	
end entity;


architecture behavior of ula is 
signal saida_somador : std_logic_vector(numero_de_bits-1 downto 0);
signal saida_subtrator : std_logic_vector(numero_de_bits-1 downto 0);
begin

somador : entity work.somador(behavior)
				generic map (numero_de_bits)
				port map (a,b,saida_somador);

subtrator : entity work.subtrator(behavior)
				generic map (numero_de_bits)
				port map(a,b,saida_subtrator);

			
			with operador select

			saida_ula <= a when "00",
			saida_somador when "01",
			saida_subtrator when "10",
			b					 when "11";
					

end architecture;