library verilog;
use verilog.vl_types.all;
entity menorq is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        inputdata2      : in     vl_logic_vector(3 downto 0);
        resultmeq       : out    vl_logic
    );
end menorq;
