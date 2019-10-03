library verilog;
use verilog.vl_types.all;
entity set_clock is
    port(
        clk_in          : in     vl_logic;
        clk_out         : out    vl_logic;
        contador        : out    vl_logic_vector(7 downto 0)
    );
end set_clock;
