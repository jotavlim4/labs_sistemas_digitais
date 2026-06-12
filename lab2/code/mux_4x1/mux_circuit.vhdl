entity mux_circuit is
port(
    a0, a1, a2, a3: in bit;
    s0, s1: in bit;
    d0: out bit
);
end mux_circuit;

architecture behav of mux_circuit is
    signal w1, w2: bit;

    component mux_2x1 is
    port(
        i0, i1: in bit;
        s: in bit;
        d: out bit
    );
    end component mux_2x1;

begin
    
    u1: mux_2x1 port map(i0 => a0, i1 => a1, s => s1, d => w1);
    u2: mux_2x1 port map(i0 => a2, i1 => a3, s => s1, d => w2 );
    u3: mux_2x1 port map(i0 => w1, i1 => w2, s => s0, d => d0);

end architecture behav;