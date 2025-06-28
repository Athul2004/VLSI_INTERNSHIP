library ieee;
use ieee.std_logic_1164.all;
entity B_D is
port(rst,clk,dir,d:in std_logic;
q0,q1,q2,q3:inout std_logic);
end B_D;
architecture arc of B_D is
begin
process(rst,clk)
begin
if rst='1' then
q0<='0';q1<='0';q2<='0';q3<='0';
elsif (clk'event and clk='1') then
if dir ='1' then
q0<=d;
q1<=q0;
q2<=q1;
q3<=q2;
else
q3<=d;
q2<=q3;
q1<=q2;
q0<=q1;
end if;
end if;
end process;
end arc;

