entity tb_mux_4x1 is
end entity;

architecture sim of tb_mux_4x1 is
	signal a: bit_vector(3 downto 0);
	signal s: bit_vector(1 downto 0);
	signal d: bit;

begin
	uut: entity work.mux_4x1
	port map(
		a0 => a(0),
		a1 => a(1),
		a2 => a(2),
		a3 => a(3),

		s0 => s(0),
		s1 => s(1),

		o => d
	);

	process
	begin
	a <= "1010";
	s <= "00"; -- valor esperado para d <= '0' (a(0)) 

	wait for 10 ns;
	
	s <= "01"; -- valor esperado para d <= '1' (a(1))

	wait for 10 ns;

	s <= "10"; -- valor esperado para d <= '0' (a(2))

	wait for 10 ns;

	s <= "11"; -- valor esperado para d <= '1' (a(3))

	wait for 10 ns;

	wait;
	end process;

end architecture;
