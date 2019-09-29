library verilog;
use verilog.vl_types.all;
entity set_clock_vlg_check_tst is
    port(
        clk_out         : in     vl_logic;
        contador        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end set_clock_vlg_check_tst;
