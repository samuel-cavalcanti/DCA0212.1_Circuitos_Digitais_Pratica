library verilog;
use verilog.vl_types.all;
entity display_vlg_check_tst is
    port(
        hundreds_display: in     vl_logic_vector(6 downto 0);
        tens_display    : in     vl_logic_vector(6 downto 0);
        thousands_display: in     vl_logic_vector(6 downto 0);
        units_display   : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end display_vlg_check_tst;
