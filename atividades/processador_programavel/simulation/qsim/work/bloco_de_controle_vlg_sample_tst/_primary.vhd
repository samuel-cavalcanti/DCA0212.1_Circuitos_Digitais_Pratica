library verilog;
use verilog.vl_types.all;
entity bloco_de_controle_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        saida_comparador: in     vl_logic;
        saida_registrador_de_instrucao: in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end bloco_de_controle_vlg_sample_tst;
