library verilog;
use verilog.vl_types.all;
entity bloco_de_controle_vlg_check_tst is
    port(
        constante       : in     vl_logic_vector(7 downto 0);
        endereco_1_para_leitura_banco: in     vl_logic_vector(3 downto 0);
        endereco_2_para_leitura_banco: in     vl_logic_vector(3 downto 0);
        endereco_memoria_de_dados: in     vl_logic_vector(7 downto 0);
        endereco_para_escrita_no_banco: in     vl_logic_vector(3 downto 0);
        escrever_contador_de_programa: in     vl_logic;
        escrever_memoria_de_dados: in     vl_logic;
        escrever_no_banco: in     vl_logic;
        estado_atual    : in     vl_logic_vector(1 downto 0);
        habilitar_leitura_no_banco: in     vl_logic_vector(1 downto 0);
        incrementar_contador_de_programa: in     vl_logic;
        ler_memoria_de_dados: in     vl_logic;
        ler_memoria_de_instrucoes: in     vl_logic;
        ler_registrador_de_instrucao: in     vl_logic;
        limpar_contador_de_programa: in     vl_logic;
        seletor_ALU     : in     vl_logic_vector(1 downto 0);
        seletor_mux     : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end bloco_de_controle_vlg_check_tst;
