library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;



entity dotmatrix_4x4_driver is
	generic(
		FREQ: natural := 50000000
	);
	
	port(
		CLK: in std_logic;
		LEDR: out std_logic_vector(0 to 9) := (others => '0');
		GPIO: out std_logic_vector(0 to 22) := (others => '0')
	);
end entity;


architecture rtl of dotmatrix_4x4_driver is
constant char_freq: integer range 0 to 9 := 1; --needed frequency in Hertz

constant scan_freq: integer range 0 to 4096 := 4000; --needed frequency in Hertz

constant SCAN_COUNT_RANGE: integer range 0 to FREQ := FREQ/(2 * scan_freq);
constant CHAR_COUNT_RANGE: integer range 0 to FREQ := FREQ/(2 * char_freq);

signal scan_counter: integer range 0 to SCAN_COUNT_RANGE := 0;
signal char_counter: integer range 0 to CHAR_COUNT_RANGE := 0;

signal SCAN_CLK, CHAR_CLK: std_logic;

signal column_driver, buffer_hold: std_logic_vector(7 downto 0) := (others => '0'); --(7 => '1', others => '0');
signal row_driver: std_logic_vector(7 downto 0) := (others => '0');  --(7 => '1', others => '0');

signal row: std_logic_vector(1 to 8);
signal col: std_logic_vector(1 to 8);

-- alias row1: std_logic is GPIO(4);
-- alias row2: std_logic is GPIO(2);
-- alias row3: std_logic is GPIO(0);
-- alias row4: std_logic is GPIO(1); 
-- alias row5: std_logic is GPIO(3);
-- alias row6: std_logic is GPIO(5); 
-- alias row7: std_logic is GPIO(7);
-- alias row8: std_logic is GPIO(9);

-- alias col1: std_logic is GPIO(12);
-- alias col2: std_logic is GPIO(14);
-- alias col3: std_logic is GPIO(16);
-- alias col4: std_logic is GPIO(18); 
-- alias col5: std_logic is GPIO(20);
-- alias col6: std_logic is GPIO(22); 
-- alias col7: std_logic is GPIO(8);
-- alias col8: std_logic is GPIO(6);
  

type fourbyfour is array(0 to 3) of std_logic_vector(0 to 3);

signal displayArea: fourbyfour;

--procedure lightPixel(d: fourbyfour) 

type SCAN_STATE is (LOAD1, ROW1, LOAD2, ROW2, LOAD3, ROW3, LOAD4, ROW4, LOAD5, ROW5, LOAD6, ROW6, LOAD7, ROW7, LOAD8, ROW8);

signal state_variable: SCAN_STATE := LOAD1;

signal ascii_char: character := '0';

signal array_index: integer;

type pattern is array(0 to 7) of std_logic_vector(7 downto 0);

type TerminalFont8x8 is array(0 to 95) of pattern;

constant LedFont : TerminalFont8x8 := (
											(x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"),  -- Code for char  
											(x"00", x"00", x"06", x"5F", x"06", x"00", x"00", x"00"),  -- Code for char !
											(x"00", x"07", x"03", x"00", x"07", x"03", x"00", x"00"),  -- Code for char "
											(x"00", x"24", x"7E", x"24", x"7E", x"24", x"00", x"00"),  -- Code for char #
											(x"00", x"24", x"2B", x"6A", x"12", x"00", x"00", x"00"),  -- Code for char $
											(x"00", x"63", x"13", x"08", x"64", x"63", x"00", x"00"),  -- Code for char %
											(x"00", x"36", x"49", x"56", x"20", x"50", x"00", x"00"),  -- Code for char &
											(x"00", x"00", x"07", x"03", x"00", x"00", x"00", x"00"),  -- Code for char '
											(x"00", x"00", x"3E", x"41", x"00", x"00", x"00", x"00"),  -- Code for char (
											(x"00", x"00", x"41", x"3E", x"00", x"00", x"00", x"00"),  -- Code for char )
											(x"00", x"08", x"3E", x"1C", x"3E", x"08", x"00", x"00"),  -- Code for char *
											(x"00", x"08", x"08", x"3E", x"08", x"08", x"00", x"00"),  -- Code for char +
											(x"00", x"00", x"E0", x"60", x"00", x"00", x"00", x"00"),  -- Code for char ,
											(x"00", x"08", x"08", x"08", x"08", x"08", x"00", x"00"),  -- Code for char -
											(x"00", x"00", x"60", x"60", x"00", x"00", x"00", x"00"),  -- Code for char .
											(x"00", x"20", x"10", x"08", x"04", x"02", x"00", x"00"),  -- Code for char /
											(x"00", x"3E", x"51", x"49", x"45", x"3E", x"00", x"00"),  -- Code for char 0
											(x"00", x"00", x"42", x"7F", x"40", x"00", x"00", x"00"),  -- Code for char 1
											(x"00", x"62", x"51", x"49", x"49", x"46", x"00", x"00"),  -- Code for char 2
											(x"00", x"22", x"49", x"49", x"49", x"36", x"00", x"00"),  -- Code for char 3
											(x"00", x"18", x"14", x"12", x"7F", x"10", x"00", x"00"),  -- Code for char 4
											(x"00", x"2F", x"49", x"49", x"49", x"31", x"00", x"00"),  -- Code for char 5
											(x"00", x"3C", x"4A", x"49", x"49", x"30", x"00", x"00"),  -- Code for char 6
											(x"00", x"01", x"71", x"09", x"05", x"03", x"00", x"00"),  -- Code for char 7
											(x"00", x"36", x"49", x"49", x"49", x"36", x"00", x"00"),  -- Code for char 8
											(x"00", x"06", x"49", x"49", x"29", x"1E", x"00", x"00"),  -- Code for char 9
											(x"00", x"00", x"6C", x"6C", x"00", x"00", x"00", x"00"),  -- Code for char :
											(x"00", x"00", x"EC", x"6C", x"00", x"00", x"00", x"00"),  -- Code for char ;
											(x"00", x"08", x"14", x"22", x"41", x"00", x"00", x"00"),  -- Code for char <
											(x"00", x"24", x"24", x"24", x"24", x"24", x"00", x"00"),  -- Code for char =
											(x"00", x"00", x"41", x"22", x"14", x"08", x"00", x"00"),  -- Code for char >
											(x"00", x"02", x"01", x"59", x"09", x"06", x"00", x"00"),  -- Code for char ?
											(x"00", x"3E", x"41", x"5D", x"55", x"1E", x"00", x"00"),  -- Code for char @
											(x"00", x"7E", x"11", x"11", x"11", x"7E", x"00", x"00"),  -- Code for char A
											(x"00", x"7F", x"49", x"49", x"49", x"36", x"00", x"00"),  -- Code for char B
											(x"00", x"3E", x"41", x"41", x"41", x"22", x"00", x"00"),  -- Code for char C
											(x"00", x"7F", x"41", x"41", x"41", x"3E", x"00", x"00"),  -- Code for char D
											(x"00", x"7F", x"49", x"49", x"49", x"41", x"00", x"00"),  -- Code for char E
											(x"00", x"7F", x"09", x"09", x"09", x"01", x"00", x"00"),  -- Code for char F
											(x"00", x"3E", x"41", x"49", x"49", x"7A", x"00", x"00"),  -- Code for char G
											(x"00", x"7F", x"08", x"08", x"08", x"7F", x"00", x"00"),  -- Code for char H
											(x"00", x"00", x"41", x"7F", x"41", x"00", x"00", x"00"),  -- Code for char I
											(x"00", x"30", x"40", x"40", x"40", x"3F", x"00", x"00"),  -- Code for char J
											(x"00", x"7F", x"08", x"14", x"22", x"41", x"00", x"00"),  -- Code for char K
											(x"00", x"7F", x"40", x"40", x"40", x"40", x"00", x"00"),  -- Code for char L
											(x"00", x"7F", x"02", x"04", x"02", x"7F", x"00", x"00"),  -- Code for char M
											(x"00", x"7F", x"02", x"04", x"08", x"7F", x"00", x"00"),  -- Code for char N
											(x"00", x"3E", x"41", x"41", x"41", x"3E", x"00", x"00"),  -- Code for char O
											(x"00", x"7F", x"09", x"09", x"09", x"06", x"00", x"00"),  -- Code for char P
											(x"00", x"3E", x"41", x"51", x"21", x"5E", x"00", x"00"),  -- Code for char Q
											(x"00", x"7F", x"09", x"09", x"19", x"66", x"00", x"00"),  -- Code for char R
											(x"00", x"26", x"49", x"49", x"49", x"32", x"00", x"00"),  -- Code for char S
											(x"00", x"01", x"01", x"7F", x"01", x"01", x"00", x"00"),  -- Code for char T
											(x"00", x"3F", x"40", x"40", x"40", x"3F", x"00", x"00"),  -- Code for char U
											(x"00", x"1F", x"20", x"40", x"20", x"1F", x"00", x"00"),  -- Code for char V
											(x"00", x"3F", x"40", x"3C", x"40", x"3F", x"00", x"00"),  -- Code for char W
											(x"00", x"63", x"14", x"08", x"14", x"63", x"00", x"00"),  -- Code for char X
											(x"00", x"07", x"08", x"70", x"08", x"07", x"00", x"00"),  -- Code for char Y
											(x"00", x"71", x"49", x"45", x"43", x"00", x"00", x"00"),  -- Code for char Z
											(x"00", x"00", x"7F", x"41", x"41", x"00", x"00", x"00"),  -- Code for char [
											(x"00", x"02", x"04", x"08", x"10", x"20", x"00", x"00"),  -- Code for char BackSlash
											(x"00", x"00", x"41", x"41", x"7F", x"00", x"00", x"00"),  -- Code for char ]
											(x"00", x"04", x"02", x"01", x"02", x"04", x"00", x"00"),  -- Code for char ^
											(x"80", x"80", x"80", x"80", x"80", x"80", x"00", x"00"),  -- Code for char _
											(x"00", x"00", x"03", x"07", x"00", x"00", x"00", x"00"),  -- Code for char `
											(x"00", x"20", x"54", x"54", x"54", x"78", x"00", x"00"),  -- Code for char a
											(x"00", x"7F", x"44", x"44", x"44", x"38", x"00", x"00"),  -- Code for char b
											(x"00", x"38", x"44", x"44", x"44", x"28", x"00", x"00"),  -- Code for char c
											(x"00", x"38", x"44", x"44", x"44", x"7F", x"00", x"00"),  -- Code for char d
											(x"00", x"38", x"54", x"54", x"54", x"08", x"00", x"00"),  -- Code for char e
											(x"00", x"08", x"7E", x"09", x"09", x"00", x"00", x"00"),  -- Code for char f
											(x"00", x"18", x"A4", x"A4", x"A4", x"7C", x"00", x"00"),  -- Code for char g
											(x"00", x"7F", x"04", x"04", x"78", x"00", x"00", x"00"),  -- Code for char h
											(x"00", x"00", x"00", x"7D", x"40", x"00", x"00", x"00"),  -- Code for char i
											(x"00", x"40", x"80", x"84", x"7D", x"00", x"00", x"00"),  -- Code for char j
											(x"00", x"7F", x"10", x"28", x"44", x"00", x"00", x"00"),  -- Code for char k
											(x"00", x"00", x"00", x"7F", x"40", x"00", x"00", x"00"),  -- Code for char l
											(x"00", x"7C", x"04", x"18", x"04", x"78", x"00", x"00"),  -- Code for char m
											(x"00", x"7C", x"04", x"04", x"78", x"00", x"00", x"00"),  -- Code for char n
											(x"00", x"38", x"44", x"44", x"44", x"38", x"00", x"00"),  -- Code for char o
											(x"00", x"FE", x"22", x"22", x"22", x"1C", x"00", x"00"),  -- Code for char p
											(x"00", x"1C", x"22", x"22", x"22", x"FE", x"00", x"00"),  -- Code for char q
											(x"00", x"44", x"78", x"44", x"04", x"08", x"00", x"00"),  -- Code for char r
											(x"00", x"08", x"54", x"54", x"54", x"20", x"00", x"00"),  -- Code for char s
											(x"00", x"04", x"3E", x"44", x"24", x"00", x"00", x"00"),  -- Code for char t
											(x"00", x"3C", x"40", x"20", x"7C", x"00", x"00", x"00"),  -- Code for char u
											(x"00", x"1C", x"20", x"40", x"20", x"1C", x"00", x"00"),  -- Code for char v
											(x"00", x"3C", x"60", x"30", x"60", x"3C", x"00", x"00"),  -- Code for char w
											(x"00", x"6C", x"10", x"10", x"6C", x"00", x"00", x"00"),  -- Code for char x
											(x"00", x"9C", x"A0", x"60", x"3C", x"00", x"00", x"00"),  -- Code for char y
											(x"00", x"64", x"54", x"54", x"4C", x"00", x"00", x"00"),  -- Code for char z
											(x"00", x"08", x"3E", x"41", x"41", x"00", x"00", x"00"),  -- Code for char {
											(x"00", x"00", x"00", x"77", x"00", x"00", x"00", x"00"),  -- Code for char |
											(x"00", x"00", x"41", x"41", x"3E", x"08", x"00", x"00"),  -- Code for char }
											(x"00", x"02", x"01", x"02", x"01", x"00", x"00", x"00"),  -- Code for char ~
											(x"00", x"3C", x"26", x"23", x"26", x"3C", x"00", x"00")   -- Code for char 
										);





signal array_bit: integer := 7;
signal masker: std_logic_vector(7 downto 0);


begin

GPIO(4) <= row(1);
GPIO(2) <= row(2);
GPIO(0) <= row(3);
GPIO(1) <= row(4);
GPIO(3) <= row(5);
GPIO(5) <= row(6);
GPIO(7) <= row(7);
GPIO(9) <= row(8);

GPIO(22) <= col(1);
GPIO(20) <= col(2);
GPIO(18) <= col(3);
GPIO(16) <= col(4);
GPIO(14) <= col(5);
GPIO(12) <= col(6);
GPIO(8)  <= col(7);
GPIO(6)  <= col(8);

row <= row_driver;
col <= column_driver;
LEDR(0) <= CHAR_CLK;

array_index <= (character'pos(ascii_char) - character'pos(' '));


SCAN_CLK_PROC: process(CLK) 
	
	begin
		if rising_edge(CLK) then 
			if scan_counter < SCAN_COUNT_RANGE then
				scan_counter <= scan_counter + 1;
			else
				scan_counter <= 0;
				SCAN_CLK <= not SCAN_CLK;			
			end if;	
		end if;	
	end process;
	
CHAR_CLK_PROC: process(CLK) 
	
	begin
		if rising_edge(CLK) then 
			if char_counter < CHAR_COUNT_RANGE then
				char_counter <= char_counter + 1;
			else
				char_counter <= 0;
				CHAR_CLK <= not CHAR_CLK;			
			end if;	
		end if;	
	end process;
	
-- DOT_SCAN_PROC: process(SCAN_CLK)

	-- variable count2: integer range 0 to 7 := 0;
	
	-- begin
		-- if rising_edge(SCAN_CLK) then 
			-- column_driver <= column_driver(0) & column_driver(7 downto 1);
			-- if count2 < 7 then
				-- count2 := count2 + 1;
			-- else
				-- count2 := 0;
				-- row_driver <= row_driver(0) & row_driver(7 downto 1);
			-- end if;
		-- end if;	
	-- end process;
	
-- ROW_SCAN_PROC: process(SCAN_CLK)

	-- begin
		-- if rising_edge(SCAN_CLK) then 
			-- case state_variable is
				-- when ROW1 =>					
					-- column_driver <= LedFont(array_index)(0);					
					-- row_driver <= (7 => '1', others => '0');
					-- state_variable <= ROW2;
					
				-- when ROW2 =>
					-- column_driver <= LedFont(array_index)(1);
					-- row_driver <= (6 => '1', others => '0');
					-- state_variable <= ROW3;
					
				-- when ROW3 =>
					-- column_driver <= LedFont(array_index)(2);
					-- row_driver <= (5 => '1', others => '0');
					-- state_variable <= ROW4;
					
				-- when ROW4 =>
					-- column_driver <= LedFont(array_index)(3);
					-- row_driver <= (4 => '1', others => '0');
					-- state_variable <= ROW5;
					
				-- when ROW5 =>
					-- column_driver <= LedFont(array_index)(4);
					-- row_driver <= (3 => '1', others => '0');
					-- state_variable <= ROW6;
					
				-- when ROW6 =>
					-- column_driver <= LedFont(array_index)(5);
					-- row_driver <= (2 => '1', others => '0');
					-- state_variable <= ROW7;
					
				-- when ROW7 =>
					-- column_driver <= LedFont(array_index)(6);
					-- row_driver <= (1 => '1', others => '0');
					-- state_variable <= ROW8;
					
				-- when ROW8 =>
					-- column_driver <= LedFont(array_index)(7);
					-- row_driver <= (0 => '1', others => '0');
					-- state_variable <= ROW1;
					
				-- when others =>
					-- state_variable <= ROW1;			
			
			-- end case;		
		-- end if;	
	-- end process;
	
CHANGE_CHAR_PROC: process(CHAR_CLK)
	
	variable char_num: integer range 0 to 255 := 48; -- integer position of number 0

	begin
		if rising_edge(CHAR_CLK) then
		
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
	
	
	
DOT_SCAN_PROC: process(SCAN_CLK)
	
	variable column_num: integer range 0 to 7 := 0;

	begin
		if rising_edge(SCAN_CLK) then 
			case state_variable is
			
				when LOAD1 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(0);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW1;				
				
				when ROW1 =>
					row_driver <= (7 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD2;
					end if;
					

				when LOAD2 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(1);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW2;					
					
				when ROW2 =>
					row_driver <= (6 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD3;
					end if;	
					
					
				when LOAD3 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(2);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW3;					
					
				when ROW3 =>
					row_driver <= (5 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD4;
					end if;					
					
					
				when LOAD4 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(3);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW4;	
					
				when ROW4 =>
					row_driver <= (4 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD5;
					end if;	
					
					
				when LOAD5 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(4);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW5;
					
				when ROW5 =>
					row_driver <= (3 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD6;
					end if;						
					
					
				when LOAD6 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(5);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW6;					
					
				when ROW6 =>
					row_driver <= (2 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD7;
					end if;
					
					
				when LOAD7 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(6);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW7;					
					
				when ROW7 =>
					row_driver <= (1 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD8;
					end if;
					
					
				when LOAD8 =>
					row_driver <= (others => '0');
					buffer_hold <= LedFont(array_index)(7);
					column_num := 0;
					masker <= (7 => '1', others => '0');
					state_variable <= ROW8;					
					
				when ROW8 =>
					row_driver <= (0 => '1', others => '0');					
					column_driver <= buffer_hold and masker;
					
					if column_num < 7 then
						column_num := column_num + 1;
						masker <= masker(0) & masker(7 downto 1);
					else
						--column_num := 0;
						state_variable <= LOAD1;
					end if;			
					
				when others =>
					state_variable <= LOAD1;			
			
			end case;		
		end if;	
	end process;	


end architecture;