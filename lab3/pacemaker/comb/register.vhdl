library ieee;
use ieee.std_logic_1164.all;

entity register is
	port (
		clk, i0, i1: in bit; -- i0, i1 serão resp por carrgar o novo estado em clk^
		q1, q0: out bit -- q1, q0 são o estado atual 
	);
end entity register;

architecture behav  of register is
begin
	
	-- o carregando do estado so acontece em clk^
	process(clk)
	begin
		if(clk'event and clk = '1') then
			q1 <= i1;
			q0 <= i0;
		end if;
	end process;

end architecture behav;