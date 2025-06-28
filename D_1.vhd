library ieee;
use ieee.std_logic_1164.all;
entity 	D_1 is
port(d,r,clk:in std_logic;
q:inout std_logic;
qb:out std_logic);
end D_1;
architecture arc of D_1 is
begin
process(d,r,clk)
begin
if r='1' then
q<='0';
elsif (clk'event and clk='1') then
q<=d;
end if;
qb<=not q;
end process;
end arc;