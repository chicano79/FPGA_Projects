library ieee;
use ieee.std_logic_1164.all;



entity full_adder_8 is
	port(
		A, B: in std_logic_vector(7 downto 0);
		SUM: out std_logic_vector(7 downto 0);
		Cin: in std_logic;
		Cout: out std_logic
	);
end entity;



architecture rtl of full_adder_8 is

signal carry: std_logic;

	component full_adder_4 is
		port(
			A, B: in std_logic_vector(3 downto 0);
			SUM: out std_logic_vector(3 downto 0);
			Cin: in std_logic;
			Cout: out std_logic
		);
	end component;


begin

 INSTANCE1: full_adder_4
	port map(
		A => A(3 downto 0), B => B(3 downto 0), Cin => Cin, SUM => SUM(3 downto 0), Cout => carry	
	);

 INSTANCE2: full_adder_4
	port map(
		A => A(7 downto 4), B => B(7 downto 4), Cin => carry, SUM => SUM(7 downto 4), Cout => Cout	
	);

end architecture;