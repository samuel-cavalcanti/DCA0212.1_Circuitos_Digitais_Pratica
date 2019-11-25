library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memoria_de_instrucoes is 
	generic (numero_de_bits : positive := 16);
	port ( clock    : in std_logic;
			 leitura  : in  std_logic;
			 endereco : in std_logic_vector(numero_de_bits-1 downto 0);
			 dado 	 : out std_logic_vector(numero_de_bits-1 downto 0));	
			 
end entity;


architecture behavior of memoria_de_instrucoes is 
type memoria is array (0 to 65535) of std_logic_vector(numero_de_bits-1 downto 0);

constant dados : memoria := ( 0   => "0011000000000100",-- carrregar constante 4 para R4
									   others=> (others=>'0')); 
				
begin 

	process (clock, leitura) begin
	
		if rising_edge(clock) and leitura = '1' then
			dado <= dados(to_integer(unsigned(endereco)));
		end if ;
		
	
	end process;
	
end architecture;