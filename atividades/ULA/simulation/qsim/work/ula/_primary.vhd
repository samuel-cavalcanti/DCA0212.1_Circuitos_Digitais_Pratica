library verilog;
use verilog.vl_types.all;
entity ula is
    port(
        inputdata1      : in     vl_logic_vector(3 downto 0);
        inputdata2      : in     vl_logic_vector(3 downto 0);
        operate0        : in     vl_logic;
        operate1        : in     vl_logic;
        operate2        : in     vl_logic;
        keyonoff        : in     vl_logic;
        co              : out    vl_logic;
        y               : out    vl_logic_vector(3 downto 0);
        ctrl            : out    vl_logic_vector(1 downto 0)
    );
end ula;
