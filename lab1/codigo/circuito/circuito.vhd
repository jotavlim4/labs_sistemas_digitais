entity circuito is
port(A,B,C : in bit;
	  S1, S2     : out bit); -- aqui ja declara o S1 e S2
end circuito;

architecture behav of circuito is -- declaração de todos os fios
	signal w1, w2, w3 : bit;
	signal w4, w5, w6, w7 : bit; 
	signal not_A, not_B, not_C : bit; --declaração dos nots
	
	component PortaAnd2 is
		port(
			en1,en2 : in bit;
			saida_and2 : out bit);
	end component;
	component PortaAnd3 is
		port(
			en1,en2, en3 : in bit;
			saida_and3 : out bit);
	end component;
	component PortaOr3 is
		port(
			en1,en2, en3 : in bit;
			saida_or3 : out bit);
	end component;
	component PortaOr4 is
		port(
			en1,en2, en3, en4 : in bit;
			saida_or4 : out bit);
	end component;
begin
		--p/NOTS
		not_A <= NOT A;
		not_B <= NOT B;
		not_C <= NOT C;
		
		--P/S1
		
		u1 : PortaAnd2 port map(en1 => B, en2 => C,        saida_and2 => w1);
		u2 : PortaAnd2 port map(en1 => A, en2 => B,        saida_and2 => w2);
		u3 : PortaAnd2 port map(en1 => A, en2 => C,        saida_and2 => w3);
		u4 : PortaOr3	port map(en1 => w1, en2 => w2, en3 => w3, saida_or3 => S1);
		
		--P/S2
		
		u5 : PortaAnd3 port map(en1 => not_A, en2 => not_B, en3 => C,        saida_and3 => w4);
		u6 : PortaAnd3 port map(en1 => not_A, en2 => B, en3 => not_C,        saida_and3 => w5);
		u7 : PortaAnd3 port map(en1 => A, en2 => not_B, en3 => not_C,        saida_and3 => w6);
		u8 : PortaAnd3 port map(en1 => A, en2 => B, en3 => C,                saida_and3 => w7);
		u9 : PortaOr4	port map(en1 => w4, en2 => w5, en3 => w6, en4 => w7,  saida_or4 => S2);
		
end architecture behav;