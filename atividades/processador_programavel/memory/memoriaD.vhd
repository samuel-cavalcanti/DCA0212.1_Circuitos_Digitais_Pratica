library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaD is 
	generic (numero_de_bits : positive := 16);
	port ( endereco        : in  std_logic_vector( 8 downto 0);
			 dado_de_entrada : in std_logic_vector(numero_de_bits-1 downto 0);
			 leitura			  : in std_logic;
			 escrita			  : in std_logic;
			 clock 			  : in std_logic;
			 dado_de_saida   : out std_logic_vector(numero_de_bits-1 downto 0));
end entity;


architecture behavior of memoriaD is 
type memoria_ram is array(0 to 256) of std_logic_vector(numero_de_bits-1 downto 0);

signal memoria : memoria_ram;

begin
		process (clock,leitura,escrita) begin
				
				if rising_edge(clock) then
				
					if escrita = '1' then
						memoria(to_integer( unsigned(endereco(7 downto 0)))) <= dado_de_entrada;
					elsif leitura = '1' then
						dado_de_saida <= memoria(to_integer( unsigned(endereco(7 downto 0))));
					end if; 
					
				end if;
				
		end process;


end architecture;