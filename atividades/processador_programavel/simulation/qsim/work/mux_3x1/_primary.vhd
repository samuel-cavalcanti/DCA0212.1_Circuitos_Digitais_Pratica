library verilog;
use verilog.vl_types.all;
entity mux_3x1 is
    port(
        saida_ula       : in     vl_logic_vector(15 downto 0);
        saida_memoria   : in     vl_logic_vector(15 downto 0);
        constante       : in     vl_logic_vector(7 downto 0);
        seletor         : in     vl_logic_vector(1 downto 0);
        saida_mux       : out    vl_logic_vector(15 downto 0)
    );
end mux_3x1;
