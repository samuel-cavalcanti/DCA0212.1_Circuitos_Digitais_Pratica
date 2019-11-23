library ieee;
use ieee.std_logic_1164.all;

entity mux_3x1 is
	generic(numero_de_bits : positive := 16);
	
	port ( saida_ula : in std_logic_vector(numero_de_bits -1 downto 0);
			 saida_memoria: in std_logic_vector(numero_de_bits-1 downto 0);
			 constante : in std_logic_vector(8 downto 0 );
			 seletor : in	 std_logic_vector(1 downto 0);
			 saida_mux : out std_logic_vector(numero_de_bits -1 downto 0));

end entity;


architecture behavior of mux_3x1 is 

begin
		
		process (seletor) begin
			
			case seletor is 
			
				when "00" =>
					saida_mux <= saida_ula;
				
				when "01" =>
					saida_mux <= saida_memoria;
				
				when "10" =>
					saida_mux(8 downto 0) <= constante;
					saida_mux(numero_de_bits-1 downto 9) <= (others => '0');
				
				when "11" =>
					saida_mux <= (others => '0');
				
			end case;
				
		
		end process;



end architecture;