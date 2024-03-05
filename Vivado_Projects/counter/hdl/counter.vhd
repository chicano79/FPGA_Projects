library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity counter is
	
	generic(
		FREQ: integer := 100e6 --board clock frequency 100MHz		
	);

	port(
		clk_100MHz: in std_logic;
		rst: in std_logic;
		SEGMENT: out std_logic_vector(0 to 6); -- port connecting to the segments a to g 
		AN: out unsigned(7 downto 0)-- port connected to the common anode pnp transistors
	);

end entity;


architecture rtl of counter is

subtype bcd_digit is std_logic_vector(0 to 6);-- representing segments a to g 

type bcd_counters is array(0 to 7) of integer range 0 to 9;  --there are 8 bcd counters one for each on-board 7segment display
type seg_light_pattern is array(0 to 9) of bcd_digit; --there are 10 seven segment display lighting patterns each representing digits 0 to 9

--constant SOURCE_TOSC: integer := 1/FREQ;

--constant COUNT_TOSC: integer := 1/100;  --counter frequency of 100Hz
--constant SCAN_TOSC: integer := 1/500;    --single digit refresh rate of 500Hz. An eight digit display will refresh @ 16ms = 62.5Hz

constant COUNT_RANGE: integer := FREQ/(2 * 100);   --COUNT_TOSC/(2 * SOURCE_TOSC); -- this would determine counting frequency
constant SCAN_COUNT_RANGE: integer := FREQ/(2 * 500); --SCAN_TOSC/(2 * SOURCE_TOSC); --this would determine the display scan frequency

constant digits: seg_light_pattern :=  
		(
			"0000001", "1001111", "0010010", "0000110", "1001100",
			"0100100", "0100000", "0001111", "0000000", "0000100"		
		);

signal digit_counters: bcd_counters := (0, 0, 0, 0, 0, 0, 0, 0); --8 element array of bcd counters
signal counter: integer range 0 to COUNT_RANGE := 0;
signal scan_counter: integer range 0 to SCAN_COUNT_RANGE := 0;
signal anode_shift_reg: unsigned(7 downto 0) := x"FE";
signal clk_200Hz: std_logic;
signal scan_clk: std_logic := '1';
signal array_index: integer range 0 to 7 := 0;

signal blanking: bcd_digit := "0000000";

function get_segment(d: integer range 0 to 9) return bcd_digit is
begin
	return digits(d);
end function;
 


begin

AN <= anode_shift_reg;
SEGMENT <= digits(digit_counters(array_index)) or blanking;

--HEX0 <= get_segment(digit_counters(0));
--HEX1 <= get_segment(digit_counters(1));
--HEX2 <= get_segment(digit_counters(2));
--HEX3 <= get_segment(digit_counters(3));
--HEX4 <= get_segment(digit_counters(4));
--HEX5 <= get_segment(digit_counters(5));

COUNT_CLK_PROC:process(clk_100MHz) 	
	begin			
		if clk_100MHz'event and clk_100MHz = '1' then 
			counter <= counter + 1;
			if counter >= COUNT_RANGE then 
				counter <= 0;
				clk_200Hz <= not clk_200Hz;
			end if;		
		end if;	
	end process;
	
DISPLAY_SCAN_PROC:process(clk_100MHz) 	
	begin			
		if clk_100MHz'event and clk_100MHz = '1' then 
			scan_counter <= scan_counter + 1;
			if scan_counter >= SCAN_COUNT_RANGE then 
				scan_counter <= 0;				
				if scan_clk = '1' then
					anode_shift_reg <= anode_shift_reg rol 1;
					array_index <= array_index + 1; 
					blanking <= "0000000";
				else
					blanking <= "1111111";				
				end if;				
				scan_clk <= not scan_clk;
			end if;		
		end if;	
	end process;
	
	
COUNT_PROC:process(clk_200Hz, rst)
	begin
		if rst = '1' then
			digit_counters <= (0, 0, 0, 0, 0, 0, 0, 0);
		elsif rising_edge(clk_200Hz) then 
			if digit_counters(0) < 9 then
				digit_counters(0) <= digit_counters(0) + 1;
			else
				digit_counters(0) <= 0;
				if digit_counters(1) < 9 then 
					digit_counters(1) <= digit_counters(1) + 1;
				else
					digit_counters(1) <= 0;
					if digit_counters(2) < 9 then
						digit_counters(2) <= digit_counters(2) + 1;
					else 
						digit_counters(2) <= 0;
						if digit_counters(3) < 9 then
							digit_counters(3) <= digit_counters(3) + 1;
						else
							digit_counters(3) <= 0;
							if digit_counters(4) < 9 then 
								digit_counters(4) <= digit_counters(4) + 1;
							else
								digit_counters(4) <= 0;
								if digit_counters(5) < 9 then 
									digit_counters(5) <= digit_counters(5) + 1;
								else
									digit_counters(5) <= 0;	
									if digit_counters(6) < 9 then
										digit_counters(6) <= digit_counters(6) + 1;
									else
										digit_counters(6) <= 0;
										if digit_counters(7) < 9 then
											digit_counters(7) <= digit_counters(7) + 1;
										else	
											digit_counters(7) <= 0;										
										end if;										
									end if;
								end if;							
							end if;						
						end if;					
					end if;				
				end if;			
			end if;		
		end if;
	end process;
	
	
end architecture;