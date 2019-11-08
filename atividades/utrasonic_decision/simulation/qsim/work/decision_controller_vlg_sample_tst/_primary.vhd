library verilog;
use verilog.vl_types.all;
entity decision_controller_vlg_sample_tst is
    port(
        distance        : in     vl_logic_vector(8 downto 0);
        sampler_tx      : out    vl_logic
    );
end decision_controller_vlg_sample_tst;
