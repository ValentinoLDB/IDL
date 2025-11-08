library verilog;
use verilog.vl_types.all;
entity Contador is
    port(
        DATA            : inout  vl_logic_vector(11 downto 0);
        Cont            : out    vl_logic_vector(11 downto 0);
        CLK             : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        LOADI           : in     vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        LOADF           : in     vl_logic
    );
end Contador;
