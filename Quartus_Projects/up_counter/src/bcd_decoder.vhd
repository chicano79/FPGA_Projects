library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity bcd_decoder is
	port(
		D: in integer range 0 to 9; --bcd input 
		Q: out std_logic_vector(0 to 6)	--7 segment display output segments a to g
	);
end entity;

architecture rtl of bcd_decoder is
begin
	
	with D select
		Q <= "0000001" when 0,
			 "1001111" when 1,
			 "0010010" when 2,
			 "0000110" when 3,
			 "1001100" when 4,
			 "0100100" when 5,
			 "0100000" when 6,
			 "0001111" when 7,
			 "0000000" when 8,
			 "0000100" when 9,
			 "0000001" when others;

end architecture;