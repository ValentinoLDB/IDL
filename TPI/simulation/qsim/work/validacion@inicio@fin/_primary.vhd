library verilog;
use verilog.vl_types.all;
entity validacionInicioFin is
    port(
        error           : out    vl_logic;
        UPDOWN          : in     vl_logic;
        v_final         : in     vl_logic_vector(11 downto 0);
        v_inicial       : in     vl_logic_vector(11 downto 0)
    );
end validacionInicioFin;
