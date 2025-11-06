library verilog;
use verilog.vl_types.all;
entity CONTADOR_UPDOWN_vlg_check_tst is
    port(
        Co              : in     vl_logic;
        DATA            : in     vl_logic_vector(11 downto 0);
        enable          : in     vl_logic;
        ERROR           : in     vl_logic;
        FIN             : in     vl_logic;
        PAUSA           : in     vl_logic;
        salidaCont      : in     vl_logic_vector(11 downto 0);
        salidaVFIN      : in     vl_logic_vector(11 downto 0);
        salidaVI        : in     vl_logic_vector(11 downto 0);
        sel             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CONTADOR_UPDOWN_vlg_check_tst;
