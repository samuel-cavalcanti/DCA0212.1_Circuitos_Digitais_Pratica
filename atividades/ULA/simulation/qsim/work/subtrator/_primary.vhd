library verilog;
use verilog.vl_types.all;
entity subtrator is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        resultsubt      : out    vl_logic_vector(4 downto 0)
    );
end subtrator;
