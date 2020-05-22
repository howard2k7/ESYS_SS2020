----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2020 10:10:47 AM
-- Design Name: 
-- Module Name: XOR_Strukturell - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity XOR_Strukturell is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           y : out STD_LOGIC);
end XOR_Strukturell;

architecture Behavioral of XOR_Strukturell is

    signal x1_inv:STD_LOGIC;
    signal x2_inv:STD_LOGIC;

    signal x1_and2_invx2:STD_LOGIC;
    signal invx1_and2_x2:STD_LOGIC;

component and2
    port (I0,I1: in STD_LOGIC;
            O: out STD_LOGIC);
end component;

component or2
    port(I0, I1: in STD_LOGIC;
            O: out STD_LOGIC);
end component;

component inv
    port(I : in STD_LOGIC;
            O: out STD_LOGIC);
end component;

begin
    i_inv1: inv PORT MAP(I => x1, O => x1_inv);
    i_inv2: inv PORT MAP(I => x2, O => x2_inv);

    i_and1 : and2 PORT MAP(I0 => x1, I1 => x2_inv, O => x1_and2_invx2);
    i_and2 : and2 PORT MAP(I0 => x1_inv, I1 => x2, O => invx1_and2_x2);

    i_or : or2 PORT MAP(I0 => x1_and2_invx2, I1 => invx1_and2_x2, O => y);

end Behavioral;
