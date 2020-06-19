----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2020 09:53:47 PM
-- Design Name: 
-- Module Name: seg_decoder_hex - Behavioral
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

entity seg_decoder_hex is
    Port ( hex_value : in BIT_VECTOR (3 downto 0);
           seq_out : out BIT_VECTOR (6 downto 0));
end seg_decoder_hex;

architecture Behavioral of seg_decoder_hex is

begin
    --     -- select / active-high
    -- with hex_value select
    -- seq_out(6 downto 0) <= 
    -- "1111110" when x"0",
    -- "0110000" when x"1",
    -- "1101101" when x"2",
    -- "1111001" when x"3",
    -- "0110011" when x"4",
    -- "1011011" when x"5",
    -- "1011111" when x"6",
    -- "1110000" when x"7",
    -- "1111111" when x"8",
    -- "1111011" when x"9",
    -- "1110111" when x"a",
    -- "0011111" when x"b",
    -- "1001110" when x"c",
    -- "0111101" when x"d",
    -- "1000111" when others;

    decode_it: process(hex_value)
begin

    case hex_value(3 downto 0) is
        when x"0" => seq_out <= "0000001";
        when x"1" => seq_out <= "1001111";
        when x"2" => seq_out <= "0010010";
        when x"3" => seq_out <= "0000110";
        when x"4" => seq_out <= "1001100";
        when x"5" => seq_out <= "0100100";
        when x"6" => seq_out <= "0100000";
        when x"7" => seq_out <= "0001111";
        when x"8" => seq_out <= "0000000";
        when x"9" => seq_out <= "0000100";
        when x"a" => seq_out <= "0001000";
        when x"b" => seq_out <= "1100000";
        when x"c" => seq_out <= "0110001";
        when x"d" => seq_out <= "1000010";
        when x"e" => seq_out <= "0110000";
        when others => seq_out <= "0111000";
    end case;

end process;

end Behavioral;
