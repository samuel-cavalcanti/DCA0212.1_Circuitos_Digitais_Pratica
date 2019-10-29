library verilog;
use verilog.vl_types.all;
entity utrassonic_sensor_vlg_sample_tst is
    port(
        fpga_clock      : in     vl_logic;
        pulse           : in     vl_logic;
        trigger         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end utrassonic_sensor_vlg_sample_tst;
