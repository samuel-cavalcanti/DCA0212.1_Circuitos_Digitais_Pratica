library verilog;
use verilog.vl_types.all;
entity register_bank_vlg_check_tst is
    port(
        output_data     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end register_bank_vlg_check_tst;
