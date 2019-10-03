library verilog;
use verilog.vl_types.all;
entity ffd_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        d               : in     vl_logic_vector(7 downto 0);
        load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ffd_vlg_sample_tst;
