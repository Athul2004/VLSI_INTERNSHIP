library ieee;
use ieee.std_logic_1164.all;
entity SISO_1 is
port(d,rst,clk:in std_logic;
q:inout std_logic);
end SISO_1;
architecture arc of SISO_1 is
signal s: std_logic;
begin
process(d,rst,clk)
begin
if rst='1' then
q<='0';
elsif (clk'event and clk='1') then
q<=s;
s<=d;
end if;
end process;
end arc;



