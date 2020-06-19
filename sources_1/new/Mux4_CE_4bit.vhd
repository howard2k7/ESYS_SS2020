----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2020 08:06:10 PM
-- Design Name: 
-- Module Name: Mux4_CE_4bit - Behavioral
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

entity Mux4_CE_4bit is
    Port ( x1 : in STD_LOGIC_VECTOR (3 downto 0);
           x2 : in STD_LOGIC_VECTOR (3 downto 0);
           x3 : in STD_LOGIC_VECTOR (3 downto 0);
           x4 : in STD_LOGIC_VECTOR (3 downto 0);
           SEL : in STD_LOGIC_VECTOR (1 downto 0);
           CE : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (3 downto 0));
end Mux4_CE_4bit;

architecture Behavioral of Mux4_CE_4bit is

begin

    do_Mux_CE: process(CE,SEL,x1,x2,x3,x4)
    
        -- V3
    variable output : STD_LOGIC_VECTOR(3 downto 0);

    begin
        
        --    -- V1
        -- case SEL(1 downto 0) is
        --     when "00" => if CE = '1' then y <= x1; else y <= "0000"; end if;
        --     when "01" => if CE = '1' then y <= x2; else y <= "0000"; end if;
        --     when "10" => if CE = '1' then y <= x3; else y <= "0000"; end if;
        --     when "11" => if CE = '1' then y <= x4; else y <= "0000"; end if;
        --     when others => y <= "1000";
        -- end case;

            -- V2
        --if CE = '1' then
        --    case SEL(1 downto 0) is
        --        when "00" => y <= x1;
        --        when "01" => y <= x2;
        --        when "10" => y <= x3;
        --        when "11" => y <= x4;
        --        when others => y <= "1001";
        --    end case;
        --else
        --    y <= "0000";
        --end if;

        -- v3
        case SEL(1 downto 0) is
                when "00" => output :=  x1; 
                when "01" => output :=  x2; 
                when "10" => output :=  x3; 
                when "11" => output :=  x4; 
                when others => output := "1000";
        end case;       
        if CE = '1' then y <= output;
            else y <=  "0001";
        end if;

    end process;
    
end Behavioral;
