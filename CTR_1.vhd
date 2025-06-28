library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity CTR_1 is
port(rst,clk:in std_logic;
c:inout std_logic_vector(3 downto 0));
end CTR_1;
architecture arc of CTR_1 is
begin
process(rst,clk)
begin
if rst='1' then
c<="0000";
elsif (clk 'event and clk='1') then
c<=c+'1';
if c = "1000" then
c<="0000";
end if;
end if;
end process;
end arc;

