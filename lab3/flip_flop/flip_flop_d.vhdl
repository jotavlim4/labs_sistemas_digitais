library ieee;
use ieee.std_logic_1164.all;

entity flip_flop_d is
	port (
		d, clk: in bit;
		q: out bit
	);
end entity flip_flop_d;

architecture behav of flip_flop_d is

begin
	process(d, clk)
	begin
		if(clk'event and clk = '1' and d = '1') then
			q <= '1';
		elsif (clk'event and clk = '1' and d = '0') then
			q <= '0';
		end if;
	end process;
end architecture behv;