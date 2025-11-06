library verilog;
use verilog.vl_types.all;
entity Registro_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Data            : in     vl_logic_vector(11 downto 0);
        LOAD            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Registro_vlg_sample_tst;
