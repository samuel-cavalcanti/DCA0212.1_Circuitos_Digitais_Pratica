library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity mux_3x1 is
	generic(numero_de_bits : positive := 16);
	
	port ( saida_ula : in std_logic_vector(numero_de_bits -1 downto 0);
			 saida_memoria: in std_logic_vector(numero_de_bits-1 downto 0);
			 constante : in std_logic_vector(7 downto 0 );
			 seletor : in	 std_logic_vector(1 downto 0);
			 saida_mux : out std_logic_vector(numero_de_bits -1 downto 0));

end entity;


architecture behavior of mux_3x1 is 

signal const : std_logic_vector(numero_de_bits-1 downto 0) := (others => '0');

begin
		
		const(7 downto 0) <= constante(7 downto 0);
	
	

		with seletor select
		
		saida_mux <= saida_ula when "00",
						 saida_memoria when "01",
						 const  when "10",
						 (others => '0') when "11";
		
		


end architecture;