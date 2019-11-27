library verilog;
use verilog.vl_types.all;
entity bloco_operacional_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        constante       : in     vl_logic_vector(7 downto 0);
        endereco_1_para_leitura_banco: in     vl_logic_vector(3 downto 0);
        endereco_2_para_leitura_banco: in     vl_logic_vector(3 downto 0);
        endereco_para_escrita_no_banco: in     vl_logic_vector(3 downto 0);
        entrada_de_dados_para_memoriaD: in     vl_logic_vector(15 downto 0);
        habilitar_escrita_banco: in     vl_logic;
        habilitar_leitura_no_banco: in     vl_logic_vector(1 downto 0);
        seletor_ALU     : in     vl_logic_vector(1 downto 0);
        seletor_mux     : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end bloco_operacional_vlg_sample_tst;
