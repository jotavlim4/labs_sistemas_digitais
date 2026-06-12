library ieee;
use ieee.std_logic_1164.all;

entity latch_d is
	port(
		d, c: in bit;
		q: out bit
	);
end entity latch_d;

architecture behav of latch_d is
begin
	
	process(d, c)
	begin
		if(c = '1' and d = '1') then
			q <= '1';
		elsif(c = '1' and d = '0') then
			q <= '0';
		end if;
	end process;

end architecture behav;