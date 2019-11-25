library verilog;
use verilog.vl_types.all;
entity decodificador_vlg_check_tst is
    port(
        constante       : in     vl_logic_vector(7 downto 0);
        endereco_1_para_leitura_banco: in     vl_logic_vector(3 downto 0);
        endereco_2_para_leitura_banco: in     vl_logic_vector(3 downto 0);
        endereco_memoria_de_dados: in     vl_logic_vector(7 downto 0);
        endereco_para_escrita_no_banco: in     vl_logic_vector(3 downto 0);
        escrever_memoria_de_dados: in     vl_logic;
        escrever_no_banco: in     vl_logic;
        habilitar_leitura_no_banco: in     vl_logic_vector(1 downto 0);
        ler_memoria_de_dados: in     vl_logic;
        seletor_ALU     : in     vl_logic_vector(1 downto 0);
        seletor_mux     : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end decodificador_vlg_check_tst;
