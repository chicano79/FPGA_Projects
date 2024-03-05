library ieee;
use ieee.std_logic_1164.all;



entity full_adder is
	port(
		A, B, Cin: in std_logic;
		SUM, Cout: out std_logic
	);
end entity;


architecture rtl of full_adder is

begin

SUM <= (A xor B) xor Cin;
Cout <= (A and B) or (Cin and (A xor B));


end architecture;