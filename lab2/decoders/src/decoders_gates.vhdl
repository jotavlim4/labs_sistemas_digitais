entity decoders_gates is
	port(
		a: in bit_vector(3 downto 0);
		e: in bit;
		s: out bit_vector(6 downto 0)
	);
end entity decoders_gates;

architecture behav of decoders_gates is
begin
	-- funções boolenas 
	s(0) <= not(e) or not(a(3) or a(1) or (a(2) and a(0)) or (not(a(2)) and not(a(0))));
	s(1) <= not(e) or not(not(a(2)) or (a(1) and a(0)) or (not(a(1)) and not(a(0))));
	s(2) <= not(e) or not(a(2) or a(0) or not(a(1)));
	s(3) <= not(e) or not(a(3) or (a(1) and not(a(2))) or (a(1) and not(a(0))) or (not(a(2)) and not(a(0))) or (a(2) and a(0) and not(a(1))));
	s(4) <= not(e) or not((a(1) and not(a(0))) or (not(a(2)) and not(a(0))));
	s(5) <= not(e) or not(a(3) or (a(2) and not(a(1))) or (a(2) and not(a(0))) or (not(a(1)) and not(a(0))));
	s(6) <= not(e) or not(a(3) or (a(2) and not(a(1))) or (a(1) and not(a(2))) or (a(1) and not(a(0))));

end behav;