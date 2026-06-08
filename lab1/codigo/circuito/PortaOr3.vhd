entity PortaOr3 is

port(
	en1,en2,en3 : in bit;
	saida_or3 : out bit
	);

end PortaOr3;

architecture behav of PortaOr3 is
begin

saida_or3 <= en1 or en2 or en3;

end architecture behav;