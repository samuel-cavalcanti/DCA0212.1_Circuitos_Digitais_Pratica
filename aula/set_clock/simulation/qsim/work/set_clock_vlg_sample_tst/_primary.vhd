library verilog;
use verilog.vl_types.all;
entity set_clock_vlg_sample_tst is
    port(
        clk_in          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end set_clock_vlg_sample_tst;
