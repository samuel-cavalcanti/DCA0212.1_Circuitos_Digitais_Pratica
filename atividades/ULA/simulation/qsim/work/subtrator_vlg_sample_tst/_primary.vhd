library verilog;
use verilog.vl_types.all;
entity subtrator_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        inputdata1      : in     vl_logic_vector(3 downto 0);
        inputdata2      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end subtrator_vlg_sample_tst;
