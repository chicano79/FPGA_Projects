library ieee;
use ieee.std_logic_1164.all;



entity bcd_counter_unit is
	port(
		clk_in: in std_logic;
		clk_out: buffer std_logic;
		segment: out std_logic_vector(0 to 6)		
	);

end entity;


architecture rtl of bcd_counter_unit is

signal bcdcounter: integer range 0 to 9 := 0;

begin

DECODER:
	with bcdcounter select
		segment <=  "0000001" when 0,
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
				
BCD_COUNTING:
	process(clk_in)
		
	begin
		if rising_edge(clk_in) then
			if bcdcounter < 9 then
				clk_out <= '0';
				bcdcounter <= bcdcounter + 1;
			else 
				bcdcounter <= 0;
				clk_out <= '1';
			end if;
	
		end if;	
	end process;

end architecture;