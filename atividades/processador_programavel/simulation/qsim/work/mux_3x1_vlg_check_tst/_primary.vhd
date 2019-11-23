library verilog;
use verilog.vl_types.all;
entity mux_3x1_vlg_check_tst is
    port(
        saida_mux       : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_3x1_vlg_check_tst;
