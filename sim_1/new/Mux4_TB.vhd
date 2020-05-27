----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2020 12:41:11 PM
-- Design Name: 
-- Module Name: Mux4_TB - Behavioral
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

entity Mux4_TB is
--  Port ( );
end Mux4_TB;

architecture Behavioral of Mux4_TB is

component Mux4 is
    Port ( x1 : in STD_LOGIC;
            x2 : in STD_LOGIC;
            x3 : in STD_LOGIC;
            x4 : in STD_LOGIC;
            SEL: in STD_LOGIC_VECTOR(0 to 1);
            y : out STD_LOGIC);
end component;

signal x1_TB :  STD_LOGIC := '0';
signal x2_TB :  STD_LOGIC := '0';
signal x3_TB :  STD_LOGIC := '0';
signal x4_TB :  STD_LOGIC := '0';
signal SEL_TB:  STD_LOGIC_VECTOR(0 to 1) := "00";
signal y_TB :  STD_LOGIC := '0';

begin

    TU: Mux4 PORT MAP(
        x1 => x1_TB,
        x2 => x2_TB,
        x3 => x3_TB,
        x4 => x4_TB,
        SEL => SEL_TB,
        y => y_TB
    );

    mux_it: process

    begin

        x1_TB <= '1';
        x2_TB <= '0';
        x3_TB <= '1';
        x4_TB <= '0';
        SEL_TB <= "XX";
        
        wait for 100ns;

        SEL_TB <= "00";
        wait for 100ns;

        SEL_TB <= "01";
        wait for 100ns;
        
        SEL_TB <= "10";
        wait for 100ns;
        
        SEL_TB <= "11";
        wait for 100ns;
        
        x1_TB <= '0';
        x2_TB <= '1';
        x3_TB <= '0';
        x4_TB <= '1';

        
        SEL_TB <= "00";
        wait for 100ns;

        SEL_TB <= "01";
        wait for 100ns;
        
        SEL_TB <= "10";
        wait for 100ns;
        
        SEL_TB <= "11";
        wait for 100ns;

        SEL_TB <=  "XX";
        wait;
        
    end process;




end Behavioral;
