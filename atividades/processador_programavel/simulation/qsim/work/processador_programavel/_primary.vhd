library verilog;
use verilog.vl_types.all;
entity processador_programavel is
    port(
        clock           : in     vl_logic;
        saida_display_enderesso_1: out    vl_logic_vector(6 downto 0);
        saida_display_enderesso_2: out    vl_logic_vector(6 downto 0);
        saida_display_banco_1: out    vl_logic_vector(6 downto 0);
        saida_display_banco_2: out    vl_logic_vector(6 downto 0);
        saida_display_ALU: out    vl_logic_vector(6 downto 0);
        saida_display_estado: out    vl_logic_vector(6 downto 0);
        saida_display_contador: out    vl_logic_vector(6 downto 0);
        saida_display_operacao: out    vl_logic_vector(6 downto 0);
        saida_comprador : out    vl_logic;
        estado_botao    : out    vl_logic_vector(1 downto 0)
    );
end processador_programavel;
