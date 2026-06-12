ENTITY Mux2x1_portas IS
    PORT(
        I0 : IN  BIT; --entrada 1
        I1 : IN  BIT; -- entrada 2
        S0 : IN  BIT; -- sendo 0, sai 01. sendo 1, sai I1
        D  : OUT BIT -- saída após escolha da chave seletora
    );
END;

ARCHITECTURE portas OF Mux2x1_portas IS

BEGIN -- comportamento od circuito
    --    I0 se S0=0         I1 se S0=1
	 D <= (I0 AND NOT S0) OR (I1 AND S0); -- D recebe resultado.
	 
END;