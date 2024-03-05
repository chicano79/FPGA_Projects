library ieee;
use ieee.std_logic_1164.all;



entity bcd_counter is
	port(
		clk_50: in std_logic;
		HEX0: out std_logic_vector(0 to 6)		
	);

end entity;


architecture rtl of bcd_counter is
signal clk_10: std_logic := '0';
signal bcdcounter: integer range 0 to 9 := 0;

begin

DECODER:
	with bcdcounter select
		HEX0 <=  "0000001" when 0,
				 "1001111" when 1,
				 "0010010" when 2,
				 "0000110" when 3,
				 "1001100" when 4,
				 "0100100" when 5,
				 "0100000" when 6,
				 "0001111" when 7,
				 "0000000" when 8,
				 "0000100" when 9,
				 "0000001" when others;
				

CLK_10HZ_PROC:
	process(clk_50)
		variable counter: integer range 0 to 10000000;
	begin
		if rising_edge(clk_50) then
			if counter < 10000000 then
				counter := counter + 1;
			else 
				counter := 0;
				clk_10 <= not clk_10;			
			end if;
		end if;	
	end process;
	
BCD_COUNTING:
	process(clk_10)
		
	begin
		if rising_edge(clk_10) then
			if bcdcounter < 9 then
				bcdcounter <= bcdcounter + 1;
			else 
				bcdcounter <= 0;			
			end if;
		end if;	
	end process;



end architecture;