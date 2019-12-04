library ieee;
use ieee.std_logic_1164.all; 

entity maquina_de_estados is 

port (clock : in std_logic;
		reiniciar : in std_logic;
		operacao : in std_logic_vector(3 downto 0);
		saida_comparador : in std_logic;	
		saida_menor_q  : in std_logic;
		estado : buffer std_logic_vector(2 downto 0));
end entity;


architecture behavior of maquina_de_estados is
constant Inicio   : std_logic_vector(2 downto 0) := "000";
constant Busca    : std_logic_vector(2 downto 0) := "001";
constant Decodificacao : std_logic_vector (2 downto 0) := "010";
constant Execucao : std_logic_vector(2 downto 0) := "011";
constant Saltar   : std_logic_vector(2 downto 0) := "100"; --4
constant Saltar_menor_q : std_logic_vector(2 downto 0) := "101"; --5

constant Saltar_se_zero : std_logic_vector(3 downto 0) := "0101";
constant Saltar_Se_menor_q : std_logic_vector(3 downto 0) := "0110";


begin
		process (clock, reiniciar) begin
			
			if reiniciar = '1' then
				estado <= Inicio;
			
			elsif rising_edge(clock) then
					
					if estado = Inicio then
							estado <= Busca;
			
					elsif  estado = Busca then
							estado <= Execucao;
						
					elsif estado = Execucao then
					
							if saida_comparador = '1' and operacao = Saltar_se_zero then
								estado <= Saltar;
							elsif saida_menor_q = '1' and operacao = Saltar_Se_menor_q then
								estado <= Saltar_menor_q;
							else 
								estado <= Busca;
							end if;
					elsif estado = Saltar then
							estado <= busca;
							
					elsif estado = Saltar_menor_q then
							estado <= busca;
					
					end if;
			
			end if ;
		
		end process;

end architecture;
