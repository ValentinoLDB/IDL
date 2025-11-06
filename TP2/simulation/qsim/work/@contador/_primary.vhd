library verilog;
use verilog.vl_types.all;
entity Contador is
    port(
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        clk             : in     vl_logic;
        Q5              : out    vl_logic;
        Q2              : out    vl_logic;
        Q4              : out    vl_logic;
        Q3              : out    vl_logic
    );
end Contador;
