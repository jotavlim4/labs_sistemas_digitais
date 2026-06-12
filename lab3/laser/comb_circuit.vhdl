library ieee;
use ieee.std_logic_1164.all;

entity comb_circuit is
	port(
		buttom, current1, current0: in bit;
		next1, next0, laser_out: out bit
	);
end entity comb_circuit;

architecture behav of comb_circuit
begin
	
	laser_out <= current1 or current0;
	next1 <= current1 xor current0;
	next0 <= (not(current1) and not(current0) and buttom) or (current1 and not(current0));

end architecture behav;