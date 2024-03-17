library ieee;
use ieee.std_logic_1164.all;

	-- generic(
		-- FREQ: integer := 100e6;
		-- DEVICE_ID: std_logic_vector(3 downto 0) := "1010";
		-- CHIP_SELECT_BITS: std_logic_vector(2 downto 0) := "111";
		-- WR: std_logic := '0';
		-- RD: std_logic := '1'
	-- );

entity I2C_controller is
	generic(
		FREQ: integer;
		I2C_FREQ: integer;
		DEVICE_ID: std_logic_vector(3 downto 0);
		CHIP_SELECT_BITS: std_logic_vector(2 downto 0);
		WR: std_logic;
		RD: std_logic
	);
	
	port(
		clk_MAIN: in std_logic;
		rst: in std_logic;
		SQ_in: in std_logic;
		SCL: inout std_logic;
		SDA: inout std_logic;
		I2C_request: in std_logic;
		request_processing: out std_logic;
		data_ready: out std_logic;
		W_ADDRESS: in std_logic_vector(7 downto 0)
	);	
end entity;


architecture rtl of I2C_controller is
signal i2c_dataToSend, i2c_received: std_logic_vector(7 downto 0);
signal i2c_data_bit, i2c_clk: std_logic := '0';--always low
signal i2c_data_en, i2c_clk_en: std_logic := '0';
signal clk_I2C_engine: std_logic;
signal i2c_ack: std_logic;

type i2cStates is 
(INIT, START, SLAVE_ADDRESS_W_IN, ACK1, WORD_ADDRESS_IN, ACK2, SETUP_RPT_START, RPT_START, SLAVE_ADDRESS_R_IN, ACK3, SER_DATA_OUT, NACK, STOP);

signal i2cVariable: i2cStates := INIT;

begin

SDA <= i2c_data_bit when i2c_data_en = '1' else 'Z';
SCL <= i2c_clk when i2c_clk_en = '1' else 'Z';


HUNDRED_KHZ_PROC:
	process(clk_MAIN, rst)
		constant count_range: integer range 0 to FREQ := FREQ/(I2C_FREQ * 10);
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter:= 0;
			clk_I2C_engine <= '0';		 	
		elsif rising_edge(clk_MAIN) then 
			if counter < (count_range-1) then
				counter := counter + 1;
				clk_I2C_engine <= '0';
			else	
				counter := 0;
				clk_I2C_engine <= '1';
			end if;
		end if;
	end process;
	
	
I2C_ENGINE_PROC:
	process(clk_I2C_engine, rst)
		variable counter: integer range 0 to 20 := 0;
		variable data_bits: integer range 0 to 10 := 0;
	begin
		if rst = '0' then
			counter:= 0;
			request_processing <= '0';
			data_ready <= '0';
			i2c_data_en <= '0';	--pull the SDA line high
			i2c_clk_en <= '0'; --pull the SCL line high
			i2c_clk <= '0';	--always low.... logic '1' is supplied by external pullup resistor on tristate
		elsif rising_edge(clk_I2C_engine) and I2C_request = '1' then
			case i2cVariable is
				when INIT =>
					i2c_data_bit <= '0';
					i2c_data_en <= '1';  --pull the sda line low to initiate the start condition
					i2cVariable <= START;
		
				when START =>
					request_processing <= '1';
					data_ready <= '0';
					if counter < 4 then  --delay for 5us to satisfy the start condition hold time
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk_en <= '1'; -- pull the scl line low to finally finish the start condition
						i2c_dataToSend <= DEVICE_ID & CHIP_SELECT_BITS & WR; --slave address & R/W-bit set to write
						i2cVariable <= SLAVE_ADDRESS_W_IN;
					end if;
				
				--clock in 8 bits of data to the slave
				when SLAVE_ADDRESS_W_IN =>		
					if counter = 0 then 
						i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift the bits
						i2c_data_bit <= i2c_dataToSend(7);
						counter := counter + 1; 
					elsif counter < 4 then
						counter := counter + 1;
					elsif counter = 4 then					
						i2c_clk_en <= '0';
						counter := counter + 1;
					elsif counter < 9 then 
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low			
							
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;-- keep looping until 8bits are out 
						else
							data_bits := 0;
							i2c_data_en <= '0'; --release the sda line to read the ACK bit
							i2cVariable <= ACK1;  --go to next state if 8bits have been shifted out
						end if;					
					end if;					
				
				--read the acknowledge bit
				when ACK1 =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					elsif counter = 4 then	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_ack <= SDA; --read in the ACK bit
						counter := counter + 1;	
					elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						counter := counter + 1;
					else
						counter := 0;
						if i2c_ack = '0' then --check the ACK bit
							i2c_clk <= '0';
							i2c_clk_en <= '1'; -- pull the scl line low
							i2c_dataToSend <= W_ADDRESS; --now ready to load the word address
							i2cVariable <= WORD_ADDRESS_IN;
						else	
							i2cVariable <= INIT; --if no ACK, no device detected. So go back to init								
						end if;				
					end if;	
				
				--clock in 8 bits of data to the slave
				when WORD_ADDRESS_IN =>		
					if counter = 0 then 
						i2c_data_en <= '1'; --enable the dataline again
						i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift the bits
						i2c_data_bit <= i2c_dataToSend(7);
						counter := counter + 1; 
					elsif counter < 4 then
						counter := counter + 1;
					elsif counter = 4 then					
						i2c_clk_en <= '0';
						counter := counter + 1;
					elsif counter < 9 then 
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low			
							
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;-- keep looping until 8bits are out 
						else
							data_bits := 0;
							i2c_data_en <= '0'; --release the sda line to read the ACK bit
							i2cVariable <= ACK2;  --go to next state if 8bits have been shifted out
						end if;					
					end if;	
				
				--read the acknowledge bit
				when ACK2 =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					elsif counter = 4 then 	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_ack <= SDA; --read in the ACK bit
						counter := counter + 1;	
					elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						counter := counter + 1;
					else
						counter := 0;
						if i2c_ack = '0' then --check the ACK bit
							i2c_clk <= '0';
							i2c_clk_en <= '1'; -- pull the scl line low
							i2cVariable <= SETUP_RPT_START;
						else	
							i2cVariable <= INIT; --if no ACK, no device detected. So go back to init								
						end if;				
					end if;
					
				--generate the repeated start condition	
				when SETUP_RPT_START =>	
					i2c_data_en <= '0'; --first set both lines high
					i2c_clk_en <= '0';
					i2cVariable <= RPT_START;
				
				when RPT_START =>
					i2c_data_bit <= '0';
					i2c_data_en <= '1';  --pull the sda line low to initiate the start condition
					
					if counter < 4 then  --delay for 5us to satisfy the start condition hold time
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low to finally finish the rpt_start condition
						i2c_dataToSend <= DEVICE_ID & CHIP_SELECT_BITS & RD; --slave address & R/W-bit set to read
						i2cVariable <= SLAVE_ADDRESS_R_IN;
					end if;
				
				--clock in 8 bits of data to the slave
				when SLAVE_ADDRESS_R_IN =>		
					if counter = 0 then 
						i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift the bits
						i2c_data_bit <= i2c_dataToSend(7);
						counter := counter + 1; 
					elsif counter < 4 then
						counter := counter + 1;
					elsif counter = 4 then					
						i2c_clk_en <= '0';
						counter := counter + 1;
					elsif counter < 9 then 
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low			
							
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;-- keep looping until 8bits are out 
						else
							data_bits := 0;
							i2c_data_en <= '0'; --release the sda line to read the ACK bit
							i2cVariable <= ACK3;  --go to next state if 8bits have been shifted out
						end if;					
					end if;	
				
				--read the acknowledge bit
				when ACK3 =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					elsif counter = 4 then	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_ack <= SDA; --read in the ACK bit
						counter := counter + 1;	
					elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						counter := counter + 1;
					else
						counter := 0;
						if i2c_ack = '0' then --check the ACK bit
							i2c_clk <= '0';
							i2c_clk_en <= '1'; -- pull the scl line low
							i2cVariable <= SER_DATA_OUT;
						else	
							i2cVariable <= INIT; --if no ACK, something wrong. So go back to init								
						end if;			
					end if;					
					
					
				--read in 8bits of serial data	
				when SER_DATA_OUT =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					elsif counter = 4 then						
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_received <= i2c_received(6 downto 0) & SDA; --clock in data from slave bit by bit
						counter := counter + 1;
						
					elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;
						else
							data_bits := 0;
							--i2c_data_en <= '0'; --release the sda line to generate a NACK
							i2cVariable <= NACK;  --go to next state if 8bits have been shifted out
						end if;						
					end if;
					
				when NACK =>
					i2c_data_en <= '0'; --disable the tri-state control to release the sda line to generate a NACK
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					elsif counter = 4 then	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						counter := counter + 1;
						
					elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low
						i2c_data_bit <= '0';
						i2c_data_en <= '1';  --pull the sda line low
						i2cVariable <= STOP; --generate the stop condition
					end if;
					
				when STOP =>
					i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
					if counter < 4 then --delay for 5us for the stop condition setup time
						counter := counter + 1;
					else	
						counter := 0;
						i2c_data_en <= '0'; --set sda high by disabling the tri-state control
						data_ready <= '1';
						request_processing <= '0';
					end if;
					
				when others =>
					i2cVariable <= INIT;
			end case;		
		end if;	
	end process;
	

end architecture;