library verilog;
use verilog.vl_types.all;
entity register_bank is
    port(
        index           : in     vl_logic_vector(3 downto 0);
        input_data      : in     vl_logic_vector(7 downto 0);
        write_option    : in     vl_logic;
        read_option     : in     vl_logic_vector(7 downto 0);
        output_data     : out    vl_logic_vector(7 downto 0)
    );
end register_bank;
