library verilog;
use verilog.vl_types.all;
entity maiorq is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        inputdata2      : in     vl_logic_vector(3 downto 0);
        resultmaq       : out    vl_logic
    );
end maiorq;
