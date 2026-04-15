library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_sub_tb is
end half_sub_tb;

architecture Behavioral of half_sub_tb is
signal a,b,diff,borr: STD_LOGIC:= '0';
begin
uut: entity work.half_sub port map(a=>a, b=>b, diff=>diff, borr=>borr);
process
begin
    a<='0'; b<='0'; wait for 20ns;
    a<='0'; b<='1'; wait for 20ns;
    a<='1'; b<='0'; wait for 20ns;
    a<='1'; b<='1'; wait for 20ns;
end process;
end Behavioral;
