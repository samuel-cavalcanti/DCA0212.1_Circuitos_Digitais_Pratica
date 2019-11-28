library verilog;
use verilog.vl_types.all;
entity processador_programavel_vlg_check_tst is
    port(
        estado_botao    : in     vl_logic_vector(1 downto 0);
        saida_comprador : in     vl_logic;
        saida_display_ALU: in     vl_logic_vector(6 downto 0);
        saida_display_banco_1: in     vl_logic_vector(6 downto 0);
        saida_display_banco_2: in     vl_logic_vector(6 downto 0);
        saida_display_contador: in     vl_logic_vector(6 downto 0);
        saida_display_enderesso_1: in     vl_logic_vector(6 downto 0);
        saida_display_enderesso_2: in     vl_logic_vector(6 downto 0);
        saida_display_estado: in     vl_logic_vector(6 downto 0);
        saida_display_operacao: in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end processador_programavel_vlg_check_tst;
