
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
signal j_in, k_in: std_logic := '0';  
signal d_out: std_logic := '0';

signal flip_in: std_logic_vector(1 downto 0) := "00";

begin


flip_in <= j_in & k_in;


clk <= not clk after 10 ns;

j_in <= not j_in after 20 ns;
k_in <= not k_in after 20 ns;


process (clk) 

begin
    if rising_edge(clk) then
        case flip_in is
            when "00" =>
                d_out <= d_out;
                
            when "01" =>
                d_out <= '0';
                
            when "10" =>
                d_out <= '1'; 
                
            when "11" =>
                d_out <= not d_out;
                
            when others =>
                d_out <= d_out;
        end case;
     end if;

end process;


end Behavioral;
