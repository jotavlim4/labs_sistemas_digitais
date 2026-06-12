library ieee;
use ieee.std_logic_1164.all;

entity reg is
	port (
		clk, i1, i0: in bit;
		q1, q0: out bit		
	);
end entity reg;

architecture behav of reg
begin

	process(clk)
	begin
		if(clk'event and clk = '1') then
			q1 <= i1;
			q0 <= i0;
		end if;
	end process;

end architecture behav;


