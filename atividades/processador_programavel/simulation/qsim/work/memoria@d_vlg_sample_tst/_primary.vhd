library verilog;
use verilog.vl_types.all;
entity memoriaD_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        dado_de_entrada : in     vl_logic_vector(15 downto 0);
        endereco        : in     vl_logic_vector(8 downto 0);
        escrita         : in     vl_logic;
        leitura         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memoriaD_vlg_sample_tst;
