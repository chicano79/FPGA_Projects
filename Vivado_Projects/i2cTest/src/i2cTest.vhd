library ieee;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity i2cTest is
	generic(
		FREQ: integer := 100e6;
		I2C_FREQ: integer := 100e3;
		DEVICE_ID: std_logic_vector(3 downto 0) := "1010";
		CHIP_SELECT_BITS: std_logic_vector(2 downto 0) := "111";
		WR: std_logic := '0';
		RD: std_logic := '1'
	);
	
	port(
		clk_MAIN: in std_logic;
		rst: in std_logic;
		
		led: out std_logic;
		
		SEG_7: buffer std_logic_vector(0 to 6);
		ANODE: buffer std_logic_vector(0 to 7) := (others => '1');
		
		--SQ_in: in std_logic;
		SCL: inout std_logic;
		SDA: inout std_logic
	);	
end i2cTest;

architecture rtl of i2cTest is

constant startingTimeRegister: std_logic_vector(7 downto 0) := x"00";

signal initiateStart: std_logic;
signal initiateStop: std_logic;
signal initiateACKfromMaster: std_logic;
signal resetCounter: std_logic;

signal ACKtype: std_logic;  --master can send either a ACK('0') or a NACK('1')

signal initiate8bitDataTransfer: std_logic;

signal I2CcmdProcessing: std_logic;
signal I2CeventComplete: std_logic;

signal I2C_Input_Data: std_logic_vector(7 downto 0);
signal I2C_Output_Data: std_logic_vector(7 downto 0);

signal secondsRegister, minutesRegister, hoursRegister: std_logic_vector(7 downto 0);

signal ACKready: std_logic;
signal ACKfromSlave: std_logic;

signal dataAvailable: std_logic;
signal fetchI2Cdata: std_logic;

signal clk_1KHz, clk_100Hz: std_logic;
signal SEG: std_logic_vector(0 to 55) := (others => '0');
signal disp_selector: integer range 0 to 20 := 0;

signal fetchStateVariable: integer := 0;

type seg_light_pattern is array(0 to 9) of std_logic_vector(0 to 6);

constant mdigits: seg_light_pattern :=  
		(
			"0000001", "1001111", "0010010", "0000110", "1001100",
			"0100100", "0100000", "0001111", "0000000", "0000100"		
		);
		
subtype bcd_digit is std_logic_vector(0 to 6);

function get_segment(dg: integer range 0 to 9) return bcd_digit is
begin
	return mdigits(dg);
end function;


begin

SEG(0 to 6) <= get_segment(to_integer(unsigned(secondsRegister(3 downto 0))));
SEG(7 to 13) <= get_segment(to_integer(unsigned('0' & secondsRegister(6 downto 4))));
SEG(14 to 20) <= get_segment(to_integer(unsigned(minutesRegister(3 downto 0))));
SEG(21 to 27) <= get_segment(to_integer(unsigned(minutesRegister(7 downto 4))));
SEG(28 to 34) <= get_segment(to_integer(unsigned(hoursRegister(3 downto 0))));
SEG(35 to 41) <= get_segment(to_integer(unsigned('0' & hoursRegister(4 downto 4))));
SEG(42 to 48) <= (others => '1');
SEG(49 to 55) <= (others => '1');

I2C_CONTROLLER:
entity work.I2C_controllerNew(rtl)
	generic map(
		FREQ => FREQ,
		I2C_FREQ =>I2C_FREQ
	)
	
	port map(
		clk_MAIN => clk_MAIN,
		rst => rst,
		
		led => led,
		
		initiateStart => initiateStart,
		initiateStop => initiateStop,
		initiateACKfromMaster => initiateACKfromMaster,
		resetCounter => resetCounter,
		
		ACKtype => ACKtype,  --master can send either a ACK('0') or a NACK('1')
		
		initiate8bitDataTransfer => initiate8bitDataTransfer,
		
		I2CcmdProcessing => I2CcmdProcessing,
		I2CeventComplete => I2CeventComplete,
		
		I2C_Input_Data => I2C_Input_Data,
		I2C_Output_Data => I2C_Output_Data,
		
		ACKready => ACKready,
		ACKfromSlave => ACKfromSlave,
		
		dataAvailable => dataAvailable,
		fetchI2Cdata => fetchI2Cdata,		
		
		SCL => SCL,
		SDA => SDA
	);
	
MUX_TO_DISPLAY:
	with disp_selector select
		SEG_7 <= SEG(0 to 6)     when 0,
				 (others => '1') when 1,
				 SEG(7 to 13)    when 2,
				 (others => '1') when 3,
				 SEG(14 to 20)   when 4,
				 (others => '1') when 5,
				 SEG(21 to 27)   when 6,
				 (others => '1') when 7,
				 SEG(28 to 34)   when 8,
				 (others => '1') when 9,
				 SEG(35 to 41)   when 10,
				 (others => '1') when 11,
				 SEG(42 to 48)   when 12,
				 (others => '1') when 13,
				 SEG(49 to 55)   when 14,
				 (others => '1') when 15,
				 
				 (others => '1') when others;
						 
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
	process(clk_MAIN, rst)
		constant count_range: integer range 0 to FREQ := FREQ/1e3;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter := 0;
			clk_1KHz <= '0';
		elsif rising_edge(clk_MAIN) then 
			if counter < count_range-1 then
				counter := counter + 1;
				clk_1KHz <= '0';
			else 
				counter := 0;
				clk_1KHz <= '1';			
			end if;
		end if;
	end process;
	
DISPLAY_SCAN:
	process(clk_1KHz, rst)
		constant displayStates: integer range 0 to 16 := 16;
	begin
		if rst = '0' then
			disp_selector <= 0;
		elsif rising_edge(clk_1KHz) then	
			if disp_selector < displayStates-1 then
				disp_selector <= disp_selector + 1;
			else
				disp_selector <= 0;
			end if;
		end if;	
	end process;	
	
FETCH_RTCC:
	process(clk_MAIN, rst)
		constant count_range: integer range 0 to FREQ := FREQ/10;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			fetchStateVariable <= 0;
			secondsRegister <= (others => '0');
			minutesRegister <= (others => '0');
			hoursRegister <= (others => '0');
			initiateStart <= '0';
			initiate8bitDataTransfer <= '0';
			fetchI2Cdata <= '0';
			initiateACKfromMaster <= '0';
			resetCounter <= '0';
			initiateStop <= '0';
			
		elsif rising_edge(clk_MAIN) then 
			case fetchStateVariable is
				--initiate start condition
				when 0 =>
					initiateStart <= '1';
					fetchStateVariable <= 2;
				when 1 =>
					if I2CeventComplete = '1' then
						initiateStart <= '0';
						fetchStateVariable <= 2;					
					end if;
					
				when 2 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 3;					
					end if; 
					
				--send in control Byte with write
				when 3 =>
					I2C_Input_Data <= DEVICE_ID & CHIP_SELECT_BITS & WR;
					initiate8bitDataTransfer <= '1';
					fetchStateVariable <= 4;				
				when 4 =>
					if I2CeventComplete = '1' then
						fetchStateVariable <= 5;					
					end if;
				when 5 =>
					if ACKready = '1' then
						initiate8bitDataTransfer <= '0';
						fetchStateVariable <= 6;					
					end if;
				when 6 =>
					if ACKfromSlave = '0' then
						fetchStateVariable <= 7;
					else
						fetchStateVariable <= 0;  --error restart
					end if;
					
				when 7 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 8;					
					end if;
					
				--send in word address
				when 8 =>
					I2C_Input_Data <= startingTimeRegister;
					initiate8bitDataTransfer <= '1';
					fetchStateVariable <= 9;				
				when 9 =>
					if I2CeventComplete = '1' then
						fetchStateVariable <= 10;					
					end if;
				when 10 =>
					if ACKready = '1' then
						initiate8bitDataTransfer <= '0';
						fetchStateVariable <= 11;					
					end if;
				when 11 =>
					if ACKfromSlave = '0' then
						fetchStateVariable <= 12;
					else
						fetchStateVariable <= 0;  --error restart
					end if;
					
				when 12 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 13;					
					end if;
					
				--initiate a repeated start condition
				when 13 =>
					initiateStart <= '1';
					fetchStateVariable <= 14;
				when 14 =>
					if I2CeventComplete = '1' then
						initiateStart <= '0';
						fetchStateVariable <= 15;					
					end if;
				when 15 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 16;					
					end if;
					
				--send in control Byte with read
				when 16 =>
					I2C_Input_Data <= DEVICE_ID & CHIP_SELECT_BITS & RD;
					initiate8bitDataTransfer <= '1';
					fetchStateVariable <= 17;				
				when 17 =>
					if I2CeventComplete = '1' then
						fetchStateVariable <= 18;					
					end if;
				when 18 =>
					if ACKready = '1' then
						initiate8bitDataTransfer <= '0';
						fetchStateVariable <= 19;					
					end if;
				when 19 =>
					if ACKfromSlave = '0' then
						fetchStateVariable <= 20;
					else
						fetchStateVariable <= 0;  --error restart
					end if;
				when 20 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 21;					
					end if;
					
				--get serial data from device (first timing register)
				when 21 =>
					fetchI2Cdata <= '1';
					fetchStateVariable <= 22;				
				when 22 =>
					if dataAvailable = '1' then
						fetchI2Cdata <= '0';
						secondsRegister <= I2C_Output_Data;
						fetchStateVariable <= 23;
					end if;
				when 23 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 24;					
					end if;
						
				--send a ACK to fetch the next register
				when 24 =>
					ACKtype <= '0';
					initiateACKfromMaster <= '1';
					fetchStateVariable <= 25;
				when 25 =>
					if I2CeventComplete = '1' then
						initiateACKfromMaster <= '0';
						fetchStateVariable <= 26;					
					end if;
				when 26 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 27;					
					end if;
					
				--get the second time register
				when 27 =>
					fetchI2Cdata <= '1';
					fetchStateVariable <= 28;				
				when 28 =>
					if dataAvailable = '1' then
						fetchI2Cdata <= '0';
						minutesRegister <= I2C_Output_Data;
						fetchStateVariable <= 29;
					end if;
				when 29 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 30;					
					end if;
						
				--send a ACK to fetch the next register
				when 30 =>
					ACKtype <= '0';
					initiateACKfromMaster <= '1';
					fetchStateVariable <= 31;
				when 31 =>
					if I2CeventComplete = '1' then
						initiateACKfromMaster <= '0';
						fetchStateVariable <= 32;					
					end if;
				when 32 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 33;					
					end if;
					
				--get the hours register				
				when 33 =>
					fetchI2Cdata <= '1';
					fetchStateVariable <= 34;				
				when 34 =>
					if dataAvailable = '1' then
						fetchI2Cdata <= '0';
						hoursRegister <= I2C_Output_Data;
						fetchStateVariable <= 35;
					end if;
				when 35 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 36;					
					end if;
						
				--send a NACK to terminate transfers
				when 36 =>
					ACKtype <= '1';
					initiateACKfromMaster <= '1';
					fetchStateVariable <= 37;

				when 37 =>
					if I2CeventComplete = '1' then
						initiateACKfromMaster <= '0';
						fetchStateVariable <= 38;					
					end if;
				when 38 =>
					resetCounter <= '1';
					if I2CeventComplete = '1' then
						fetchStateVariable <= 39;					
					end if;

				--send the stop condition
				when 39 =>
					initiateStop <= '1';
					fetchStateVariable <= 40;
				when 40 =>
					if I2CeventComplete = '1' then
						initiateStop <= '0';
						fetchStateVariable <= 41;					
					end if;
					
				when 41 =>
					if counter < count_range-1 then
						counter := counter + 1;
					else
						counter := 0;
						fetchStateVariable <= 0;
					end if;
				when others =>
				    fetchStateVariable <= 41;
			end case;
		end if;
	end process;	

	




end rtl;
