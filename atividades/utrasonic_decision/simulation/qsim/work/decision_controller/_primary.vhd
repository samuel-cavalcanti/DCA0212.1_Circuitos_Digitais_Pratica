library verilog;
use verilog.vl_types.all;
entity decision_controller is
    port(
        distance_front  : in     vl_logic_vector(8 downto 0);
        distance_left   : in     vl_logic_vector(8 downto 0);
        left_motor      : out    vl_logic;
        right_motor     : out    vl_logic
    );
end decision_controller;
