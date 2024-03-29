library verilog;
use verilog.vl_types.all;
entity processor is
    port(
        Resetn          : in     vl_logic;
        Run             : in     vl_logic;
        Clock           : in     vl_logic;
        Done            : out    vl_logic;
        BusWires        : out    vl_logic_vector(15 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0)
    );
end processor;
