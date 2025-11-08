library verilog;
use verilog.vl_types.all;
entity Registro is
    port(
        Q               : out    vl_logic_vector(11 downto 0);
        CLK             : in     vl_logic;
        LOAD            : in     vl_logic;
        Data            : in     vl_logic_vector(11 downto 0)
    );
end Registro;
