library ieee;
use ieee.std_logic_1164.all;


entity four_1_mux is
	port(
		A, B, C, D: in std_logic;
		SEL: in std_logic_vector(1 downto 0);
		Q: out std_logic	
	);
end entity;


architecture rtl of four_1_mux is

signal mux_in1, mux_in2: std_logic;

	component two_1_mux is
		port(
			A, B, SEL: in std_logic;
			Q: out std_logic	
		);
	end component;

begin

	MUX1: two_1_mux
		port map(
			A => A,
			B => B,
			SEL => SEL(0),
			Q => mux_in1		
		);

	MUX2: two_1_mux
		port map(
			A => C,
			B => D,
			SEL => SEL(0),
			Q => mux_in2		
		);
		
	MUX3: two_1_mux
		port map(
			A => mux_in1,
			B => mux_in2,
			SEL => SEL(1),
			Q => Q		
		);

end architecture;