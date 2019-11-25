library verilog;
use verilog.vl_types.all;
entity bloco_de_controle is
    port(
        clock           : in     vl_logic;
        estado_atual    : out    vl_logic_vector(1 downto 0);
        saida_registrador_de_instrucao: in     vl_logic_vector(15 downto 0);
        saida_comparador: in     vl_logic;
        escrever_contador_de_programa: out    vl_logic;
        limpar_contador_de_programa: out    vl_logic;
        incrementar_contador_de_programa: out    vl_logic;
        ler_memoria_de_instrucoes: out    vl_logic;
        ler_registrador_de_instrucao: out    vl_logic;
        endereco_memoria_de_dados: out    vl_logic_vector(7 downto 0);
        ler_memoria_de_dados: out    vl_logic;
        escrever_memoria_de_dados: out    vl_logic;
        constante       : out    vl_logic_vector(7 downto 0);
        seletor_mux     : out    vl_logic_vector(1 downto 0);
        endereco_para_escrita_no_banco: out    vl_logic_vector(3 downto 0);
        escrever_no_banco: out    vl_logic;
        endereco_1_para_leitura_banco: out    vl_logic_vector(3 downto 0);
        endereco_2_para_leitura_banco: out    vl_logic_vector(3 downto 0);
        habilitar_leitura_no_banco: out    vl_logic_vector(1 downto 0);
        seletor_ALU     : out    vl_logic_vector(1 downto 0)
    );
end bloco_de_controle;
