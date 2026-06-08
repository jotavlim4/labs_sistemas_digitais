library verilog;
use verilog.vl_types.all;
entity circuito is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        S1              : out    vl_logic;
        S2              : out    vl_logic
    );
end circuito;
