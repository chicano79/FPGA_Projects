library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blink is
	port(
			clk: in std_logic;
			led: out std_logic
	);
end entity;


architecture rtl of blink is

signal counter: unsigned(21 downto 0) := "0000000000000000000000";

begin

led <= counter(counter'left);

	process(clk) 
	
	begin
		if clk'event and clk = '1' then
			counter <= counter + 1;	
		end if;	
	
	end process;

end rtl;