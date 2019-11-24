library verilog;
use verilog.vl_types.all;
entity contador_de_programa is
    port(
        limpar_registrador: in     vl_logic;
        incrementar_registrador: in     vl_logic;
        clock           : in     vl_logic;
        escrever        : in     vl_logic;
        saida_da_soma_jump: in     vl_logic_vector(15 downto 0);
        saida_contador_de_programa: out    vl_logic_vector(15 downto 0)
    );
end contador_de_programa;
