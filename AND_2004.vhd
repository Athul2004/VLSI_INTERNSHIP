library ieee;
use ieee.std_logic_1164.all;
entity AND_2004 is 
port(a,b:in std_logic;
     c:out std_logic);
end AND_2004;
Architecture arc of AND_2004 is
begin
c<=a and b;
end arc;
