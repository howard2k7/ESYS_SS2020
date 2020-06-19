----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2020 07:57:15 PM
-- Design Name: 
-- Module Name: ShiftRegister8Bit_nonT - Behavioral
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

entity ShiftRegister8Bit_nonT is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           shift_x : in STD_LOGIC;
           shift_y : out STD_LOGIC_VECTOR(7 downto 0));
end ShiftRegister8Bit_nonT;

architecture Behavioral of ShiftRegister8Bit_nonT is

signal shift_register : std_logic_vector (7 downto 0) := x"00";
signal shift_next : std_logic_vector (7 downto 0) := x"00";    
    
begin

    proc_name: process(clk, reset)
    begin
        if reset = '1' then
            shift_register <= x"00";
            shift_next <= x"00";
        elsif rising_edge(clk) then
            shift_next <= shift_register(6 downto 0) & shift_x;
            shift_register <= shift_next;
        end if;
    end process proc_name;
    
    shift_y <= shift_register(7 downto 0);


end Behavioral;
