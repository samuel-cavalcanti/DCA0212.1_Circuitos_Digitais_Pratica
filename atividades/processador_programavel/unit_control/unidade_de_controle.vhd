library ieee;
use ieee.std_logic_1164.all; 

entity unidade_de_controle is 
generic(numero_de_bits: positive := 16);
port ( dados_da_memoria_de_instrucoes : in std_logic_vector(numero_de_bits -1 downto 0);
		 saida_comparador_datapath 	  : in std_logic;
		 saida_menor_q_datapath         : in std_logic;
		 saida_para_contador_de_programa: in std_logic_vector(numero_de_bits-1 downto 0);
		 clock 								  : in std_logic;
		 endereco_memoria_de_instrucoes : out std_logic_vector(numero_de_bits-1 downto 0);
		 leitura_memoria_de_instrucoes  : out std_logic;
		 endereco_memoria_de_dados		  : out std_logic_vector(7 downto 0);
		 ler_memoria_de_dados			  : out std_logic;
		 escrever_memoria_de_dados		  : out std_logic;
		 constante							  : out std_logic_vector(7 downto 0);
		 seletor_mux						  : out std_logic_vector(1 downto 0);
		 endereco_para_escrita_no_banco : out std_logic_vector(3 downto 0);
		 escrever_no_banco				  : out std_logic;
		 endereco_1_para_leitura_banco  : out std_logic_vector(3 downto 0);
		 habilitar_leitura_no_banco	  : out std_logic_vector(1 downto 0);
		 endereco_2_para_leitura_banco  : out std_logic_vector(3 downto 0);
		 seletor_ALU						  : out std_logic_vector(1 downto 0);
		 estado_atual_debug				  : out std_logic_vector(2 downto 0);
		 saida_registrador_de_instrucao_debug: out std_logic_vector(numero_de_bits-1 downto 0));
end entity;


architecture behavior of unidade_de_controle is 


signal incrementar_contador_de_programa : std_logic;
signal limpar_contador_de_programa      : std_logic;
signal escrever_contador_de_programa    : std_logic;
signal carregar_registrador_de_instrucao: std_logic;
signal saida_registrador_de_instrucao   : std_logic_vector(numero_de_bits -1 downto 0);
signal saida_contador_de_programa       : std_logic_vector(numero_de_bits-1 downto 0);
signal saida_somador                    : std_logic_vector(numero_de_bits-1 downto 0);
signal saida_mux_somador					 : std_logic_vector(numero_de_bits-1 downto 0);
signal estado_atual                     : std_logic_vector(2 downto 0);
signal pular_se_0                       : std_logic_vector(numero_de_bits-1 downto 0) := (others => '0') ;

begin
	somador : entity work.somador_complemento_de_2(behavior)
					generic map (numero_de_bits)
					port map (saida_contador_de_programa,
								 saida_mux_somador,
								 saida_somador);
								 
	contador_de_programa: entity work.contador_de_programa(behavior)
					generic map (numero_de_bits)
					port map (limpar_contador_de_programa,
								 incrementar_contador_de_programa,
								 clock,
								 escrever_contador_de_programa,
								 saida_somador,
								 saida_contador_de_programa);
								 
								 
   registrador_de_instrucao: entity work.registrador_de_instrucao(behavior)
						generic map(numero_de_bits)
						port map(dados_da_memoria_de_instrucoes,
									carregar_registrador_de_instrucao,
									clock,
									saida_registrador_de_instrucao);
									
	bloco_de_controle: entity work.bloco_de_controle(behavior)
						generic map (numero_de_bits)
						port map (clock,	-- 1				 
									 saida_registrador_de_instrucao,  --2   
									 saida_comparador_datapath,				--3
								    saida_menor_q_datapath,	 
									 escrever_contador_de_programa,     --4
									 limpar_contador_de_programa,	     --5
									 incrementar_contador_de_programa,  --6 
									 leitura_memoria_de_instrucoes,	  --7
									 carregar_registrador_de_instrucao,   --8 
									 endereco_memoria_de_dados,	  
									 ler_memoria_de_dados,	  
									 escrever_memoria_de_dados,		
									 constante,						  
									 seletor_mux,			 
									 endereco_para_escrita_no_banco,  
									 escrever_no_banco,		  
									 endereco_1_para_leitura_banco,	  
									 endereco_2_para_leitura_banco,     
									 habilitar_leitura_no_banco,		  
									 seletor_ALU,
									 estado_atual);
	
	mux_somador: entity work.mux_somador(behavior)
					 generic map (numero_de_bits)
					 port map (saida_para_contador_de_programa,
								  pular_se_0,
								  estado_atual,
								  saida_mux_somador);
	
	endereco_memoria_de_instrucoes <= saida_contador_de_programa;
	saida_registrador_de_instrucao_debug <= saida_registrador_de_instrucao;

	pular_se_0(7 downto 0) <= saida_registrador_de_instrucao(7 downto 0);
	

	
	

end architecture;
