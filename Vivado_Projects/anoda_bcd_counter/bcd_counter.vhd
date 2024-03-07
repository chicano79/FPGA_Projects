library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity bcd_counter is
	port(
		clk_in: in std_logic;
		clk_out: out std_logic;
		bcd_out_to_port: out std_logic_vector(3 downto 0);
		segment: out std_logic_vector(0 to 6) --segment outputs
	);
end entity;


architecture rtl of bcd_counter is

constant count_range: integer range 0 to 9 := 9;
signal bcd_counter_out: integer range 0 to count_range := 0;

begin

bcd_out_to_port <= std_logic_vector(to_unsigned(bcd_counter_out, 4));

DECODER_BLOCK:
	with bcd_counter_out select
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

COUNTER_BLOCK:
	process(clk_in)
		
	begin
		if rising_edge(clk_in) then
			if bcd_counter_out < count_range then
				clk_out <= '0';
				bcd_counter_out <= bcd_counter_out + 1;
			else	
				clk_out <= '1';
				bcd_counter_out <= 0;
			end if;
		end if;
	end process;


end architecture;