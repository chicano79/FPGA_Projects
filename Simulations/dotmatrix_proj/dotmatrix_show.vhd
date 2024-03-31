library ieee;
use ieee.std_logic_1164.all;


entity dotmatrix_show is
	generic(
		FREQ: positive;-- := 50e6;  --50MHz
		DOTMATRIX_WIDTH: natural range 0 to 32-- := 32	
	);	
	
	port(
		MAIN_CLK:   in std_logic;
		LEDR:       out std_logic;--  := (others => '0');
		CPU_RESETN: in std_logic;
		GPIO:       out std_logic_vector(0 to 16)
	);

end entity;


architecture rtl of dotmatrix_show is

constant reset_logic: std_logic := '1';
signal cpu_rst: std_logic;

signal ascii_char: character := ' '; --signal fetching each character
signal char_font_select: integer range 0 to 255 := 0; --signal to select font pattern from the font array according to the character fetched

signal SCAN_CLK, CHAR_CHANGE_CLK:  std_logic; --clock controlling the scanning of the screen area
signal serial_data_in: 				std_logic := '0'; --74HC595 serial input data
signal output_enable: 				std_logic := '1'; --74HC595 output enable control
signal parallel_load: 			    std_logic := '0'; --74HC595 parallel load control
signal serial_clk: 				    std_logic := '0'; --74HC595 serial input clock
signal row_driver: 				    std_logic_vector(7 downto 0) := (others => '0'); --signal to control the sequential lighting of the display rows

type SCAN_STATE is (LOAD0, BIT_CLOCK0, BIT_SHIFT0, SHOW0,
					LOAD1, BIT_CLOCK1, BIT_SHIFT1, SHOW1, 
					LOAD2, BIT_CLOCK2, BIT_SHIFT2, SHOW2, 
					LOAD3, BIT_CLOCK3, BIT_SHIFT3, SHOW3, 
					LOAD4, BIT_CLOCK4, BIT_SHIFT4, SHOW4, 
					LOAD5, BIT_CLOCK5, BIT_SHIFT5, SHOW5,
					LOAD6, BIT_CLOCK6, BIT_SHIFT6, SHOW6,
					LOAD7, BIT_CLOCK7, BIT_SHIFT7, SHOW7					
					); --states in sending out data into the external 74HC595 network
					
signal scanStateVariable: SCAN_STATE := LOAD0;

type screenAreaFormat is array(0 to 7) of std_logic_vector(DOTMATRIX_WIDTH-1 downto 0); --structure of the screen area
signal screenArea: screenAreaFormat := (others => (others =>'0'));
signal screenAreaLatch: std_logic_vector(DOTMATRIX_WIDTH-1 downto 0) := (others => '0');  --a lacthed copy of each row of the screen area

type sevenby8 is array(0 to 6) of std_logic_vector(7 downto 0);--font structure: (each font is an array of 7 elements; each element is 8-bits)
type newFont is array(0 to 94) of sevenby8;

constant LedFont: newFont := (   --dotmatrix fonts each font code is arranged from top to bottom on each column as 7 downto 0
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

cpu_rst <= not CPU_RESETN;

GPIO(12) <= row_driver(7);
GPIO(14) <= row_driver(6);
GPIO(16) <= row_driver(5);
GPIO(1) <=  row_driver(4);
GPIO(3) <=  row_driver(3);
GPIO(5) <=  row_driver(2);
GPIO(7) <=  row_driver(1);
GPIO(9) <=  row_driver(0);

GPIO(0) <= serial_data_in;
GPIO(2) <= output_enable;
GPIO(4) <= parallel_load;
GPIO(6) <= serial_clk;

LEDR <= CHAR_CHANGE_CLK;
GPIO(8) <= SCAN_CLK;

GPIO(10) <= '0';
GPIO(11) <= '0';
GPIO(13) <= '0';
GPIO(15) <= '0';

char_font_select <= (character'pos(ascii_char) - character'pos(' '));
			
--copy to scratchpad
LEVEL1:	for i in 8 downto 2 generate
MAPPING:	screenArea(0)(i) <= LedFont(char_font_select)(8-i)(7);
			screenArea(1)(i) <= LedFont(char_font_select)(8-i)(6);
			screenArea(2)(i) <= LedFont(char_font_select)(8-i)(5);
			screenArea(3)(i) <= LedFont(char_font_select)(8-i)(4);
			screenArea(4)(i) <= LedFont(char_font_select)(8-i)(3);
			screenArea(5)(i) <= LedFont(char_font_select)(8-i)(2);
			screenArea(6)(i) <= LedFont(char_font_select)(8-i)(1);
			screenArea(7)(i) <= LedFont(char_font_select)(8-i)(0);
		end generate LEVEL1;	


CHAR_CHANGE_CLK_PROC: process(MAIN_CLK, cpu_rst) --generating clock that controls the speed of change of character on the dotmatrix
	constant count_range: integer := FREQ/(20*2); --FREQ/(2*2);
	variable drtcount: integer range 0 to FREQ := 0;
	begin
		if cpu_rst = reset_logic then
			drtcount := 0;
			CHAR_CHANGE_CLK <= '0';	
		elsif rising_edge(MAIN_CLK) then 
			if drtcount < count_range-1 then			
				drtcount := drtcount + 1;
			else
				drtcount := 0;
				CHAR_CHANGE_CLK <= not CHAR_CHANGE_CLK;							
			end if;	
		end if;	
	end process;

SELECT_CHAR_PROC: process(CHAR_CHANGE_CLK, cpu_rst)	--implementing the change of characters shown on the dotmatrix
	variable char_num: integer range 0 to 255 := 48; -- integer position of number 0
	begin
		if cpu_rst = reset_logic then
			char_num := 48;
		elsif rising_edge(CHAR_CHANGE_CLK) then				
			if ((char_num > 47) and (char_num < 57)) or ((char_num > 64) and (char_num < 90)) or ((char_num > 96) and (char_num < 122)) then
				char_num := char_num + 1;	
				
			elsif char_num = 57 then
				char_num := 65;
				
			elsif char_num = 90 then
				char_num := 97;
			
			elsif char_num = 122 then
				char_num := 48;						
			end if;			
		end if;		
		ascii_char <= character'val(char_num);		
	end process;

SCAN_CLK_PROC: process(MAIN_CLK, cpu_rst) --generating vertical scan clock

	constant count_range: integer range 0 to FREQ := (FREQ/25e6);
	variable counter: integer range 0 to count_range := 0;
	
	begin
		if cpu_rst = reset_logic then
			counter := 0;
			SCAN_CLK <= '0';	
		elsif rising_edge(MAIN_CLK) then 
			if counter < count_range-1 then
				SCAN_CLK <= '0';
				counter := counter + 1;
			else
				SCAN_CLK <= '1';
				counter := 0;									
			end if;	
		end if;			
	end process;

VERTICAL_SCAN_PROC: process(SCAN_CLK, cpu_rst) --vertical scanning of the dotmatrix display through the 74HC595 shift register

	variable serial_data_count: integer range 0 to DOTMATRIX_WIDTH := 0; 
	constant scanCountRange: integer range 0 to 100000 := 9900;  --66700; 
	variable scanCount: integer range 0 to scanCountRange := 0;
	variable clock_count: integer range 0 to 2 := 0;

	begin
		if cpu_rst = reset_logic then
			row_driver <= (others => '0'); --turn off the row drivers
			output_enable <= '1'; --turn off the row drivers
			serial_clk <= '0';					
			parallel_load <= '0';
			scanCount := 0;
			serial_data_count := 0;	
		elsif rising_edge(SCAN_CLK) then
			case scanStateVariable is

				when LOAD0 =>					
					serial_clk <= '0';					
					parallel_load <= '0';					
					screenAreaLatch <= screenArea(0)(screenArea(0)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(0)(screenArea(0)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595
					scanStateVariable <= BIT_CLOCK0;					
				when BIT_CLOCK0 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT0;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT0 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then						
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK0;
					else
						serial_data_count := 0;							
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW0;
					end if;
				when SHOW0 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'left => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD1;					
					end if;


				when LOAD1 =>					
					serial_clk <= '0';					
					parallel_load <= '0';					
					screenAreaLatch <= screenArea(1)(screenArea(1)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(1)(screenArea(1)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595
					scanStateVariable <= BIT_CLOCK1;					
				when BIT_CLOCK1 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT1;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT1 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK1;
					else
						serial_data_count := 0;	
						serial_clk <= '0';
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW1;
					end if;
				when SHOW1 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'left-1 => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD2;					
					end if;


				when LOAD2 =>					
					serial_clk <= '0';					
					parallel_load <= '0';
					screenAreaLatch <= screenArea(2)(screenArea(2)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(2)(screenArea(2)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595
					scanStateVariable <= BIT_CLOCK2;					
				when BIT_CLOCK2 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT2;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT2 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK2;
					else
						serial_data_count := 0;	
						serial_clk <= '0';
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW2;
					end if;
				when SHOW2 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'left-2 => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD3;					
					end if;


				when LOAD3 =>					
					serial_clk <= '0';					
					parallel_load <= '0';
					screenAreaLatch <= screenArea(3)(screenArea(3)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(3)(screenArea(3)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595
					scanStateVariable <= BIT_CLOCK3;					
				when BIT_CLOCK3 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT3;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT3 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK3;
					else
						serial_data_count := 0;	
						serial_clk <= '0';
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW3;
					end if;
				when SHOW3 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'left-3 => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD4;					
					end if;


				when LOAD4 =>					
					serial_clk <= '0';					
					parallel_load <= '0';
					screenAreaLatch <= screenArea(4)(screenArea(4)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(4)(screenArea(4)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595;
					scanStateVariable <= BIT_CLOCK4;					
				when BIT_CLOCK4 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT4;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT4 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK4;
					else
						serial_data_count := 0;	
						serial_clk <= '0';
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW4;
					end if;
				when SHOW4 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'left-4 => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD5;					
					end if;


				when LOAD5 =>					
					serial_clk <= '0';					
					parallel_load <= '0';
					screenAreaLatch <= screenArea(5)(screenArea(5)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(5)(screenArea(5)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595
					scanStateVariable <= BIT_CLOCK5;					
				when BIT_CLOCK5 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT5;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT5 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK5;
					else
						serial_data_count := 0;	
						serial_clk <= '0';
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW5;
					end if;
				when SHOW5 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'left-5 => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD6;					
					end if;

				when LOAD6 =>					
					serial_clk <= '0';					
					parallel_load <= '0';
					screenAreaLatch <= screenArea(6)(screenArea(6)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(6)(screenArea(6)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595
					scanStateVariable <= BIT_CLOCK6;					
				when BIT_CLOCK6 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT6;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT6 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK6;
					else
						serial_data_count := 0;	
						serial_clk <= '0';
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW6;
					end if;
				when SHOW6 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'left-6 => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD7;					
					end if;


				when LOAD7 =>					
					serial_clk <= '0';					
					parallel_load <= '0';
					screenAreaLatch <= screenArea(7)(screenArea(7)'left-1 downto 0) & '0'; --copy the first row of the screen area into the latch
					serial_data_in <= screenArea(7)(screenArea(7)'left); -- make the MSB immediately availlabe to serial input pin of the 74HC595
					scanStateVariable <= BIT_CLOCK7;					
				when BIT_CLOCK7 =>
					if clock_count = 2 then
						scanStateVariable <= BIT_SHIFT7;
						clock_count := 0;
					else
						serial_clk <= not serial_clk;
						clock_count := clock_count + 1;
					end if;					
				when BIT_SHIFT7 =>
					if serial_data_count < DOTMATRIX_WIDTH-1 then
						serial_data_in <= screenAreaLatch(screenAreaLatch'left);
						screenAreaLatch <= screenAreaLatch(screenAreaLatch'left-1 downto 0) & '0';
						serial_data_count := serial_data_count + 1;
						scanStateVariable <= BIT_CLOCK7;
					else
						serial_data_count := 0;	
						serial_clk <= '0';
						output_enable <= '1';
						row_driver <= (others => '0'); --turn off the row drivers						
						scanStateVariable <= SHOW7;
					end if;
				when SHOW7 =>					
					parallel_load <= '1';
					output_enable <= '0';
					row_driver <= (row_driver'right => '1', others => '0');
					if scanCount < scanCountRange then
						scanCount := scanCount + 1;
					else						
						scanCount := 0;						
						scanStateVariable <= LOAD0;					
					end if;
					
				when others =>				
					scanStateVariable <= LOAD0;
			
			end case;		
		end if;	
	end process;

end architecture;
