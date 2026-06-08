ENTITY decode_portas IS
    PORT(
        A : IN  BIT_VECTOR(3 DOWNTO 0);
        S : OUT BIT_VECTOR(6 DOWNTO 0)
    );
END;

ARCHITECTURE portas OF decode_portas IS
BEGIN
	-- aqui n sao as equações para acender as portas, sao onde o S ta apagado
	S(0) <= (not A(3) and not A(2) and not A(1) and A(0)) -- 0001 = 1 
		  OR (not A(3) and A(2) and not A(1) and not A(0));  -- 0100 = 4
			
	S(1) <= (not A(3) and A(2) and not A(1) and A(0)) -- 0101 = 5
		  OR (not A(3) and A(2) and A(1) and not A(0)); -- 0110 = 6
			
	S(2) <= (not A(3) and not A(2) and A(1) and not A(0)); -- 0010 = 2
	
	S(3) <= (not A(3) and not A(2) and not A(1) and A(0)) -- 0001 = 1
		  OR (not A(3) and A(2) and not A(1) and not A(0)) -- 0100 = 4
		  OR (not A(3) and A(2) and A(1) and A(0)); -- 0111 = 7
	
	S(4) <= (not A(3) and not A(2) and not A(1) and A(0)) -- 0001 = 1
        OR (not A(3) and not A(2) and A(1) and A(0)) -- 0011 = 3
		  OR (not A(3) and A(2) and not A(1) and not A(0)) -- 0100 = 4
		  OR (not A(3) and A(2) and not A(1) and A(0)) -- 0101 = 5
		  OR (not A(3) and A(2) and A(1) and A(0)) -- 0111 = 7
		  OR (A(3) and not A(2) and not A(1) and A(0)); -- 1001 = 9
	
	S(5) <= (not A(3) and not A(2) and not A(1) and A(0)) -- 0001 = 1
	     OR (not A(3) and not A(2) and A(1) and not A(0)) -- 0010 = 2
		  OR (not A(3) and not A(2) and A(1) and A(0))  -- 0011 = 3
		  OR (not A(3) and A(2) and A(1) and A(0)); -- 0111 = 7
	
	S(6) <= (not A(3) and not A(2) and not A(1) and not A(0)) -- 0000 = 0
		  OR (not A(3) and not A(2) and not A(1) and A(0)) -- 0001 = 1 
		  OR (not A(3) and A(2) and A(1) and A(0)); -- 0111 = 7
	
	
	
	--S(0) <= aceso em: 0,3,5,6,7,8,9 / 1,4
	--S(1) <= aceso em: 0,1,2,3,4,7,8,9 / 5,6ta
	--S(2) <= aceso em: 0,1,3,4,5,6,7,8,9 / 2
	--S(3) <= aceso em: 0,2,3,5,6,8,9 / 1,4,7
	--S(4) <= aceso em: 0,2,8 / 1,3,4,5,7,9
	--S(5) <= aceso em: 0,4,5,6,8,9 / 1,2,3,7
	--S(6) <= aceso em: 2,3,4,5,6,8,9 / 0,1,7
END;