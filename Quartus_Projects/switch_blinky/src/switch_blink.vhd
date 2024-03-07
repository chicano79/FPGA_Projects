library ieee;
use ieee.std_logic_1164.all;


entity switch_blink is
	port(
		SW: in std_logic_vector(3 downto 0);
		LED: out std_logic_vector(3 downto 0) := (others => '0');
		CLK_50MHz: in std_logic	
	);
end entity;


architecture rtl of switch_blink is
signal sig: std_logic_vector(1 to 4) := (others => '0');

begin

BLOCK_E:
LED(3) <= SW(3) and sig(1);

BLOCK_F:
LED(2) <= SW(2) and sig(2);

BLOCK_G:
LED(1) <= SW(1) and sig(3);

BLOCK_H:
LED(0) <= SW(0) and sig(4);

BLOCK_A:
	process(CLK_50MHz)
		constant count_range: integer range 0 to 50e6 := 50e6/(2 * 1000);
		variable count: integer range 0 to count_range := 0;
	begin
		if rising_edge(CLK_50MHz) then
			if count < count_range then				
				count := count + 1;
			else
				sig(1) <= not sig(1);
				count := 0;
			end if;
		end if;
	end process;

BLOCK_B:
	process(CLK_50MHz)
		constant count_range: integer range 0 to 50e6 := 50e6/(2 *100);
		variable count: integer range 0 to count_range := 0;
	begin
		if rising_edge(CLK_50MHz) then
			if count < count_range then
				count := count + 1;
			else
				sig(2) <= not sig(2);
				count := 0;
			end if;
		end if;
	end process;


BLOCK_C:
	process(CLK_50MHz)
		constant count_range: integer range 0 to 50e6 := 50e6/(2 * 10);
		variable count: integer range 0 to count_range := 0;
	begin
		if rising_edge(CLK_50MHz) then
			if count < count_range then
				count := count + 1;
			else
				sig(3) <= not sig(3);
				count := 0;
			end if;
		end if;
	end process;

BLOCK_D:
	process(CLK_50MHz)
		constant count_range: integer range 0 to 50e6 := 50e6/2;
		variable count: integer range 0 to count_range := 0;
	begin
		if rising_edge(CLK_50MHz) then
			if count < count_range then
				count := count + 1;
			else
				sig(4) <= not sig(4);
				count := 0;
			end if;
		end if;
	end process;
	
end architecture;