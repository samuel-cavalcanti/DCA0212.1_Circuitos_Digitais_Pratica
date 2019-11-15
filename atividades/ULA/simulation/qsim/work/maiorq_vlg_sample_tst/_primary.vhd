library verilog;
use verilog.vl_types.all;
entity maiorq_vlg_sample_tst is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        inputdata2      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end maiorq_vlg_sample_tst;
