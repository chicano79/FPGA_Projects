library ieee;
use ieee.std_logic_1164.all;


entity traffic_light is
	generic(
		FREQ: integer := 100e6	
	);
	
	port(
		clk_100MHz: in std_logic := '0';
		--segment: out std_logic_vector(1 to 7) := (others => '1');
		--ANODE: out std_logic_vector(1 to 8) := (0 => '0', others => '1');
		GPIO: out std_logic_vector(0 to 2) := (others => '0')	
	);
end entity;

architecture rtl of traffic_light is

type trafficLightStates is (stateA, stateB, stateC, stateD, stateE);

signal trafficVariable: trafficLightStates := stateA;

signal redLED, yellowLED, greenLED: std_logic := '0';

signal clk_2Hz, blink_en: std_logic := '0';

begin

GPIO(2) <= redLED;
GPIO(1) <= yellowLED xor (blink_en and clk_2Hz);
GPIO(0) <= greenLED;

TWO_HZ_GEN:
	process(clk_100MHz)
		constant count_range: integer range 0 to (FREQ/2)*2 := (FREQ/2)*2;
		variable counter: integer range 0 to count_range;	
	begin
		if rising_edge(clk_100MHz) then
			if counter < count_range then
				counter := counter + 1;
			else
				counter := 0;
				clk_2Hz <= not clk_2Hz;
			end if;
		end if;
	end process;


TRAFFIC_STATES:
	process(clk_100MHz)
		constant count_range_1sec: integer range 0 to FREQ   := FREQ*1;
		constant count_range_2sec: integer range 0 to FREQ*2 := FREQ*2;
		constant count_range_4sec: integer range 0 to FREQ*4 := FREQ*4;
		constant count_range_5sec: integer range 0 to FREQ*5 := FREQ*5;
		variable counter: integer range 0 to count_range;
	begin
		if clk_100MHz'event and clk_100MHz = 1 then
			case trafficVariable is
			
				when stateA => 
					blink_en <= '0';
					redLED <= '1';
					yellowLED <= '0';
					greenLED <= '0';					
					if counter < count_range_5sec then 						
						counter := counter + 1;
					else
						counter := 0;
						trafficVariable <= stateB;
						
				when stateB => 
					blink_en <= '0';
					redLED <= '1';
					yellowLED <= '1';
					greenLED <= '0';
					if counter < count_range_2sec then 						
						counter := counter + 1;
					else
						counter := 0;
						trafficVariable <= stateC;
			
				when stateC =>
					blink_en <= '0';
					redLED <= '0';
					yellowLED <= '0';
					greenLED <= '1';
					if counter < count_range_5sec then 						
						counter := counter + 1;
					else
						counter := 0;
						trafficVariable <= stateD;			
			
				when stateD => 
					blink_en <= '0';
					redLED <= '0';
					yellowLED <= '1';
					greenLED <= '1';
					if counter < count_range_1sec then 						
						counter := counter + 1;
					else
						counter := 0;
						trafficVariable <= stateE;
						
				when stateE => 
					blink_en <= '1';
					redLED <= '0';
					yellowLED <= '1';
					greenLED <= '1';
					if counter < count_range_4sec then 						
						counter := counter + 1;
					else
						counter := 0;
						trafficVariable <= stateA;
						
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