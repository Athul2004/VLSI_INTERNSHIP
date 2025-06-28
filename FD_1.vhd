library ieee;
use ieee.std_logic_1164.all;
entity FD_1 is 
port(a,b,c:in std_logic;
     s,r:out std_logic);
end FD_1;
Architecture arc of FD_1 is
signal d,o,h: std_logic;
begin
d<=a xor b;
s<=d xor c;
o<=d and c;
h<=a and b;
r<=o or h;
end arc;

