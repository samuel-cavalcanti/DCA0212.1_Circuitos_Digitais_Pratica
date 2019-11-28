library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity banco_de_registradores is 
	generic (numero_de_bits : positive := 16);
	port (clock : in std_logic;
			dado_de_entrada    : in std_logic_vector(numero_de_bits-1 downto 0);
			endereco_leitura_1 : in std_logic_vector(3 downto 0);
			endereco_leitura_2 : in std_logic_vector(3 downto 0);
			endereco_escrita 	 : in std_logic_vector(3 downto 0);
			habilitar_leitura  : in std_logic_vector(1 downto 0);
			habilitar_escrita  : in std_logic;
			dado_de_saida_1    : out std_logic_vector(numero_de_bits-1 downto 0);
			dado_de_saida_2    : out std_logic_vector(numero_de_bits-1 downto 0));
end entity;


architecture behavior of banco_de_registradores is 
type registradores is array (0 to 15) of std_logic_vector(numero_de_bits-1 downto 0);

signal dado_de_entrada_registrador : registradores;
signal saida_de_dados   : registradores;

signal escrita          : std_logic_vector(numero_de_bits-1 downto 0);
signal limpar           : std_logic_vector(numero_de_bits-1 downto 0);


begin
	
	demux4x16: for i in 0 to 15 generate
								escrita(i) <= habilitar_escrita when to_integer(unsigned(endereco_escrita)) = i else 
																										  '0';
							 end generate demux4x16;
	
	
								
	gerando_registradores : for i in 0 to 15 generate
							registrador : entity work.registrador(behavior)
								generic map (numero_de_bits)
								port map (dado_de_entrada,
											 clock,
											 escrita(i),
											 '0', -- limpar sempre 0
											 saida_de_dados(i));
						end generate gerando_registradores;
						
	
	dado_de_saida_1 <= saida_de_dados(to_integer(unsigned(endereco_leitura_1))) when habilitar_leitura(0) ='1' else
							 (others=>'X');
	
	dado_de_saida_2 <= saida_de_dados(to_integer(unsigned(endereco_leitura_2)))when habilitar_leitura(1) ='1' else
							 (others=>'X');
							 
	
end architecture;