library ieee;
use ieee.std_logic_1164.all;
entity HD_1 is 
port(a,b:in std_logic;
     s,c:out std_logic);
end HD_1;
Architecture arc of HD_1 is
begin
s<=a xor b;
c<=a and b;
end arc;
