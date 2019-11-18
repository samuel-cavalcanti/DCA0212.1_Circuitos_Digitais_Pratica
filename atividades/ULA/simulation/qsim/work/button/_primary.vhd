library verilog;
use verilog.vl_types.all;
entity button is
    port(
        key_0           : in     vl_logic;
        keyonoff        : out    vl_logic
    );
end button;
