library ieee;
use ieee.std_logic_1164.all;
entity ALU_1 is 
port(a,b,s0,s1:in std_logic;
     y:out std_logic);
end ALU_1;
Architecture arc of ALU_1 is
signal s0b,s1b,h,i,j,k,d0,d1,d2,d3: std_logic;
begin
s0b<= not s0;
s1b<= not s1;
h<= a xor b;
i<= a xor b;
j<= a and b;
k<= a or b;
d0<= s0b and s1b and h;
d1<= s0b and s1 and i;
d2<= s0 and s1b and j;
d3<= s0 and s1 and k;
y<= d0 or d1 or d2 or d3;
end arc;
