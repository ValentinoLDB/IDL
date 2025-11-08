library verilog;
use verilog.vl_types.all;
entity Sumador1bit is
    port(
        Co              : out    vl_logic;
        A               : in     vl_logic;
        Ci              : in     vl_logic;
        B               : in     vl_logic;
        S               : out    vl_logic
    );
end Sumador1bit;
