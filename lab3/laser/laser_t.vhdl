library ieee;
use ieee.std_logic_1164.all;

entity laser_t is
	port (
		b, clk: in bit;
		x: out bit
	);
end entity laser_t;

architecture behav of laser_t is
	signal n1, n0: bit; -- proximo estado
	signal s1, s0: bit; -- estado atual

	component reg is
		port (
		clk, i1, i0: in bit;
		q1, q0: out bit		
	);
	end component reg;

	component comb_circuit is
		port(
			buttom, current1, current0: in bit;
			next1, next0, laser_out: out bit
		);
	end component comb_circuit;

begin
	-- fios
	w1: reg port map (
		clk => clk,
		i1 => n1, 
		i0 => n0,
		q1 => s1,
		qo => s0
	);

	w2: comb_circuit port map (
		buttom => b,
		current1 => s1,
		current0 => s0,
		next1 => n1,
		next0 => n0,
		laser_out => x
	);

end architecture behav;