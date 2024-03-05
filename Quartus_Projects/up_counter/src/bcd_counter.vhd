library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity bcd_counter is
	port(
		clk, rst: in std_logic;
		Q: out integer range 0 to 9
	);
end entity;



architecture rtl of bcd_counter is
signal counter: integer range 0 to 9 := 0;
begin

Q <= counter;

BCD_COUNTER_PROC: process(clk, rst)
	begin
		if rst = '0' then
			counter <= 0;
		elsif rising_edge(clk) then
			if counter < 9 then
				counter <= counter + 1;
			else
				counter <= 0;			
			end if;		
		end if;
	end process;

end architecture;