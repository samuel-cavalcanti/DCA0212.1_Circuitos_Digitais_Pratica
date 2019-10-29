library verilog;
use verilog.vl_types.all;
entity trigger_control is
    port(
        waiting         : out    vl_logic;
        clock           : in     vl_logic;
        trigger         : out    vl_logic
    );
end trigger_control;
