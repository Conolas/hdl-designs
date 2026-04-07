library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_sub_tb is
end full_sub_tb;

architecture Behavioral of full_sub_tb is
signal a,b,bin,diff,bout: STD_LOGIC:='0';
begin
uut: entity work.full_sub port map(a=>a, b=>b, bin=>bin, diff=>diff, bout=>bout);
process
begin
    a<='0'; b<='0'; bin<='0'; wait for 20ns;
    a<='0'; b<='0'; bin<='1'; wait for 20ns;
    a<='0'; b<='1'; bin<='0'; wait for 20ns;
    a<='0'; b<='1'; bin<='1'; wait for 20ns;
    a<='1'; b<='0'; bin<='0'; wait for 20ns;
    a<='1'; b<='0'; bin<='1'; wait for 20ns;
    a<='1'; b<='1'; bin<='0'; wait for 20ns;
    a<='1'; b<='1'; bin<='1'; wait for 20ns;
end process;
end Behavioral;
