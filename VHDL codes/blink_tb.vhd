library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity blink_tb is

end entity;



architecture test of blink_tb is

component blink is
	port(
			clk: in std_logic;
			led: out std_logic
	);
end component;

signal clk_i: std_logic := '0';
signal led_i: std_logic;

begin

	uut: blink
		port map(
		
			clk => clk_i;
			led => led_i;		
		);
		
	clk_i <= not clk_i after 50 ns;	
	
end test;