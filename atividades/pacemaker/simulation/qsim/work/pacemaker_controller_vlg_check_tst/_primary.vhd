library verilog;
use verilog.vl_types.all;
entity pacemaker_controller_vlg_check_tst is
    port(
        p               : in     vl_logic;
        t               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end pacemaker_controller_vlg_check_tst;
