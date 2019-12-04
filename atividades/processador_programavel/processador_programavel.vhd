library ieee;
use ieee.std_logic_1164.all;

entity processador_programavel is 
	generic (numero_de_bits : positive := 16);
	port (clock                    : in std_logic; --	KEY-3
			saida_display_enderesso_1: out std_logic_vector(6 downto 0); --HEX7 Enderr(0)
			saida_display_enderesso_2: out std_logic_vector(6 downto 0); --HEX6 Enderr(1)
			saida_display_banco_1    : out std_logic_vector(6 downto 0); --HEX5 Banco(0)
			saida_display_banco_2    : out std_logic_vector(6 downto 0); --HEX4 Banco(1)
			saida_display_ALU	       : out std_logic_vector(6 downto 0); --HEX3 ALU
			saida_display_estado     : out std_logic_vector(6 downto 0); --HEX2 estado
			saida_display_contador   : out std_logic_vector(6 downto 0); --HEX1 contador
			saida_display_operacao   : out std_logic_vector(6 downto 0); --HEX0 operacao`
			saida_comprador          : out std_logic;-- LEDR5
			saida_menor_q            : out std_logic;-- LEDR17
			estado_botao				 : out std_logic_vector(1 downto 0)); --LEDG7 e LEDG8

end entity;


architecture behavior of processador_programavel is 
signal buttom_clock                   : std_logic;
signal dados_da_memoria_de_instrucoes : std_logic_vector(numero_de_bits -1 downto 0);
signal saida_comparador_datapath 	  : std_logic;
-- nossa instrucao
signal saida_menor_q_datapath			  : std_logic;
signal saida_para_contador_de_programa: std_logic_vector(numero_de_bits-1 downto 0);

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
-- debug 
signal saida_ALU                           : std_logic_vector(numero_de_bits -1 downto 0);
signal saida_banco_2						       : std_logic_vector(numero_de_bits -1 downto 0);
signal saida_registrador_de_instrucao_debug: std_logic_vector(numero_de_bits -1 downto 0);
signal estado_atual_debug                  : std_logic_vector(2 downto 0);
signal saida_estado			                : std_logic_vector(3 downto 0):= "0000";
signal operacao									 : std_logic_vector(3 downto 0);
begin 
	
	buttom_clock <= not clock;
	
	
	unidade_de_controle : entity work.unidade_de_controle(behavior)
							generic map (numero_de_bits)
							port map ( dados_da_memoria_de_instrucoes,
										  saida_comparador_datapath,
										  saida_menor_q_datapath,
										  saida_para_contador_de_programa,
										  buttom_clock,
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
										  estado_atual_debug,
										  saida_registrador_de_instrucao_debug);
	
	bloco_operacional : entity work.bloco_operacional(behavior)
								 generic map (numero_de_bits)
								 port map (buttom_clock,
											  constante,
											  seletor_mux,
											  endereco_para_escrita_no_banco,
											  habilitar_escrita_no_banco,
											  endereco_1_para_leitura_banco,
											  habilitar_leitura_no_banco,
											  endereco_2_para_leitura_banco,
											  seletor_ALU,
											  entrada_de_dados_para_memoriaD,
											  saida_comparador_datapath,
											  saida_menor_q_datapath,
											  saida_de_dados_para_memoriaD,
											  saida_para_contador_de_programa,
											  saida_ALU,
											  saida_banco_2);	
											  
											  
   memoria_de_dados : entity work.memoriaD(behavior)
								generic map (numero_de_bits)
								port map (endereco_memoria_de_dados,
											 saida_de_dados_para_memoriaD,
											 ler_memoria_de_dados,
											 escrever_memoria_de_dados,
											 buttom_clock,
											 entrada_de_dados_para_memoriaD);
											 
											 
											 
  memoria_de_instrucoes : entity work.memoria_de_instrucoes(behavior)
								generic map (numero_de_bits)
								port map (clock,
											 leitura_memoria_de_instrucoes,
											 endereco_memoria_de_instrucoes,
											 saida_da_memoria => dados_da_memoria_de_instrucoes);
		

   saida_estado(2 downto 0) <= estado_atual_debug(2 downto 0);
	saida_comprador <= saida_comparador_datapath;	
	saida_menor_q <= saida_menor_q_datapath;
	operacao(3 downto 0) <= saida_registrador_de_instrucao_debug(15 downto 12);
	
	estado_botao(0) <= buttom_clock;
	estado_botao(1) <= buttom_clock;
	
  
														 
  display_ula : entity work.display_7_segmentos(behavior)
					port map (saida_ALU(3 downto 0),saida_display_ALU);
					
  display_adress_1 : entity work.display_7_segmentos(behavior)
					port map (endereco_1_para_leitura_banco(3 downto 0),saida_display_enderesso_1);
					
  display_adress_2 : entity work.display_7_segmentos(behavior)
					port map (endereco_2_para_leitura_banco(3 downto 0),saida_display_enderesso_2);
  
  display_banco_1 : entity work.display_7_segmentos(behavior)
					port map (saida_de_dados_para_memoriaD(3 downto 0), saida_display_banco_1);
					
  display_banco_2 : entity work.display_7_segmentos(behavior)
					port map (saida_banco_2(3 downto 0), saida_display_banco_2);
  
  display_estado :  entity work.display_7_segmentos(behavior)
					port map (saida_estado, saida_display_estado);
					
  display_operacao :  entity work.display_7_segmentos(behavior)
					port map (operacao, saida_display_operacao);
  
  display_contador_de_intrucoes: entity work.display_7_segmentos(behavior)
					port map (endereco_memoria_de_instrucoes(3 downto 0), saida_display_contador);
  
					
end architecture;