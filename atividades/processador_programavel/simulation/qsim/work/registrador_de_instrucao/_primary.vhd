library verilog;
use verilog.vl_types.all;
entity registrador_de_instrucao is
    port(
        dado_de_entrada : in     vl_logic_vector(15 downto 0);
        carregar        : in     vl_logic;
        memoria         : out    vl_logic_vector(15 downto 0)
    );
end registrador_de_instrucao;
