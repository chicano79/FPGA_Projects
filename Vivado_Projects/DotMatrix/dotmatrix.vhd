library ieee;
use ieee.std_logic_1164.all;



entity dotmatrix is
	port(
		clk_100MHz: in std_logic;
		GPIO: out std_logic_vector(15 downto 0)	
	);

end entity;



architecture rtl of dotmatrix is

type ledmatrix is array(0 to 7) of std_logic_vector(7 downto 0);
signal fontz: ledmatrix := (x"00", x"30", x"40", x"40", x"40", x"3F", x"00", x"00");

type ledStates is (line1, line2, line3, line4, line5, line6, line7, line8);
signal scanVariable: ledStates := line1;

signal clk_500Hz: std_logic := '0';

begin

TWO_ms_BLK:
	process(clk_100MHz)
		constant count_range: integer range 0 to 100e6 := 100e6/500;
		variable counter: integer range 0 to count_range := 0;	
	begin
		if rising_edge(clk_100MHz) then
			if counter < count_range-1 then 
				counter := counter + 1;
				clk_500Hz <= '0';
			else
				counter := 0;
				clk_500Hz <= '1';			
			end if;		
		end if;	
	end process;
	
MATRIX_SCAN:
	process(clk_500Hz)
	
	begin
		if rising_edge(clk_500Hz) then
			case scanVariable is
				when line1 =>
					GPIO(7 downto 0) <= fontz(0);
					GPIO(15 downto 8) <= (8 => '0', others => '1');
					scanVariable <= line2;
			
				when line2 =>
					GPIO(7 downto 0) <= fontz(1);
					GPIO(15 downto 8) <= (9 => '0', others => '1');
					scanVariable <= line3;
					
					
				when line3 =>
					GPIO(7 downto 0) <= fontz(2);
					GPIO(15 downto 8) <= (10 => '0', others => '1');
					scanVariable <= line4;
					
				when line4 =>
					GPIO(7 downto 0) <= fontz(3);
					GPIO(15 downto 8) <= (11 => '0', others => '1');
					scanVariable <= line5;
					
				when line5 =>
					GPIO(7 downto 0) <= fontz(4);
					GPIO(15 downto 8) <= (12 => '0', others => '1');
					scanVariable <= line6;
					
				when line6 =>
					GPIO(7 downto 0) <= fontz(5);
					GPIO(15 downto 8) <= (13 => '0', others => '1');
					scanVariable <= line7;
					
				when line7 =>
					GPIO(7 downto 0) <= fontz(6);
					GPIO(15 downto 8) <= (14 => '0', others => '1');
					scanVariable <= line8;
					
				when line8 =>
					GPIO(7 downto 0) <= fontz(7);
					GPIO(15 downto 8) <= (15 => '0', others => '1');
					scanVariable <= line1;
					
				when others =>
					scanVariable <= line1;			
			end case;		
		end if;	
	end process;


end architecture;