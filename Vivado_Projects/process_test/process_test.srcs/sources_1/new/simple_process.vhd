
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity simple_process is

end simple_process;

architecture Behavioral of simple_process is
signal clk: std_logic := '0';
signal d_in, d_out: std_logic := '0';
begin

clk <= not clk after 10 ns;

d_in <= not d_in after 20ns;


process (clk) 

begin
    if rising_edge(clk) then
        d_out <= d_in; 
        --d_in <= not d_in;   
    end if;

end process;


end Behavioral;
