library verilog;
use verilog.vl_types.all;
entity memoria_de_instrucoes_vlg_check_tst is
    port(
        saida_da_memoria: in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end memoria_de_instrucoes_vlg_check_tst;
