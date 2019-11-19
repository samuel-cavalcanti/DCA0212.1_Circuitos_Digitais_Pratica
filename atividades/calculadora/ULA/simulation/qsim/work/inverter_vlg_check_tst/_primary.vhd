library verilog;
use verilog.vl_types.all;
entity inverter_vlg_check_tst is
    port(
        resultinv       : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end inverter_vlg_check_tst;
