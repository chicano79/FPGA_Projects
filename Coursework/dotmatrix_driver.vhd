library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity dotmatrix_4x4_driver is
	port(
		CLK: std_logic;
		ROW, COL: std_logic_vector(0 to 3)		
	);
end entity;





architecture rtl of dotmatrix_4x4_driver is

type fourbyfour is array(0 to 3, 0 to 3) of std_logic;

procedure lightPixel(d: fourbyfour) 

begin



end architecture;