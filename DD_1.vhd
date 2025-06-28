library ieee;
use ieee.std_logic_1164.all;
entity DD_1 is
port(rst,clk:in std_logic;
d:in std_logic_vector(1 downto 0);
q:out std_logic_vector(1 downto 0));
end DD_1;
architecture arc of DD_1 is
begin
process(d,rst,clk)
begin
if rst='1' then
q<="00";
elsif (clk'event and clk='1') then
q<=d;
end if;
end process;
end arc;

