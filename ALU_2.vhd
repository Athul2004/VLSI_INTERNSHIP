library ieee;
use ieee.std_logic_1164.all;
entity ALU_2 is
port(a,b,s0,s1:in std_logic;
y:out std_logic);
end ALU_2;
architecture arc of ALU_2 is
begin 
process(a,b,s0,s1)
begin
if a='0' and b='0' and s0='0' and s1='0' then
y<='0';
elsif a='0' and b='0' and s0='0' and s1='1' then
y<='0';
elsif a='0' and b='0' and s0='1' and s1='0' then
y<='0';
elsif a='0' and b='0' and s0='1' and s1='1' then
y<='0';
elsif a='0' and b='1' and s0='0' and s1='0' then
y<='1';
elsif a='0' and b='1' and s0='0' and s1='1' then
y<='1';
elsif a='0' and b='1' and s0='1' and s1='0' then
y<='0';
elsif a='0' and b='1' and s0='1' and s1='1' then
y<='1';
elsif a='1' and b='0' and s0='0' and s1='0' then
y<='1';
elsif a='1' and b='0' and s0='0' and s1='1' then
y<='1';
elsif a='1' and b='0' and s0='1' and s1='0' then
y<='0';
elsif a='1' and b='0' and s0='1' and s1='1' then
y<='1';
elsif a='1' and b='1' and s0='0' and s1='0' then
y<='0';
elsif a='1' and b='1' and s0='0' and s1='1' then
y<='0';
elsif a='1' and b='1' and s0='1' and s1='0' then
y<='1';
elsif a='1' and b='1' and s0='1' and s1='1' then
y<='1';
end if;
end process;
end arc;








