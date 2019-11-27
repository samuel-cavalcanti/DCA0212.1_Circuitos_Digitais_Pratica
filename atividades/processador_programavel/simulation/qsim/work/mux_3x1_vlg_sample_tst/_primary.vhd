library verilog;
use verilog.vl_types.all;
entity mux_3x1_vlg_sample_tst is
    port(
        constante       : in     vl_logic_vector(7 downto 0);
        saida_memoria   : in     vl_logic_vector(15 downto 0);
        saida_ula       : in     vl_logic_vector(15 downto 0);
        seletor         : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_3x1_vlg_sample_tst;
