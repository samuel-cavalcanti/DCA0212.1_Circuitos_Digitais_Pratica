library ieee;
use ieee.std_logic_1164.all; 

entity decodificador_memoria_de_dados is 

	port( operacao 							: in std_logic_vector(3 downto 0);
			endereco                      : in std_logic_vector(7 downto 0);
			endereco_memoria_de_dados	   : out std_logic_vector(7 downto 0);
			ler_memoria_de_dados			   : out std_logic;
			escrever_memoria_de_dados	   : out std_logic
			);
end entity;



architecture behavior of decodificador_memoria_de_dados is 
constant Carregar : std_logic_vector(3 downto 0) := "0000";
constant Amazenar : std_logic_vector(3 downto 0) := "0001";


begin
		-- D_addr
	endereco_memoria_de_dados <= endereco;
	
	--D_wr								  
	escrever_memoria_de_dados <= '1' when operacao = Amazenar else
										  '0';
	
	-- D_rd
	ler_memoria_de_dados <= '1' when operacao = Carregar else
									'0';



end architecture;