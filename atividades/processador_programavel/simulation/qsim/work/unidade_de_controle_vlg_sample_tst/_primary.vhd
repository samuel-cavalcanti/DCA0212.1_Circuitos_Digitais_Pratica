library verilog;
use verilog.vl_types.all;
entity unidade_de_controle_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        dados_da_memoria_de_instrucoes: in     vl_logic_vector(15 downto 0);
        saida_comparador_datapah: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end unidade_de_controle_vlg_sample_tst;
