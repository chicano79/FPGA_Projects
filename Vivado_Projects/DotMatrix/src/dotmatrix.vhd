library ieee;
use ieee.std_logic_1164.all;


entity dotmatrix is
	port(
		clk_100MHz: in std_logic;
		GPIO: out std_logic_vector(0 to 15)	
	);
end entity;


architecture rtl of dotmatrix is
type ledmatrix is array(0 to 7) of std_logic_vector(7 downto 0);
type plentyledmatrix is array(0 to 1) of ledmatrix; 
--signal fontz: ledmatrix := (x"18", x"3c", x"66", x"66", x"7e", x"7e", x"66", x"66");

signal displayfont: plentyledmatrix := ( (x"00", x"7E", x"11", x"11", x"11", x"7E", x"00", x"00"),
							       (x"00", x"7F", x"49", x"49", x"49", x"36", x"00", x"00") );

type ledStates is (line1, line2, line3, line4, line5, line6, line7, line8);
signal scanVariable: ledStates := line1;

signal clk_500Hz, clk_2Hz: std_logic := '0';


begin

TWO_SEC_DELAY_BLK:
	process(clk_100MHz)
		variable counter: integer range 0 to 100e6 := 0;	
	begin	
		if rising_edge(clk_100MHz) then
			if counter < ( (100e6/2)-1 ) then
				counter := counter + 1;
				clk_2Hz <= '0';
			else
				counter := 0;
				clk_2Hz <= '1';
			end if
		end if
	end process;

TWO_MS_BLK:
	process(clk_100MHz)
		variable counter: integer range 0 to 100e6 := 0;	
	begin	
		if rising_edge(clk_100MHz) then
			if counter < ( (100e6/500)-1 ) then
				counter := counter + 1;
				clk_500Hz <= '0';
			else
				counter := 0;
				clk_500Hz <= '1';
			end if
		end if
	end process;
	
DISPLAY_SCAN:
	process(clk_500Hz)
	
	begin
		if rising_edge(clk_500Hz) then
	FSM:
			case scanVariable is
				when line1 =>
					GPIO(0 to 7) <= fontz(0)
					GPIO(8 to 15) <= (8 => '0', others => '1');
					scanVariable <= line2;
					
				when line2 =>
					GPIO(0 to 7) <= fontz(1)
					GPIO(8 to 15) <= (9 => '0', others => '1');
					scanVariable <= line3;
					
				when line3 =>
					GPIO(0 to 7) <= fontz(2)
					GPIO(8 to 15) <= (10 => '0', others => '1');
					scanVariable <= line4;

				when line4 =>
					GPIO(0 to 7) <= fontz(3)
					GPIO(8 to 15) <= (11 => '0', others => '1');
					scanVariable <= line5;

				when line5 =>
					GPIO(0 to 7) <= fontz(4)
					GPIO(8 to 15) <= (12 => '0', others => '1');
					scanVariable <= line6;

				when line6 =>
					GPIO(0 to 7) <= fontz(5)
					GPIO(8 to 15) <= (13 => '0', others => '1');
					scanVariable <= line7;

				when line7 =>
					GPIO(0 to 7) <= fontz(6)
					GPIO(8 to 15) <= (14 => '0', others => '1');
					scanVariable <= line8;

				when line8 =>
					GPIO(0 to 7) <= fontz(7)
					GPIO(8 to 15) <= (15 => '0', others => '1');
					scanVariable <= line1;

				when others =>
					GPIO(8 to 15) <= (others => '1');
					scanVariable <= line1;
					
			end case;		
		end if;
		
	end process;




end architecture;