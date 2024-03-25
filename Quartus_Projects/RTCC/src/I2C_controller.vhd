library ieee;
use ieee.std_logic_1164.all;



entity I2C_controller is
	generic(
		FREQ: integer := 50e6;
		DEVICE_ID_WR: std_logic_vector(7 downto 0) := "11010000";
		DEVICE_ID_RD: std_logic_vector(7 downto 0) := "11010001";
		reset_logic: std_logic := '1'
	);
	
	port(
		CLK50MHZ: in std_logic;
		CPU_RESETN: in std_logic;
		clk_out: out std_logic;
		SCL: out std_logic;
		SDA: inout std_logic		
	);
	
end entity;



architecture rtl of I2C_controller is

constant W_ADDRESS1: std_logic_vector(7 downto 0) := x"00";

signal i2c_dataToSend: std_logic_vector(7 downto 0);
signal CLK1MHZ: std_logic;
signal i2c_ack, internal_reset: std_logic;

signal SCL_internal: std_logic := '1';
signal SDA_internal: std_logic := '1';

--signal shiftConcluded: boolean := false;

type i2cStates is 
(INIT, START, WAIT1, WAIT2, WAIT3, NEXT_BIT, WAIT4, WAIT5, WAIT6, WAIT7, WAIT8, ACK1, STOP);

signal i2cVariable: i2cStates := INIT;

signal sda_delay: std_logic_vector(0 downto 0) := (others => '1');

signal counter_i2c: integer range 0 to 20 := 0;
signal data_bits: integer range 0 to 50 := 0;

begin

clk_out <= CLK1MHZ;

internal_reset <= not CPU_RESETN;

	SDA <= '0' when sda_delay(sda_delay'left) = '0' else 'Z';

    SCL_OUT_PROC : process(SCL_internal)
    begin
        if SCL_internal = '0' then
            SCL <= '0';  
        else
            SCL <= 'Z';     
        end if;
    end process;

    SDA_OUT_PROC : process(CLK1MHZ, internal_reset)
    begin
        if internal_reset = reset_logic then
            sda_delay <= (others => '1');            
		  elsif rising_edge(CLK1MHZ) then 
            sda_delay <=  sda_delay(sda_delay'left-1 downto 0) & SDA_internal;
        end if;        
    end process;


CL_PROC:
	process(CLK50MHZ, internal_reset)
		constant count_range: integer range 0 to FREQ := FREQ/(1e6*2);
		variable counter: integer range 0 to count_range := 0;
	begin
		if internal_reset = reset_logic then
			counter:= 0;
			CLK1MHZ <= '0';		 	
		elsif rising_edge(CLK50MHZ) then 
			if counter < (count_range-1) then
				counter := counter + 1;
				--CLK1MHZ <= '0';
			else	
				counter := 0;
				CLK1MHZ <= not CLK1MHZ;
			end if;
		end if;
	end process;
	
	
I2C_ENGINE_PROC:
	process(CLK1MHZ, internal_reset)
	
		procedure serialize(signal n_data: std_logic_vector(7 downto 0)) is
			variable pcounter: integer range 0 to 15 := 0;
		begin
			if pcounter = 0 then
				i2c_dataToSend <= n_data;
			elsif pcounter = 1 then
				SCL_internal <= '0';
				SDA_internal <= i2c_dataToSend(7);
				i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0';
			elsif pcounter = 8 then
				SCL_internal <= '1';
			elsif pcounter = 15 then
				SCL_internal <= '0';
				pcounter := 0;
				i2cVariable <= WAIT3;
			end if;
				pcounter := pcounter + 1;
		end procedure;
		
	begin
		if internal_reset = reset_logic then
			counter_i2c <= 0;
			data_bits <= 0;
			SDA_internal <= '1';	
			SCL_internal <= '1';
		elsif rising_edge(CLK1MHZ) then
			case i2cVariable is
				when INIT =>
					SDA_internal <= '1';	--pull bothe scl and sda lines for a start condition
					SCL_internal <= '1';	--pull bothe scl and sda lines for a start condition				
					if SCL_internal = '1' and sda_delay(0) = '1' then
						i2cVariable <= START;
					end if;
					
				when START =>
					SDA_internal <= '0'; --pull the sda line low to iniate the start condition
					counter_i2c <= 0;
					data_bits <= 0;	
					i2c_dataToSend <= DEVICE_ID_WR; -- load the slave address & R/W-bit ready to write into the holding buffer
					i2cVariable <= WAIT1; --wait for a bit period of 14us
		
----this is one clock pulse.....

				when WAIT1 =>									
					if counter_i2c < 7 then  --delay for 7us to satisfy the start condition hold time
						counter_i2c <= counter_i2c + 1;						
					else
						counter_i2c <= 0;
						SCL_internal <= '0'; -- pull the scl line low, now the start condition has completed after a 7us period	
						i2cVariable <= WAIT2;
					end if;
		
				when WAIT2 =>
					serialize(i2c_dataToSend);
					
				when WAIT3 =>
					SDA_internal <= '1'; --release the sda line to read the ack bit wait for atleast 3.45us for ack valid
					if counter_i2c < 7 then  --delay for 4us 
						counter_i2c <= counter_i2c + 1;				
					else					
						counter_i2c <= 0;
						SCL_internal <= '1';
						i2cVariable <= ACK1;
					end if;
	
				--read the acknowledge bit
				when ACK1 => 
					if SDA = '0' then	
						i2c_ack <= SDA; --read in the ACK bit			
						i2cVariable <= WAIT5;					
					--else 						
						--i2cVariable <= INIT; --if no ACK, no device detected. So go back to init
					end if;			

				when WAIT5 => 
					if counter_i2c < 2 then  --wait for additional 2us 
						counter_i2c <= counter_i2c + 1;				
					else					
						counter_i2c <= 0;
						SCL_internal <= '1'; -- set scl high
						i2cVariable <= WAIT6;
					end if;
				
				when WAIT6 =>
					if counter_i2c < 7 then  --delay for 7us to satisfy the start condition hold time
						counter_i2c <= counter_i2c + 1;						
					else
						counter_i2c <= 0;
						SCL_internal <= '0'; -- pull the scl line low	                    
						i2cVariable <= STOP;
					end if;
					
				when STOP =>
					SCL_internal <= '1'; -- set scl high
					if counter_i2c < 8 then --delay for 7us for the stop condition setup time
						counter_i2c <= counter_i2c + 1;
					else	
						counter_i2c <= 0;
						SDA_internal <= '1'; --set sda high
						--i2cVariable <= INIT;
					end if;	
	
				
--				when NEXT3 =>
--					if SDA = '1' then
--						SDA_internal <= '0';						
--						SCL_internal <= '1'; -- set scl high
--						i2c_dataToSend <= W_ADDRESS1; --now ready to load the word address
--						i2cVariable <= NEXT4;
--					end if;	
--						
--				--
--				when NEXT4 =>
--					SCL_internal <= '0'; -- set scl low
--					SDA_internal <= i2c_dataToSend(7);
--					i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --load the serial data to be sent into the i2c data register
--														                    --this also places bit7 (MSB first) of the data on the SDA line
--					i2cVariable <= SETUP2;
--
--				when SETUP2 =>			 --use 1us for the data input hold time
--					if counter_i2c < 4 then --wait for another 5us for the data input setup time. 
--						counter_i2c <= counter_i2c + 1; 	
--					elsif counter_i2c < 9 then --wait for another 5us for the high period of i2c clk 
--							counter_i2c <= counter_i2c + 1;
--							SCL_internal <= '1'; -- set scl high
--					elsif data_bits < 7 then --count the bits shifted out so far. 
--							data_bits <= data_bits + 1;
--							counter_i2c <= 0;
--							SCL_internal <= '0'; -- pull the scl line low
--							SDA_internal <= i2c_dataToSend(7);
--							i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift to the next bit
--					else
--							data_bits <= 0;
--							SDA_internal <= '1'; --release the sda line to read the ACK bit
--							i2cVariable <= NEXT5;  --go to next state if 8bits have been shifted out					
--					end if;	
--	
--				--read the acknowledge bit
--				when NEXT5 =>
--					if counter_i2c < 4 then --delay for 5us for the low period of i2c clk
--						counter_i2c <= counter_i2c + 1;
--					elsif counter_i2c < 9 then --wait for another 5us for the high period of i2c clk 
--						SCL_internal <= '1'; -- set scl high
--						counter_i2c <= counter_i2c + 1;							
--					else
--						counter_i2c <= 0;
--						SCL_internal <= '0'; -- pull the scl line low						
--						if data_bits < 32 then
--							if SDA = '0' then	
--								i2c_ack <= SDA; --read in the ACK bit
--								SDA_internal <= i2c_dataToSend(7);
--								i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --load the serial data to be sent into the i2c data register
--																									 --this also places bit7 (MSB first) of the data on the SDA line
--								--SDA_internal <= '0';
--								data_bits <= 0;
--								i2cVariable <= NEXT6;
--							end if;
--						else 						
--							i2cVariable <= INIT; --if no ACK, no device detected. So go back to init
--						end if;
--					end if;
--					
--				when NEXT6 =>
--					if SDA = '1' then
--						SDA_internal <= '0';
--						SCL_internal <= '1'; -- set scl high
--					--i2c_dataToSend <= W_ADDRESS1; --now ready to load the word address
--						i2cVariable <= NEXT7;
--					end if;
--					
--				--
--				when NEXT7 =>
--					SCL_internal <= '0'; -- set scl low
--					--SDA_internal <= i2c_dataToSend(7);
--					--i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --load the serial data to be sent into the i2c data register
--														                    --this also places bit7 (MSB first) of the data on the SDA line
--					i2cVariable <= RPT_START;					
--	
--				when RPT_START =>
--					SCL_internal <= '1'; -- set scl high
--					if counter_i2c < 4 then --delay for 5us for the stop condition setup time
--						counter_i2c <= counter_i2c + 1;
--					else	
--						counter_i2c <= 0;
--						SDA_internal <= '1'; --set sda high
--						i2cVariable <= NEXT8;
--					end if;
--					
--				when NEXT8 =>
--					if counter_i2c < 4 then --wait for another 5us for the data input setup time. 
--						counter_i2c <= counter_i2c + 1; 	
--					else
--						counter_i2c <= 0;
--						i2cVariable <= NEXT9;
--					end if;					
--					
--				when NEXT9 =>
--					SDA_internal <= '0'; --pull the sda line low				
--					if counter_i2c < 4 then  --delay for 5us to satisfy the start condition hold time
--						counter_i2c <= counter_i2c + 1;
--						i2c_dataToSend <= DEVICE_ID_RD; --slave address & R/W-bit ready to read
--					else
--						counter_i2c <= 0;
--						data_bits <= 0;
--						SCL_internal <= '0'; -- pull the scl line low to finally finish the start condition
--						SDA_internal <= i2c_dataToSend(7);
--						i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --load the serial data to be sent into the i2c data register
--														                    --this also places bit7 (MSB first) of the data on the SDA line
--						i2cVariable <= SETUP3;
--					end if;
--					
--					
--					
--					
--				when SETUP3 =>			        
--					if counter_i2c < 4 then --wait for another 5us for the data input setup time. 
--						counter_i2c <= counter_i2c + 1; 	
--					elsif counter_i2c < 9 then --wait for another 5us for the high period of i2c clk 
--							counter_i2c <= counter_i2c + 1;
--							SCL_internal <= '1'; -- set scl high
--					elsif data_bits < 7 then --count the bits shifted out so far. 
--							data_bits <= data_bits + 1;
--							counter_i2c <= 0;
--							SCL_internal <= '0'; -- pull the scl line low
--							SDA_internal <= i2c_dataToSend(7);
--							i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift to the next bit
--					else
--							data_bits <= 0;
--							SDA_internal <= '1'; --release the sda line to read the ACK bit
--							i2cVariable <= NEXT10;  --go to next state if 8bits have been shifted out					
--					end if;	
--	
--				--read the acknowledge bit
--				when NEXT10 =>
--					if counter_i2c < 4 then --delay for 5us for the low period of i2c clk
--						counter_i2c <= counter_i2c + 1;
--					elsif counter_i2c < 9 then --wait for another 5us for the high period of i2c clk 
--						SCL_internal <= '1'; -- set scl high
--						counter_i2c <= counter_i2c + 1;							
--					else
--						counter_i2c <= 0;
--						SCL_internal <= '0'; -- pull the scl line low						
--						if data_bits < 32 then
--							if SDA = '0' then	
--								i2c_ack <= SDA; --read in the ACK bit
--								SDA_internal <= i2c_dataToSend(7);
--								i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --load the serial data to be sent into the i2c data register
--																									 --this also places bit7 (MSB first) of the data on the SDA line
--								--SDA_internal <= '0';
--								data_bits <= 0;
--								i2cVariable <= SETUP4;
--							end if;
--						else 						
--							i2cVariable <= INIT; --if no ACK, no device detected. So go back to init
--						end if;
--					end if;
--					
--					
--				--read in 8bits of serial data	
--				when SETUP4 =>			        
--					if counter_i2c < 4 then --wait for another 5us for the data input setup time. 
--						counter_i2c <= counter_i2c + 1; 	
--					elsif counter_i2c < 9 then --wait for another 5us for the high period of i2c clk 
--							counter_i2c <= counter_i2c + 1;
--							SCL_internal <= '1'; -- set scl high
--					else
--							counter_i2c <= 0;							
--							i2cVariable <= NEXT11;
--					end if;		
--				
--				when NEXT11 =>
--					SDA_internal <= i2c_dataToSend(7);
--					i2c_dataToSend <= i2c_dataToSend(6 downto 0) & SDA; --clock in data from slave bit by bit
--					SCL_internal <= '0'; -- pull the scl line low
--					if data_bits < 7 then --count the bits shifted out so far. 
--							data_bits <= data_bits + 1;							
--							i2cVariable <= SETUP4;
--					else
--							data_bits <= 0;
--							i2cVariable <= NEXT12;  				
--					end if;
--					
--				
--			when NEXT12 => --send NACK
--				SDA_internal <= '1';
--					if counter_i2c < 4 then --wait for another 5us for the data input setup time. 
--						counter_i2c <= counter_i2c + 1; 	
--					elsif counter_i2c < 9 then --wait for another 5us for the high period of i2c clk 
--							counter_i2c <= counter_i2c + 1;
--							SCL_internal <= '1'; -- set scl high
--					else
--							counter_i2c <= 0;							
--							i2cVariable <= STOP;
--					end if;					
					
					
						
				
					
					
					
					
					
					
					
					
					
					
					
					
				
				--read in 8bits of serial data	
				-- when NEXT7 =>
					-- if counter < 4 then --delay for 5us for the low period of i2c clk
						-- counter := counter + 1;
					-- elsif counter = 4 then	
						-- SCL_internal <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						-- i2c_dataToSend <= i2c_dataToSend(6 downto 0) & SDA; --clock in data from slave bit by bit
						-- counter := counter + 1;
						
					-- elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						-- counter := counter + 1;
					-- else
						-- counter := 0;
						-- i2c_clk <= '0';
						-- SCL_internal <= '1'; -- pull the scl line low
						-- if data_bits < 7 then --count the bits shifted out so far. 
							-- data_bits := data_bits + 1;
							--i2cVariable <= NEXT7;
						-- else
							-- data_bits <= 0;
							--i2c_data_en <= '0'; --release the sda line to generate a NACK
							-- i2cVariable <= NACK;  --go to next state if 8bits have been shifted out
						-- end if;						
					-- end if;			
		
	
	
	

			
					
					
					
				----generate the repeated start condition	
				-- when SETUP3 =>	
					-- i2c_data_en <= '0'; --first set both lines high
					-- SCL_internal <= '0';
					-- i2cVariable <= RPT_START;
				
				-- when RPT_START =>
					-- SDA_internal <= '0';
					-- i2c_data_en <= '1';  --pull the sda line low to initiate the start condition
					
					-- if counter < 4 then  --delay for 5us to satisfy the start condition hold time
						-- counter := counter + 1;
					-- else
						-- counter := 0;
						-- i2c_clk <= '0';
						-- SCL_internal <= '1'; -- pull the scl line low to finally finish the rpt_start condition
						-- i2c_dataToSend <= DEVICE_ID & CHIP_SELECT_BITS & RD; --slave address & R/W-bit set to read
						-- i2cVariable <= SETUP4;
					-- end if;	
					
					
				-- when SETUP4 =>			 --use 1us for the data input hold time
					-- SDA_internal <= i2c_dataToSend(7); --load the serial data to be sent into the i2c data register
												--------this also places bit7 (MSB first) of the data on the SDA line 
					-- i2cVariable <= NEXT5; 					

				
				----clock in 8 bits of data to the slave
				-- when NEXT5 =>		
					-- if counter < 3 then --wait for another 4us for the data input setup time. 
						-- counter := counter + 1; --this added to the 1us from previous state gives a total of 5us	
					-- else						--for the low period of the i2c clock.
						-- SCL_internal <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						
						-- if counter < 7 then --wait for another 5us for the high period of i2c clk 
							-- counter := counter + 1;
						-- else
							-- counter := 0;
							-- i2c_clk <= '0';
							-- SCL_internal <= '1'; -- pull the scl line low
							-- i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift to the next bit							
							
							-- if data_bits < 7 then --count the bits shifted out so far. 
								-- data_bits := data_bits + 1;
								-- i2cVariable <= SETUP4;  -- keep looping until 8bits are out 
							-- else
								-- data_bits <= 0;
								-- i2c_data_en <= '0'; --release the sda line to read the ACK bit
								-- i2cVariable <= NEXT6;  --go to next state if 8bits have been shifted out
							-- end if;
						-- end if;
					-- end if;
				
				--read the acknowledge bit
				-- when NEXT6 =>
					-- if counter < 4 then --delay for 5us for the low period of i2c clk
						-- counter := counter + 1;
					-- else	
						-- SCL_internal <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						-- i2c_ack <= SDA; --read in the ACK bit	
						-- if counter < 8 then --wait for another 5us for the high period of i2c clk 
							-- counter := counter + 1;
						-- else
							-- counter := 0;
							-- if i2c_ack = '0' then --check the ACK bit
								-- i2c_clk <= '0';
								-- SCL_internal <= '1'; -- pull the scl line low
								-- i2cVariable <= NEXT7;
							-- else	
								-- i2cVariable <= INIT; --if no ACK, something wrong. So go back to init								
							-- end if;
						-- end if;					
					-- end if;					
					
					
				--read in 8bits of serial data	
				-- when NEXT7 =>
					-- if counter < 4 then --delay for 5us for the low period of i2c clk
						-- counter := counter + 1;
					-- elsif counter = 4 then	
						-- SCL_internal <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						-- i2c_dataToSend <= i2c_dataToSend(6 downto 0) & SDA; --clock in data from slave bit by bit
						-- counter := counter + 1;
						
					-- elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						-- counter := counter + 1;
					-- else
						-- counter := 0;
						-- i2c_clk <= '0';
						-- SCL_internal <= '1'; -- pull the scl line low
						-- if data_bits < 7 then --count the bits shifted out so far. 
							-- data_bits := data_bits + 1;
							--i2cVariable <= NEXT7;
						-- else
							-- data_bits <= 0;
							--i2c_data_en <= '0'; --release the sda line to generate a NACK
							-- i2cVariable <= NACK;  --go to next state if 8bits have been shifted out
						-- end if;						
					-- end if;
					
				-- when NACK =>
					-- i2c_data_en <= '0'; --disable the tri-state control to release the sda line to generate a NACK
					-- if counter < 4 then --delay for 5us for the low period of i2c clk
						-- counter := counter + 1;
					-- elsif counter = 4 then	
						-- SCL_internal <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
						-- counter := counter + 1;
						
					-- elsif counter < 9 then --wait for another 5us for the high period of i2c clk 
						-- counter := counter + 1;
					-- else
						-- counter := 0;
						-- i2c_clk <= '0';
						-- SCL_internal <= '1'; -- pull the scl line low
						-- SDA_internal <= '0';
						-- i2c_data_en <= '1';  --pull the sda line low
						-- i2cVariable <= STOP; --generate the stop condition
					-- end if;
					
				-- when STOP =>
					-- SCL_internal <= '0'; -- set scl high by the pullup resistor by disabling the tri-state control
					-- if counter < 4 then --delay for 5us for the stop condition setup time
						-- counter := counter + 1;
					-- else	
						-- counter := 0;
						-- i2c_data_en <= '0'; --set sda high by disabling the tri-state control
					-- end if;
					
				when others =>
					i2cVariable <= INIT;
						

			end case;
		
		end if;
		
	
	
	end process;

end architecture;