entity mux_2x1 is
port(
    i0, i1, s0: in  bit;
    d: out bit
);
end;

architecture behav of mux_2x1 is 
begin
with s0 select
     d <= i0 when '0',
          i1 when '1';
end;

