library verilog;
use verilog.vl_types.all;
entity ula_vlg_sample_tst is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        inputdata2      : in     vl_logic_vector(3 downto 0);
        keyonoff        : in     vl_logic;
        operate0        : in     vl_logic;
        operate1        : in     vl_logic;
        operate2        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ula_vlg_sample_tst;
