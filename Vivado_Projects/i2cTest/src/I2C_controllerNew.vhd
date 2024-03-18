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
		
		initiateStart: in std_logic;
		initiateStop: in std_logic;
		initiateACKfromMaster: in std_logic;
		
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
signal data_bit_out: std_logic;
signal data_bit_enable: std_logic := '0';
signal some_clk, i2c_clk_bit: std_logic;
signal i2c_ack, clk_pulsed: std_logic;

signal data_bit_in: std_logic;

signal i2c_clk_enable, start_stopCond, clk_init: std_logic := '0';

type i2c_states is (IDLEx, START1, START2, START3, SEND_DATA1, SEND_DATA2, 
SEND_DATA3, SEND_DATA4, SEND_DATA5, SEND_DATA6, SEND_ACK1, SEND_ACK2, SEND_ACK3, GET_DATA1, GET_DATA2, GET_DATA3, STOP1, STOP2, STOP3);


signal I2C_event_variable: i2c_states := IDLEx;


begin

SDA <= data_bit_out when data_bit_enable = '1' else 'Z';
data_bit_in <= SDA when data_bit_enable = '0' else 'Z';

SCL <= i2c_clk_bit;

K_PROC:
	process(clk_MAIN, rst)
		constant count_range: integer range 0 to FREQ := FREQ/(I2C_FREQ * 100);
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
			i2c_clk_bit <= '0';
		elsif clk_init = '1' then
			counter := 0;
			i2c_clk_bit <= '0';
		elsif start_stopCond = '1' then
			i2c_clk_bit <= '1';
		elsif rising_edge(clk_MAIN) and i2c_clk_enable = '1' then 
			if counter < (count_range-1) then
				counter := counter + 1;
				i2c_clk_bit <= '0';
				clk_pulsed <= '0';
			elsif counter < (2*(count_range-1)) then
				counter := counter + 1;
				i2c_clk_bit <= '1';
			else
				counter := 0;
				i2c_clk_bit <= '0';
				clk_pulsed <= '1';
			end if;
		end if;
	end process;	
	
checkin:
	process(clk_MAIN)
	
	
	begin
		if rising_edge(clk_MAIN) then
			if initiateStart = '1' then
				I2C_event_variable <= START1;			
			elsif initiateStop = '1' then
				I2C_event_variable <= STOP1;
			elsif initiate8bitDataTransfer = '1' then
				I2C_event_variable <= SEND_DATA1;
			elsif initiateACKfromMaster = '1' then
				I2C_event_variable <= SEND_ACK1;
			elsif fetchI2Cdata = '1' then
				I2C_event_variable <= GET_DATA1;
			else 
				I2C_event_variable <= IDLEx;
		end if;
	end process;
	
	
I2C_ENGINE_PROC:
	process(some_clk, rst) --this clock is coming at 10MHz that's 100 ns.
		variable counter: integer range 0 to 100 := 0;
		variable data_bits: integer range 0 to 10 := 0;
	begin
		if rst = '0' then
			counter := 0;
			data_bits := 0;
			I2CeventComplete <= '0'; --no i2c event has completed
			i2c_clk_enable <= '0';
			data_bit_enable <= '0';	--pull the SDA line high
			
		elsif rising_edge(some_clk) then
			case I2C_event_variable is
				--idle state
				when IDLEx =>
					counter := 0;
					data_bits := 0;
				
				--initiate start condition
				when START1 =>
					start_stopCond <= '1';
					i2c_clk_enable <= '0';
					data_bit_enable <= '0';	--pull the SDA line high
					I2CeventComplete <= '0'; --i2c event not completed yet
					if counter < 1 then
						counter := counter + 1;
					else
						counter := 0;
						data_bit_out <= '0';
						data_bit_enable <= '1';  --falling edge of the sda line
						I2C_event_variable <= START2;					
					end if;					
				when START2 =>
					if counter < 49 then 
						counter := counter + 1;
					else	
						counter := 0;
						start_stopCond <= '0';
						clk_init <= '1';
						I2C_event_variable <= START3;
					end if;				
				when START3 =>
					clk_init <= '0';
					I2CeventComplete <= '1'; --i2c event has now completed
					I2C_event_variable <= IDLEx;
					
					
				--8bit data sent to slave				
				when SEND_DATA1 =>
					data_bits := 0;
					i2c_dataToSend <= I2C_Input_Data;--get the 8 bits of data to send to slave
					ACKready <= '0'; --acknowledgement bit not ready yet
					I2CeventComplete <= '0'; --i2c event not completed yet
					
					start_stopCond <= '0';
					clk_init <= '0';
					i2c_clk_enable <= '0';					
					I2C_event_variable <= SEND_DATA2;
				
				when SEND_DATA2 => 
					i2c_dataToSend <= i2c_dataToSend(6 downto 0) & '0'; --shift the bits
					data_bit_out <= i2c_dataToSend(7);
					i2c_clk_enable <= '1'
					I2C_event_variable <= SEND_DATA3;					
				when SEND_DATA3 =>	
					if clk_pulsed <= '1'; then
						i2c_clk_enable <= '0';
						clk_init <= '1';
						I2C_event_variable <= SEND_DATA4;
					end if;
				when SEND_DATA4 =>
					clk_init = '0';
					if data_bits < 7 then --count the bits shifted out so far. 
						data_bits := data_bits + 1;-- keep looping until 8bits are out 
						I2C_event_variable <= SEND_DATA2;
					else
						data_bits := 0;
						data_bit_enable <= '0'; --float the sda line to read the ACK bit
						i2c_clk_enable <= '1'
						I2CeventComplete <= '1'; --i2c event has now completed
						I2C_event_variable <= SEND_DATA5;
						--I2C_event_variable <= IDLEx;
					end if; 					
				when SEND_DATA5 =>
					if clk_pulsed <= '1'; then
						i2c_clk_enable <= '0';
						i2c_ack <= data_bit_in; --read in the ACK bit
						clk_init <= '1';						
						I2C_event_variable <= SEND_DATA6;
					end if;					
				when SEND_DATA6 =>
					clk_init <= '0';
					ACKfromSlave <= i2c_ack; --send out the acknowledge value
					ACKready <= '1';
					I2C_event_variable <= IDLEx;

					
				--send acknowledgment bit					
				when SEND_ACK1 =>
					data_bit_out <= ACKtype;
					data_bit_enable <= not ACKtype;  --set the ack type on the sda line
					i2c_clk_enable <= '1';
					I2CeventComplete <= '0'; --i2c event not completed yet
					I2C_event_variable <= SEND_ACK2;				
				when SEND_ACK2 =>
					if clk_pulsed <= '1'; then
						i2c_clk_enable <= '0';
						clk_init <= '1';						
						I2C_event_variable <= SEND_ACK3;
					end if;				
				when SEND_ACK3 =>
					clk_init <= '0';
					I2CeventComplete <= '1'; --i2c event has now completed
					I2C_event_variable <= IDLEx;
	
				
				--get 8bit data from slave
				when GET_DATA1 =>
					data_bits := 0;
					data_bit_enable <= '0'; --float the sda line to allow slave send data					
					dataAvailable <= '0'; --i2c data not available yet
					i2c_clk_enable = '1';
					I2CeventComplete <= '0'; --i2c event not completed yet
					I2C_event_variable <= GET_DATA2;				
				when GET_DATA2 =>
					if clk_pulsed <= '1'; then
						i2c_dataToSend <= i2c_dataToSend(6 downto 0) & data_bit_in; --clock in data from slave bit by bit
						if data_bits < 7 then --count the bits shifted out so far. 
							data_bits := data_bits + 1;
						else
							data_bits := 0;
							i2c_clk_enable <= '0';
							clk_init <= '1';
							I2C_Output_Data <= i2c_dataToSend;
							I2C_event_variable <= GET_DATA3;							
						end if;
					end if;				
				when GET_DATA3 =>
					clk_init <= '0';
					I2CeventComplete <= '1'; --i2c event has now completed
					dataAvailable <= '1'; --i2c data available now
					I2C_event_variable <= IDLEx;
					
					
				--initiate stop condition	
				when STOP1 =>	
					start_stopCond <= '1';
					i2c_clk_enable <= '0';
					data_bit_out <= '0';
					data_bit_enable <= '1';  --pull the sda line low
					I2CeventComplete <= '0'; --i2c event not completed yet
					I2C_event_variable <= STOP2;
				when STOP2 =>	
					if counter < 49 then 
						counter := counter + 1;
					else	
						counter := 0;
						data_bit_enable <= '0';	--pull the SDA line high
						I2C_event_variable <= STOP3;
					end if;
				when STOP3 =>
					start_stopCond <= '0';
					I2CeventComplete <= '1'; --i2c event has now completed					
					I2C_event_variable <= IDLEx;
					
				when others =>
					I2C_event_variable <= IDLEx;					
			
			end case;		
			
		end if;

	end process;
	

end architecture;