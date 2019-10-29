library verilog;
use verilog.vl_types.all;
entity trigger_control_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end trigger_control_vlg_sample_tst;
