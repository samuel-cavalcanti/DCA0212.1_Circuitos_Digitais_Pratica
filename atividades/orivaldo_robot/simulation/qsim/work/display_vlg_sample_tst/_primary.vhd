library verilog;
use verilog.vl_types.all;
entity display_vlg_sample_tst is
    port(
        distance        : in     vl_logic_vector(8 downto 0);
        sampler_tx      : out    vl_logic
    );
end display_vlg_sample_tst;
