----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2020 08:38:57 AM
-- Design Name: 
-- Module Name: XOR_Verhaltensorientiert - Behavioral
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

entity XOR_Verhaltensorientiert is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           y : out STD_LOGIC);
end XOR_Verhaltensorientiert;

architecture Behavioral of XOR_Verhaltensorientiert is

begin
    xor_proc: process (x1,x2)
        begin
            if x1 = '0' and x2 = '0' then
                y <= '0';
            elsif x1 = '1' and x2 = '1' then
                y <= '0';
            else
                y <= '1';
            end if;
        end process;   


end Behavioral;
