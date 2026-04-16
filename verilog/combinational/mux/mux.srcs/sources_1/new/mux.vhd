----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2025 09:42:25
-- Design Name: 
-- Module Name: mux - dataflow
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

entity mux4_1 is
  Port (I: in std_logic_vector(3 downto 0); 
        S : in std_logic_vector(1 downto 0);
        Y : out std_logic );
end mux4_1;

architecture dataflow of mux4_1 is

begin
Y <= I(0) when S = "00" else
     I(1) when S = "01" else
     I(2) when S = "10" else
     I(3) when S = "11";

end dataflow;
