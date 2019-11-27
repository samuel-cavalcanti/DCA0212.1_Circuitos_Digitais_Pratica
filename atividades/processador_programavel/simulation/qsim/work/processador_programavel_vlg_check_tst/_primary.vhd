library verilog;
use verilog.vl_types.all;
entity processador_programavel_vlg_check_tst is
    port(
        estado_atual_debug: in     vl_logic_vector(2 downto 0);
        habilitar_escrita_no_banco_debug: in     vl_logic;
        saida_ALU       : in     vl_logic_vector(15 downto 0);
        saida_banco_2   : in     vl_logic_vector(15 downto 0);
        saida_comprador : in     vl_logic;
        saida_memoria_de_dados: in     vl_logic_vector(15 downto 0);
        saida_memoria_de_instrucoes: in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end processador_programavel_vlg_check_tst;
