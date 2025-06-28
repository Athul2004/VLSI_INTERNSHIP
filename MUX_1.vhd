library ieee;
use ieee.std_logic_1164.all;
entity MUX_1 is 
port(s0,s1,d0,d1,d2,d3:in std_logic;
     y:out std_logic);
end MUX_1;
Architecture arc of MUX_1 is
signal s0b,s1b,a,b,c,d: std_logic;
begin
s0b<= not s0;
s1b<= not s1;
a<=s0b and s1b and d0;
b<=s0b and s1 and d1;
c<=s0 and s1b and d2;
d<=s0 and s1 and d3;
y<=a or b or c or d;
end arc;



