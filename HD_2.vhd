library ieee;
use ieee.std_logic_1164.all;
entity HD_2 is
port(a,b:in std_logic;
s,c:out std_logic);
end HD_2;
architecture arc of HD_2 is
begin 
process(a,b)
begin
if a='0' and b='0' then
s<='0';
c<='0';
elsif a='0' and b='1' then
s<='1';
c<='0';
elsif a='1' and b='0' then
s<='1';
c<='0';
elsif a='1' and b='1' then
s<='0';
c<='1';
end if;
end process;
end arc;



