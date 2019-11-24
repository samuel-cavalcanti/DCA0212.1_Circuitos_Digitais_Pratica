library verilog;
use verilog.vl_types.all;
entity contador_de_programa_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        escrever        : in     vl_logic;
        incrementar_registrador: in     vl_logic;
        limpar_registrador: in     vl_logic;
        saida_da_soma_jump: in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end contador_de_programa_vlg_sample_tst;
