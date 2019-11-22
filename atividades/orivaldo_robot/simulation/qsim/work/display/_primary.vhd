library verilog;
use verilog.vl_types.all;
entity display is
    port(
        distance        : in     vl_logic_vector(8 downto 0);
        thousands_display: out    vl_logic_vector(6 downto 0);
        hundreds_display: out    vl_logic_vector(6 downto 0);
        tens_display    : out    vl_logic_vector(6 downto 0);
        units_display   : out    vl_logic_vector(6 downto 0)
    );
end display;
