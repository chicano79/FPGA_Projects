----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/04/2024 11:28:33 PM
-- Design Name: 
-- Module Name: SwitchDrivesLED - Behavioral
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

entity SwitchDrivesLED is
    Port ( SW0 : in STD_LOGIC;
           LD0 : out STD_LOGIC
         );
end SwitchDrivesLED;

architecture Behavioral of SwitchDrivesLED is

begin

    LD0 <= SW0;

end Behavioral;
