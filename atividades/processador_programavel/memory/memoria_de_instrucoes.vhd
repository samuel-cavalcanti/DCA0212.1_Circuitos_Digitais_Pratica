library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memoria_de_instrucoes is 
	generic (numero_de_bits : positive := 16);
	port ( clock            : in std_logic;
			 leitura          : in  std_logic;
			 endereco         : in std_logic_vector(numero_de_bits-1 downto 0);
			 saida_da_memoria : out std_logic_vector(numero_de_bits-1 downto 0));
			 	
			 
end entity;

-- carrregar 2 valores (carregar) 1
-- somar os dois valores (somar) 2
-- carrregar constante (carregar constante) 3
-- subtrair valor 1  (subtrair) 4
-- saltar para : subtrair valor 1    5
-- armazenar resultado da subtraçao na memoriaD (armazenar) 6
-- armazenar constante (armazenar 7) 
architecture behavior of memoria_de_instrucoes is 
constant tamanho_memoria : integer := 8;
type memoria is array (0 to tamanho_memoria) of std_logic_vector(numero_de_bits-1 downto 0);
												--  _|_
constant dados : memoria := ( 0  => "0000000100000011",-- carrregar valor 3 para o banco
									   1  => "0000001000000100",-- carregar  valor 4 para o banco 
									   2  => "0010001000010011",-- somar 4+3
									   3  => "0011010000000010",-- R[4] = const 1
								   	4  => "0110000100100100",-- R[0] < R[1] entao salte R[4]
										5  => "0100001000010101",-- R[2] - R[1]
										6  => "0101111000000001",-- R[14] == 0 entao PC=7
										7  => "0001010100010011",-- M[19] = R[5]
										8  => "0001001100010011",-- M[19] = R[3]
									   others => (others=>'0')); 
										
										-- 0 0 0 0

signal indice : integer range 0 to tamanho_memoria := 0;		
--signal dado_atual : std_logic_vector(numero_de_bits-1 downto 0) := dados(0);								
begin 
	
	
	
	process (clock, leitura,endereco) begin
		indice <= to_integer(unsigned(endereco));
		
		if rising_edge(clock) and leitura = '1' then
			saida_da_memoria <= dados(indice);
		end if ;
		
	
	end process;
	
end architecture;