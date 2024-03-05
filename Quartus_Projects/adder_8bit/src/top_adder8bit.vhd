library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity top_adder8bit is
	port(
		SW: in std_logic_vector(17 downto 0);
		LEDR: out std_logic_vector(17 downto 0) := "000000000000000000";
		LEDG: out std_logic_vector(8 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: out std_logic_vector(0 to 6)
	);


end entity;


architecture rtl of top_adder8bit is

constant blank: std_logic_vector(0 to 6) := "1111111";

--alias display_blank is blank; 

type seg_light_pattern is array(0 to 9) of std_logic_vector(0 to 6);

signal summation: integer range 0 to 511;

signal SUMx: std_logic_vector(8 downto 0);

constant digits: seg_light_pattern :=  
		(
			"0000001", "1001111", "0010010", "0000110", "1001100",
			"0100100", "0100000", "0001111", "0000000", "0000100"		
		);
		
function binary_to_bcd(d: integer; hide_zero: boolean := false) return std_logic_vector is

begin
	if d = 0 and hide_zero then
		return blank;
	else
		return digits(d);	
	end if;
	
end function;

function binary_to_bcd_1(sm: integer; d: integer; hide_zero: boolean := false) return std_logic_vector is

begin
	if sm < 100 and d = 0 and hide_zero then
		return blank;
	else
		return digits(d);	
	end if;
	
end function;

function binary_to_hex(d: std_logic_vector(3 downto 0)) return std_logic_vector is
begin
	case d is
		when "0000" =>
			return "0000001";		
		when "0001" =>
			return "1001111";
		when "0010" =>
			return "0010010";
		when "0011" =>
			return "0000110";		
		when "0100" =>
			return "1001100";
		when "0101" =>
			return "0100100";
		when "0110" =>
			return "0100000";		
		when "0111" =>
			return "0001111";
		when "1000" =>
			return "0000000";
		when "1001" =>
			return "0000100";		
		when "1010" =>
			return "0001000";
		when "1011" =>
			return "1100000";
		when "1100" =>
			return "0110001";
		when "1101" =>
			return "1000010";		
		when "1110" =>
			return "0110000";
		when "1111" =>
			return "0111000";		
		when others =>
			return blank;
	end case;
end function;
	
	component full_adder_8 is
		port(
			A, B: in std_logic_vector(7 downto 0);
			SUM: out std_logic_vector(7 downto 0);
			Cin: in std_logic;
			Cout: out std_logic
	);
	end component;

begin

UUT: full_adder_8
	port map(
		A => SW(17 downto 10),
		B => SW(7 downto 0),
		SUM => SUMx(7 downto 0),
		Cin => '0',
		Cout => SUMx(8)		
	);

HEX7 <= binary_to_hex(SW(17 downto 14));
HEX6 <= binary_to_hex(SW(13 downto 10));
HEX5 <= binary_to_hex(SW(7 downto 4));
HEX4 <= binary_to_hex(SW(3 downto 0));

HEX3 <= blank;

summation <= to_integer(unsigned(SUMx));

HEX2 <= binary_to_bcd((summation / 100), true);
HEX1 <= binary_to_bcd_1(summation, ((summation rem 100) / 10), true);
HEX0 <= binary_to_bcd((summation rem 10));

LEDR(17 downto 10) <= SW(17 downto 10);
LEDR(7 downto 0) <= SW(7 downto 0);

LEDG(7 downto 0) <= SUMx(7 downto 0);
LEDG(8) <= SUMx(8);

end architecture;