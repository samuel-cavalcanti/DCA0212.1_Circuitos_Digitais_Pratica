library ieee;
use ieee.std_logic_1164.all; 

entity registrador_de_instrucao is
generic(numeros_de_bits : positive := 16);

port (entrada_de_dados: in std_logic_vector (numeros_de_bits-1 downto 0);
		escrever : in std_logic;
		clock : in std_logic;
	   saida_de_dados : buffer std_logic_vector(numeros_de_bits-1 downto 0));
		
end entity;

architecture behavior of registrador_de_instrucao is 

begin
	registrador : entity work.registrador(behavior)
						generic map (numeros_de_bits)
						port map (entrada_de_dados => entrada_de_dados,
									clock => clock,
									escrever => escrever,
									limpar => '0',
									saida_de_dados => saida_de_dados);
						
	
end architecture;