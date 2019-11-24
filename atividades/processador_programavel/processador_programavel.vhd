library ieee;
use ieee.std_logic_1164.all;

entity processador_programavel is 
	generic (numero_de_bits : positive := 16);
	port (clock : in std_logic);

end entity;


architecture behavior of processador_programavel is 
type ula_data is array(1 downto 0) of std_logic_vector(numero_de_bits -1 downto 0);
signal entrada_ula : ula_data;

signal saida_memoria : std_logic_vector (numero_de_bits-1 downto 0);
signal saida_mux : std_logic_vector (numero_de_bits-1 downto 0);
signal saida_ula : std_logic_vector(numero_de_bits -1 downto 0);
signal saida_da_memoria_de_instrucao : std_logic_vector(numero_de_bits-1 downto 0);
signal saida_do_registrador_de_intrucao : std_logic_vector(numero_de_bits-1 downto 0);
signal carregar_registrador_de_intrucao : std_logic;
signal constate : std_logic_vector(8 downto 0);

signal mux_seletor :Std_logic_vector (1 downto 0);
signal operador_ula : std_logic_vector(1 downto 0);


begin 

	
	ula : entity work.ula(behavior)
		generic map ( numero_de_bits)
		port map (entrada_ula(0),entrada_ula(1),operador_ula,saida_ula);
	
	mux : entity work.mux_3x1(behavior)
		generic map ( numero_de_bits)
		port map (saida_ula, saida_memoria, constate, mux_seletor, saida_mux);
	
	registrador_de_instrucao : entity work.registrador_de_instrucao
		generic map (numero_de_bits)
		port map (saida_da_memoria_de_instrucao,
					 carregar_registrador_de_intrucao,
					 clock,
					 saida_do_registrador_de_intrucao);
		
		

		
end architecture;