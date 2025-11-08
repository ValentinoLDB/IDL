library verilog;
use verilog.vl_types.all;
entity MAIN is
    port(
        ERROR           : out    vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        RECARGAR        : in     vl_logic;
        START           : in     vl_logic;
        CLK             : in     vl_logic;
        LOAD_F          : in     vl_logic;
        LOAD_I          : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        UPDOWN          : in     vl_logic;
        DATA            : inout  vl_logic_vector(11 downto 0);
        FIN             : out    vl_logic;
        PAUSA           : out    vl_logic
    );
end MAIN;
