library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        clock           : in     vl_logic;
        start_timer     : in     vl_logic;
        milliseconds    : out    vl_logic_vector(31 downto 0);
        time_is_over    : out    vl_logic
    );
end timer;
