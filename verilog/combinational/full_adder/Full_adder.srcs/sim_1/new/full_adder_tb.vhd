library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture Behavioral of full_adder_tb is
signal a,b,cin,sum,cout: STD_LOGIC:= '0';
begin
uut: entity work.full_adder port map (a=>a, b=>b, cin=>cin, sum=>sum, cout=>cout);

process
begin
    a<='0'; b<='0'; cin<='0'; wait for 20ns;
    a<='0'; b<='0'; cin<='1'; wait for 20ns;
    a<='0'; b<='1'; cin<='0'; wait for 20ns;
    a<='0'; b<='1'; cin<='1'; wait for 20ns;
    a<='1'; b<='0'; cin<='0'; wait for 20ns;
    a<='1'; b<='0'; cin<='1'; wait for 20ns;
    a<='1'; b<='1'; cin<='0'; wait for 20ns;
    a<='1'; b<='1'; cin<='1'; wait for 20ns;
end process;
end Behavioral;
