library ieee;
use ieee.std_logic_1164.all;
entity R_C is
port(rst,clk:in std_logic;
q0,q1,q2,q3:inout std_logic);
end R_C;
architecture arc of R_C is
begin
process(rst,clk)
begin
if rst='1' then
q0<='1';q1<='0';q2<='0';q3<='0';
elsif (clk'event and clk='1') then
q0<=q3;
q1<=q0;
q2<=q1;
q3<=q2;
end if;
end process;
end arc;