library ieee;
use ieee.std_logic_1164.all;


entity eight_digit_counter is
	generic(
		FREQ: integer := 50e6	
	);
	
	port(
		clk_50MHz: in std_logic;
		SEG: out std_logic_vector(0 to 55)		
	);

end entity;


architecture rtl of eight_digit_counter is
signal counter_clk_in: std_logic_vector(0 to 7) := (others => '0');
signal counter_clk_out: std_logic_vector(0 to 7) := (others => '0');

signal clk_1KHz: std_logic := '0';

begin


gen1: for n in 0 to 7 generate
gen2:	entity work.bcd_counter_unit(rtl)
			port map(
				clk_in => counter_clk_in(n),
				clk_out => counter_clk_out(n),
				segment =>	SEG((n+0)+(n*6) to (n+6)+(n*6))	
			);	
		end generate gen1;

counter_clk_in(0) <= clk_1KHz;
counter_clk_in(1 to 7) <= counter_clk_out(0 to 6);


clk_1KHZ_PROC:
	process(clk_50MHz)
		constant count_range: integer range 0 to FREQ := FREQ/1000;
		variable counter: integer range 0 to count_range;
	begin
		if rising_edge(clk_50MHz) then
			if counter < count_range then				
				clk_1KHz <= '0';
				counter := counter + 1;
			else 
				clk_1KHz <= '1';
				counter := 0;							
			end if;
		end if;	
	end process;


end architecture;