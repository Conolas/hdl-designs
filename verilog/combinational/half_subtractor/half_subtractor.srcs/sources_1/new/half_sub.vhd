library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_sub is
    Port ( a,b : in STD_LOGIC;
           diff,borr : out STD_LOGIC);
end half_sub;

architecture Behavioral of half_sub is

begin
process(a,b)begin
    diff <= a xor b;
    borr <= (not a) and b;
end process;
end Behavioral;
