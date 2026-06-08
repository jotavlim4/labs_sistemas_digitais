entity mux_comp is
	port (
		i0, i1: in bit;
		s0: in bit;
		d: out bit
	);
end entity mux_comp;

architecture behav of mux_comp is
begin
	with s0 select
		d <= i0 when '0',
		     i1 when '1';
	
end architecture behav;
