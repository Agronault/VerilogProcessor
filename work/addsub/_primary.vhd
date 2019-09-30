library verilog;
use verilog.vl_types.all;
entity addsub is
    port(
        Control         : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        \Bus\           : in     vl_logic_vector(15 downto 0);
        G               : out    vl_logic_vector(15 downto 0)
    );
end addsub;
