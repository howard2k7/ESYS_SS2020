----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2020 10:48:47 PM
-- Design Name: 
-- Module Name: seq_decoder_hex_TB - Behavioral
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

entity seq_decoder_hex_TB is
--  Port ( );
end seq_decoder_hex_TB;

architecture Behavioral of seq_decoder_hex_TB is

    component seg_decoder_hex is
        Port ( hex_value : in BIT_VECTOR (3 downto 0);
               seq_out : out BIT_VECTOR (6 downto 0));
    end component;

    signal hex_value_TB : BIT_VECTOR(3 downto 0) := x"0";
    signal seq_out_TB : BIT_VECTOR(6 downto 0) := "0000000";

begin

    TU: seg_decoder_hex PORT MAP(
        hex_value => hex_value_TB,
        seq_out => seq_out_TB
    );

    decode_test: process
    begin

        hex_value_TB <= x"0";
        wait for 100ns;
        hex_value_TB <= x"1";
        wait for 100ns;
        hex_value_TB <= x"2";
        wait for 100ns;
        hex_value_TB <= x"3";
        wait for 100ns;
        hex_value_TB <= x"4";
        wait for 100ns;
        hex_value_TB <= x"5";
        wait for 100ns;
        hex_value_TB <= x"6";
        wait for 100ns;
        hex_value_TB <= x"7";
        wait for 100ns;
        hex_value_TB <= x"8";
        wait for 100ns;
        hex_value_TB <= x"9";
        wait for 100ns;
        hex_value_TB <= x"a";
        wait for 100ns;
        hex_value_TB <= x"b";
        wait for 100ns;
        hex_value_TB <= x"c";
        wait for 100ns;
        hex_value_TB <= x"d";
        wait for 100ns;
        hex_value_TB <= x"e";
        wait for 100ns;
        hex_value_TB <= x"f";
        wait for 100ns;
        hex_value_TB <= x"0";
        wait for 100ns;
        wait;


    end process decode_test;



end Behavioral;
