library ieee;
use ieee.std_logic_1164.all;
entity OR_23 is
port(a,b:in std_logic;
c:out std_logic);
end OR_23;
architecture arc of OR_23 is
begin 
c<=a or b;
end arc;
