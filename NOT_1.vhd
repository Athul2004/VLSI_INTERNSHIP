library ieee;
use ieee.std_logic_1164.all;
entity NOT_1 is
port(a:in std_logic;
B:out std_logic);
end NOT_1;
architecture arc of NOT_1 is
begin 
B<=not a;
end arc;
