library verilog;
use verilog.vl_types.all;
entity CONTADOR_UPDOWN is
    port(
        sel             : out    vl_logic;
        CLK             : in     vl_logic;
        START           : in     vl_logic;
        FIN             : out    vl_logic;
        Co              : out    vl_logic;
        UP_DOWN         : in     vl_logic;
        RECARGAR        : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        ERROR           : out    vl_logic;
        LOAD_F          : in     vl_logic;
        DATA            : inout  vl_logic_vector(11 downto 0);
        LOAD_I          : in     vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        enable          : out    vl_logic;
        PAUSA           : out    vl_logic;
        salidaCont      : out    vl_logic_vector(11 downto 0);
        salidaVFIN      : out    vl_logic_vector(11 downto 0);
        salidaVI        : out    vl_logic_vector(11 downto 0)
    );
end CONTADOR_UPDOWN;
