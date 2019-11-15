library verilog;
use verilog.vl_types.all;
entity subtrator is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        inputdata2      : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        resultsubt      : out    vl_logic_vector(4 downto 0)
    );
end subtrator;
