----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2020 08:52:15 PM
-- Design Name: 
-- Module Name: Mux4_CE_4bit_TB - Behavioral
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

entity Mux4_CE_4bit_TB is
--  Port ( );
end Mux4_CE_4bit_TB;

architecture Behavioral of Mux4_CE_4bit_TB is

component Mux4_CE_4bit is
    Port (  x1 : in STD_LOGIC_VECTOR  (3 downto 0);
            x2 : in STD_LOGIC_VECTOR  (3 downto 0);
            x3 : in STD_LOGIC_VECTOR  (3 downto 0);
            x4 : in STD_LOGIC_VECTOR  (3 downto 0);
            SEL : in STD_LOGIC_VECTOR (1 downto 0);
            CE : in STD_LOGIC;
            y : out STD_LOGIC_VECTOR  (3 downto 0)
            );
end component;

signal x1_TB   :  STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal x2_TB   :  STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal x3_TB   :  STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal x4_TB   :  STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal SEL_TB  :  STD_LOGIC_VECTOR (1 downto 0) := "00";
signal CE_TB   :  STD_LOGIC := '0';
signal y_TB    :  STD_LOGIC_VECTOR (3 downto 0) := "0000";

begin

    TU: Mux4_CE_4bit PORT MAP(
        x1 => x1_TB,
        x2 => x2_TB,
        x3 => x3_TB,
        x4 => x4_TB,
        SEL => SEL_TB,
        CE => CE_TB,
        y => y_TB
    );

    Mux_CE_it: process
    begin
        x1_TB <= "0101";
        x2_TB <= "1010";
        x3_TB <= "1100";
        x4_TB <= "1111";

        CE_TB <= '1';

        SEL_TB <= "00";
        wait for 100ns;
        CE_TB <= '0';
        wait for 100ns;
        CE_TB <= '1';

        SEL_TB <= "01";
        wait for 100ns;
        CE_TB <= '0';
        wait for 100ns;
        CE_TB <= '1';

        SEL_TB <= "10";
        wait for 100ns;
        CE_TB <= '0';
        wait for 100ns;
        CE_TB <= '1';

        SEL_TB <= "11";
        wait for 100ns;
        CE_TB <= '0';
        wait for 100ns;
        CE_TB <= '1';

        wait;
    
    end process Mux_CE_it;
end Behavioral;
