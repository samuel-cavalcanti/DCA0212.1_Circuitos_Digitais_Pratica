library verilog;
use verilog.vl_types.all;
entity somador is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        resultsoma      : out    vl_logic_vector(4 downto 0)
    );
end somador;
