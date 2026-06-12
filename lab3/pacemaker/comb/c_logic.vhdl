library ieee;
use ieee.std_logic_1164.all;

entity c_logic is
	port (
		s1, s0, s, z: in bit; -- entradas atuais + sinal do temporizador + inf contração natural
		n1, n0, t, p: out bit -- atualiza o estado no registrador + reset + ativa contração
	);
end entity c_logic;

architecture behav of c_logic
begin
	
	n1 <= (not(s1) and s0 and not(s) abd z);
	n0 <= (not(s1) and not(s0)) or (not(s1) and s0 and not(s) and not(z));
	t  <= (not(s1) and not(s0));
	p  <= (s1 and not(so));

end architecture behav;
