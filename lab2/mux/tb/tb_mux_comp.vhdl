-- tb precisam ter entidades vazias
-- nao possuem portas lógicas, mas possuem sinais.
entity tb_mux_comp is
end entity tb_mux_comp;

architecture sim of tb_mux_comp is
    
    signal i0, i1: bit;
    signal s0: bit;
    signal d: bit;

begin
    -- o que queremos depurar/testar
    uut: entity work.mux_comp
        -- aqui estamos mapeando as entradas e saídas do circuito 'mux_comp'
        -- aos sinais declardos nesse arquivo
        port map (
            i0 => i0,
            i1 => i1,
            s0 => s0,
            d  => d
        );

    process
    begin
        -- vamos atribuir valores baseados na tabela verdade:
        -- linha 1
        i0 <= '0'; i1 <= '0'; s0 <= '0';
        wait for 10 ns;
        
        -- linha 2
        i0 <= '0'; i1 <= '0'; s0 <= '1';
        wait for 10 ns;
                
        -- linha 3
        i0 <= '0'; i1 <= '1'; s0 <= '0';
        wait for 10 ns;
        
        -- linha 4
        i0 <= '0'; i1 <= '1'; s0 <= '1';
        wait for 10 ns;
        
        -- linha 5
        i0 <= '1'; i1 <= '0'; s0 <= '0';
        wait for 10 ns;
        
        -- linha 6
        i0 <= '1'; i1 <= '0'; s0 <= '1';
        wait for 10 ns;
        
        -- linha 7
        i0 <= '1'; i1 <= '1'; s0 <= '0';
        wait for 10 ns;
        
        -- linha 8
        i0 <= '1'; i1 <= '1'; s0 <= '1';
        wait for 10 ns;

        wait;
        
    end process;

end architecture;
