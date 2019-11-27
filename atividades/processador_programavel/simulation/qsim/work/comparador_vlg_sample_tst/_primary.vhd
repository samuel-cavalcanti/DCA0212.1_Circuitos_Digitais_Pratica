library verilog;
use verilog.vl_types.all;
entity comparador_vlg_sample_tst is
    port(
        saida_banco     : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end comparador_vlg_sample_tst;
