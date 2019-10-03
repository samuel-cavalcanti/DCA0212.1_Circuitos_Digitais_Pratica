library verilog;
use verilog.vl_types.all;
entity pacemaker_controller is
    port(
        s               : in     vl_logic;
        z               : in     vl_logic;
        t               : out    vl_logic;
        p               : out    vl_logic
    );
end pacemaker_controller;
