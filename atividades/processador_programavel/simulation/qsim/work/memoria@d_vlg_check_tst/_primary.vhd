library verilog;
use verilog.vl_types.all;
entity memoriaD_vlg_check_tst is
    port(
        dado_de_saida   : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end memoriaD_vlg_check_tst;
