library verilog;
use verilog.vl_types.all;
entity hexto7segment is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        z               : out    vl_logic_vector(6 downto 0)
    );
end hexto7segment;
