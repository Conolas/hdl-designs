library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
    Port ( I : in STD_LOGIC_VECTOR(7 downto 0);
           Y : out STD_LOGIC_VECTOR(2 downto 0));
end encoder;

architecture Behavioral of encoder is

begin
process(I)
begin
    Y(0) <= I(1) or I(3) or I(5) or I(7);
    Y(1) <= I(2) or I(3) or I(6) or I(7);
    Y(2) <= I(4) or I(6) or I(5) or I(7);
end process;
end Behavioral;
