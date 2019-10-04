library verilog;
use verilog.vl_types.all;
entity pacemaker is
    port(
        recieved_contraction: in     vl_logic;
        clock           : in     vl_logic;
        make_contraction: out    vl_logic
    );
end pacemaker;
