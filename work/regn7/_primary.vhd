library verilog;
use verilog.vl_types.all;
entity regn7 is
    generic(
        n               : integer := 16
    );
    port(
        R               : in     vl_logic_vector;
        Rin             : in     vl_logic;
        Clock           : in     vl_logic;
        Q               : out    vl_logic_vector;
        Done            : in     vl_logic;
        EnableI         : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end regn7;
