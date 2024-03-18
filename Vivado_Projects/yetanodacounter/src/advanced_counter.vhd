library ieee;
use ieee.std_logic_1164.all;


entity bcdcounter is
	generic(
		FREQ: integer := 100e6	
	);
	port(
		clk_main: in std_logic;
		rst: in std_logic;
		anode: out std_logic_vector(0 to 7);
		seg: out std_logic_vector(0 to 6) := "0000001"	
	);
end entity;


architecture rtl of bcdcounter is
signal counterBCD: integer range 0 to 9 := 0;
signal clk_1HZ: std_logic;

subtype bcd_digits is std_logic_vector(0 to 6);

type seg_light_pattern is array(0 to 9) of std_logic_vector(0 to 6);

constant digits: seg_light_pattern :=  
		(
			"0000001", "1001111", "0010010", "0000110", "1001100",
			"0100100", "0100000", "0001111", "0000000", "0000100"		
		);

function get_segment(dg: integer range 0 to 9) return bcd_digits is
begin
	return digits(dg);
end function;

begin

anode <= (0 => '0', others => '1');
	
BLOCK_A:
	process(clk_main, rst)
		constant count_range: integer range 0 to FREQ := FREQ/1;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter := 0;
			clk_1HZ <= '0';
		elsif rising_edge(clk_main) then
			if counter < count_range then
				counter := counter + 1;
				clk_1HZ <= '0';
			else	
				counter := 0;
				clk_1HZ <= '1';
			end if;
		end if;
	end process;
		
BLOCK_B:
	process(clk_1HZ, rst)
	
	begin
		if rst = '0' then
			counterBCD <= 0;
			seg <= get_segment(0);
		elsif rising_edge(clk_1HZ) then
			case counterBCD is
				when 0 =>
					seg <= get_segment(0);
					counterBCD <= counterBCD + 1;
				when 1 =>
					seg <= get_segment(1);
					counterBCD <= counterBCD + 1;
				when 2 =>
					seg <= get_segment(2);
					counterBCD <= counterBCD + 1;
				when 3 =>
					seg <= get_segment(3);
					counterBCD <= counterBCD + 1;
				when 4 =>
					seg <= get_segment(4);
					counterBCD <= counterBCD + 1;					
				when 5 =>
					seg <= get_segment(5);
					counterBCD <= counterBCD + 1;
				when 6 =>
					seg <= get_segment(6);
					counterBCD <= counterBCD + 1;
				when 7 =>
					seg <= get_segment(7);
					counterBCD <= counterBCD + 1;
				when 8 =>
					seg <= get_segment(8);
					counterBCD <= counterBCD + 1;
				when 9 =>
					seg <= get_segment(9);
					counterBCD <= 0;			
			end case;	
		end if;	
	end process;



end architecture;