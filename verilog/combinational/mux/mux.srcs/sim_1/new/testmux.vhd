----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2025 09:51:47
-- Design Name: 
-- Module Name: testmux - test
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

entity testmux is
--  Port ( );
end testmux;

architecture test of testmux is

signal i : std_logic_vector(3 downto 0);
signal s: std_logic_vector(1 downto 0);
signal y: std_logic;

component mux4_1
port(i: in std_logic_vector(3 downto 0);
     s: in std_logic_vector(1 downto 0);
     y: out std_logic);
     
end component;
begin
I1: mux4_1 port map(i,s,y);
process
begin
i <= "1010";
s <= "00";
wait for 10ns;
s <= "01";
wait for 10ns;
s <= "10";
wait for 10ns;
s <= "11";
wait for 10ns;
end process;
end test;
