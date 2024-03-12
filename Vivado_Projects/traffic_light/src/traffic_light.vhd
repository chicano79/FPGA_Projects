library ieee;
use ieee.std_logic_1164.all;


entity traffic_light is
	generic(
		FREQ: integer := 100e6	
	);
	
	port(
		clk_100MHz: in std_logic := '0';
		segment: out std_logic_vector(1 to 7) := (others => '1');
		ANODE: out std_logic_vector(1 to 4) := (1 => '0', others => '1');
		LED: out std_logic := '0';
		GPIO: out std_logic_vector(0 to 2) := (others => '0')	
	);
end entity;

architecture rtl of traffic_light is

type trafficLightStates is (initStart, stateA, stateB, stateC, stateD, stateE);

signal trafficVariable: trafficLightStates := initStart;

signal redLED, yellowLED, greenLED: std_logic := '0';

signal clk_2Hz, blink_en: std_logic := '0';

signal bcd_counter: integer range 0 to 9 := 0; 

begin

--GPIO(1) <= yellowLED xor (blink_en and clk_2Hz);
GPIO(0) <= greenLED;
GPIO(1) <= clk_2Hz when blink_en = '1' else yellowLED;
GPIO(2) <= redLED;

LED <= clk_2Hz;

TWO_HZ_GEN:
	process(clk_100MHz)
		constant count_range: integer range 0 to FREQ/(2*2)  := FREQ/(2*2);
		variable counter: integer range 0 to count_range;	
	begin
		if rising_edge(clk_100MHz) then
			if counter < (count_range-1) then
				counter := counter + 1;
			else
				counter := 0;
				clk_2Hz <= not clk_2Hz;
			end if;
		end if;
	end process;
	
DECODER_BLOCK:
	with bcd_counter select
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
	
TF_SEGMENT_DISPLAY:
	process(clk_100MHz)		
		constant count_range_1sec: integer range 0 to FREQ   := FREQ*1;
		variable counter: integer range 0 to FREQ;
		variable counter2: integer range 0 to 10 := 0;
	begin
		if clk_100MHz'event and clk_100MHz = '1' then
			case trafficVariable is
				when initStart =>
					bcd_counter <= 9;
					counter2 := 0;
			
				when stateA => 										
					if counter < (count_range_1sec-1) then 						
						counter := counter + 1;						
					else
						counter := 0;
						bcd_counter <= bcd_counter - 1;
						if counter2 < (9) then
							counter2 := counter2 + 1;
						else
							counter2 := 0;
							bcd_counter <= 5;					
						end if;					
					end if;
						
				when stateB => 					
					if counter < (count_range_1sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						bcd_counter <= bcd_counter - 1;
						if counter2 < (5) then
							counter2 := counter2 + 1;
						else
							counter2 := 0;
							bcd_counter <= 9;					
						end if;					
					end if;
			
				when stateC =>					
					if counter < (count_range_1sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						bcd_counter <= bcd_counter - 1;
						if counter2 < (9) then
							counter2 := counter2 + 1;
						else
							counter2 := 0;
							bcd_counter <= 2;					
						end if;					
					end if;			
			
				when stateD => 					
					if counter < (count_range_1sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						bcd_counter <= bcd_counter - 1;
						if counter2 < (2) then
							counter2 := counter2 + 1;
						else
							counter2 := 0;
							bcd_counter <= 5;					
						end if;					
					end if;		
						
				when stateE =>					
					if counter < (count_range_1sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						bcd_counter <= bcd_counter - 1;
						if counter2 < (5) then
							counter2 := counter2 + 1;
						else
							counter2 := 0;
							bcd_counter <= 9;					
						end if;					
					end if;		
						
				when others =>
					bcd_counter <= 9;
					counter2 := 0;			
			end case;
		end if;	
	end process;
	


TRAFFIC_STATES:
	process(clk_100MHz)		
		--constant count_range_1sec: integer range 0 to FREQ*2 := FREQ*2;
		constant count_range_2sec: integer range 0 to FREQ*3 := FREQ*3;
		constant count_range_5sec: integer range 0 to FREQ*6 := FREQ*6;
		constant count_range_9sec: integer range 0 to FREQ*10 := FREQ*10;		
		variable counter: integer range 0 to count_range_9sec;
	begin
		if clk_100MHz'event and clk_100MHz = '1' then
			case trafficVariable is
				when initStart =>
					blink_en <= '0';
					redLED <= '1';
					yellowLED <= '0';
					greenLED <= '0';
					trafficVariable <= stateA;
			
				when stateA => 										
					if counter < (count_range_9sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						
						blink_en <= '0';
						redLED <= '1';
						yellowLED <= '1';
						greenLED <= '0';
						trafficVariable <= stateB;
					end if;
						
				when stateB => 					
					if counter < (count_range_5sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						
						blink_en <= '0';
						redLED <= '0';
						yellowLED <= '0';
						greenLED <= '1';
						trafficVariable <= stateC;
					end if;
			
				when stateC =>					
					if counter < (count_range_9sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						
						blink_en <= '0';
						redLED <= '0';
						yellowLED <= '1';
						greenLED <= '1';
						trafficVariable <= stateD;
					end if;			
			
				when stateD => 					
					if counter < (count_range_2sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						
						blink_en <= '1';
						redLED <= '0';
						yellowLED <= '0';
						greenLED <= '1';
						trafficVariable <= stateE;
					end if;			
						
				when stateE =>					
					if counter < (count_range_5sec-1) then 						
						counter := counter + 1;
					else
						counter := 0;
						
						blink_en <= '0';
						redLED <= '1';
						yellowLED <= '0';
						greenLED <= '0';
						trafficVariable <= stateA;
					end if;			
						
				when others =>
					blink_en <= '0';
					redLED <= '1';
					yellowLED <= '0';
					greenLED <= '0';
					trafficVariable <= stateA;
			
			end case;
		end if;	
	end process;


end architecture;