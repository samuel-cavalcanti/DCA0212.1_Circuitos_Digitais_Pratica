library verilog;
use verilog.vl_types.all;
entity memoria_de_instrucoes is
    port(
        clock           : in     vl_logic;
        leitura         : in     vl_logic;
        endereco        : in     vl_logic_vector(15 downto 0);
        saida_da_memoria: out    vl_logic_vector(15 downto 0)
    );
end memoria_de_instrucoes;
