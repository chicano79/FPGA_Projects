library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SwitchDrivesLED is
	port(
			clk: in std_logic;
			led: out unsigned(23 downto 0)
	);
end entity;


architecture rtl of SwitchDrivesLED is

signal counter: unsigned(23 downto 0) := x"000000";
signal lights: unsigned(23 downto 0) := x"000001";

signal tick: std_logic;

begin

tick <= counter(counter'left - 1);

led <= lights;

	process(clk) 
	
	begin
		if clk'event and clk = '1' then
			counter <= counter + 1;	
		end if;	
	
	end process;
	
	
	process(tick)
	
	begin
		if tick'event and tick = '1' then 
			lights <= lights rol 1;	
		
		end if;
	
	end process;

end rtl;