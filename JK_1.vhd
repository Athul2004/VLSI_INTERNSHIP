library ieee;
use ieee.std_logic_1164.all;
entity 	JK_1 is
port(j,k,clk,rst:in std_logic;
q:inout std_logic;
qb:out std_logic);
end JK_1;
architecture arc of JK_1 is
begin
process(j,k,clk,rst)
begin
if (rst='1') then
q<='0';
elsif (clk'event and clk='1') then
if j='0' and k='0' then
q<=q;
elsif j='0' and k='1' then
q<='0';
elsif j='1' and k='0' then
q<='1';
elsif j='1' and k='1' then
q<='1';
q<= not q;
end if;
end if;
qb<= not q;
end process;
end arc;
