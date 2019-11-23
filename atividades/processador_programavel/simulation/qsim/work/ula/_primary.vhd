library verilog;
use verilog.vl_types.all;
entity ula is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        operador        : in     vl_logic_vector(1 downto 0);
        saida_ula       : out    vl_logic_vector(15 downto 0)
    );
end ula;
