library ieee;
use ieee.std_logic_1164.all;
entity AD_2 is
port(a,b,c:in std_logic;
s,r:out std_logic);
end AD_2;
architecture arc of AD_2 is
begin 
process(a,b,c)
begin
if a='0' and b='0' and c='0'then
s<='0';
r<='0';
elsif a='0' and b='0'and c='1'then
s<='1';
r<='0';
elsif a='0' and b='1'and c='0'then
s<='1';
r<='0';
elsif a='0' and b='1'and c='1'then
s<='0';
r<='1';
elsif a='1' and b='0'and c='0'then
s<='1';
r<='0';
elsif a='1' and b='0'and c='1'then
s<='0';
r<='1';
elsif a='1' and b='1'and c='0'then
s<='0';
r<='1';
elsif a='1' and b='1'and c='1'then
s<='1';
r<='1';
end if;
end process;
end arc;





