library ieee;
use ieee.std_logic_1164.all;
entity EC_1 is 
port(i0,i1,i2,i3,i4,i5,i6,i7:in std_logic;
     n0,n1,n2:out std_logic);
end EC_1;
Architecture arc of EC_1 is
begin
n0<=i3 or i2 or i1 or i0;
n1<=i5 or i4 or i1 or i0;
n2<=i6 or i4 or i2 or i0;
end arc;
