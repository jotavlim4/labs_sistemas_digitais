entity PortaAnd2 is

port(
	en1,en2 : in bit;
	saida_and2 : out bit
	);

end PortaAnd2;

architecture behav of PortaAnd2 is
begin

saida_and2 <= en1 and en2;

end architecture behav;