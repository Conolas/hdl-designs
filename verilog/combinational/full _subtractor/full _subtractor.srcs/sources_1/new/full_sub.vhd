library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_sub is
    Port ( a,b,bin : in STD_LOGIC;
           diff,bout : out STD_LOGIC);
end full_sub;

architecture Behavioral of full_sub is

begin
process(a,b,bin)
begin
    diff <= a xor b xor bin; 
    bout <= ((b xor bin) and (not a)) or (b and bin); 
end process;
end Behavioral;
