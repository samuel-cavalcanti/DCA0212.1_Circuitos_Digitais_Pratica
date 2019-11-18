library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
	port (inputdata1: in std_logic_vector(3 downto 0); 
			inputdata2: in std_logic_vector(3 downto 0);
			operator : in std_logic_vector(2 downto 0);
			key_0: in std_logic; -- key 1 --PIN_G26
			led: out std_logic; --Led R 0 -=PIN_AE23
			display: out std_logic_vector(6 downto 0)); -- hex 0
end entity;

architecture behaviorula of ula is
signal saida_somador: std_logic_vector(4 downto 0);
signal saida_subtrator: std_logic_vector(4 downto 0);
signal saida_maior_q: std_logic;
signal saida_menor_q: std_logic;
signal saida_inverter: std_logic_vector(3 downto 0);
signal saida_de_dados_mux: std_logic_vector(3 downto 0);
signal saida_de_ctrl_mux: std_logic_vector(1 downto 0);
signal keyonoff : std_logic;

begin

	button : entity work.button(behavior) 
		port map ( key_0 => key_0,
					  keyonoff => keyonoff);
					  


	soma: entity work.somador(behaviorsomador) -- somador
		port map(a => inputdata1, 
					b => inputdata2, 
					resultsoma => saida_somador);

	subtracao: entity work.subtrator(behaviorsubtrator) -- subtrator
		port map(a => inputdata1, 
					b => inputdata2, 
					resultsubt => saida_subtrator);

	maior_q: entity work.maiorq(behaviormaiorq) -- maiorq
		port map(a => inputdata1, 
					b => inputdata2, 
					resultmaq => saida_maior_q);
	
	menor_q: entity work.menorq(behaviormenorq) -- menorq
		port map(a => inputdata1, 
					b => inputdata2, 
					resultmeq => saida_menor_q);
	
	inversor: entity work.inverter(behaviorinverter) -- inversor
		port map(inputdata1 => inputdata1, 
					resultinv => saida_inverter);
					
	seletor: entity work.mux_ula(behaviormux) -- mux
		port map(insoma => saida_somador,
					insubt => saida_subtrator,
					inmaq => saida_maior_q,
					inmeq => saida_menor_q,
					ininv => saida_inverter,
					operator => operator,
					keyonoff => keyonoff,
					y => saida_de_dados_mux,
					ctrl=> saida_de_ctrl_mux,
					saida_led => led);
					
	conversor_display: entity work.convdisplay(behaviorconvdisplay) -- display
			port map(iny => saida_de_dados_mux,
					   inctrl => saida_de_ctrl_mux,
						display => display);
end behaviorula;
