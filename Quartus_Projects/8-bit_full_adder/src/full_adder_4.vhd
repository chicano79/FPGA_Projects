library ieee;
use ieee.std_logic_1164.all;



entity full_adder_4 is
	port(
		A, B: in std_logic_vector(3 downto 0);
		SUM: out std_logic_vector(3 downto 0);
		Cin: in std_logic;
		Cout: out std_logic
	);
end entity;


architecture rtl of full_adder_4 is

signal carry: std_logic_vector(0 to 2);
	
	component full_adder is
		port(
			A, B, Cin: in std_logic;
			SUM, Cout: out std_logic
		);
	end component;

begin
 INSTANCE1: full_adder
	port map(
		A => A(0), B => B(0), Cin => Cin, SUM => SUM(0), Cout => carry(0)	
	);

 INSTANCE2: full_adder
	port map(
		A => A(1), B => B(1), Cin => carry(0), SUM => SUM(1), Cout => carry(1)	
	);
	
 INSTANCE3: full_adder
	port map(
		A => A(2), B => B(2), Cin => carry(1), SUM => SUM(2), Cout => carry(2)	
	);

 INSTANCE4: full_adder
	port map(
		A => A(3), B => B(3), Cin => carry(2), SUM => SUM(3), Cout => Cout	
	);	

end architecture;