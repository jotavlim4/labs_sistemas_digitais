library ieee;
use ieee.std_logic_1164.all;

entity tb_latch_d is 
end entity tb_latch_d;

architecture s8im of tb_latch_d is
	signal d: bit;
	signal c: bit;
	signal q: bit;

begin
	uut: entity work.latch_d
	port map (
		d => d,
		c => c,
		q => q
	);

	process
	begin
		c <= '0';
		d <= '0';
		wait for 10 ns; -- valor esperado q = 0

		c <= '0';
		d <= '1';
		wait for 10 ns; -- valor esperado q = 0

		c <= '1';
		d <= '0';
		wait for 10 ns; -- valor esperado q = 0

		c <= '1';
		d <= '1';
		wait for 10 ns; -- valor esperado q = 1

		wait;

	end process;

end architecture;