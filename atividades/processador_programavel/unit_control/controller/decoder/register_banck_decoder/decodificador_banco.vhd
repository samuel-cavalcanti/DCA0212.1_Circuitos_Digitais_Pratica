library ieee;
use ieee.std_logic_1164.all; 

entity decodificador_banco is 
	generic(numero_de_bits: positive := 4);
   port ( operacao                      : in std_logic_vector(numero_de_bits-1 downto 0);
			 enderecos                     : in std_logic_vector(3*numero_de_bits-1 downto 0);
			 endereco_para_escrita_no_banco: out std_logic_vector(numero_de_bits-1 downto 0);
			 escrever_no_banco				 : out std_logic;
			 endereco_1_para_leitura_banco : out std_logic_vector(numero_de_bits-1 downto 0);
			 habilitar_leitura_no_banco    : out std_logic_vector(1 downto 0);
			 endereco_2_para_leitura_banco : out std_logic_vector(numero_de_bits-1 downto 0));
end entity;

architecture behavior of decodificador_banco is 
constant Carregar : std_logic_vector(numero_de_bits-1 downto 0) := "0000";
constant Amazenar : std_logic_vector(numero_de_bits-1 downto 0) := "0001";
constant Somar : std_logic_vector(numero_de_bits-1 downto 0)    := "0010";
constant Carregar_constante : std_logic_vector(numero_de_bits-1 downto 0) := "0011";
constant Subtrair : std_logic_vector(numero_de_bits-1 downto 0)           := "0100";
constant Saltar_se_zero : std_logic_vector(numero_de_bits-1 downto 0)     := "0101";
constant Saltar_se_menor_q : std_logic_vector(numero_de_bits-1 downto 0)  := "0110";

type enderecos_4_bits is array (0 to 1) of std_logic_vector(numero_de_bits- 1 downto 0);
signal endereco_de_leitura_banco : enderecos_4_bits;


begin
	escrever_no_banco <= '1'  when operacao = Somar
										or  operacao = Subtrair
										or  operacao = Carregar
										or  operacao = Carregar_constante else
								'0';
										
	endereco_para_escrita_no_banco <= enderecos(3 downto 0) when operacao = Somar
																				or  operacao = Subtrair else
												enderecos(11 downto 8);

	--RF_Rp_rd
	habilitar_leitura_no_banco(0) <= '1' when operacao = Somar
													 or operacao = Subtrair
													 or operacao = Amazenar
													 or operacao = Saltar_se_zero
													 or operacao = saltar_se_menor_q else
												'0';
											
		--RF_Rq_rd
	habilitar_leitura_no_banco(1) <= '1' when operacao = Somar
													 or operacao = Subtrair
													 or operacao = saltar_se_menor_q else
											   '0';
	
	endereco_1_para_leitura_banco <= enderecos(11 downto 8);
	endereco_2_para_leitura_banco <= enderecos(7 downto 4);
	
end architecture;