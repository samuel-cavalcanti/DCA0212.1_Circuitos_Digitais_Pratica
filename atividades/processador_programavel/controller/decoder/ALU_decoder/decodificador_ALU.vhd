library ieee;
use ieee.std_logic_1164.all; 

entity decodificador_ALU is
 port( operacao    : in std_logic_vector(3 downto 0);
		 seletor_ALU : out std_logic_vector(1 downto 0));
									 
end entity;



architecture behavior of decodificador_ALU is

constant Somar : std_logic_vector(3 downto 0)    := "0010";
constant Subtrair : std_logic_vector(3 downto 0) := "0100";

  begin
	--alu_s1 e alu_s2
	seletor_ALU <= "01" when operacao = Somar else
						"10" when operacao = Subtrair else
						"00";

end architecture;