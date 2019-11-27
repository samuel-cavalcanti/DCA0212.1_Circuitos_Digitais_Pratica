library verilog;
use verilog.vl_types.all;
entity bloco_operacional_vlg_check_tst is
    port(
        saida_ALU_debug : in     vl_logic_vector(15 downto 0);
        saida_banco_2_debug: in     vl_logic_vector(15 downto 0);
        saida_comparador: in     vl_logic;
        saida_de_dados_para_memoriaD: in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end bloco_operacional_vlg_check_tst;
