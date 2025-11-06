library verilog;
use verilog.vl_types.all;
entity MaquinaEstados is
    port(
        Q2              : out    vl_logic;
        clk             : in     vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic;
        S1V             : out    vl_logic;
        S1R             : out    vl_logic;
        S1A             : out    vl_logic;
        S2V             : out    vl_logic;
        S2R             : out    vl_logic;
        S2A             : out    vl_logic;
        S3V             : out    vl_logic;
        S3R             : out    vl_logic;
        S3A             : out    vl_logic
    );
end MaquinaEstados;
