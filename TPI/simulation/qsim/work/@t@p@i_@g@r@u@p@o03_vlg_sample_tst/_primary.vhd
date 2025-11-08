library verilog;
use verilog.vl_types.all;
entity TPI_GRUPO03_vlg_sample_tst is
    port(
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        CLK             : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        DATAF           : in     vl_logic_vector(11 downto 0);
        DATAI           : in     vl_logic_vector(11 downto 0);
        LOAD_F          : in     vl_logic;
        LOAD_I          : in     vl_logic;
        RECARGAR        : in     vl_logic;
        START           : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TPI_GRUPO03_vlg_sample_tst;
