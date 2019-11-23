library verilog;
use verilog.vl_types.all;
entity registrador_de_instrucao_vlg_sample_tst is
    port(
        carregar        : in     vl_logic;
        dado_de_entrada : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end registrador_de_instrucao_vlg_sample_tst;
