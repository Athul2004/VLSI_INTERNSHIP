library ieee;
use ieee.std_logic_1164.all;
entity mux_2 is
port(s0,s1,d0,d1,d2,d3:in std_logic;
y:out std_logic);
end mux_2;
architecture arc of mux_2 is
begin 
process(s0,s1)
begin
if s0='0' and s1='1' then
y<= d0;
elsif s0='0' and s1='1'then
y<= d1;
elsif s0='1' and s1='0'then
y<= d2;
elsif s0='1' and s1='1'then
y<= d3;
end if;
end process;
end arc;







