----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 07:13:47 AM
-- Design Name: 
-- Module Name: zaehler_modular - Behavioral
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
use ieee.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity zaehler_modular is
    generic(BREADTH : natural := 8);
    Port ( clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            dir : in STD_LOGIC;
            CE : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (BREADTH-1 downto 0));
end zaehler_modular;

architecture Behavioral of zaehler_modular is
signal QINT : std_logic_vector (BREADTH-1 downto 0) := (others => '0');
begin

    CTR : process(clk,reset)
    begin
        if reset = '0' then
            QINT <=  (others => '0');
        elsif clk = '1' and clk'event then
            if CE = '1' then
                if dir = '1' then
                    QINT <= QINT + 1;
                elsif dir = '0' then
                    QINT <= QINT - 1;
                end if;
            end if;
        end if;
    end process CTR;
    y <= QINT;

end Behavioral;
