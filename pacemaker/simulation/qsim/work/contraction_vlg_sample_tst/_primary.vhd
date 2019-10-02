library verilog;
use verilog.vl_types.all;
entity contraction_vlg_sample_tst is
    port(
        s               : in     vl_logic;
        z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contraction_vlg_sample_tst;
