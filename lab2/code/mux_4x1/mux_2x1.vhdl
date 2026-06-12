entity mux_2x1 is
port(
    i0, i1: in bit;
    s: in bit;
    d: out bit 
);
end mux_2x1;

architecture behav of mux_2x1 is
begin
    d <= (i0 and (not s)) or (i1 and s);

end architecture behav; 