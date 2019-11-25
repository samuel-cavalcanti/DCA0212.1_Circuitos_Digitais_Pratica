library verilog;
use verilog.vl_types.all;
entity decodificador is
    port(
        saida_registrador_de_instrucao: in     vl_logic_vector(15 downto 0);
        endereco_memoria_de_dados: out    vl_logic_vector(7 downto 0);
        ler_memoria_de_dados: out    vl_logic;
        escrever_memoria_de_dados: out    vl_logic;
        constante       : out    vl_logic_vector(7 downto 0);
        seletor_mux     : out    vl_logic_vector(1 downto 0);
        endereco_para_escrita_no_banco: out    vl_logic_vector(3 downto 0);
        escrever_no_banco: out    vl_logic;
        endereco_1_para_leitura_banco: out    vl_logic_vector(3 downto 0);
        habilitar_leitura_no_banco: out    vl_logic_vector(1 downto 0);
        endereco_2_para_leitura_banco: out    vl_logic_vector(3 downto 0);
        seletor_ALU     : out    vl_logic_vector(1 downto 0)
    );
end decodificador;
