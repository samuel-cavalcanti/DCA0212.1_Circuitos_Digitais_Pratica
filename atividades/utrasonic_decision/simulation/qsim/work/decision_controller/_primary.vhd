library verilog;
use verilog.vl_types.all;
entity decision_controller is
    port(
        distance        : in     vl_logic_vector(8 downto 0);
        left_motor      : out    vl_logic_vector(7 downto 0);
        right_motor     : out    vl_logic_vector(7 downto 0)
    );
end decision_controller;
