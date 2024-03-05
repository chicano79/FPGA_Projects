library ieee;
use ieee.std_logic_1164.all;


entity four_1_mux_tb is
end entity;


architecture rtl of four_1_mux_tb is

signal data_in: std_logic_vector(3 downto 0);
signal sel: std_logic_vector(1 downto 0);
signal data_out: std_logic;

	component four_1_mux is
		port(
			A, B, C, D: in std_logic;
			SEL: in std_logic_vector(1 downto 0);
			Q: out std_logic	
		);
	end component;

begin

	UUT: four_1_mux
		port map(
			A => data_in(0),
			B => data_in(1),
			C => data_in(2),
			D => data_in(3),
			SEL => sel,
			Q => data_out		
		);

SIMUL_PROC: process
	begin
	
	
	
	end process;


end architecture;