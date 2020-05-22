----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2020 09:00:06 AM
-- Design Name: 
-- Module Name: XOR_Verhaltensorientiert_TB - Behavioral
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

entity XOR_Verhaltensorientiert_TB is
--  Port ( );
end XOR_Verhaltensorientiert_TB;

architecture Behavioral of XOR_Verhaltensorientiert_TB is

component XOR_Verhaltensorientiert is

    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           y : out STD_LOGIC);
           
end component;

signal x1_TB : STD_LOGIC := '0';
signal x2_TB : STD_LOGIC := '0';

signal y_TB : STD_LOGIC := '0';

begin
    TU: XOR_Verhaltensorientiert PORT MAP
    (
        x1 => x1_TB,
        x2 => x2_TB,
        
        y => y_TB
    );

TProc: process

begin

    x1_TB <= '0';
    x2_TB <= '0';
    wait for 100ns;
    
    x1_TB <= '1';
    x2_TB <= '0';
    wait for 100ns;
    
    x1_TB <= '1';
    x2_TB <= '1';
    wait for 100ns;
    
    x1_TB <= '0';
    x2_TB <= '1';
    wait for 100ns;
    
    wait;
    
    end process;
    
end Behavioral;
