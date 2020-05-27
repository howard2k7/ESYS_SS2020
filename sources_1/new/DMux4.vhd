----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2020 12:44:05 PM
-- Design Name: 
-- Module Name: DMux4 - Behavioral
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

entity DMux4 is
    Port ( x1 : in STD_LOGIC;
           SEL : in STD_LOGIC_VECTOR(0 to 1);
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC);
end DMux4;

architecture Behavioral of DMux4 is

begin

    y1 <=   x1 when SEL = "00" else 
            '0';
    y2 <=   x1 when SEL = "01" else 
            '0';
    y3 <=   x1 when SEL = "10" else 
            '0';
    y4 <=   x1 when SEL = "11" else 
            '0';

end Behavioral;
