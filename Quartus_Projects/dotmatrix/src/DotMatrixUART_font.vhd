type TerminalFont8x8 is array(0 to 95, 0 to 7) of std_logic_vector(7 downto 0);

constant LedFont : TerminalFont8x8 := (
											x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",  -- Code for char  
											x"00", x"00", x"06", x"5F", x"06", x"00", x"00", x"00",  -- Code for char !
											x"00", x"07", x"03", x"00", x"07", x"03", x"00", x"00",  -- Code for char "
											x"00", x"24", x"7E", x"24", x"7E", x"24", x"00", x"00",  -- Code for char #
											x"00", x"24", x"2B", x"6A", x"12", x"00", x"00", x"00",  -- Code for char $
											x"00", x"63", x"13", x"08", x"64", x"63", x"00", x"00",  -- Code for char %
											x"00", x"36", x"49", x"56", x"20", x"50", x"00", x"00",  -- Code for char &
											x"00", x"00", x"07", x"03", x"00", x"00", x"00", x"00",  -- Code for char '
											x"00", x"00", x"3E", x"41", x"00", x"00", x"00", x"00",  -- Code for char (
											x"00", x"00", x"41", x"3E", x"00", x"00", x"00", x"00",  -- Code for char )
											x"00", x"08", x"3E", x"1C", x"3E", x"08", x"00", x"00",  -- Code for char *
											x"00", x"08", x"08", x"3E", x"08", x"08", x"00", x"00",  -- Code for char +
											x"00", x"00", x"E0", x"60", x"00", x"00", x"00", x"00",  -- Code for char ,
											x"00", x"08", x"08", x"08", x"08", x"08", x"00", x"00",  -- Code for char -
											x"00", x"00", x"60", x"60", x"00", x"00", x"00", x"00",  -- Code for char .
											x"00", x"20", x"10", x"08", x"04", x"02", x"00", x"00",  -- Code for char /
											x"00", x"3E", x"51", x"49", x"45", x"3E", x"00", x"00",  -- Code for char 0
											x"00", x"00", x"42", x"7F", x"40", x"00", x"00", x"00",  -- Code for char 1
											x"00", x"62", x"51", x"49", x"49", x"46", x"00", x"00",  -- Code for char 2
											x"00", x"22", x"49", x"49", x"49", x"36", x"00", x"00",  -- Code for char 3
											x"00", x"18", x"14", x"12", x"7F", x"10", x"00", x"00",  -- Code for char 4
											x"00", x"2F", x"49", x"49", x"49", x"31", x"00", x"00",  -- Code for char 5
											x"00", x"3C", x"4A", x"49", x"49", x"30", x"00", x"00",  -- Code for char 6
											x"00", x"01", x"71", x"09", x"05", x"03", x"00", x"00",  -- Code for char 7
											x"00", x"36", x"49", x"49", x"49", x"36", x"00", x"00",  -- Code for char 8
											x"00", x"06", x"49", x"49", x"29", x"1E", x"00", x"00",  -- Code for char 9
											x"00", x"00", x"6C", x"6C", x"00", x"00", x"00", x"00",  -- Code for char :
											x"00", x"00", x"EC", x"6C", x"00", x"00", x"00", x"00",  -- Code for char ;
											x"00", x"08", x"14", x"22", x"41", x"00", x"00", x"00",  -- Code for char <
											x"00", x"24", x"24", x"24", x"24", x"24", x"00", x"00",  -- Code for char =
											x"00", x"00", x"41", x"22", x"14", x"08", x"00", x"00",  -- Code for char >
											x"00", x"02", x"01", x"59", x"09", x"06", x"00", x"00",  -- Code for char ?
											x"00", x"3E", x"41", x"5D", x"55", x"1E", x"00", x"00",  -- Code for char @
											x"00", x"7E", x"11", x"11", x"11", x"7E", x"00", x"00",  -- Code for char A
											x"00", x"7F", x"49", x"49", x"49", x"36", x"00", x"00",  -- Code for char B
											x"00", x"3E", x"41", x"41", x"41", x"22", x"00", x"00",  -- Code for char C
											x"00", x"7F", x"41", x"41", x"41", x"3E", x"00", x"00",  -- Code for char D
											x"00", x"7F", x"49", x"49", x"49", x"41", x"00", x"00",  -- Code for char E
											x"00", x"7F", x"09", x"09", x"09", x"01", x"00", x"00",  -- Code for char F
											x"00", x"3E", x"41", x"49", x"49", x"7A", x"00", x"00",  -- Code for char G
											x"00", x"7F", x"08", x"08", x"08", x"7F", x"00", x"00",  -- Code for char H
											x"00", x"00", x"41", x"7F", x"41", x"00", x"00", x"00",  -- Code for char I
											x"00", x"30", x"40", x"40", x"40", x"3F", x"00", x"00",  -- Code for char J
											x"00", x"7F", x"08", x"14", x"22", x"41", x"00", x"00",  -- Code for char K
											x"00", x"7F", x"40", x"40", x"40", x"40", x"00", x"00",  -- Code for char L
											x"00", x"7F", x"02", x"04", x"02", x"7F", x"00", x"00",  -- Code for char M
											x"00", x"7F", x"02", x"04", x"08", x"7F", x"00", x"00",  -- Code for char N
											x"00", x"3E", x"41", x"41", x"41", x"3E", x"00", x"00",  -- Code for char O
											x"00", x"7F", x"09", x"09", x"09", x"06", x"00", x"00",  -- Code for char P
											x"00", x"3E", x"41", x"51", x"21", x"5E", x"00", x"00",  -- Code for char Q
											x"00", x"7F", x"09", x"09", x"19", x"66", x"00", x"00",  -- Code for char R
											x"00", x"26", x"49", x"49", x"49", x"32", x"00", x"00",  -- Code for char S
											x"00", x"01", x"01", x"7F", x"01", x"01", x"00", x"00",  -- Code for char T
											x"00", x"3F", x"40", x"40", x"40", x"3F", x"00", x"00",  -- Code for char U
											x"00", x"1F", x"20", x"40", x"20", x"1F", x"00", x"00",  -- Code for char V
											x"00", x"3F", x"40", x"3C", x"40", x"3F", x"00", x"00",  -- Code for char W
											x"00", x"63", x"14", x"08", x"14", x"63", x"00", x"00",  -- Code for char X
											x"00", x"07", x"08", x"70", x"08", x"07", x"00", x"00",  -- Code for char Y
											x"00", x"71", x"49", x"45", x"43", x"00", x"00", x"00",  -- Code for char Z
											x"00", x"00", x"7F", x"41", x"41", x"00", x"00", x"00",  -- Code for char [
											x"00", x"02", x"04", x"08", x"10", x"20", x"00", x"00",  -- Code for char BackSlash
											x"00", x"00", x"41", x"41", x"7F", x"00", x"00", x"00",  -- Code for char ]
											x"00", x"04", x"02", x"01", x"02", x"04", x"00", x"00",  -- Code for char ^
											x"80", x"80", x"80", x"80", x"80", x"80", x"00", x"00",  -- Code for char _
											x"00", x"00", x"03", x"07", x"00", x"00", x"00", x"00",  -- Code for char `
											x"00", x"20", x"54", x"54", x"54", x"78", x"00", x"00",  -- Code for char a
											x"00", x"7F", x"44", x"44", x"44", x"38", x"00", x"00",  -- Code for char b
											x"00", x"38", x"44", x"44", x"44", x"28", x"00", x"00",  -- Code for char c
											x"00", x"38", x"44", x"44", x"44", x"7F", x"00", x"00",  -- Code for char d
											x"00", x"38", x"54", x"54", x"54", x"08", x"00", x"00",  -- Code for char e
											x"00", x"08", x"7E", x"09", x"09", x"00", x"00", x"00",  -- Code for char f
											x"00", x"18", x"A4", x"A4", x"A4", x"7C", x"00", x"00",  -- Code for char g
											x"00", x"7F", x"04", x"04", x"78", x"00", x"00", x"00",  -- Code for char h
											x"00", x"00", x"00", x"7D", x"40", x"00", x"00", x"00",  -- Code for char i
											x"00", x"40", x"80", x"84", x"7D", x"00", x"00", x"00",  -- Code for char j
											x"00", x"7F", x"10", x"28", x"44", x"00", x"00", x"00",  -- Code for char k
											x"00", x"00", x"00", x"7F", x"40", x"00", x"00", x"00",  -- Code for char l
											x"00", x"7C", x"04", x"18", x"04", x"78", x"00", x"00",  -- Code for char m
											x"00", x"7C", x"04", x"04", x"78", x"00", x"00", x"00",  -- Code for char n
											x"00", x"38", x"44", x"44", x"44", x"38", x"00", x"00",  -- Code for char o
											x"00", x"FE", x"22", x"22", x"22", x"1C", x"00", x"00",  -- Code for char p
											x"00", x"1C", x"22", x"22", x"22", x"FE", x"00", x"00",  -- Code for char q
											x"00", x"44", x"78", x"44", x"04", x"08", x"00", x"00",  -- Code for char r
											x"00", x"08", x"54", x"54", x"54", x"20", x"00", x"00",  -- Code for char s
											x"00", x"04", x"3E", x"44", x"24", x"00", x"00", x"00",  -- Code for char t
											x"00", x"3C", x"40", x"20", x"7C", x"00", x"00", x"00",  -- Code for char u
											x"00", x"1C", x"20", x"40", x"20", x"1C", x"00", x"00",  -- Code for char v
											x"00", x"3C", x"60", x"30", x"60", x"3C", x"00", x"00",  -- Code for char w
											x"00", x"6C", x"10", x"10", x"6C", x"00", x"00", x"00",  -- Code for char x
											x"00", x"9C", x"A0", x"60", x"3C", x"00", x"00", x"00",  -- Code for char y
											x"00", x"64", x"54", x"54", x"4C", x"00", x"00", x"00",  -- Code for char z
											x"00", x"08", x"3E", x"41", x"41", x"00", x"00", x"00",  -- Code for char {
											x"00", x"00", x"00", x"77", x"00", x"00", x"00", x"00",  -- Code for char |
											x"00", x"00", x"41", x"41", x"3E", x"08", x"00", x"00",  -- Code for char }
											x"00", x"02", x"01", x"02", x"01", x"00", x"00", x"00",  -- Code for char ~
											x"00", x"3C", x"26", x"23", x"26", x"3C", x"00", x"00"   -- Code for char 
										);

