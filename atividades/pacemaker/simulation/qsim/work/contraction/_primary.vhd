library verilog;
use verilog.vl_types.all;
entity contraction is
    port(
        s               : in     vl_logic;
        z               : in     vl_logic;
        p               : out    vl_logic
    );
end contraction;
