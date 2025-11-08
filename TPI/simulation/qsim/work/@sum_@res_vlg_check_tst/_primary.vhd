library verilog;
use verilog.vl_types.all;
entity Sum_Res_vlg_check_tst is
    port(
        Co              : in     vl_logic;
        S               : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end Sum_Res_vlg_check_tst;
