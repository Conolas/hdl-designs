library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_tb is
end demux_tb;

architecture Behavioral of demux_tb is
signal D: STD_LOGIC:='1';
signal S: STD_LOGIC_VECTOR(2 downto 0):="000";
signal Y: STD_LOGIC_VECTOR(7 downto 0);
begin
uut: entity work.demux port map(D=>D, S=>S, Y=>Y);
process
begin
    S <= "000"; wait for 20ns;
    S <= "001"; wait for 20ns;
    S <= "010"; wait for 20ns;
    S <= "011"; wait for 20ns;
    S <= "100"; wait for 20ns;
    S <= "101"; wait for 20ns;
    S <= "110"; wait for 20ns;
    S <= "111"; wait for 20ns;
end process;
end Behavioral;
