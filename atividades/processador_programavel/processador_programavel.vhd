library ieee;
use ieee.std_logic_1164.all;

entity processador_programavel is 
	generic (numero_de_bits : positive := 16);
	port (clock : in std_logic;
			saida_banco_2: out std_logic_vector(numero_de_bits-1 downto 0);
			saida_ALU : out std_logic_vector(numero_de_bits-1 downto 0);
			saida_memoria_de_dados: out std_logic_vector(numero_de_bits-1 downto 0);
			saida_comprador : out std_logic;
			estado_atual_debug: out std_logic_vector(2 downto 0);
			saida_memoria_de_instrucoes:out std_logic_vector(numero_de_bits-1 downto 0);
			habilitar_escrita_no_banco_debug : out std_logic);

end entity;


architecture behavior of processador_programavel is 
signal dados_da_memoria_de_instrucoes : std_logic_vector(numero_de_bits -1 downto 0);
signal saida_comparador_datapah 		  : std_logic;
signal endereco_memoria_de_instrucoes : std_logic_vector(numero_de_bits-1 downto 0);
signal leitura_memoria_de_instrucoes  : std_logic;
signal endereco_memoria_de_dados		  : std_logic_vector(7 downto 0);
signal ler_memoria_de_dados			  : std_logic;
signal escrever_memoria_de_dados		  : std_logic;
signal constante							  : std_logic_vector(7 downto 0);
signal seletor_mux						  : std_logic_vector(1 downto 0);
signal endereco_para_escrita_no_banco : std_logic_vector(3 downto 0);
signal habilitar_escrita_no_banco	  : std_logic;
signal endereco_1_para_leitura_banco  : std_logic_vector(3 downto 0);
signal habilitar_leitura_no_banco	  : std_logic_vector(1 downto 0);
signal endereco_2_para_leitura_banco  : std_logic_vector(3 downto 0);
signal seletor_ALU						  : std_logic_vector(1 downto 0);
signal entrada_de_dados_para_memoriaD : std_logic_vector(numero_de_bits- 1 downto 0);
signal saida_de_dados_para_memoriaD   : std_logic_vector(numero_de_bits- 1 downto 0);

begin 
	
	unidade_de_controle : entity work.unidade_de_controle(behavior)
							generic map (numero_de_bits)
							port map ( dados_da_memoria_de_instrucoes,
										  saida_comparador_datapah,
										  clock,	  
										  endereco_memoria_de_instrucoes, 
										  leitura_memoria_de_instrucoes,
										  endereco_memoria_de_dados,		   
										  ler_memoria_de_dados,			
										  escrever_memoria_de_dados,		
										  constante,							 
										  seletor_mux,						  
										  endereco_para_escrita_no_banco, 
										  habilitar_escrita_no_banco,				 
										  endereco_1_para_leitura_banco,  
										  habilitar_leitura_no_banco,	  
										  endereco_2_para_leitura_banco,  
										  seletor_ALU,
										  estado_atual_debug);
	
	bloco_operacional : entity work.bloco_operacional(behavior)
								 generic map (numero_de_bits)
								 port map (clock,
											  constante,
											  seletor_mux,
											  endereco_para_escrita_no_banco,
											  habilitar_escrita_no_banco,
											  endereco_1_para_leitura_banco,
											  habilitar_leitura_no_banco,
											  endereco_2_para_leitura_banco,
											  seletor_ALU,
											  entrada_de_dados_para_memoriaD,
											  saida_comparador_datapah,
											  saida_de_dados_para_memoriaD,
											  saida_ALU,
											  saida_banco_2
											  );	
											  
   memoria_de_dados : entity work.memoriaD(behavior)
								generic map (numero_de_bits)
								port map (endereco_memoria_de_dados,
											 saida_de_dados_para_memoriaD,
											 ler_memoria_de_dados,
											 escrever_memoria_de_dados,
											 clock,
											 entrada_de_dados_para_memoriaD);
											 
											 
  memoria_de_instrucoes : entity work.memoria_de_instrucoes(behavior)
								generic map (numero_de_bits)
								port map (clock,
											 leitura_memoria_de_instrucoes,
											 endereco_memoria_de_instrucoes,
											 dados_da_memoria_de_instrucoes);
														 
 saida_memoria_de_instrucoes <= dados_da_memoria_de_instrucoes;											 
 saida_comprador <= saida_comparador_datapah;
 saida_memoria_de_dados <= saida_de_dados_para_memoriaD;
 habilitar_escrita_no_banco_debug <= habilitar_escrita_no_banco;
		
end architecture;