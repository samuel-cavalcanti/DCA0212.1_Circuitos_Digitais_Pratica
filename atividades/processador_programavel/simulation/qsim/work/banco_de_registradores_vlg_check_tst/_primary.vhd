library verilog;
use verilog.vl_types.all;
entity banco_de_registradores_vlg_check_tst is
    port(
        dado_de_saida_1 : in     vl_logic_vector(15 downto 0);
        dado_de_saida_2 : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end banco_de_registradores_vlg_check_tst;
