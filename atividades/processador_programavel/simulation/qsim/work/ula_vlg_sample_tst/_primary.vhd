library verilog;
use verilog.vl_types.all;
entity ula_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        operador        : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ula_vlg_sample_tst;
