library verilog;
use verilog.vl_types.all;
entity validacionInicioFin_vlg_sample_tst is
    port(
        UPDOWN          : in     vl_logic;
        v_final         : in     vl_logic_vector(11 downto 0);
        v_inicial       : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end validacionInicioFin_vlg_sample_tst;
