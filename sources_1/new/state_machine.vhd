----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 07:52:12 AM
-- Design Name: 
-- Module Name: state_machine - Behavioral
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

entity state_machine is
    Port ( reset : in STD_LOGIC;
           trigger : in STD_LOGIC;
           y : out STD_LOGIC);
end state_machine;

architecture Behavioral of state_machine is
type states is (s0,s1);
signal state, next_state : states;


begin
safestate: process(trigger, reset)
begin
    if reset = '1' then
        state <= s0;
    elsif rising_edge(trigger) then
        state <= next_state;
    end if;
end process safestate;

switch_next_state: process(trigger, state)
begin
    case state is
        when s1 => next_state <= s0;
        when s0 => next_state <= s1;
    end case;
end process switch_next_state;

output: process(state)
begin
    case state is
        when s1 => y <= '0';
        when s0 => y <= '1';

    end case;
end process output;
end Behavioral;
