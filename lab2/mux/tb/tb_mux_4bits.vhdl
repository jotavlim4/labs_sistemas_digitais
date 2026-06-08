entity tb_mux_4bits is
end entity;

architecture sim of tb_mux_4bits is
	signal a: bit_vector(3 downto 0);
	signal b: bit_vector(3 downto 0);
	signal s: bit;
	signal d: bit_vector(3 downto 0);

begin
	uut: entity work.mux_4bits
	port map(
		a0 => a(0), 
		a1 => a(1),
		a2 => a(2),
		a3 => a(3),

		b0 => b(0),
		b1 => b(1),
		b2 => b(2),
		b3 => b(3),

		s0 => s,

		d0 => d(0),
		d1 => d(1),
		d2 => d(2),
		d3 => d(3)
	);

	process
	begin
		a <= "1010";
		b <= "0101";
		s <= '0';

		wait for 10 ns;

		s <= '1';

		wait for 10 ns;

		a <= "1111";
		b <= "0000";
		s <= '0';

		wait for 10 ns;

		s <= '1';

		wait for 10 ns;

		wait;
	end process;
	
end architecture;
