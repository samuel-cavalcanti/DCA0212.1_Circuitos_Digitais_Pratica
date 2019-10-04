library verilog;
use verilog.vl_types.all;
entity timer_vlg_check_tst is
    port(
        milliseconds    : in     vl_logic_vector(31 downto 0);
        time_is_over    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end timer_vlg_check_tst;
