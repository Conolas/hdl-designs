----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.09.2025 10:18:43
-- Design Name: 
-- Module Name: pattern - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
  Port (D1,D0: in std_logic; O3,O2,O1,O0: out std_logic );
end decoder;

architecture dataflow of decoder is

begin
O3 <= D1 and D0;
O2 <= D1 and (not D0);
O1 <= (not D1) and D0;
O0 <= (not D1) and (not D0);

end dataflow;
