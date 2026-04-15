library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
end half_adder_tb;

architecture Behavioral of half_adder_tb is
signal a,b,sum,carry: STD_LOGIC:='0';
begin
uut: entity work.half_adder port map(a=>a, b=>b, sum=>sum, carry=>carry );

process
begin
    a<='0'; b<='0'; wait for 20ns;
    a<='0'; b<='1'; wait for 20ns;
    a<='1'; b<='0'; wait for 20ns;
    a<='1'; b<='1'; wait for 20ns;
end process;
end Behavioral;
