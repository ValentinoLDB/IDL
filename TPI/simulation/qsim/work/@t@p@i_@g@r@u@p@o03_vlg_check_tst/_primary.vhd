library verilog;
use verilog.vl_types.all;
entity TPI_GRUPO03_vlg_check_tst is
    port(
        contador        : in     vl_logic_vector(11 downto 0);
        ERROR           : in     vl_logic;
        FIN             : in     vl_logic;
        PAUSA           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TPI_GRUPO03_vlg_check_tst;
