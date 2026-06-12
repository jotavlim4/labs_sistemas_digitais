library ieee;
use ieee.std_logic_1164.all;


entity mux_4bits is
port(
    a0, a1, a2, a3: in bit;
    b0, b1, b2, b3: in bit;
    sel: in bit;
    d0, d1, d2, d3: out bit
);
end mux_4bits;

architecture behav of mux_4bits is

    component mux_2x1 is
    port(
        i0, i1: in bit;
        s: in bit;
        d: out bit 
    );
    end component mux_2x1;

begin
    mux0: mux_2x1 port map(i0 => a0, i1 => b0, s => sel, d => d0);
    mux1: mux_2x1 port map(i0 => a1, i1 => b1, s => sel, d => d1);
    mux2: mux_2x1 port map(i0 => a2, i1 => b2, s => sel, d => d2);
    mux3: mux_2x1 port map(i0 => a3, i1 => b3, s => sel, d => d3);   

end architecture behav;