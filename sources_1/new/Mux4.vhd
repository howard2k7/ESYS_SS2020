----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2020 12:23:41 PM
-- Design Name: 
-- Module Name: Mux4 - Behavioral
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

entity Mux4 is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           x3 : in STD_LOGIC;
           x4 : in STD_LOGIC;
           SEL: in STD_LOGIC_VECTOR(1 downto 0);
           y : out STD_LOGIC);
end Mux4;

architecture Behavioral of Mux4 is

begin

    with SEL(1 downto 0) select y <=  
        x1 when "00",
        x2 when "01",
        x3 when "10",
        x4 when "11",
        '0' when others;



end Behavioral;
