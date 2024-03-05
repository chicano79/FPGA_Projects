library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity blink_tb is

end blink_tb;



architecture test of blink_tb is

component blink is
	port(
			clk: in std_logic;
			led: out std_logic;
			sw: in std_logic
	);
end component;

signal clk_i: std_logic := '0';
signal led_i, sw_i: std_logic;

begin

	uut: blink_wrapper
		port map(		
			clk => clk_i,  --always  (External ports => Internal signal)
			led => led_i,
			sw  => sw_i	
		);
		
	clk_i <= not clk_i after 50 ns;	
	sw_i <= '1';
	
end test;