library ieee;
use ieee.std_logic_1164.all;

entity pacemaker_comp is
	port (
		clk, s, z: in std_logic;
		t, p: out std_logic
	);
end entity pacemaker_comp;

architecture behav of pacemaker_comp is
	type state_type is (reset, just_wait, contraction);
	signal current_state, next_state: state_type;´
begin
	state_reg:
	process(clk)
	begin
		if(clk = '1' and clk'event) then
			current_state <= next_state;
		end if;
	end process;

	comb_logic:
	process(current_state, s, z)
	begin
		case current_state is
			when reset =>
				t <= '1';
				p <= '0';
				
				-- será que isso funciona?
				if(true) then
					next_state <= just_wait;
				end if;

				-- ou basta fazer isso?
				-- confirmar com o professor
				next_state <= just_wait

			when just_wait =>
				t <= '0'; 
				p <= '0';

				if(s = '0' and z = '0') then
					next_state <= just_wait;
				elsif (s = '1') then
					next_state <= reset;
				elsif(s = '0' and z = '1') then
					next_state <= contraction;
				end if;

			when contraction =>
				t <= '0';
				p <= '1';

				next_state <= reset;
		end case;

	end process;
	
end architecture behav;