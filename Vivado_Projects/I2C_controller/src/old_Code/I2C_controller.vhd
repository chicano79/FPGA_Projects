library ieee;
use ieee.std_logic_1164.all;



entity I2C_controller is
	generic(
		FREQ: integer := 100e6;
		DEVICE_ID: std_logic_vector(3 downto 0) := "1010";
		CHIP_SELECT_BITS: std_logic_vector(2 downto 0) := "111";
		WR: std_logic := '0';
		RD: std_logic := '1'
	);
	
	port(
		clk_100MHz: in std_logic;
		rst: in std_logic;
		SQ_in: in std_logic;
		SCL: inout std_logic;
		SDA: inout std_logic;
		W_ADDRESS: in std_logic_vector(7 downto 0) := x"01"
	);
	
end entity;



architecture rtl of I2C_controller is
signal i2c_dataToSend: std_logic_vector(7 downto 0);
signal i2c_data, i2c_clk: std_logic := '0';--always low
signal i2c_data_en, i2c_clk_en: std_logic := '0';
signal clk_1MHz: std_logic;
signal i2c_ack: std_logic;

signal shiftConcluded: boolean := false;

type i2cStates is 
(INIT, START, SETUP1, NEXT1, NEXT2, SETUP2, NEXT3, NEXT4, SETUP3, RPT_START, SETUP4, NEXT5, NEXT6, NEXT7, NACK, STOP);

signal i2cVariable: i2cStates := INIT;

begin

--clk_100MHz <= not clk_100MHz after 10 ns;

SDA <= i2c_data when i2c_data_en = '1' else 'Z';
SCL <= i2c_clk when i2c_clk_en = '1' else 'Z';


HUNDRED_KHZ_PROC:
	process(clk_100MHz)
		constant count_range: integer range 0 to FREQ := FREQ/1e6;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter:= 0;
			clk_1MHz <= '0';		 	
		elsif clk_100MHz'event and clk_100MHz = '1' then 
			if counter < (count_range-1) then
				counter := counter + 1;
				clk_1MHz <= '0';
			else	
				counter := 0;
				clk_1MHz <= '1';
			end if;
		end if;
	end process;
	
	
I2C_ENGINE_PROC:
	process(clk_1MHz)
		variable counter: integer range 0 to 20 := 0;
		variable data_bits: integer range 0 to 10 := 0;
	begin
		if rst = '0' then
			counter:= 0;
			i2c_data_en <= '0';	
			i2c_clk_en <= '0';
		elsif rising_edge(clk_1MHz) then
			case i2cVariable is
				when INIT =>
					i2c_data_en <= '0';
					i2c_clk_en <= '0';
					i2c_clk <= '0';	--always low.... logic '1' is supplied by external pullup resistor on tristate
					counter:= 0;
					i2cVariable <= START;
		
				when START =>
					i2c_data <= '0';
					i2c_data_en <= '1';  --pull the sda line low to initiate the start condition
					
					if counter < 4 then  --delay for 5us to satisfy the start condition hold time
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk_en <= '1'; -- pull the scl line low to finally finish the start condition
						i2c_dataToSend <= DEVICE_ID & CHIP_SELECT_BITS & WR; --slave address & R/W-bit set to write
						i2cVariable <= SETUP1;
					end if;
					
				when SETUP1 =>			 --use 1us for the data input hold time
					i2c_data <= i2c_dataToSend(7); --load the serial data to be sent into the i2c data register
												--this also places bit7 (MSB first) of the data on the SDA line 
					i2cVariable <= NEXT1; 					

				
				--clock in 8 bits of data to the slave
				when NEXT1 =>		
					if counter < 3 then --wait for another 4us for the data input setup time. 
						counter := counter + 1; --this added to the 1us from previous state gives a total of 5us	
					else						--for the low period of the i2c clock.
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						
						if counter < 7 then --wait for another 5us for the high period of i2c clk 
							counter := counter + 1;
						else
							counter := 0;
							i2c_clk <= '0';
							i2c_clk_en <= '1'; -- pull the scl line low
							i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift to the next bit							
							
							if data_bits < 7 then --count the bits shifted out so far. 
								data_bits := data_bits + 1;
								i2cVariable <= SETUP1;  -- keep looping until 8bits are out 
							else
								data_bits := 0;
								i2c_data_en <= '0'; --release the sda line to read the ACK bit
								i2cVariable <= NEXT2;  --go to next state if 8bits have been shifted out
							end if;
						end if;
					end if;
				
				--read the acknowledge bit
				when NEXT2 =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					else	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_ack <= SDA; --read in the ACK bit	
							if counter < 8 then --wait for another 5us for the high period of i2c clk 
								counter := counter + 1;
							else
								counter := 0;
								if i2c_ack = '0' then --check the ACK bit
									i2c_clk <= '0';
									i2c_clk_en <= '1'; -- pull the scl line low
									i2c_dataToSend <= W_ADDRESS; --now ready to load the word address
									i2cVariable <= SETUP2;
								else	
									i2cVariable <= INIT; --if no ACK, no device detected. So go back to init								
								end if;
							end if;					
					end if;	

				when SETUP2 =>			 --use 1us for the data input hold time
					i2c_data <= i2c_dataToSend(7); --load the serial data to be sent into the i2c data register
												--this also places bit7 (MSB first) of the data on the SDA line 
					i2cVariable <= NEXT3;
				
				--clock in 8 bits of data to the slave
				when NEXT3 =>		
					if counter < 3 then --wait for another 4us for the data input setup time. 
						counter := counter + 1; --this added to the 1us from previous state gives a total of 5us	
					else						--for the low period of the i2c clock.
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						
						if counter < 7 then --wait for another 5us for the high period of i2c clk 
							counter := counter + 1;
						else
							counter := 0;
							i2c_clk <= '0';
							i2c_clk_en <= '1'; -- pull the scl line low
							i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift to the next bit							
							
							if data_bits < 7 then --count the bits shifted out so far. 
								data_bits := data_bits + 1;
								i2cVariable <= SETUP2;  -- keep looping until 8bits are out 
							else
								data_bits := 0;
								i2c_data_en <= '0'; --release the sda line to read the ACK bit
								i2cVariable <= NEXT4;  --go to next state if 8bits have been shifted out
							end if;
						end if;
					end if;
				
				--read the acknowledge bit
				when NEXT4 =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					else	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_ack <= SDA; --read in the ACK bit	
							if counter < 8 then --wait for another 5us for the high period of i2c clk 
								counter := counter + 1;
							else
								counter := 0;
								if i2c_ack = '0' then --check the ACK bit
									i2c_clk <= '0';
									i2c_clk_en <= '1'; -- pull the scl line low
									i2cVariable <= SETUP3;
								else	
									i2cVariable <= INIT; --if no ACK, no device detected. So go back to init								
								end if;
							end if;					
					end if;
					
				--generate the repeated start condition	
				when SETUP3 =>	
					i2c_data_en <= '0'; --first set both lines high
					i2c_clk_en <= '0';
					i2cVariable <= RPT_START;
				
				when RPT_START =>
					i2c_data <= '0';
					i2c_data_en <= '1';  --pull the sda line low to initiate the start condition
					
					if counter < 4 then  --delay for 5us to satisfy the start condition hold time
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low to finally finish the rpt_start condition
						i2c_dataToSend <= DEVICE_ID & CHIP_SELECT_BITS & RD; --slave address & R/W-bit set to read
						i2cVariable <= SETUP4;
					end if;	
					
					
				when SETUP4 =>			 --use 1us for the data input hold time
					i2c_data <= i2c_dataToSend(7); --load the serial data to be sent into the i2c data register
												--this also places bit7 (MSB first) of the data on the SDA line 
					i2cVariable <= NEXT5; 					

				
				--clock in 8 bits of data to the slave
				when NEXT5 =>		
					if counter < 3 then --wait for another 4us for the data input setup time. 
						counter := counter + 1; --this added to the 1us from previous state gives a total of 5us	
					else						--for the low period of the i2c clock.
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						
						if counter < 7 then --wait for another 5us for the high period of i2c clk 
							counter := counter + 1;
						else
							counter := 0;
							i2c_clk <= '0';
							i2c_clk_en <= '1'; -- pull the scl line low
							i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift to the next bit							
							
							if data_bits < 7 then --count the bits shifted out so far. 
								data_bits := data_bits + 1;
								i2cVariable <= SETUP4;  -- keep looping until 8bits are out 
							else
								data_bits := 0;
								i2c_data_en <= '0'; --release the sda line to read the ACK bit
								i2cVariable <= NEXT6;  --go to next state if 8bits have been shifted out
							end if;
						end if;
					end if;
				
				--read the acknowledge bit
				when NEXT6 =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					else	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_ack <= SDA; --read in the ACK bit	
						if counter < 8 then --wait for another 5us for the high period of i2c clk 
							counter := counter + 1;
						else
							counter := 0;
							if i2c_ack = '0' then --check the ACK bit
								i2c_clk <= '0';
								i2c_clk_en <= '1'; -- pull the scl line low
								i2cVariable <= NEXT7;
							else	
								i2cVariable <= INIT; --if no ACK, something wrong. So go back to init								
							end if;
						end if;					
					end if;					
					
					
				--read in 8bits of serial data	
				when NEXT7 =>
					if counter < 4 then --delay for 5us for the low period of i2c clk
						counter := counter + 1;
					elsif counter = 4 then	
						i2c_clk_en <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						i2c_dataToSend <= i2c_dataToSend(6 downto 0) & SDA; --clock in data from slave bit by bit
						counter := counter + 1;
						
					elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1'; -- pull the scl line low
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;
							--i2cVariable <= NEXT7;
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
						i2c_data <= '0';
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
					end if;
					
				when others =>
					i2cVariable <= INIT;
						

			end case;
		
		end if;
		
	
	
	end process;

end architecture;