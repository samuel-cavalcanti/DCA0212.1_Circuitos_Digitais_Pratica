library verilog;
use verilog.vl_types.all;
entity subtrator_vlg_check_tst is
    port(
        resultsubt      : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end subtrator_vlg_check_tst;
