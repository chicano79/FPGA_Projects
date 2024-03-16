library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity I2C_controller_tb is
end entity;


architecture behavioural of I2C_controller_tb is

constant FREQ: integer := 50e6;
constant FREQ_period: time := 1 sec / FREQ;
constant DEVICE_ID: std_logic_vector(3 downto 0) := "1010"; 
constant CHIP_SELECT_BITS : std_logic_vector(2 downto 0) := "111";
constant WR: std_logic := '0';
constant RD: std_logic := '1';
constant W_ADDRESS: std_logic_vector(7 downto 0) := x"01";
constant info_data: std_logic_vector(7 downto 0) := x"AA";

signal source_clk: std_logic := '0';
signal rst, SQ_in: std_logic;
signal SDA: std_logic := 'H';
signal SCL: std_logic;
signal I2C_data: std_logic_vector(7 downto 0);




begin

source_clk <= not source_clk after 10 ns; --main clock

DUT: entity work.I2C_controller(rtl)
	generic map(
		FREQ => FREQ,
		DEVICE_ID => DEVICE_ID,
		CHIP_SELECT_BITS => CHIP_SELECT_BITS,
		WR => WR, 
		RD => RD
	)
	
	port map(
		clk_MAIN => source_clk,
		rst => rst,
		SQ_in => SQ_in,
		SCL => SCL,
		SDA => SDA,
		W_ADDRESS => W_ADDRESS
	);
	

process



begin
	wait for 10 ns; --initiate a reset
	rst <= '0';
	wait for 20 ns; --initiate a reset
	rst <= '1';
	
	--wait until SCL = '1' and SDA = '1';
	
	wait until falling_edge(SDA);
	
	wait until falling_edge(SCL);
					
	for i in 7 downto 0 loop  --read in the device address byte
		wait until rising_edge(SCL);
		I2C_data(i) <= SDA;				
	end loop;
	
	wait until falling_edge(SCL);
	
	if I2C_data /= DEVICE_ID & CHIP_SELECT_BITS & WR then
		assert I2C_data = DEVICE_ID & CHIP_SELECT_BITS & WR
		report "Wrong Slave address."
		severity error;
	else	
		--if SCL = '0' then 
			wait for 1 us; 
			SDA <= '0';  --generate the ACK bit
			wait for 8 us;
			SDA <= 'H';					
		--end if;
		
		wait until falling_edge(SCL);
		
		for i in 7 downto 0 loop --read in the word address byte
			wait until rising_edge(SCL);
			I2C_data(i) <= SDA;				
		end loop;
		
		wait until falling_edge(SCL);
		
		if I2C_data /= x"01" then
			assert I2C_data = x"01"
			report "Wrong Word address."
			severity error;
		else	
		--	if SCL = '0' then 
				wait for 1 us; 
				SDA <= '0';  --generate the ACK bit
				wait for 8 us;
				SDA <= 'H';					
		--	end if;
			
			--wait to detect the repeated condition
			wait until SCL = '1' and SDA = '1';

			wait until falling_edge(SDA);

			wait until falling_edge(SCL);
			
					
			for i in 7 downto 0 loop  --read in the device address byte
				wait until rising_edge(SCL);
				I2C_data(i) <= SDA;				
			end loop;
			
			wait until falling_edge(SCL);
			
			if I2C_data /= DEVICE_ID & CHIP_SELECT_BITS & RD then
				assert I2C_data = DEVICE_ID & CHIP_SELECT_BITS & RD
				report "Wrong Slave address."
				severity error;
			else	
			--	if SCL = '0' then 
					wait for 1 us; 
					SDA <= '0';  --generate the ACK bit
					wait for 8 us;
					SDA <= 'H';					
			--	end if;
			
			--wait until falling_edge(SCL);
				
				for i in 7 downto 0 loop --send out data byte	
					wait until falling_edge(SCL);
					wait for 1 us;
					SDA <= info_data(i);
					--wait until rising_edge(SCL);
					--wait for 1 us;											
				end loop;
				
				wait;  --TODO check for NACK and stop bits
				
			end if;
		end if;
	end if;

end process;




end architecture;