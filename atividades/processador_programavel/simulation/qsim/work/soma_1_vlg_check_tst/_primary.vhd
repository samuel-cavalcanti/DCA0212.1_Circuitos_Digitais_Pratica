library verilog;
use verilog.vl_types.all;
entity soma_1_vlg_check_tst is
    port(
        resultado_soma  : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end soma_1_vlg_check_tst;
