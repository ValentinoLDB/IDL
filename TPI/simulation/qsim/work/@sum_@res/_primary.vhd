library verilog;
use verilog.vl_types.all;
entity Sum_Res is
    port(
        Co              : out    vl_logic;
        Up_Down         : in     vl_logic;
        A               : in     vl_logic_vector(11 downto 0);
        B               : in     vl_logic_vector(11 downto 0);
        S               : out    vl_logic_vector(11 downto 0)
    );
end Sum_Res;
