----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2020 02:53:32 PM
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

entity DMux4_TB is
--  Port ( );
end DMux4_TB;

architecture Behavioral of DMux4_TB is

component DMux4 is
    Port ( x1 : in STD_LOGIC;
           SEL : in STD_LOGIC_VECTOR(0 to 1);
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC);
end component;

signal x1_TB :  STD_LOGIC := '0';
signal SEL_TB :  STD_LOGIC_VECTOR(0 to 1) :=  "XX";
signal y1_TB :  STD_LOGIC :=  '0';
signal y2_TB :  STD_LOGIC :=  '0';
signal y3_TB :  STD_LOGIC :=  '0';
signal y4_TB :  STD_LOGIC :=  '0';

begin
    TU: DMux4 PORT MAP (
         x1 => x1_TB,
         SEL => SEL_TB,
         y1 => y1_TB,
         y2 => y2_TB,
         y3 => y3_TB,
         y4 => y4_TB
        );
 
        Dmux_it: process
        begin
            x1_TB  <= '1';
            
            SEL_TB <= "00";
            wait for 100ns;

            SEL_TB <= "01";
            wait for 100ns;

            SEL_TB <= "10";
            wait for 100ns;

            SEL_TB <= "11";
            wait for 100ns;

            SEL_TB <= "10";
            wait for 100ns;

            SEL_TB <= "01";
            wait for 100ns;

            SEL_TB <= "00";
            wait for 100ns;

            SEL_TB <= "XX";
            wait for 100ns;

            wait;
            
        end process Dmux_it;

        

end Behavioral;
