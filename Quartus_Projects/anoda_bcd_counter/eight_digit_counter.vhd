library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity eight_digit_counter is
	generic(
		FREQ: integer := 100e6	
	);
	
	port(
		clk_100MHz: in std_logic;
		SEG_7: buffer std_logic_vector(0 to 6);
		ANODE: buffer std_logic_vector(0 to 7) := (others => '1')
	);

end entity;


architecture rtl of eight_digit_counter is

signal counter_clk_in: std_logic_vector(0 to 7) := (others => '0');
signal counter_clk_out: std_logic_vector(0 to 7) := (others => '0');
signal SEG: std_logic_vector(0 to 55) := (others => '0');
signal disp_selector: integer range 0 to 20 := 0;
signal clk_1KHz: std_logic := '0';

type eight_digit_counters is array(0 to 7) of std_logic_vector(3 downto 0);
signal bcd_counters: eight_digit_counters := (others => (others => '0'));

-- component bcd_counter is
	-- port(
		-- clk_in: in std_logic;
		-- clk_out: out std_logic;
		-- bcd_out_to_port: out std_logic_vector(3 downto 0);
		-- segment: out std_logic_vector(0 to 6) --segment outputs
	-- );
-- end component;

begin

COUNTERS:
for i in 0 to 7 generate
comp1:  entity work.bcd_counter
			port map (
				clk_in => counter_clk_in(i),
				clk_out => counter_clk_out(i),
				bcd_out_to_port => bcd_counters(i),
				segment => SEG((i+0)+(i*6) to (i+6)+(i*6))
			);
end generate;

counter_clk_in(0 to 7) <= clk_1KHz & counter_clk_out (0 to 6);


-- COUNTERA:	bcd_counter
	-- port map (
		-- clk_in => clk_1KHz,
		-- clk_out => counter_clk_in(1),
		-- segment => SEG(0 to 6)
	-- );
	
-- COUNTERB:	bcd_counter
	-- port map (
		-- clk_in => counter_clk_in(1),
		-- clk_out => counter_clk_in(2),
		-- segment => SEG(7 to 13)
	-- );
	
-- COUNTERC:	bcd_counter
	-- port map (
		-- clk_in => counter_clk_in(2),
		-- clk_out => counter_clk_in(3),
		-- segment => SEG(14 to 20)
	-- );
	
-- COUNTERD:	bcd_counter
	-- port map (
		-- clk_in => counter_clk_in(3),
		-- clk_out => counter_clk_in(4),
		-- segment => SEG(21 to 27)
	-- );
	
-- COUNTERE:	bcd_counter
	-- port map (
		-- clk_in => counter_clk_in(4),
		-- clk_out => counter_clk_in(5),
		-- segment => SEG(28 to 34)
	-- );
	
-- COUNTERF:	bcd_counter
	-- port map (
		-- clk_in => counter_clk_in(5),
		-- clk_out => counter_clk_in(6),
		-- segment => SEG(35 to 41)
	-- );
	
-- COUNTERG:	bcd_counter
	-- port map (
		-- clk_in => counter_clk_in(6),
		-- clk_out => counter_clk_in(7),
		-- segment => SEG(42 to 48)
	-- );
	
-- COUNTERH:	bcd_counter
	-- port map (
		-- clk_in => counter_clk_in(7),
		-- segment => SEG(49 to 55)
	-- );
 
MUX_TO_DISPLAY:
	with disp_selector select
		SEG_7 <= SEG(0 to 6)     when 0,
				 (others => '0') when 1,
				 SEG(7 to 13)    when 2,
				 (others => '0') when 3,
				 SEG(14 to 20)   when 4,
				 (others => '0') when 5,
				 SEG(21 to 27)   when 6,
				 (others => '0') when 7,
				 SEG(28 to 34)   when 8,
				 (others => '0') when 9,
				 SEG(35 to 41)   when 10,
				 (others => '0') when 11,
				 SEG(42 to 48)   when 12,
				 (others => '0') when 13,
				 SEG(49 to 55)   when 14,
				 (others => '0') when 15,
				 
				 (others => '0') when others;
						 
	with disp_selector select
		ANODE <= "01111111"      when 0,
				 (others => '1') when 1,
				 "10111111" 	 when 2,
				 (others => '1') when 3,
				 "11011111" 	 when 4,
				 (others => '1') when 5,
				 "11101111" 	 when 6,
				 (others => '1') when 7,
				 "11110111"  	 when 8,
				 (others => '1') when 9,
				 "11111011" 	 when 10,
				 (others => '1') when 11,
				 "11111101" 	 when 12,
				 (others => '1') when 13,
				 "11111110" 	 when 14,
				 (others => '1') when 15,
				 
				 (others => '1') when others;						 

CLOCK_1KHz_GEN:
	process(clk_100MHz)
		constant count_range: integer range 0 to FREQ := FREQ/1e3;
		variable counter: integer range 0 to count_range := 0;
	begin
		if(clk_100MHz'event and clk_100MHz = '1') then 
			if counter < count_range then
				counter := counter + 1;
				clk_1KHz <= '0';
			else 
				counter := 0;
				clk_1KHz <= '1';			
			end if;
		end if;
	end process;
	
	
DISPLAY_SCAN:
	process(clk_1KHz)
		constant displayStates: integer range 0 to 16 := 16;
	begin
		if rising_edge(clk_1KHz) then	
			if disp_selector < displayStates then
				disp_selector <= disp_selector + 1;
			else
				disp_selector <= 0;
			end if;
		end if;	
	end process;

end architecture;