library verilog;
use verilog.vl_types.all;
entity processador_programavel is
    port(
        clock           : in     vl_logic;
        saida_banco_2   : out    vl_logic_vector(15 downto 0);
        saida_ALU       : out    vl_logic_vector(15 downto 0);
        saida_memoria_de_dados: out    vl_logic_vector(15 downto 0);
        saida_comprador : out    vl_logic;
        estado_atual_debug: out    vl_logic_vector(2 downto 0);
        saida_memoria_de_instrucoes: out    vl_logic_vector(15 downto 0);
        habilitar_escrita_no_banco_debug: out    vl_logic
    );
end processador_programavel;
