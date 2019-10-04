library verilog;
use verilog.vl_types.all;
entity pacemaker_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        recieved_contraction: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pacemaker_vlg_sample_tst;
