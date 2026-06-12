library ieee;
use ieee.std_logic_1164.all;

entity pacemaker is
	port(
		clk, s, z: in bit;
		p, t: out bit
	);
end entity pacemaker;

architecture behav of pacemaker is
	signal n1, n0: bit; -- próximo estado que será inforado ao registrador
	signal s1, s0: bit; -- estado atual que será "carreghado" no circuito lógico.

	-- compenentes utilizados
	-- registador
	component register is
		port (
			clk, i1, i0: in bit;
			q1, q0: out bit 
		);
	end component register;

	-- circuito logico
	component c_logic is
		port(
			s1, s0, s, z: in bit;
			n1, n0, t, p: out bit 
		);
	end component c_logic;

begin
	-- fios:
	w1: register port map (
		clk => clk,
		i1 => n1,
		i0 => n0,
		q1 => s1,
		q0 => s0
	);

	w2: c_logic port map (
		s1 => s1, 
		s0 => s0,
		s  => s,
		z  => z,
		n1 => n1,
		n0 => n0,
		t  => t,
		p  => p
	); 

end architecture behav;