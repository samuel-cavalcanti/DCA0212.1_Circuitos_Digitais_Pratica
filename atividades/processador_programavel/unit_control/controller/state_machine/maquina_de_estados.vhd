library ieee;
use ieee.std_logic_1164.all; 

entity maquina_de_estados is 

port (clock : in std_logic;
		reiniciar : in std_logic;
		saida_comparador : in std_logic;
		estato : out std_logic_vector(2 downto 0));
end entity;


architecture behavior of maquina_de_estados is
constant Inicio   : std_logic_vector(2 downto 0) := "000";
constant Busca    : std_logic_vector(2 downto 0) := "001";
constant Decodificacao : std_logic_vector (2 downto 0) := "010";
constant Execucao : std_logic_vector(2 downto 0) := "011";
constant Saltar   : std_logic_vector(2 downto 0) := "100";

signal estado_atual : std_logic_vector(2 downto 0);

begin
		process (clock, reiniciar) begin
			
			if reiniciar = '1' then
				estado_atual <= Inicio;
			
			elsif rising_edge(clock) then
					
					if estado_atual = Inicio then
							estado_atual <= Busca;
			
					elsif  estado_atual = Busca then
							estado_atual <= Decodificacao;
					
					elsif estado_atual = Decodificacao then
							estado_atual <= Execucao;
						
					elsif estado_atual = Execucao then
					
							if saida_comparador = '1' then
								estado_atual <= Saltar;
							else 
								estado_atual <= Busca;
							end if;
					elsif estado_atual = Saltar then
							estado_atual <= busca;
					
					end if;
			
			end if ;
		
		end process;
		estato <= estado_atual;

end architecture;
