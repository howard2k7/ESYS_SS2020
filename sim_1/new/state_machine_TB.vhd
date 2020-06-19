----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 08:04:58 AM
-- Design Name: 
-- Module Name: state_machine_TB - Behavioral
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

entity state_machine_TB is
--  Port ( );
end state_machine_TB;

architecture Behavioral of state_machine_TB is
component state_machine is
    Port ( reset : in STD_LOGIC;
            trigger : in STD_LOGIC;
            y : out STD_LOGIC);
end component;

signal reset_TB : STD_LOGIC;
signal trigger_TB : STD_LOGIC;
signal y_TB : STD_LOGIC;

begin

    TU: state_machine
    PORT MAP(
        reset => reset_TB,
        trigger => trigger_TB,
        y => y_TB
    );

    do_it: process
    begin
        reset_TB <= '0';
        trigger_TB <= '1';
        wait for 10ns;
        trigger_TB <= '0';
        wait for 10ns;
        trigger_TB <= '1';
        wait for 10ns;
        trigger_TB <= '0';
        wait for 10ns;
        trigger_TB <= '1';
        wait for 10ns;
        reset_TB <= '1';
        wait for 10ns;
        reset_TB <= '0';
        trigger_TB <= '0';
        wait;

    end process do_it;

end Behavioral;
