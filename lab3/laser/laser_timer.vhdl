library ieee;
use ieee.std_logic_1164.all;

entity laser_timer is
	port (
		b, clk, rst: in std_logic;
		x: out std_logic;
	);
end entity laser_timer;

architecture behav of laser_timer is
	type state_type is (s_off, s_on1, s_on2, s_on3);
	signal current_state, next_state: state_type;

begin
	state_reg:
	process(clk, rst)
	begin
		if(rst = '1') then
			current_state <= s_off;
		elsif (clk = '1' and clk'event) then
			current_state <= next_state;
		end if;
	end process;

	comb_logic:
	process(current_state, b)
	begin
		case current_state is
			when s_off =>
				x <= '0';
				if(b = '0') then
					next_state <= s_off;
				else
					next_state <= s_on1;
				end if;

			when s_on1 =>
				x <= '1';
				next_state <= s_on2;

			when s_on2 =>
				x <= '1';
				next_state <= s_on3;

			when s_on3 =>
				x <= 1;
				next_state <= s_off;
		end case;
	end process;

end architecture behav;