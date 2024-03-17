library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity I2C_controller_tb is
end entity;


architecture behavioural of I2C_controller_tb is

constant FREQ: integer := 50e6;
constant I2C_FREQ: integer := 100e3;
constant FREQ_period: time := 1 sec / FREQ;
constant DEVICE_ID: std_logic_vector(3 downto 0) := "1010"; 
constant CHIP_SELECT_BITS : std_logic_vector(2 downto 0) := "111";
constant WR: std_logic := '0';
constant RD: std_logic := '1';

constant W_ADDRESS: std_logic_vector(7 downto 0) := x"01";
constant info_data: std_logic_vector(7 downto 0) := x"AA";

signal source_clk: std_logic := '0';
signal rst: std_logic;
signal SDA: std_logic := 'H';
signal SCL: std_logic;
--signal I2C_data: std_logic_vector(7 downto 0);

signal initiateStart: std_logic;
signal initiateStop: std_logic;
signal initiateACKfromMaster: std_logic;

signal ACKtype: std_logic;  --master can send either a ACK('0') or a NACK('1')

signal initiate8bitDataTransfer: std_logic;

signal I2CcmdProcessing: std_logic;
signal I2CeventComplete: std_logic;

signal I2C_Input_Data: std_logic_vector(7 downto 0);
signal I2C_Output_Data: std_logic_vector(7 downto 0);

signal sample_Data: std_logic_vector(7 downto 0);

signal ACKready: std_logic;
signal ACKfromSlave: std_logic;

signal dataAvailable: std_logic;
signal fetchI2Cdata: std_logic;





begin

source_clk <= not source_clk after 10 ns; --main clock

DUT: entity work.I2C_controllerTest(rtl)
	generic map(
		FREQ => FREQ,
		I2C_FREQ =>I2C_FREQ
	)
	
	port map(
		clk_MAIN => source_clk,
		rst => rst,
		
		
		initiateStart => initiateStart,
		initiateStop => initiateStop,
		initiateACKfromMaster => initiateACKfromMaster,
		
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
	

process



begin
	wait for 10 ns; --initiate a reset
	rst <= '0';
	wait for 20 ns; --initiate a reset
	rst <= '1';
	
	--test the start condition;
	initiateStart <= '1';	
	wait until I2CcmdProcessing = '1';
	wait until I2CeventComplete = '1';	
	initiateStart <= '0';
	
	report "Start Completed Successfully"
	severity note; 

	wait for 20 us;
	
	--test the 8 bit data sending to slave with acknowledgement reply
	I2C_Input_Data <= info_data;
	initiate8bitDataTransfer <= '1';
	wait until I2CcmdProcessing = '1';
	
	for i in 0 to 7 loop
		wait until rising_edge(SCL);
		sample_Data <= sample_Data(6 downto 0) & SDA;
	end loop;
	
	wait until I2CeventComplete = '1';
	wait for 3 us;
	SDA <= '0'; --initiate ACK
	wait for 3 us;
	SDA <= 'H';
	
	wait until ACKready = '1';
	initiate8bitDataTransfer <= '0';
	
	
	if sample_Data = I2C_Input_Data then
		report "Data Transfer Completed Successfully"
		severity note;
	else	
		report "Error Data received mismatch"
		severity error;	
	end if;
	
	wait for 20 us;
	
	--test stop condition
	initiateStop <= '1';	
	wait until I2CcmdProcessing = '1';
	wait until I2CeventComplete = '1';	
	initiateStop <= '0';
	
	report "Stop Completed Successfully"
	severity note;
	
	
	wait;	
	


end process;




end architecture;