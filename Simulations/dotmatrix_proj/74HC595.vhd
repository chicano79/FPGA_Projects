library ieee;
use ieee.std_logic_1164.all;



entity e74HC595 is
	generic(
		BUS_WIDTH: integer range 0 to 64
	);

	port(
		CLK: in std_logic;
		D_in: in std_logic;
		LAT_CLK: in std_logic;
		OE: in std_logic;
		RST: in std_logic;		
		Q: out std_logic_vector(BUS_WIDTH-1 downto 0) := (others => '0')
	);
end entity;



architecture rtl of e74HC595 is
signal shifted_bits: std_logic_vector(BUS_WIDTH-1 downto 0) := (others => '0');
signal latched_bits: std_logic_vector(BUS_WIDTH-1 downto 0) := (others => '0');

begin
	Q <= latched_bits when OE = '0' else (others => 'Z');

	process(CLK, RST)	
	begin
		if RST = '0' then			
			shifted_bits <= (others => '0');
		elsif rising_edge(CLK) then
			shifted_bits <= shifted_bits(shifted_bits'left-1 downto 0) & D_in;
		end if;
	end process;

	process(LAT_CLK)	
	begin
		if rising_edge(LAT_CLK) then
			latched_bits <= shifted_bits;
		end if;
	end process;

end architecture;
