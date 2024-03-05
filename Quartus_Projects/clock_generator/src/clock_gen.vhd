library ieee;
use ieee.std_logic_1164.all;


entity clock_gen is
	port(
		CLK_50: in std_logic;
		SW: in std_logic;
		LED: out std_logic_vector(1 downto 0) := (others => '0')
	);

end entity;



architecture behavioural of clock_gen is

signal sig1, CLK_10: std_logic := '0';

begin


AND_GATE:  --this is the and gate construct
sig1 <= CLK_50 and SW;

OTHER_ASSIGN:
LED(0) <= SW;
LED(1) <= CLK_10;


COUNTER_PROC: process(sig1, SW)

	variable counter: integer := 0;
	
	begin
		if SW = '0' then
			CLK_10 <= '0';
			counter := 0;	
		elsif rising_edge(sig1) then
			if counter < 5000000 then
				counter := counter + 1;
			else	
				counter := 0;
				CLK_10 <= not CLK_10;
			end if;		
		end if;

	end process;

end architecture;