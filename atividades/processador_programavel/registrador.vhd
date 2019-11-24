library ieee;
use ieee.std_logic_1164.all;

entity registrador  is 
	generic(numeros_de_bits : positive := 16);
	port (entrada_de_dados : in std_logic_vector(numeros_de_bits-1 downto 0);
			clock : in std_logic;
			escrever : in std_logic;
			limpar : in std_logic;
			saida_de_dados : out std_logic_vector(numeros_de_bits-1 downto 0));
			
end entity;


architecture behavior of registrador is 

signal memoria : std_logic_vector(numeros_de_bits-1 downto 0);

begin

	process (clock,escrever,limpar) begin
	
			if limpar = '1' then
				memoria <= (others => '0');
			elsif escrever = '1' and  rising_edge(clock) then
				memoria <= entrada_de_dados;
			end if;
			
	end process;
	
	saida_de_dados <= memoria;

end architecture;
	