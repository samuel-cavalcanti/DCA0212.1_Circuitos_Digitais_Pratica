library verilog;
use verilog.vl_types.all;
entity decodificador_vlg_sample_tst is
    port(
        saida_registrador_de_instrucao: in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end decodificador_vlg_sample_tst;
