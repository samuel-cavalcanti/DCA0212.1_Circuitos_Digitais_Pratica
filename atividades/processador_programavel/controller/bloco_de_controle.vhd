library ieee;
use ieee.std_logic_1164.all; 

entity bloco_de_controle is
	generic (numero_de_bits : positive := 16);
	port (clock									     : in std_logic;
			estado_atual							  : buffer std_logic_vector(1 downto 0);
			saida_registrador_de_instrucao     : in std_logic_vector(numero_de_bits -1 downto 0);
			saida_comparador 					     : in std_logic;
			escrever_contador_de_programa      : out std_logic;
			limpar_contador_de_programa	     : out std_logic;
			incrementar_contador_de_programa   : out std_logic;
			ler_memoria_de_instrucoes			  : out std_logic;
			ler_registrador_de_instrucao       : out std_logic;
			endereco_memoria_de_dados			  : out std_logic_vector(7 downto 0);
			ler_memoria_de_dados					  : out std_logic;
			escrever_memoria_de_dados			  : out std_logic;
			constante								  : out std_logic_vector(7 downto 0);
			seletor_mux								  : out std_logic_vector(1 downto 0);
			endereco_para_escrita_no_banco	  : out std_logic_vector(3 downto 0);
			escrever_no_banco						  : out std_logic;
			endereco_1_para_leitura_banco		  : out std_logic_vector(3 downto 0);
			endereco_2_para_leitura_banco      : out std_logic_vector(3 downto 0);
			habilitar_leitura_no_banco			  : out std_logic_vector(1 downto 0);
			seletor_ALU								  : out std_logic_vector(1 downto 0)
		);

end entity;


architecture behavior of bloco_de_controle is 
constant numero_de_bits_operecao : integer := 4;

constant Inicio   : std_logic_vector(1 downto 0) := "00";
constant Busca    : std_logic_vector(1 downto 0) := "01";
constant Execucao : std_logic_vector(1 downto 0) := "10";
constant Saltar   : std_logic_vector(1 downto 0) := "11";

signal reinicar_maquina_de_estados : std_logic:= '0';
--signal estado_atual: std_logic_vector(1 downto 0) := Inicio;
signal operacao : std_logic_vector(numero_de_bits_operecao -1  downto 0);

begin
	
	decodificador : entity work.decodificador(behavior)
						generic map (numero_de_bits)
						port map (saida_registrador_de_instrucao,
									 endereco_memoria_de_dados,
									 ler_memoria_de_dados,
								    escrever_memoria_de_dados,			 
									 constante,								  
									 seletor_mux,								  
									 endereco_para_escrita_no_banco,	  
									 escrever_no_banco,					 
									 endereco_1_para_leitura_banco,		
									 habilitar_leitura_no_banco,
									 endereco_2_para_leitura_banco,
									 seletor_ALU);
	
	
	maquina_de_estados : entity work.maquina_de_estados(behavior)
								port map (clock,
											 reinicar_maquina_de_estados,
											 saida_comparador,
											 estado_atual);
											 
		
	escrever_contador_de_programa<= '1' when estado_atual = Saltar else
											  '0';
											  
	ler_memoria_de_instrucoes <= '1' when estado_atual = Busca else
										  '0';
										  
	limpar_contador_de_programa<= '1' when estado_atual = Inicio else
											'0';
	
	incrementar_contador_de_programa <= '1' when estado_atual = Busca else
													'0';
													
	ler_registrador_de_instrucao <= '1' when estado_atual = Busca else
											  '0';
		
end architecture;