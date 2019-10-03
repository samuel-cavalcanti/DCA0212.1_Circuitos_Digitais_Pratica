library verilog;
use verilog.vl_types.all;
entity ffd is
    port(
        d               : in     vl_logic_vector(7 downto 0);
        load            : in     vl_logic;
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end ffd;
