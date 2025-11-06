library verilog;
use verilog.vl_types.all;
entity MaquinaEstados_vlg_check_tst is
    port(
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        S1A             : in     vl_logic;
        S1R             : in     vl_logic;
        S1V             : in     vl_logic;
        S2A             : in     vl_logic;
        S2R             : in     vl_logic;
        S2V             : in     vl_logic;
        S3A             : in     vl_logic;
        S3R             : in     vl_logic;
        S3V             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MaquinaEstados_vlg_check_tst;
