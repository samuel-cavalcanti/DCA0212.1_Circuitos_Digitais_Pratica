library verilog;
use verilog.vl_types.all;
entity banco_de_registradores_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        dado_de_entrada : in     vl_logic_vector(15 downto 0);
        endereco_escrita: in     vl_logic_vector(3 downto 0);
        endereco_leitura_1: in     vl_logic_vector(3 downto 0);
        endereco_leitura_2: in     vl_logic_vector(3 downto 0);
        habilitar_escrita: in     vl_logic;
        habilitar_leitura: in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end banco_de_registradores_vlg_sample_tst;
