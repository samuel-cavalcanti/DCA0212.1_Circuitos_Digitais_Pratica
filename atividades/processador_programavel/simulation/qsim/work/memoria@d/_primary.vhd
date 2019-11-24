library verilog;
use verilog.vl_types.all;
entity memoriaD is
    port(
        endereco        : in     vl_logic_vector(8 downto 0);
        dado_de_entrada : in     vl_logic_vector(15 downto 0);
        leitura         : in     vl_logic;
        escrita         : in     vl_logic;
        clock           : in     vl_logic;
        dado_de_saida   : out    vl_logic_vector(15 downto 0)
    );
end memoriaD;
