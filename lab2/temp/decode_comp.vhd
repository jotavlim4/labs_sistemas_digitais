ENTITY decode_comp IS
    PORT(
        A : IN  BIT_VECTOR(3 DOWNTO 0); -- 4 bits de entrada (0-9)
		  --aqui são os  A4,A3,A2,A1
        S : OUT BIT_VECTOR(6 DOWNTO 0)  -- 7 segmentos de saída
		  --aqui são os s0 até o s6
    );
END;

ARCHITECTURE behav OF decode_comp IS
BEGIN
    WITH A SELECT
        S <= "1000000" WHEN "0000",  -- 0
             "1111001" WHEN "0001",  -- 1
             "0100100" WHEN "0010",  -- 2
             "0110000" WHEN "0011",  -- 3
             "0011001" WHEN "0100",  -- 4
             "0010010" WHEN "0101",  -- 5
             "0000010" WHEN "0110",  -- 6
             "1111000" WHEN "0111",  -- 7
             "0000000" WHEN "1000",  -- 8
             "0010000" WHEN "1001",  -- 9
             "1111111" WHEN OTHERS;  -- inválido: tudo apagado (item 2d)
END;