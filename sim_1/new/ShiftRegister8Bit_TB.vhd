----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2020 07:37:33 PM
-- Design Name: 
-- Module Name: ShiftRegister8Bit_TB - Behavioral
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

entity ShiftRegister8Bit_TB is
--  Port ( );
end ShiftRegister8Bit_TB;

architecture Behavioral of ShiftRegister8Bit_TB is

component ShiftRegister8Bit is
    Port ( clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            shift_x : in STD_LOGIC;
            shift_y : out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal clk_TB : STD_LOGIC;
signal reset_TB : STD_LOGIC := '0';
signal shift_x_TB : STD_LOGIC := '0';
signal shift_y_TB : STD_LOGIC_VECTOR(7 downto 0);

constant clc : time := 10ns;

begin

    TU: ShiftRegister8Bit PORT MAP(
        clk => clk_TB,
        reset => reset_TB,
        shift_x => shift_x_TB,
        shift_y => shift_y_TB
    );

    clock: process
    begin
        clk_TB <= '1';
        wait for clc/2;
        clk_TB <= '0';
        wait for clc/2;
    end process clock;

    shift_it: process
    begin
        reset_TB <= '1';
        wait for clc*2;
        reset_TB <= '0';
        wait for clc*1;
        shift_x_TB <= '1';
        wait for clc*1;
        shift_x_TB <= '0';
        wait for clc*8;
        shift_x_TB <= '1';
        wait for clc*2;
        shift_x_TB <= '0';
    end process shift_it;



end Behavioral;
