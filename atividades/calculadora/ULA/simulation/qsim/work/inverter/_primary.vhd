library verilog;
use verilog.vl_types.all;
entity inverter is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        resultinv       : out    vl_logic_vector(3 downto 0)
    );
end inverter;
