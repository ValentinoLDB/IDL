library verilog;
use verilog.vl_types.all;
entity TPI_GRUPO03 is
    port(
        ERROR           : out    vl_logic;
        UP_DOWN         : in     vl_logic;
        LOAD_F          : in     vl_logic;
        CLK             : in     vl_logic;
        DATAF           : in     vl_logic_vector(11 downto 0);
        LOAD_I          : in     vl_logic;
        DATAI           : in     vl_logic_vector(11 downto 0);
        FIN             : out    vl_logic;
        PAUSA           : out    vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        contador        : out    vl_logic_vector(11 downto 0);
        START           : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        RECARGAR        : in     vl_logic
    );
end TPI_GRUPO03;
