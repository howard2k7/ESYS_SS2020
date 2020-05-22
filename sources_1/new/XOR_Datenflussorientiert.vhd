----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2020 09:44:56 AM
-- Design Name: 
-- Module Name: XOR_Datenflussorientiert - Behavioral
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

entity XOR_Datenflussorientiert is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           y : out STD_LOGIC);
end XOR_Datenflussorientiert;

architecture Behavioral of XOR_Datenflussorientiert is

begin
    y <=  (x1 and (not x2)) or ((not x1) and x2);

end Behavioral;
