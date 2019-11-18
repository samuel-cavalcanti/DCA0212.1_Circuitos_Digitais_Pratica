library verilog;
use verilog.vl_types.all;
entity menorq is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        resultmeq       : out    vl_logic
    );
end menorq;
