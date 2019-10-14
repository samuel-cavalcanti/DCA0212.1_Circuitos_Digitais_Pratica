library verilog;
use verilog.vl_types.all;
entity register_bank_vlg_sample_tst is
    port(
        index           : in     vl_logic_vector(3 downto 0);
        input_data      : in     vl_logic_vector(7 downto 0);
        read_option     : in     vl_logic_vector(7 downto 0);
        write_option    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end register_bank_vlg_sample_tst;
