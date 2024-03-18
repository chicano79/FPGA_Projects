library ieee;
use ieee.std_logic_1164.all;


entity I2C_controllerNew is
	generic(
		FREQ: integer;
		I2C_FREQ: integer
	);
	
	port(
		clk_MAIN: in std_logic;
		rst: in std_logic;
		
		led: out std_logic;
		
		initiateStart: in std_logic;
		initiateStop: in std_logic;
		initiateACKfromMaster: in std_logic;
		resetCounter: in std_logic;
		
		ACKtype: in std_logic;  --master can send either a ACK('0') or a NACK('1')
		
		initiate8bitDataTransfer: in std_logic;
		
		I2CcmdProcessing: out std_logic;
		I2CeventComplete: out std_logic;
		
		I2C_Input_Data: in std_logic_vector(7 downto 0);
		I2C_Output_Data: out std_logic_vector(7 downto 0);
		
		ACKready: out std_logic;
		ACKfromSlave: out std_logic;
		
		dataAvailable: out std_logic;
		fetchI2Cdata: in std_logic;
		
		SCL: out std_logic;
		SDA: inout std_logic	
	);	
end entity;


architecture rtl of I2C_controllerNew is
signal i2c_dataToSend: std_logic_vector(7 downto 0);
signal i2c_data_bit, i2c_clk: std_logic := '0';--always low
signal i2c_data_en, i2c_clk_en: std_logic := '0';
signal some_clk, clk_I2C: std_logic;
signal i2c_ack: std_logic;

signal startI2Cclock, start_stopCond: std_logic := '0';


begin

SDA <= i2c_data_bit when i2c_data_en = '1' else 'Z';
SCL <= clk_I2C;
led <= clk_I2C;


K_PROC:
	process(clk_MAIN, rst)
		constant count_range: integer range 0 to FREQ := FREQ/(I2C_FREQ * 10);
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter:= 0;
			some_clk <= '0';		 	
		elsif rising_edge(clk_MAIN) then 
			if counter < (count_range-1) then
				counter := counter + 1;
				some_clk <= '0';
			else	
				counter := 0;
				some_clk <= '1';
			end if;
		end if;
	end process;
	
	
	
I2C_CLOCK_PROC:
	process(clk_MAIN, rst)
		constant count_range: integer range 0 to (FREQ*2) := (FREQ*2)/I2C_FREQ;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter:= 0;
			clk_I2C <= '0';	
		elsif start_stopCond = '1' then
			clk_I2C <= '1';
			counter := 0;
		elsif startI2Cclock = '0' then
			clk_I2C <= '0';
			counter := 0;
		elsif rising_edge(clk_MAIN) and startI2Cclock = '1' then 
			if counter < (count_range-1) then
				counter := counter + 1;
			else	
				counter := 0;
				clk_I2C <= not clk_I2C;
			end if;
		end if;
	end process;	
	
	
I2C_ENGINE_PROC:
	process(some_clk, rst)
		variable counter: integer range 0 to 20 := 0;
		variable data_bits: integer range 0 to 10 := 0;
	begin
		if rst = '0' then
			counter := 0;
			data_bits := 0;
			I2CeventComplete <= '0'; --no i2c event has completed
			I2CcmdProcessing <= '0'; --no i2c command is processing
			startI2Cclock <= '0';
			i2c_data_en <= '0';	--pull the SDA line high
			i2c_clk_en <= '0'; --pull the SCL line high
			
		elsif rising_edge(some_clk) then
		
--STATE1:
			if initiateStart = '1' then		--check for START condition initiation		
				if counter = 0 then	
					start_stopCond <= '1';										
					i2c_data_en <= '0';	--pull the SDA line high
					I2CeventComplete <= '0'; --i2c event not completed yet
					counter := 1;
				elsif counter = 1 then
					i2c_data_bit <= '0';
					i2c_data_en <= '1';  --falling edge of the sda line
					counter := 2;					
				elsif counter < 6 then	
					counter := counter + 1;	
				else
					start_stopCond <= '0';
					I2CeventComplete <= '1'; --i2c event has now completed					
				end if;
			
			elsif resetCounter = '1' then
				I2CeventComplete <= '0'; --i2c event has now completed
				counter := 0;
				I2CeventComplete <= '1'; --i2c event has now completed	
--STATE2:		
			elsif initiate8bitDataTransfer = '1' then --check for Data Transfer initiation
				if counter = 0 then
					data_bits := 0;
					i2c_dataToSend <= I2C_Input_Data;--get the 8 bits of data to send to slave
					ACKready <= '0'; --acknowledgement bit not ready yet
					I2CeventComplete <= '0'; --i2c event not completed yet
					counter := 1;
				elsif counter = 1 then
					startI2Cclock <= '1';
					i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift the bits
					i2c_data_bit <= i2c_dataToSend(7);
					counter := 2; 
				elsif counter = 2 then
					if clk_I2C = '1' then
						counter := 3;					
					end if;
				elsif counter = 3 then
					if clk_I2C = '0' then			
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;-- keep looping until 8bits are out 
							counter := 1;
						else
							data_bits := 0;
							counter := 4;
						end if;
					end if;	
				elsif counter = 4 then
					i2c_data_en <= '0'; --float the sda line to read the ACK bit
					I2CeventComplete <= '1'; --i2c event has now completed
					if clk_I2C = '1' then
						i2c_ack <= SDA; --read in the ACK bit
						counter := 5;
					end if;
				elsif counter = 5 then	
					if clk_I2C = '0' then
						startI2Cclock <= '0';
						ACKfromSlave <= i2c_ack; --send out the acknowledge value
						ACKready <= '1';
					end if;
				end if;

--STATE3:
			elsif fetchI2Cdata = '1' then  --get the i2c data from slave
				if counter = 0 then
					i2c_data_en <= '0'; --float the sda line to allow slave send data
					I2CeventComplete <= '0'; --i2c event not completed yet
					dataAvailable <= '0'; --i2c data not available yet
					data_bits := 0;
					counter := 1;
				elsif counter = 1 then	
					startI2Cclock <= '1';
					if clk_I2C = '1' then
						i2c_dataToSend <= i2c_dataToSend(6 downto 0) & SDA; --clock in data from slave bit by bit
						counter := 2;
					end if;
				elsif counter = 2 then	
					if clk_I2C = '0' then
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;
							counter := 1;
						else
							data_bits := 0;
							startI2Cclock <= '0';
							I2C_Output_Data <= i2c_dataToSend;
							I2CeventComplete <= '1'; --i2c event has now completed
							dataAvailable <= '1'; --i2c data available now
						end if;
					end if;
				end if;

--STATE4:
			elsif initiateACKfromMaster = '1' then
				if counter = 0 then
					i2c_data_bit <= ACKtype;
					i2c_data_en <= not ACKtype;  --set the ack type on the sda line
					I2CeventComplete <= '0'; --i2c event not completed yet
					counter := 1;
				elsif counter = 1 then
					startI2Cclock <= '1';
					counter := 2;					
				elsif counter = 2 then
					if clk_I2C = '1' then
						counter := 3;					
					end if;
				elsif counter = 3 then
					if clk_I2C = '0' then
						startI2Cclock <= '0';
						I2CeventComplete <= '1'; --i2c event has now completed					
					end if;
				end if;
--STATE5:				
				
			elsif initiateStop = '1' then
				if counter = 0 then
					start_stopCond <= '1';
					i2c_data_bit <= '0';
					i2c_data_en <= '1';  --pull the sda line low
					I2CeventComplete <= '0'; --i2c event not completed yet
					counter := 1;
				elsif counter < 5 then
					counter := counter + 1;
				else
					i2c_data_en <= '0';	--pull the SDA line high
					I2CeventComplete <= '1'; --i2c event has now completed
				end if;
			end if;
		end if;	
	end process;
	

end architecture;