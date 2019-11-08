library verilog;
use verilog.vl_types.all;
entity utrassonic_sensor is
    port(
        fpga_clock      : in     vl_logic;
        pulse           : in     vl_logic;
        trigger         : out    vl_logic;
        thousands_display: out    vl_logic_vector(6 downto 0);
        hundreds_display: out    vl_logic_vector(6 downto 0);
        tens_display    : out    vl_logic_vector(6 downto 0);
        units_display   : out    vl_logic_vector(6 downto 0)
    );
end utrassonic_sensor;
