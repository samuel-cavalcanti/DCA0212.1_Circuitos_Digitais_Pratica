library ieee;
use ieee.std_logic_1164.all;

entity processador_programavel is 
	generic (numero_de_bits : positive := 16);
	port (clock : in std_logic);

end entity;


architecture behavior of processador_programavel is 
type ula_data is array(1 downto 0) of std_logic_vector(numero_de_bits -1 downto 0);
signal entrada_ula : ula_data;
signal operador_ula : std_logic_vector(1 downto 0);
signal saida_ula :std_logic_vector(numero_de_bits -1 downto 0);

-- index : in std_logic_vector (3 downto 0);
--		input_data : in std_logic_vector (7 downto 0);
--		write_option : in std_logic;
--		clock : in std_logic;
--		read_option : in std_logic_vector (7 downto 0);
--		output_data : out std_logic_vector (7 downto 0

begin 

--	register_banck : entity work.register_banck(behavior)
	
	ula : entity work.ula(behavior)
		generic map ( numero_de_bits)
		port map (entrada_ula(0),entrada_ula(1),operador_ula,saida_ula);


		
end architecture;