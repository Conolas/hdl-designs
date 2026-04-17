library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_tb is
end encoder_tb;

architecture Behavioral of encoder_tb is
signal I:STD_LOGIC_VECTOR(7 downto 0):="00000000";
signal Y:STD_LOGIC_VECTOR(2 downto 0);
begin
uut: entity work.encoder port map(I=>I, Y=>Y);
process
begin
    I(0) <= '1'; wait for 20ns;
    I(0) <= '0'; I(1) <= '1'; wait for 20ns;
    I(1) <= '0'; I(2) <= '1'; wait for 20ns;
    I(2) <= '0'; I(3) <= '1'; wait for 20ns;
    I(3) <= '0'; I(4) <= '1'; wait for 20ns;
    I(4) <= '0'; I(5) <= '1'; wait for 20ns;
    I(5) <= '0'; I(6) <= '1'; wait for 20ns;
    I(6) <= '0'; I(7) <= '1'; wait for 20ns;
end process;
end Behavioral;
