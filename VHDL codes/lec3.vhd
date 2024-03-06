library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity SevenSegment is
	port
	(		
		clk_50 : in std_logic;		
		segment : out std_logic_vector(6 downto 0) := "1000000"  --this describes segment as: gfedcba
	);
end entity;


architecture behaviour of SevenSegment is

signal clk_counter: unsigned(23 downto 0) := x"000000";
signal counter  : integer range 0 to 9 := 0;
signal tick: std_logic;

begin

tick <= clk_counter(clk_counter'left);

	process(clk_50) 
	
	begin
		if clk_50'event and clk_50 = '1' then
			clk_counter <= clk_counter + 1;	
		end if;	
	end process;

	process (tick)
	begin
		if rising_edge(tick) then
			counter <= counter + 1;
			if counter >= 9 then
				counter <= 0;
			end if;	
		
			case counter is
		
				when 0 =>
					segment <= "1000000";
				when 1 =>
					segment <= "1111001";
				when 2 =>
					segment <= "0100100";
				when 3 =>
					segment <= "0110000";
				when 4 =>
					segment <= "0011001";
				when 5 =>
					segment <= "0010010";
				when 6 =>
					segment <= "0000010";
				when 7 =>
					segment <= "1111000";
				when 8 =>
					segment <= "0000000";
				when 9 =>
					segment <= "0010000";
				
			end case;	
		end if;
	end process;


end architecture;