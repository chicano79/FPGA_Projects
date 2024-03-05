library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity up_counter is
	generic(
		FREQ: integer := 50e6
	);
	
	port(
		clk_50MHz, rst_main: in std_logic; 
		SEG0, SEG1: out std_logic_vector(0 to 6)	--7 segment display output segments a to g
	);
end entity;

architecture rtl of up_counter is

constant COUNT_RANGE: integer := FREQ/(2 * 1);

type bcd_count is array(0 to 1) of integer range 0 to 9;


signal bcd_data: bcd_count;
--signal counter_bits: unsigned(7 downto 0);
signal counter_clk: std_logic_vector(1 downto 0) := "00";
signal scaler: integer range 0 to COUNT_RANGE := 0;


	component bcd_counter is
		port(
			clk, rst: in std_logic;
			Q: out integer range 0 to 9
		);
	end component;
	
	component bcd_decoder is
		port(
			D: in integer range 0 to 9; --bcd input 
			Q: out std_logic_vector(0 to 6)	--7 segment display output segments a to g
		);
	end component;

begin

counter_clk(1) <= not( to_unsigned(bcd_data(0), 4)(3) and not(to_unsigned(bcd_data(0), 4)(2)) and not(to_unsigned(bcd_data(0), 4)(1)) and to_unsigned(bcd_data(0), 4)(0) );
	
	COUNTER_INST1: bcd_counter
		port map(
			clk => counter_clk(0),
			rst => rst_main,
			Q => bcd_data(0)		
		);
		
	DECODER_INST1: bcd_decoder
		port map(
			D => bcd_data(0),			
			Q => SEG0		
		);
		
		
	COUNTER_INST2: bcd_counter
		port map(
			clk => counter_clk(1),
			rst => rst_main,
			Q => bcd_data(1)		
		);
		
	DECODER_INST2: bcd_decoder
		port map(
			D => bcd_data(1),			
			Q => SEG1		
		);
		
COUNTER_PROC: process(clk_50MHz)
	begin
		if rising_edge(clk_50MHz) then
			if scaler < COUNT_RANGE then
				scaler <= scaler + 1;
			else	
				scaler <= 0;
				counter_clk(0) <= not counter_clk(0);			
			end if;	
		end if;
	end process;

end architecture;