library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_tb is
end comp_tb;

architecture Behavioral of comp_tb is
signal a,b: STD_LOGIC_VECTOR(3 downto 0):="0000";
signal agb,aeb,alb: STD_LOGIC;
begin
uut: entity work.comp port map(a=>a, b=>b, agb=>agb, aeb=>aeb, alb=>alb);
process
begin
    a<="0000"; b<="0110"; wait for 20ns;
    a<="1010"; b<="0100"; wait for 20ns;
    a<="0010"; b<="0010"; wait for 20ns;
    a<="0111"; b<="1001"; wait for 20ns;
    a<="1111"; b<="1011"; wait for 20ns;
end process;
end Behavioral;
