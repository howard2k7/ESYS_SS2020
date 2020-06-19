----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.06.2020 10:23:17
-- Design Name: 
-- Module Name: zaehler - Behavioral
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

entity zaehler is
    Port ( clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            dir : in STD_LOGIC;
            CE : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (7 downto 0));
end zaehler;

architecture Behavioral of zaehler is
signal QINT : std_logic_vector (7 downto 0) := x"00";
begin

    CTR : process(clk,reset)
    begin
        if reset = '0' then
            QINT <=  x"00";
        else 
            if clk = '1' and clk'event and CE = '1' then
            
                if dir = '1' then
                    QINT <= QINT + 1;
                else
                    QINT <= QINT - 1;
                end if;
            end if;
        end if;
        y <= QINT;
        
    end process CTR;
    

end Behavioral;
