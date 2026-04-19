library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp is
    Port ( a,b : in STD_LOGIC_VECTOR(3 downto 0);
           agb,aeb,alb : out STD_LOGIC);
end comp;

architecture Behavioral of comp is

begin
process(a,b)
begin
    if a>b then
        agb <= '1'; aeb <= '0'; alb <= '0';
    elsif a=b then
        agb <= '0'; aeb <= '1'; alb <= '0';
    else
        agb <= '0'; aeb <= '0'; alb <= '1';
    end if;
end process;
end Behavioral;
