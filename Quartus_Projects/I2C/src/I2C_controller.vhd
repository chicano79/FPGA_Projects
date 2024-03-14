library ieee;
use ieee.std_logic_1164.all;



entity I2C_controller is
	generic(
		FREQ: integer := 100e6
		DEVICE_ID: std_logic_vector(3 downto 0) := "1010";
		CHIP_SELECT_BITS: std_logic_vector(2 downto 0) := "111";
		WR: std_logic := '0';
		RD: std_logic = '1'
	);
	
	port(
		clk_100MHz: in std_logic;
		rst: in std_logic;
		SQ_in: in std_logic;
		SCL: inout std_logic;
		SDA: inout std_logic	
	);
	
end entity;



architecture rtl of I2C_controller is

signal i2c_data: std_logic_vector(7 downto 0);
signal i2c_clk: std_logic := '1';
signal i2c_data_en: std_logic := '0';
signal clk_1MHz: std_logic;

type i2cStates is (INIT, START, NEXT1, STOP)

signal i2cVariable: i2cStates := START;

begin

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
		variable counter: integer range 0 to 1e6 := 0;
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
					i2cVariable <= START;
					
				when START =>
					i2c_data <= '0';
					i2c_data_en <= '1';
					
					if counter < (5-1) then
						counter := counter + 1;
					else
						counter := 0;
						i2c_clk <= '0';
						i2c_clk_en <= '1';
						
						i2c_data <= DEVICE_ID & CHIP_SELECT_BITS & WR; --slave address
						
						i2cVariable <= NEXT1;
					end if
					
				when NEXT1 =>
						i2c_data <= i2c_data(6 downto 0) & '0';
			
			
			
			
			end case;
		
		
		
		
		
		
		
		
		end if;
		
	
	
	end process;





















end architecture;