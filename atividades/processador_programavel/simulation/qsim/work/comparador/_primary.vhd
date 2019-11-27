library verilog;
use verilog.vl_types.all;
entity comparador is
    port(
        saida_banco     : in     vl_logic_vector(15 downto 0);
        saida_comparador: out    vl_logic
    );
end comparador;
