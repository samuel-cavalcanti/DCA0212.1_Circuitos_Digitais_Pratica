library verilog;
use verilog.vl_types.all;
entity inverter_vlg_sample_tst is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end inverter_vlg_sample_tst;
