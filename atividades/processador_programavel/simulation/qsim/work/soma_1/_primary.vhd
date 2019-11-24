library verilog;
use verilog.vl_types.all;
entity soma_1 is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        resultado_soma  : out    vl_logic_vector(15 downto 0)
    );
end soma_1;
