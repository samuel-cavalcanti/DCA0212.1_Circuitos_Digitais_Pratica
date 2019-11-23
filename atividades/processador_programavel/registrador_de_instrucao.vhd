library ieee;
use ieee.std_logic_1164.all; 

entity registrador_de_instrucao is
generic(numeros_de_bits : positive := 16);

port (dado_de_entrada: in std_logic_vector (numeros_de_bits-1 downto 0);
		carregar : in std_logic;
	   memoria : buffer std_logic_vector(numeros_de_bits-1 downto 0));
		
end entity;

architecture behavior of registrador_de_instrucao is 

begin
	process (carregar)
		begin
				if carregar ='1' then
					memoria <= dado_de_entrada;
				end if ;
 
	end process;
	
end architecture;