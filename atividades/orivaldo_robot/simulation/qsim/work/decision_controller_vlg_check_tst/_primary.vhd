library verilog;
use verilog.vl_types.all;
entity decision_controller_vlg_check_tst is
    port(
        left_motor      : in     vl_logic;
        right_motor     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end decision_controller_vlg_check_tst;
