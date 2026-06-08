entity decoders_comp is
	port (
		a0, a1, a2, a3: in bit; -- bits de entrada
		e: in bit; -- enable: ativa/desativa o decoder
		s0, s1, s2, s3, s4, s5, s6: out bit -- ativa o diplay de 7 segmentos 
	);	
end entity decoders_comp;

architecture behav of decoders_comp is
	signal out_aux: bit_vector(6 downto 0);
	signal in_aux: bit_vector(4 downto 0);
begin
	in_aux <= e & a3 & a2 & a1 & a0;
	with in_aux select
		out_aux <=  "1000000" when "10000",  -- 0
             		"1111001" when "10001",  -- 1
             		"0100100" when "10010",  -- 2
             		"0110000" when "10011",  -- 3
             		"0011001" when "10100",  -- 4
             		"0010010" when "10101",  -- 5
             		"0000010" when "10110",  -- 6
             		"1111000" when "10111",  -- 7
             		"0000000" when "11000",  -- 8
             		"0010000" when "11001",  -- 9
             		"1111111" when others;  -- inválido: tudo apagado (item 2d)

    s0 <= out_aux(0);
    s1 <= out_aux(1);
    s2 <= out_aux(2);
    s3 <= out_aux(3);
    s4 <= out_aux(4);
    s5 <= out_aux(5);
    s6 <= out_aux(6);
end architecture behav;