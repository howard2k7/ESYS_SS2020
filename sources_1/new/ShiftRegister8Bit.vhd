----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2020 06:10:22 PM
-- Design Name: 
-- Module Name: ShiftRegister8Bit - Behavioral
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

entity ShiftRegister8Bit is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           shift_x : in STD_LOGIC;
           shift_y : out STD_LOGIC_VECTOR(7 downto 0));
end ShiftRegister8Bit;

architecture Behavioral of ShiftRegister8Bit is
    signal shift_register : std_logic_vector (7 downto 0) := x"10";
    
    
begin

    proc_name: process(clk, reset)
    begin
        if reset = '1' then
            shift_register <= x"00";
        elsif rising_edge(clk) then
            shift_register <= shift_register(6 downto 0) & shift_x;
        end if;
    end process proc_name;
    
    shift_y <= shift_register(7 downto 0);
    

end Behavioral;
