entity PortaOr4 is

port(
	en1,en2,en3,en4 : in bit;
	saida_or4 : out bit
	);

end PortaOr4;

architecture behav of PortaOr4 is
begin

saida_or4 <= en1 or en2 or en3 or en4;

end architecture behav;