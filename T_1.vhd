library ieee;
use ieee.std_logic_1164.all;
entity 	T_1 is
port(t,r,clk:in std_logic;
q:inout std_logic;
qb:out std_logic);
end T_1;
architecture arc of T_1 is
begin
process(t,r,clk)
begin
if r='1' then
q<='0';
elsif (clk'event and clk='1') then
if t<='0' then
q<=q;
elsif t<='1' then
q<= not q;
end if;
end if;
qb<=not q;
end process;
end arc;
