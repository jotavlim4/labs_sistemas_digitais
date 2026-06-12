ENTITY Mux2x1 IS
    PORT(
        I0 : IN  BIT; --entrada 1
        I1 : IN  BIT; -- entrada 2
        S0 : IN  BIT; -- sendo 0, sai 01. sendo 1, sai I1
        D  : OUT BIT -- saída após escolha da chave seletora
    );
END;

ARCHITECTURE comportamental OF Mux2x1 IS

BEGIN
    WITH S0 SELECT
        D <= I0 WHEN '0',
             I1 WHEN '1';
END;