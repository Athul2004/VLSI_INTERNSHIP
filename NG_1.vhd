library ieee;
use ieee.std_logic_1164.all;
entity NG_1 is
port(a,b:in std_logic;
c:out std_logic);
end NG_1;
architecture arc of NG_1 is
begin 
process(a,b)
begin
if a='0' and b='0' then
c<='1';
elsif a='0' and b='1' then
c<='1';
elsif a='1' and b='0' then
c<='1';
elsif a='1' and b='1' then
c<='0';
end if;
end process;
end arc;

