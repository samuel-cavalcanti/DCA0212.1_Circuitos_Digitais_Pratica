library ieee;
use ieee.std_logic_1164.all; 

entity decodificador is
	generic (numero_de_bits : positive := 16);
	port (saida_registrador_de_instrucao     : in std_logic_vector(numero_de_bits -1 downto 0);
			estado_atual							  : in std_logic_vector(2 downto 0);
			endereco_memoria_de_dados			  : out std_logic_vector(7 downto 0);
			ler_memoria_de_dados					  : out std_logic;
			escrever_memoria_de_dados			  : out std_logic;
			constante								  : out std_logic_vector(7 downto 0);
			seletor_mux								  : out std_logic_vector(1 downto 0);
			endereco_para_escrita_no_banco	  : out std_logic_vector(3 downto 0);
			escrever_no_banco						  : out std_logic;
			endereco_1_para_leitura_banco		  : out std_logic_vector(3 downto 0);
			habilitar_leitura_no_banco		     : out std_logic_vector(1 downto 0);
			endereco_2_para_leitura_banco      : out std_logic_vector(3 downto 0);
			seletor_ALU								  : out std_logic_vector(1 downto 0)
		);

end entity;


architecture behavior of decodificador is 
constant numero_de_bits_endereco_banco : integer := 4;


signal operacao : std_logic_vector(numero_de_bits_endereco_banco-1 downto 0);
signal endereco_memoriaD : std_logic_vector(7 downto 0);
signal valor_constante : std_logic_vector(7 downto 0);
signal enderecos : std_logic_vector(11 downto 0);

-- Carregar           0  0  0  0 r3,r2,r1,r0 d7,d6,d5,d4,d3,d2,d1,d0
-- Armazenar          0  0  0  1  r3,r2,r1,r0 d7,d6,d5,d4,d3,d2,d1,d0
--							15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0

-- Carregar constante 0  0  1  1  r3,r2,r1,r0 e7,e6,e5,e4,e3,e2,e1,e0
--							15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0

-- Somar              0010 ra3,ra2,ra1,ra0 rb3,rb2,rb1,rb0 rc3,rc2,rc1,rc0
-- Subtrair           0  1  0  0 ra3,ra2,ra1,ra0 rb3,rb2,rb1,rb0 rc3,rc2,rc1,rc0
--							15 14 13 12 11  10  9   8   7   6   5   4   3   2   1   0

---Saltar se zero     0101 ra3,ra2,ra1,ra0 o7,o6,o5,o4,o3,o2,o1,o0
--                    0123 4   5   6   7   8  9  10 11 12 13 14 15
constant Saltar_Se_menor_q : std_logic_vector(3 downto 0) := "0110";
constant Saltar_menor_q : std_logic_vector(2 downto 0) := "101";
constant Saltando_menor_q  : std_logic_vector(3 downto 0)  := "0111";

begin
	operacao <= Saltando_menor_q when estado_atual = Saltar_menor_q else
				   saida_registrador_de_instrucao(15 downto 12);
					
	enderecos <= saida_registrador_de_instrucao(11 downto 0);
	endereco_memoriaD <= saida_registrador_de_instrucao(7 downto 0);
	valor_constante <= saida_registrador_de_instrucao(7 downto 0);
	
	
	
	decodificador_memoria_de_dados: entity work.decodificador_memoria_de_dados(behavior)
											 port map (operacao,
														  endereco_memoriaD,
														  endereco_memoria_de_dados,
														  ler_memoria_de_dados,
														  escrever_memoria_de_dados);
														  
	decodificador_mux : entity work.decodificador_mux(behavior)
							 port map ( operacao,
							           valor_constante,
										  seletor_mux,
										  constante);
										  
	
	
	decodificador_banco : entity work.decodificador_banco(behavior)
									generic map (numero_de_bits_endereco_banco)
									port map (operacao,
												 enderecos,
												 endereco_para_escrita_no_banco,
												 escrever_no_banco,
												 endereco_1_para_leitura_banco,
												 habilitar_leitura_no_banco,
												 endereco_2_para_leitura_banco);
												 
	decodificador_ALU : entity work.decodificador_ALU(behavior)
							 port map (operacao,seletor_ALU);
	
							
end architecture;