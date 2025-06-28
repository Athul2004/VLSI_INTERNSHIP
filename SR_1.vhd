library ieee;
use ieee.std_logic_1164.all;
entity 	SR_1 is
port(s,r,clk,rst:in std_logic;
q:inout std_logic;
qb:out std_logic);
end SR_1;
architecture arc of SR_1 is
begin
process(s,r,clk,rst)
begin
if (rst='1') then
q<='0';
elsif (clk'event and clk='1') then
end if;
if s='0' and r='0' then
q<=q;
qb<= not q;
elsif s='0' and r='1' then
q<='0';
qb<= not q;
elsif s='1' and r='0' then
q<='1';
qb<= not q;
end if;
end process;
end arc;
