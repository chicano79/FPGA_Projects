library ieee;
use ieee.std_logic_1164.all;


entity movingText is
	generic(
		FREQ: natural := 50000000;  --50MHz
		--FREQ_74HC595: natural := 15000000;
		--REFRESH_RATE: positive range 1 to 32 := 10; --value in ms 
		DISPLAY_LENGTH: positive range 1 to 64 := 32	
	);	
	
	port(
		CLK_50MHz: in std_logic;
		LEDR: out std_logic_vector(0 to 9) := (others => '0');
		--RESET: in std_logic;
		GPIO: out std_logic_vector(0 to 19)	:= (others => '0')
	);

end entity;


architecture rtl of movingText is

constant message_info: string(1 to 63) := "Welcome to 7067CEM: FPGA-Based Digital System Design.          ";
signal ascii_char: character := message_info(1); --signal fetching each character of the message
signal char_font_select: integer range 0 to 255 := 0; --signal to select font pattern from the font array according to the character fetched

signal shiftRegisterClk, CHAR_CLK: std_logic; --clock controlling the scanning of the screen area
signal serial_data: 					 std_logic := '0'; --74HC595 serial input data
signal output_enable: 				 std_logic := '1'; --74HC595 output enable control
signal parallel_load: 			    std_logic := '0'; --74HC595 parallel load control
signal serial_clk: 				    std_logic := '0'; --74HC595 serial input clock
signal row_driver: 				    std_logic_vector(7 downto 0) := (others => '0'); --signal to control the sequential lighting of the display rows

type SCAN_STATE is (LOAD1, CLOCK1, SHIFT1, SHOW1, 
					LOAD2, CLOCK2, SHIFT2, SHOW2, 
					LOAD3, CLOCK3, SHIFT3, SHOW3, 
					LOAD4, CLOCK4, SHIFT4, SHOW4, 
					LOAD5, CLOCK5, SHIFT5, SHOW5,
					LOAD6, CLOCK6, SHIFT6, SHOW6,
					LOAD7, CLOCK7, SHIFT7, SHOW7,
					LOAD8, CLOCK8, SHIFT8, SHOW8
					); --states in sending out data into the external 74HC595 network
					
signal scanStateVariable: SCAN_STATE := LOAD1;

type eightby7 is array(0 to 7) of std_logic_vector(6 downto 0);  --representing font pattern as displayed
																					  --on screen. This is an array of 8 elements each element is 7-bits
																					  --the font has dimensions: 8x7 (8-rows x 7-columns)

signal singleDisplayChar: eightby7 := (others => (others => '0')); -- creating a signal of the type: font pattern clipboard dimensions

type screenAreaFormat is array(0 to 7) of std_logic_vector(DISPLAY_LENGTH-1 downto 0); --structure of the screen area
signal screenArea: screenAreaFormat := (others => (others =>'0'));
signal screenAreaLatch: std_logic_vector(DISPLAY_LENGTH-1 downto 0) := (others => '0');  --a lacthed copy of each row of the screen area


type SHIFT_STATES is (LOAD, SHIFT);  --states for loading the character pattern to the pattern clipboard and shift out to the screen 
signal shiftStateVariable: SHIFT_STATES := LOAD;

type COL_STATE is (COL1, COL2, COL3, COL4, COL5, COL6, COL7);
signal shiftedColumnState: COL_STATE := COL1;

type sevenby8 is array(0 to 6) of std_logic_vector(7 downto 0);--font structure: (each font is an array of 7 elements; each element is 8-bits)
type newFont is array(0 to 94) of sevenby8;

constant LedFont: newFont := (   --dotmatrix fonts used
								(x"00", x"00", x"00", x"00", x"00", x"00", x"00"),  -- Code for char  
								(x"00", x"fd", x"00", x"00", x"00", x"00", x"00"),  -- Code for char !
								(x"00", x"00", x"e0", x"00", x"e0", x"00", x"00"),  -- Code for char "
								(x"00", x"24", x"7E", x"24", x"7E", x"24", x"00"),  -- Code for char #
								(x"00", x"24", x"52", x"FF", x"4A", x"24", x"00"),  -- Code for char $
								(x"00", x"62", x"04", x"08", x"10", x"23", x"00"),  -- Code for char %
								(x"00", x"36", x"49", x"4D", x"32", x"05", x"00"),  -- Code for char &
								(x"00", x"00", x"00", x"00", x"90", x"E0", x"00"),  -- Code for char '
								(x"00", x"00", x"00", x"00", x"7e", x"81", x"00"),  -- Code for char (
								(x"00", x"81", x"7e", x"00", x"00", x"00", x"00"),  -- Code for char )
								(x"00", x"24", x"18", x"7E", x"18", x"24", x"00"),  -- Code for char *
								(x"00", x"10", x"10", x"7E", x"10", x"10", x"00"),  -- Code for char +
								(x"00", x"00", x"05", x"06", x"00", x"00", x"00"),  -- Code for char ,
								(x"00", x"10", x"10", x"10", x"10", x"10", x"00"),  -- Code for char -
								(x"00", x"00", x"03", x"03", x"00", x"00", x"00"),  -- Code for char .
								(x"00", x"03", x"04", x"18", x"20", x"C0", x"00"),  -- Code for char /
								(x"00", x"7E", x"85", x"99", x"A1", x"7E", x"00"),  -- Code for char 0
								(x"00", x"00", x"41", x"FF", x"01", x"00", x"00"),  -- Code for char 1
								(x"00", x"43", x"85", x"89", x"91", x"61", x"00"),  -- Code for char 2
								(x"00", x"42", x"81", x"91", x"91", x"6E", x"00"),  -- Code for char 3
								(x"00", x"0E", x"32", x"42", x"FF", x"02", x"00"),  -- Code for char 4
								(x"00", x"F2", x"91", x"91", x"91", x"8E", x"00"),  -- Code for char 5
								(x"00", x"7E", x"91", x"91", x"91", x"0E", x"00"),  -- Code for char 6
								(x"00", x"40", x"87", x"88", x"90", x"e0", x"00"),  -- Code for char 7
								(x"00", x"6E", x"91", x"91", x"91", x"6E", x"00"),  -- Code for char 8
								(x"00", x"70", x"89", x"89", x"89", x"7E", x"00"),  -- Code for char 9								
								(x"00", x"00", x"00", x"36", x"36", x"00", x"00"),  -- Code for char :
								(x"00", x"00", x"15", x"16", x"00", x"00", x"00"),  -- Code for char ;
								(x"00", x"00", x"08", x"14", x"22", x"00", x"00"),  -- Code for char <
								(x"00", x"14", x"14", x"14", x"14", x"00", x"00"),  -- Code for char =
								(x"00", x"00", x"22", x"14", x"08", x"00", x"00"),  -- Code for char >
								(x"00", x"40", x"80", x"8D", x"90", x"60", x"00"),  -- Code for char ?								
								(x"1E", x"21", x"4C", x"52", x"52", x"5E", x"22"),  -- Code for char @
								(x"00", x"3F", x"48", x"88", x"48", x"3F", x"00"),  -- Code for char A
								(x"00", x"FF", x"91", x"91", x"91", x"6E", x"00"),  -- Code for char B
								(x"00", x"7E", x"81", x"81", x"81", x"42", x"00"),  -- Code for char C
								(x"00", x"81", x"FF", x"81", x"81", x"7E", x"00"),  -- Code for char D
								(x"00", x"FF", x"91", x"91", x"91", x"81", x"00"),  -- Code for char E
								(x"00", x"FF", x"90", x"90", x"90", x"80", x"00"),  -- Code for char F
								(x"00", x"7E", x"81", x"89", x"89", x"4E", x"00"),  -- Code for char G
								(x"00", x"FF", x"10", x"10", x"10", x"FF", x"00"),  -- Code for char H								
								(x"00", x"81", x"81", x"FF", x"81", x"81", x"00"),  -- Code for char I
								(x"00", x"82", x"81", x"81", x"81", x"FE", x"00"),  -- Code for char J
								(x"00", x"FF", x"18", x"24", x"42", x"81", x"00"),  -- Code for char K
								(x"00", x"FF", x"01", x"01", x"01", x"01", x"00"),  -- Code for char L
								(x"00", x"FF", x"40", x"30", x"40", x"FF", x"00"),  -- Code for char M
								(x"00", x"FF", x"30", x"18", x"0C", x"FF", x"00"),  -- Code for char N								
								(x"00", x"7E", x"81", x"81", x"81", x"7E", x"00"),  -- Code for char O								
								(x"00", x"FF", x"88", x"88", x"88", x"70", x"00"),  -- Code for char P
								(x"00", x"7E", x"81", x"85", x"82", x"7D", x"00"),  -- Code for char Q
								(x"00", x"FF", x"88", x"8C", x"8A", x"71", x"00"),  -- Code for char R								
								(x"00", x"62", x"91", x"99", x"89", x"46", x"00"),  -- Code for char S
								(x"00", x"80", x"80", x"FF", x"80", x"80", x"00"),  -- Code for char T
								(x"00", x"FE", x"01", x"01", x"01", x"FE", x"00"),  -- Code for char U
								(x"00", x"F8", x"06", x"01", x"06", x"F8", x"00"),  -- Code for char V
								(x"F0", x"0E", x"01", x"3E", x"01", x"0E", x"F0"),  -- Code for char W
								(x"00", x"C3", x"36", x"18", x"36", x"C3", x"00"),  -- Code for char X
								(x"00", x"E0", x"10", x"0F", x"10", x"E0", x"00"),  -- Code for char Y								
								(x"00", x"83", x"85", x"99", x"A1", x"C1", x"00"),  -- Code for char Z
								(x"00", x"00", x"ff", x"81", x"81", x"00", x"00"),  -- Code for char [
								(x"00", x"C0", x"30", x"18", x"0C", x"03", x"00"),  -- Code for char BackSlash
								(x"00", x"81", x"81", x"ff", x"00", x"00", x"00"),  -- Code for char ]
								(x"00", x"20", x"40", x"80", x"40", x"20", x"00"),  -- Code for char ^
								(x"00", x"01", x"01", x"01", x"01", x"01", x"00"),  -- Code for char _
								(x"00", x"00", x"00", x"70", x"90", x"00", x"00"),  -- Code for char `
								(x"00", x"06", x"29", x"29", x"2A", x"1F", x"00"),  -- Code for char a
								(x"00", x"FF", x"12", x"21", x"21", x"1E", x"00"),  -- Code for char b
								(x"00", x"1E", x"21", x"21", x"21", x"12", x"00"),  -- Code for char c
								(x"00", x"1E", x"21", x"21", x"12", x"FF", x"00"),  -- Code for char d
								(x"00", x"1E", x"25", x"25", x"25", x"18", x"00"),  -- Code for char e
								(x"00", x"10", x"7F", x"90", x"90", x"40", x"00"),  -- Code for char f
								(x"00", x"18", x"25", x"25", x"15", x"3E", x"00"),  -- Code for char g
								(x"00", x"FF", x"10", x"20", x"20", x"1F", x"00"),  -- Code for char h
								(x"00", x"21", x"21", x"bF", x"01", x"01", x"00"),  -- Code for char i
								(x"00", x"02", x"01", x"01", x"BE", x"00", x"00"),  -- Code for char j
								(x"00", x"FF", x"08", x"14", x"22", x"41", x"00"),  -- Code for char k
								(x"00", x"81", x"81", x"FF", x"01", x"01", x"00"),  -- Code for char l
								(x"00", x"1F", x"20", x"1F", x"20", x"1F", x"00"),  -- Code for char m
								(x"00", x"3F", x"10", x"20", x"20", x"1F", x"00"),  -- Code for char n
								(x"00", x"1E", x"21", x"21", x"21", x"1E", x"00"),  -- Code for char o
								(x"00", x"3F", x"24", x"24", x"24", x"18", x"00"),  -- Code for char p
								(x"00", x"18", x"24", x"24", x"24", x"3F", x"00"),  -- Code for char q
								(x"00", x"3F", x"10", x"20", x"20", x"10", x"00"),  -- Code for char r
								(x"00", x"11", x"29", x"2D", x"25", x"22", x"00"),  -- Code for char s
								(x"00", x"20", x"FE", x"21", x"21", x"22", x"00"),  -- Code for char t
								(x"00", x"3E", x"01", x"01", x"02", x"3F", x"00"),  -- Code for char u
								(x"00", x"3C", x"02", x"01", x"02", x"3C", x"00"),  -- Code for char v
								(x"00", x"3E", x"01", x"0E", x"01", x"3E", x"00"),  -- Code for char w
								(x"00", x"21", x"12", x"0C", x"12", x"21", x"00"),  -- Code for char x
								(x"00", x"22", x"11", x"09", x"0a", x"3c", x"00"),  -- Code for char y
								(x"00", x"23", x"25", x"2D", x"29", x"31", x"00"),  -- Code for char z
								(x"00", x"00", x"18", x"66", x"81", x"81", x"00"),  -- Code for char {
								(x"00", x"00", x"FF", x"FF", x"00", x"00", x"00"),  -- Code for char |
								(x"00", x"81", x"81", x"66", x"18", x"00", x"00"),  -- Code for char }
								(x"00", x"08", x"10", x"08", x"04", x"08", x"00")  -- Code for char ~
							);

begin

GPIO(12) <= row_driver(7);
GPIO(14) <= row_driver(6);
GPIO(16) <= row_driver(5);
GPIO(1) <=  row_driver(4);
GPIO(3) <=  row_driver(3);
GPIO(5) <=  row_driver(2);
GPIO(7) <=  row_driver(1);
GPIO(9) <=  row_driver(0);

GPIO(0) <= serial_data;
GPIO(2) <= output_enable;
GPIO(4) <= parallel_load;
GPIO(6) <= serial_clk;

LEDR(0) <= CHAR_CLK;
GPIO(8) <= shiftRegisterClk;

char_font_select <= (character'pos(ascii_char) - character'pos(' '));
			
--remap the character pattern to properly orientate with the dotmatrix module
LEVEL1:	for i in singleDisplayChar(0)'high downto 0 generate
LEVEL2:		for j in 0 to 7 generate
MAPPING:			singleDisplayChar(j)(i) <= LedFont(char_font_select)(singleDisplayChar(7)'high-i)(7-j);			
				end generate LEVEL2;		
			end generate LEVEL1;	

TEST_CLK_PROC: process(CLK_50MHz) 
	constant someVal: integer := 5000000;
	variable drtcount: integer range 0 to someVal := 0;
	begin
		if rising_edge(CLK_50MHz) then 
			if drtcount < someVal then
				CHAR_CLK <= '0';
				drtcount := drtcount + 1;
			else
				CHAR_CLK <='1';
				drtcount := 0;			
			end if;	
		end if;	
	end process;

SCREEN_AREA_SHIFT_PROC: process(CLK_50MHz) -- this is the process that takes care of shifting characters from right to left on the display
	
	--constant shiftFreq: integer range 0 to 32 := 20; --this is the frequency of this shift operation in Hertz (changeable as preferred)
	
	constant shiftSpeedCountRange: integer range 0 to FREQ := 1250000; --FREQ/(2 * shiftFreq);--the number of counts required to divide the main clock 
																			        --to produce the needed shift frequency
	variable shiftSpeedCounter: integer range 0 to shiftSpeedCountRange := 0;  --variable to loop through the number of counts

	variable stringIndex: positive range 1 to message_info'high := 1; --variable indexing each character of the message string
	
	constant totalColNum: integer range 0 to 10 := 8; --the total number of columns of the single Display character
	variable charAreaColCount: integer range 0 to totalColNum := 0; --variable indexing each column of the single Display character
		
	begin
		if rising_edge(CLK_50MHz) then
			case shiftStateVariable is
			
				when LOAD =>
					if stringIndex < message_info'high then						
						ascii_char <= message_info(stringIndex); --get each character in the string
						shiftStateVariable <= SHIFT; --go to next state
						stringIndex := stringIndex + 1;
					else	
						stringIndex := 1;	--restart the string
					end if;
					
				when SHIFT =>
					if shiftSpeedCounter < shiftSpeedCountRange then 
						shiftSpeedCounter := shiftSpeedCounter + 1;
					else
						shiftSpeedCounter := 0; 

						case shiftedColumnState is
							when COL1 =>	
									screenArea(0)(DISPLAY_LENGTH-1 downto 0) <= screenArea(0)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(0)(6);
									screenArea(1)(DISPLAY_LENGTH-1 downto 0) <= screenArea(1)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(1)(6);
									screenArea(2)(DISPLAY_LENGTH-1 downto 0) <= screenArea(2)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(2)(6);
									screenArea(3)(DISPLAY_LENGTH-1 downto 0) <= screenArea(3)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(3)(6);
									screenArea(4)(DISPLAY_LENGTH-1 downto 0) <= screenArea(4)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(4)(6);
									screenArea(5)(DISPLAY_LENGTH-1 downto 0) <= screenArea(5)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(5)(6);
									screenArea(6)(DISPLAY_LENGTH-1 downto 0) <= screenArea(6)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(6)(6);
									screenArea(7)(DISPLAY_LENGTH-1 downto 0) <= screenArea(7)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(7)(6);
							
									shiftedColumnState <= COL2;	
							
							when COL2 =>							
									screenArea(0)(DISPLAY_LENGTH-1 downto 0) <= screenArea(0)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(0)(5);
									screenArea(1)(DISPLAY_LENGTH-1 downto 0) <= screenArea(1)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(1)(5);
									screenArea(2)(DISPLAY_LENGTH-1 downto 0) <= screenArea(2)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(2)(5);
									screenArea(3)(DISPLAY_LENGTH-1 downto 0) <= screenArea(3)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(3)(5);
									screenArea(4)(DISPLAY_LENGTH-1 downto 0) <= screenArea(4)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(4)(5);
									screenArea(5)(DISPLAY_LENGTH-1 downto 0) <= screenArea(5)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(5)(5);
									screenArea(6)(DISPLAY_LENGTH-1 downto 0) <= screenArea(6)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(6)(5);
									screenArea(7)(DISPLAY_LENGTH-1 downto 0) <= screenArea(7)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(7)(5);
							
									shiftedColumnState <= COL3;

							when COL3 =>						
									screenArea(0)(DISPLAY_LENGTH-1 downto 0) <= screenArea(0)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(0)(4);
									screenArea(1)(DISPLAY_LENGTH-1 downto 0) <= screenArea(1)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(1)(4);
									screenArea(2)(DISPLAY_LENGTH-1 downto 0) <= screenArea(2)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(2)(4);
									screenArea(3)(DISPLAY_LENGTH-1 downto 0) <= screenArea(3)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(3)(4);
									screenArea(4)(DISPLAY_LENGTH-1 downto 0) <= screenArea(4)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(4)(4);
									screenArea(5)(DISPLAY_LENGTH-1 downto 0) <= screenArea(5)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(5)(4);
									screenArea(6)(DISPLAY_LENGTH-1 downto 0) <= screenArea(6)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(6)(4);
									screenArea(7)(DISPLAY_LENGTH-1 downto 0) <= screenArea(7)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(7)(4);
							
									shiftedColumnState <= COL4;

							when COL4 =>							
									screenArea(0)(DISPLAY_LENGTH-1 downto 0) <= screenArea(0)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(0)(3);
									screenArea(1)(DISPLAY_LENGTH-1 downto 0) <= screenArea(1)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(1)(3);
									screenArea(2)(DISPLAY_LENGTH-1 downto 0) <= screenArea(2)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(2)(3);
									screenArea(3)(DISPLAY_LENGTH-1 downto 0) <= screenArea(3)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(3)(3);
									screenArea(4)(DISPLAY_LENGTH-1 downto 0) <= screenArea(4)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(4)(3);
									screenArea(5)(DISPLAY_LENGTH-1 downto 0) <= screenArea(5)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(5)(3);
									screenArea(6)(DISPLAY_LENGTH-1 downto 0) <= screenArea(6)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(6)(3);
									screenArea(7)(DISPLAY_LENGTH-1 downto 0) <= screenArea(7)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(7)(3);
							
									shiftedColumnState <= COL5;

							when COL5 =>							
									screenArea(0)(DISPLAY_LENGTH-1 downto 0) <= screenArea(0)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(0)(2);
									screenArea(1)(DISPLAY_LENGTH-1 downto 0) <= screenArea(1)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(1)(2);
									screenArea(2)(DISPLAY_LENGTH-1 downto 0) <= screenArea(2)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(2)(2);
									screenArea(3)(DISPLAY_LENGTH-1 downto 0) <= screenArea(3)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(3)(2);
									screenArea(4)(DISPLAY_LENGTH-1 downto 0) <= screenArea(4)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(4)(2);
									screenArea(5)(DISPLAY_LENGTH-1 downto 0) <= screenArea(5)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(5)(2);
									screenArea(6)(DISPLAY_LENGTH-1 downto 0) <= screenArea(6)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(6)(2);
									screenArea(7)(DISPLAY_LENGTH-1 downto 0) <= screenArea(7)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(7)(2);
							
									shiftedColumnState <= COL6;
								
							when COL6 =>						
									screenArea(0)(DISPLAY_LENGTH-1 downto 0) <= screenArea(0)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(0)(1);
									screenArea(1)(DISPLAY_LENGTH-1 downto 0) <= screenArea(1)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(1)(1);
									screenArea(2)(DISPLAY_LENGTH-1 downto 0) <= screenArea(2)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(2)(1);
									screenArea(3)(DISPLAY_LENGTH-1 downto 0) <= screenArea(3)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(3)(1);
									screenArea(4)(DISPLAY_LENGTH-1 downto 0) <= screenArea(4)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(4)(1);
									screenArea(5)(DISPLAY_LENGTH-1 downto 0) <= screenArea(5)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(5)(1);
									screenArea(6)(DISPLAY_LENGTH-1 downto 0) <= screenArea(6)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(6)(1);
									screenArea(7)(DISPLAY_LENGTH-1 downto 0) <= screenArea(7)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(7)(1);
							
									shiftedColumnState <= COL7;
								
							when COL7=>						
									screenArea(0)(DISPLAY_LENGTH-1 downto 0) <= screenArea(0)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(0)(0);
									screenArea(1)(DISPLAY_LENGTH-1 downto 0) <= screenArea(1)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(1)(0);
									screenArea(2)(DISPLAY_LENGTH-1 downto 0) <= screenArea(2)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(2)(0);
									screenArea(3)(DISPLAY_LENGTH-1 downto 0) <= screenArea(3)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(3)(0);
									screenArea(4)(DISPLAY_LENGTH-1 downto 0) <= screenArea(4)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(4)(0);
									screenArea(5)(DISPLAY_LENGTH-1 downto 0) <= screenArea(5)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(5)(0);
									screenArea(6)(DISPLAY_LENGTH-1 downto 0) <= screenArea(6)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(6)(0);
									screenArea(7)(DISPLAY_LENGTH-1 downto 0) <= screenArea(7)(DISPLAY_LENGTH-2 downto 0) & singleDisplayChar(7)(0);
							
									shiftedColumnState <= COL1;
									shiftStateVariable <= LOAD;
							
							when others =>
								shiftedColumnState <= COL1;
								shiftStateVariable <= LOAD;
						end case;						
					end if;
			end case;
		end if;	
	end process;	
	
	
p74HC595_CLK_PROC: process(CLK_50MHz) --generate the 74HC595 shift in frequency

	constant count_range: integer range 0 to FREQ := FREQ/25e6;
	variable counter: integer range 0 to count_range := 0;
	
	begin
		if rising_edge(CLK_50MHz) then 
			if counter < count_range then
				shiftRegisterClk <= '0';
				counter := counter + 1;
			else
				shiftRegisterClk <= '1';
				counter := 0;									
			end if;	
		end if;			
	end process;

LINE_SACN_PROC: process(shiftRegisterClk)

	constant totalScreenColNum: integer range 0 to DISPLAY_LENGTH := DISPLAY_LENGTH; --the total number of columns of the screen
	variable registerSerialData: integer range 0 to totalScreenColNum := 0; --variable indexing each column of the screen latch 
																							   --screen scan operation in Hertz
	constant scanCountRange: integer range 0 to 1000 := 769; --FREQ_74HC595 := FREQ_74HC595/(8 * scanFreq);
	                                                         --the number of counts required to divide 
																			   -- the main clock to produce the needed shift frequency
	variable scanCount: integer range 0 to scanCountRange := 0;

	begin
	
		if rising_edge(shiftRegisterClk) then
			case scanStateVariable is
				when LOAD1 =>
					row_driver <= (others => '0'); --turn off the row drivers
					output_enable <= '1';
					serial_clk <= '0';					
					parallel_load <= '0';
					
					screenAreaLatch <= screenArea(0); --copy the first row of the screen area into the latch					
					scanStateVariable <= CLOCK1;
					
				when CLOCK1=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT1;
					
				when SHIFT1 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						
						serial_data <= screenAreaLatch(screenAreaLatch'left);						
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK1;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';						
						scanStateVariable <= SHOW1;	
					end if;
					
				when SHOW1 =>
					output_enable <= '0';
					row_driver <= (row_driver'left => '1', others => '0');
					parallel_load <= '0';
					
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD2;					
					end if;
				
				
				when LOAD2 =>
					row_driver <= (others => '0'); --turn off the row drivers					
					output_enable <= '1';					
					--serial_clk <= '0';
					--parallel_load <= '0';					
					screenAreaLatch <= screenArea(1); --copy the second row of the screen area into the latch					
					scanStateVariable <= CLOCK2;
					
				when CLOCK2=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT2;
					
				when SHIFT2 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						serial_data <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK2;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';			
						scanStateVariable <= SHOW2;	
					end if;
					
				when SHOW2 =>
					output_enable <= '0';
					row_driver <= (row_driver'left-1 => '1', others => '0');
					parallel_load <= '0';
					
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD3;					
					end if;
				
				when LOAD3 =>
					row_driver <= (others => '0'); --turn off the row drivers
					output_enable <= '1';					
					--serial_clk <= '0';
					--parallel_load <= '0';					
					screenAreaLatch <= screenArea(2); --copy the 3rd row of the screen area into the latch					
					scanStateVariable <= CLOCK3;
					
				when CLOCK3=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT3;
					
				when SHIFT3 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						serial_data <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK3;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';					
						scanStateVariable <= SHOW3;	
					end if;
					
				when SHOW3 =>
					output_enable <= '0';
					row_driver <= (row_driver'left-2 => '1', others => '0');
					parallel_load <= '0';
					
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD4;					
					end if;

				when LOAD4 =>
					row_driver <= (others => '0'); --turn off the row drivers					
					output_enable <= '1';
					--serial_clk <= '0';
					--parallel_load <= '0';					
					screenAreaLatch <= screenArea(3); --copy the 4th row of the screen area into the latch					
					scanStateVariable <= CLOCK4;
					
				when CLOCK4=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT4;
					
				when SHIFT4 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						serial_data <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK4;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';					
						scanStateVariable <= SHOW4;	
					end if;
					
				when SHOW4 =>
					output_enable <= '0';
					row_driver <= (row_driver'left-3 => '1', others => '0');
					parallel_load <= '0';
				
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD5;					
					end if;

				when LOAD5 =>
					row_driver <= (others => '0'); --turn off the row drivers
					output_enable <= '1';
					--serial_clk <= '0';					
					--parallel_load <= '0';					
					screenAreaLatch <= screenArea(4); --copy the 5th row of the screen area into the latch					
					scanStateVariable <= CLOCK5;
					
				when CLOCK5=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT5;
					
				when SHIFT5 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						serial_data <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK5;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';
						scanStateVariable <= SHOW5;	
					end if;
					
				when SHOW5 =>
					output_enable <= '0';
					row_driver <= (row_driver'left-4 => '1', others => '0');
					parallel_load <= '0';
				
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD6;					
					end if;


				when LOAD6 =>
					row_driver <= (others => '0'); --turn off the row drivers
					output_enable <= '1';
					--serial_clk <= '0';					
					--parallel_load <= '0';					
					screenAreaLatch <= screenArea(5); --copy the 6th row of the screen area into the latch					
					scanStateVariable <= CLOCK6;
					
				when CLOCK6=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT6;
					
				when SHIFT6 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						serial_data <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK6;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';
						scanStateVariable <= SHOW6;	
					end if;
					
				when SHOW6 =>
					output_enable <= '0';
					row_driver <= (row_driver'left-5 => '1', others => '0');
					parallel_load <= '0';
					
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD7;					
					end if;


				when LOAD7 =>
					row_driver <= (others => '0'); --turn off the row drivers
					output_enable <= '1';
					--serial_clk <= '0';					
					--parallel_load <= '0';					
					screenAreaLatch <= screenArea(6); --copy the 7th row of the screen area into the latch					
					scanStateVariable <= CLOCK7;
					
				when CLOCK7=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT7;
					
				when SHIFT7 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						serial_data <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK7;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';
						scanStateVariable <= SHOW7;	
					end if;
					
				when SHOW7 =>
					output_enable <= '0';
					row_driver <= (row_driver'left-6 => '1', others => '0');
					parallel_load <= '0';
					
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD8;					
					end if;


				when LOAD8 =>
					row_driver <= (others => '0'); --turn off the row drivers
					output_enable <= '1';
					--serial_clk <= '0';					
					--parallel_load <= '0';					
					screenAreaLatch <= screenArea(7); --copy the 8th row of the screen area into the latch					
					scanStateVariable <= CLOCK8;
					
				when CLOCK8=>
					serial_clk <= '1';
					scanStateVariable <= SHIFT8;
					
				when SHIFT8 =>
					serial_clk <= '0';
					
					if registerSerialData < 32 then
						registerSerialData := registerSerialData + 1;
						serial_data <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch(screenAreaLatch'left downto 0) <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						scanStateVariable <= CLOCK8;
					else	
						registerSerialData := 0;						
						parallel_load <= '1';
						scanStateVariable <= SHOW8;	
					end if;
					
				when SHOW8 =>
					output_enable <= '0';
					row_driver <= (row_driver'right => '1', others => '0');
					parallel_load <= '0';
					
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else
						
						scanCount := 0;						
						scanStateVariable <= LOAD1;					
					end if;
					
				when others =>				
					scanStateVariable <= LOAD1;
			
			end case;		
		end if;	
	end process;

end architecture;