
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity jk_flipflop is
	port(
		CLK_50MHz: in std_logic := '0';
		LEDR: out std_logic_vector(0 to 9) := (others => '0');
		J_in, K_in: in std_logic := '0'	
	);

end jk_flipflop;

architecture rtl of jk_flipflop is

signal clk_10Hz: std_logic := '0';  
signal d_out: std_logic := '0';

signal flip_in: std_logic_vector(1 downto 0) := "00";

begin


LEDR(1) <= J_in;
LEDR(0) <= K_in;

LEDR(9) <= d_out;

flip_in <= j_in & k_in;


CLK_10HZ_PROC: process(CLK_50MHz)
	
	variable count: integer range 0 to 12500000 := 0;

	begin
		if rising_edge(CLK_50MHz) then
			if count < 12500000 then
				count := count + 1;
			else 
				count := 0;
				clk_10Hz <= not clk_10Hz;			
			end if;		
		end if;	
	end process;


JK_FLIPFLOP_PROC: process(clk_10Hz) 

begin
    if rising_edge(clk_10Hz) then
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


end rtl;
