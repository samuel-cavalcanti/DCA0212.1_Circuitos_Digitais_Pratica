library verilog;
use verilog.vl_types.all;
entity somador_vlg_check_tst is
    port(
        resultsoma      : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end somador_vlg_check_tst;
