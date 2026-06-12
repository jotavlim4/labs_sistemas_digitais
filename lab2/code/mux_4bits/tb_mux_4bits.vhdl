library ieee;
use ieee.std_logic_1164.all;

entity tb_mux_4bits is
end tb_mux_4bits;

architecture test of tb_mux_4bits is

    -- Declaração do componente
    component mux_4bits is
    port(
        a0, a1, a2, a3 : in bit;
        b0, b1, b2, b3 : in bit;
        sel            : in bit;
        d0, d1, d2, d3 : out bit
    );
    end component;

    -- Sinais de teste
    signal a0, a1, a2, a3 : bit := '0';
    signal b0, b1, b2, b3 : bit := '0';
    signal sel            : bit := '0';
    signal d0, d1, d2, d3 : bit;

begin

    -- Instância do DUT (Device Under Test)
    uut: mux_4bits
    port map(
        a0 => a0,
        a1 => a1,
        a2 => a2,
        a3 => a3,
        b0 => b0,
        b1 => b1,
        b2 => b2,
        b3 => b3,
        sel => sel,
        d0 => d0,
        d1 => d1,
        d2 => d2,
        d3 => d3
    );

    -- Processo de estímulos
    stim_proc: process
    begin

        -- Teste 1: sel = 0 → saída deve ser A
        a0 <= '0'; a1 <= '1'; a2 <= '0'; a3 <= '1';
        b0 <= '1'; b1 <= '0'; b2 <= '1'; b3 <= '0';
        sel <= '0';
        wait for 10 ns;

        -- Teste 2: sel = 1 → saída deve ser B
        sel <= '1';
        wait for 10 ns;

        -- Teste 3
        a0 <= '1'; a1 <= '1'; a2 <= '1'; a3 <= '1';
        b0 <= '0'; b1 <= '0'; b2 <= '0'; b3 <= '0';
        sel <= '0';
        wait for 10 ns;

        -- Teste 4
        sel <= '1';
        wait for 10 ns;

        -- Final da simulação
        wait;

    end process;

end architecture test;


