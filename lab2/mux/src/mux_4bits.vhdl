entity mux_4bits is
	port(
		a0, a1, a2, a3: in bit; -- implementar usando vetores
		b0, b1, b2, b3: in bit;
		s0: in bit;
		d0, d1, d2, d3: out bit
	);
end entity mux_4bits;

architecture behav of mux_4bits is
	component mux_gates
		port (
			i0, i1: in bit;
			s0: in bit;
			d: out bit
		);
		end component;	
begin
	
	mux0: mux_gates port map (i0 => a0, i1 => b0, s0 => s0, d => d0);
	mux1: mux_gates port map (i0 => a1, i1 => b1, s0 => s0, d => d1);
	mux2: mux_gates port map (i0 => a2, i1 => b2, s0 => s0, d => d2);
	mux3: mux_gates port map (i0 => a3, i1 => b3, s0 => s0, d => d3);

end architecture behav;
