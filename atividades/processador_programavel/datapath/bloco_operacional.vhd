library ieee;
use ieee.std_logic_1164.all;


entity bloco_operacional is 
	generic(numero_de_bits : positive := 16);
	port (clock 									  : in std_logic;
		   constante								  : in std_logic_vector(7 downto 0);
			seletor_mux								  : in std_logic_vector(1 downto 0);
			endereco_para_escrita_no_banco	  : in std_logic_vector(3 downto 0);
			habilitar_escrita_banco				  : in std_logic;
			endereco_1_para_leitura_banco		  : in std_logic_vector(3 downto 0);
			habilitar_leitura_no_banco		     : in std_logic_vector(1 downto 0);
			endereco_2_para_leitura_banco      : in std_logic_vector(3 downto 0);
			seletor_ALU								  : in std_logic_vector(1 downto 0);
			entrada_de_dados_para_memoriaD	  : in std_logic_vector(numero_de_bits-1 downto 0);
			saida_comparador						  : out std_logic;
			saida_menor_q							  : out std_logic;
			saida_de_dados_para_memoriaD		  : out std_logic_vector(numero_de_bits-1 downto 0);
			saida_para_contador_de_programa    : out std_logic_vector(numero_de_bits-1 downto 0);
			saida_ALU_debug						  : out std_logic_vector(numero_de_bits-1 downto 0);
			saida_banco_2_debug					  : out std_logic_vector(numero_de_bits-1 downto 0)
			
		);
end entity;

architecture behavior of bloco_operacional is 
type vector2d is array(1 downto 0) of std_logic_vector(numero_de_bits-1 downto 0);
signal saida_banco: vector2d;
signal saida_mux : std_logic_vector(numero_de_bits-1 downto 0);
signal saida_ALU : std_logic_vector(numero_de_bits-1 downto 0);

begin

 mux : entity work.mux_3x1(behavior)
		  generic map( numero_de_bits)
		  port map (saida_ALU,
						entrada_de_dados_para_memoriaD,
						constante,
						seletor_mux,
						saida_mux);

 banco : entity work.banco_de_registradores(behavior)
			 generic map( numero_de_bits)
			 port map (clock,
						  saida_mux,
						  endereco_1_para_leitura_banco,
						  endereco_2_para_leitura_banco,
						  endereco_para_escrita_no_banco,
						  habilitar_leitura_no_banco,
						  habilitar_escrita_banco,
						  saida_banco(0),
						  saida_banco(1));
						  

 ALU :  entity work.alu(behavior)
				generic map (numero_de_bits)
				port map(saida_banco(0),
							saida_banco(1),
							seletor_ALU,
							saida_ALU);

 comparador : entity work.comparador(behavior)
					   generic map (numero_de_bits)
						port map (saida_banco(0),
									 saida_comparador);

 menor_q : entity work.menorq(behavior)
				generic map( numero_de_bits)
				port map (saida_banco(0),saida_banco(1),saida_menor_q);
			
 
 saida_de_dados_para_memoriaD <= saida_banco(0);
 
 saida_para_contador_de_programa<= saida_banco(0);
 
 saida_ALU_debug <= saida_ALU;
 
 saida_banco_2_debug <= saida_banco(1);


end architecture;