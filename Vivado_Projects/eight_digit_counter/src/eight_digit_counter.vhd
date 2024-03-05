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
		BTNC:  in std_logic;
		LED: buffer std_logic_vector(15 downto 0) := (0 =>'1', others => '0');
		ANODE: buffer std_logic_vector(0 to 7) := (others => '1')
	);

end entity;


architecture rtl of eight_digit_counter is

signal counter_clk_in: std_logic_vector(0 to 7) := (others => '0');
signal counter_clk_out: std_logic_vector(0 to 7) := (others => '0');

signal SEG: std_logic_vector(0 to 55) := (others => '0');

signal disp_selector: integer range 0 to 20 := 0;

signal clk_10KHz, clk_1KHz, clk_10Hz: std_logic := '0';

--signal state_count: integer range 0 to 20 := 0;

begin

JOHNSON_RING_COUNTER:
	process(clk_10Hz, BTNC)
	
	begin
		if BTNC = '1' then
			LED <= (0 =>'1', others => '0');
		else
			if rising_edge(clk_10Hz) then
				LED <= LED(14 downto 0) & LED(15);			
			end if;
		end if;
	end process;

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

One_ms_PROC:
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
	


gen1: for n in 0 to 7 generate
gen2:	entity work.bcd_counter_unit(rtl)
			port map(
				clk_in => counter_clk_in(n),
				clk_out => counter_clk_out(n),
				segment =>	SEG((n+0)+(n*6) to (n+6)+(n*6))	
			);	
		end generate gen1;

counter_clk_in(0) <= clk_10KHz;
counter_clk_in(1 to 7) <= counter_clk_out(0 to 6);


clk_10KHz_PROC:
	process(clk_100MHz)
		constant count_range: integer range 0 to FREQ := FREQ/10e3;
		variable counter: integer range 0 to count_range;
	begin
		if rising_edge(clk_100MHz) then
			if counter < count_range then				
				clk_10KHz <= '0';
				counter := counter + 1;
			else 
				clk_10KHz <= '1';
				counter := 0;							
			end if;
		end if;	
	end process;


clk_10Hz_PROC:
	process(clk_100MHz)
		constant count_range: integer range 0 to FREQ := FREQ/10;
		variable counter: integer range 0 to count_range;
	begin
		if rising_edge(clk_100MHz) then
			if counter < count_range then				
				clk_10Hz <= '0';
				counter := counter + 1;
			else 
				clk_10Hz <= '1';
				counter := 0;							
			end if;
		end if;	
	end process;

end architecture;
