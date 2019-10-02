library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        Control         : in     vl_logic_vector(10 downto 0);
        MEM             : in     vl_logic_vector(15 downto 0);
        DIN             : in     vl_logic_vector(15 downto 0);
        R0              : in     vl_logic_vector(15 downto 0);
        R1              : in     vl_logic_vector(15 downto 0);
        R2              : in     vl_logic_vector(15 downto 0);
        R3              : in     vl_logic_vector(15 downto 0);
        R4              : in     vl_logic_vector(15 downto 0);
        R5              : in     vl_logic_vector(15 downto 0);
        R6              : in     vl_logic_vector(15 downto 0);
        R7              : in     vl_logic_vector(15 downto 0);
        G               : in     vl_logic_vector(15 downto 0);
        BusWires        : out    vl_logic_vector(15 downto 0)
    );
end mux;
