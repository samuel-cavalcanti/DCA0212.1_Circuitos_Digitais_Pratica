library ieee;
use ieee.std_logic_1164.all;

entity contador_de_programa is -- 454
generic(numero_de_bits : positive := 16);

port( limpar_registrador: in std_logic;
		incrementar_registrador: in std_logic;
		clock : in std_logic;
		escrever : in std_logic;
		saida_da_soma_jump : in std_logic_vector(numero_de_bits-1 downto 0);
		saida_contador_de_programa: out std_logic_vector(numero_de_bits-1 downto 0) );
end entity;


architecture behavior of contador_de_programa is 

signal entrada_registrador : std_logic_vector(numero_de_bits-1 downto 0);
signal saida_registrador : std_logic_vector(numero_de_bits-1 downto 0);
signal saida_soma_1 : std_logic_vector(numero_de_bits-1 downto 0);

begin

	entrada_registrador <= saida_da_soma_jump when escrever ='1' else
								  saida_soma_1;
								  
	
	registrador: entity work.registrador(behavior)
				generic map (numero_de_bits)
				port map (entrada_de_dados => entrada_registrador,
							 clock => clock,
							 escrever => escrever or incrementar_registrador,
							 limpar => limpar_registrador,
							 saida_de_dados => saida_registrador);
							 
	soma_1 : entity work.soma_1(behavior)
				generic map (numero_de_bits)
				port map (saida_registrador,saida_soma_1);
				
	
	saida_contador_de_programa <= saida_registrador;
				 

end architecture;