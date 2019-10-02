library verilog;
use verilog.vl_types.all;
entity pacemaker_controller_vlg_sample_tst is
    port(
        s               : in     vl_logic;
        z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pacemaker_controller_vlg_sample_tst;
