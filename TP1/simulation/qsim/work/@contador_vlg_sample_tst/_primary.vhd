library verilog;
use verilog.vl_types.all;
entity Contador_vlg_sample_tst is
    port(
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        CLK             : in     vl_logic;
        DATA            : in     vl_logic_vector(11 downto 0);
        LOADF           : in     vl_logic;
        LOADI           : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Contador_vlg_sample_tst;
