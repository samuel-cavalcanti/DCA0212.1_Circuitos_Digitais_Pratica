library verilog;
use verilog.vl_types.all;
entity somador_complemento_de_2 is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        saida           : out    vl_logic_vector(15 downto 0)
    );
end somador_complemento_de_2;
