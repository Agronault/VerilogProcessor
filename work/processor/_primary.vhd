library verilog;
use verilog.vl_types.all;
entity processor is
    port(
        SW              : in     vl_logic_vector(17 downto 0);
        Clock           : in     vl_logic;
        Done            : out    vl_logic;
        BusWires        : out    vl_logic_vector(15 downto 0)
    );
end processor;
