library verilog;
use verilog.vl_types.all;
entity Prueba_vlg_check_tst is
    port(
        DATA            : in     vl_logic_vector(11 downto 0);
        ERROR           : in     vl_logic;
        FIN             : in     vl_logic;
        PAUSA           : in     vl_logic;
        salidaCont      : in     vl_logic_vector(11 downto 0);
        salidaVFIN      : in     vl_logic_vector(11 downto 0);
        salidaVI        : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end Prueba_vlg_check_tst;
