library ieee;
use ieee.std_logic_1164.all;

entity pacemaker_controller is
port(recebeu_contracao : in std_logic;
	  tempo_acabou : in std_logic;	
	  estado_atual: in std_logic_vector (1 downto 0);
	  proximo_estado: out std_logic_vector (1 downto 0);
	  resetar_temporizador : out std_logic;
	  enviar_estimulo : out std_logic);
	  
end pacemaker_controller;

architecture behavior of pacemaker_controller is 
begin
		
		resetar_temporizador <= not estado_atual(1) and not estado_atual(0);
		
		enviar_estimulo <= estado_atual(0) and not estado_atual(1);
		
		proximo_estado(1) <= (not estado_atual(1) and not estado_atual(0)) or
		( not recebeu_contracao and not tempo_acabou and not estado_atual(0) and estado_atual(1) );
		
		proximo_estado(0) <= not recebeu_contracao and tempo_acabou and estado_atual(1);
		
	
end architecture;