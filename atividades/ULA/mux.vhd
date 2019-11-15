library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_ula is
	port(insoma: in std_logic_vector(4 downto 0);
		  insubt: in std_logic_vector(4 downto 0);
		  inmaq: in std_logic;
		  inmeq: in std_logic;
		  ininv: in std_logic_vector(3 downto 0);
		  operator : in std_logic_vector(2 downto 0);
		  keyonoff: in std_logic;
		  saida_led: out std_logic;
		  y: out std_logic_vector(3 downto 0);
		  ctrl: out std_logic_vector (1 downto 0));
end entity;

architecture behaviormux of mux_ula is
begin 
	process(keyonoff,operator)
	begin
	
	if keyonoff = '0' then
			saida_led <= '1';
			ctrl <= "10";

	elsif (operator = "000") then -- somador
		if insoma(4) = '1'  then 
			ctrl <= "00";
			y <= insoma(3 downto 0);
			saida_led <= '0';
		else
			ctrl <= "00";
			y <= insoma(3 downto 0);
			saida_led <= '1';
		end if;
	
	elsif (operator = "001") then -- subtrator
	
		if inmaq = '0' then
			y <= insubt(3 downto 0);
			ctrl <= "00";
			saida_led <= '1';		  
		else
			ctrl <= "01";
			saida_led <= '0';
		end if;
	
	elsif (operator = "010") then -- maiorq
	
		if inmaq = '0' then
			ctrl <= "10";
			saida_led <= '0';
		else
			ctrl <= "01";
			saida_led <= '1';
		end if;

	elsif (operator = "011") then -- menorq
	
		if inmeq = '0' then
			ctrl <= "10";
			saida_led <= '0';
		else
			ctrl <= "01";
			saida_led <= '1';
		end if;
	
	elsif (operator = "100") then -- inverter
		y <= ininv;
		ctrl <= "00";
		saida_led <= '1';
		
	end if;
	
	end process;
	
end architecture;