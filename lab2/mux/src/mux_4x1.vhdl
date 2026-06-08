entity mux_4x1 is
	port(
		a0, a1, a2, a3: in bit; -- implementar usando vetores
		s0, s1: in bit;
		o: out bit
	);
end entity mux_4x1;

architecture behav of mux_4x1 is
	signal w0, w1: bit;

	component mux_gates
		port (
			i0, i1: in bit;
			s0: in bit;
			d: out bit
		);
		end component;
begin

	mux0: mux_gates port map(i0 => a0, i1 => a1, s0 => s0, d => w0);
	mux1: mux_gates port map(i0 => a2, i1 => a3, s0 => s0, d => w1);
	mux2: mux_gates port map(i0 => w0, i1 => w1, s0 => s1, d => o);

end architecture behav;
