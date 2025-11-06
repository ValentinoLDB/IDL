library verilog;
use verilog.vl_types.all;
entity Sumador is
    port(
        Co              : out    vl_logic;
        A               : in     vl_logic_vector(11 downto 0);
        B               : in     vl_logic_vector(11 downto 0);
        Ci              : in     vl_logic;
        S               : out    vl_logic_vector(11 downto 0)
    );
end Sumador;
