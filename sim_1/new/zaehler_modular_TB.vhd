----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 07:30:37 AM
-- Design Name: 
-- Module Name: zaehler_modular_TB - Behavioral
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

entity zaehler_modular_TB is
--  Port ( );
end zaehler_modular_TB;

architecture Behavioral of zaehler_modular_TB is

component zaehler_modular is
    generic(BREADTH : natural := 4);
    Port ( clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            dir : in STD_LOGIC;
            CE : in STD_LOGIC;
            y : out STD_LOGIC_VECTOR (BREADTH-1 downto 0));
end component;

constant clc : time := 10ns;
constant countBREADTH : integer := 8;

signal clk_TB : STD_LOGIC;
signal reset_TB : STD_LOGIC;
signal dir_TB : STD_LOGIC;
signal CE_TB : STD_LOGIC;
signal y_TB : STD_LOGIC_VECTOR (countBREADTH-1 downto 0);

begin
    TU: zaehler_modular 
    GENERIC MAP (BREADTH => countBREADTH)
    PORT MAP (
        clk => clk_TB,
        reset => reset_TB,
        dir => dir_TB,
        CE =>  CE_TB,
        y => y_TB
    );

    clock: process
        begin
            clk_TB <= '1';
            wait for clc/2;
            clk_TB <= '0';
            wait for clc/2;
        end process clock;
    
    reset: process
    begin
        reset_TB <= '0';
        wait for clc*2;
        reset_TB <= '1';
        wait for clc*50;
        reset_TB <=  '0';
        wait;
        
    end process reset;

    direction: process
    begin
        dir_TB <=  '1';
        wait for clc*12;
        dir_TB <=  '0';
        wait for clc*20;
        dir_TB <= '1';
    end process direction;

    CE: process
    begin
        CE_TB <= '1';
        wait for clc*8;
        CE_TB <= '0';
        wait for clc*6;
        CE_TB <= '1'; 
    end process CE;



end Behavioral;
