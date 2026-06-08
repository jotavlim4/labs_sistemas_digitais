entity mux_gates is
	port(
		i0, i1: in bit;
		s0: in bit;
		d: out bit 
	);
end entity mux_gates;

architecture behav of mux_gates is
begin
	d <= (not(s0) and i0) or (s0 and i1);
end architecture behav;