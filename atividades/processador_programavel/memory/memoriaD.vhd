library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaD is 
	generic (numero_de_bits : positive := 16);
	port ( endereco        : in  std_logic_vector( 7 downto 0);
			 dado_de_entrada : in std_logic_vector(numero_de_bits-1 downto 0);
			 leitura			  : in std_logic;
			 escrita			  : in std_logic;
			 clock 			  : in std_logic;
			 dado_de_saida   : out std_logic_vector(numero_de_bits-1 downto 0));
end entity;


architecture behavior of memoriaD is 
type memoria_ram is array(0 to 19) of std_logic_vector(numero_de_bits-1 downto 0);

signal memoria : memoria_ram := ( 0  => "0000000000000000",
											 1  => "0000000000000001",
											 2  => "0000000000000010",
											 3  => "0000000000000011",
											 4  => "0000000000000100",
											 5  => "0000000000000101",
											 6  => "0000000000000110",
											 7  => "0000000000000111",
											 8  => "0000000000001000",
											 9  => "0000000000001001",
											 10 => "0000000000001010",
											 11 => "0000000000001011",
											 12 => "0000000000001100",
											 13 => "0000000000001110",
											 14 => "0000000000001111",
											 15 => "0000000000010000",
											 16 => "0000000000010001",
											 18 => "0000000000001010",
											others => (others=> '0'));-- 
											 

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