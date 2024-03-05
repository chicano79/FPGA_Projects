library ieee;
use ieee.std_logic_1164.all;


entity two_1_mux is
	port(
		A, B, SEL: in std_logic;
		Q: out std_logic	
	);
end entity;


architecture rtl of two_1_mux is

begin	
	with SEL select
		Q <= A when '0',
			 B when '1',
			 '0' when others;

end architecture;