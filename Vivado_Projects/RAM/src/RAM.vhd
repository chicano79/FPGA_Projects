library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;




entity RAM is
	generic(
		data_width: integer;
		address_width: integer
	);
	
	port(
		address_line: in std_logic_vector(address_width-1 downto 0);
		data_line: buffer std_logic_vector(data_width-1 downto 0);
		write_en: in std_logic;
		clk_100MHz: in std_logic
	);

end entity;


architecture rtl of RAM is

type RAM_space is array(0 to 2**address_width-1) of std_logic_vector(data_width-1 downto 0);

signal myRAM: RAM_space;



begin


RAM_READ_WRTIE_PROC:
	process(clk_100MHz)
	
	
	begin
		if rising_edge(clk_100MHz) then
			if write_en = '1' then 
				myRAM(to_integer(unsigned(address_line)))  <= data_line;
			else
				data_line <= myRAM(to_integer(unsigned(address_line)));
			end if;		
		end if;
	end process;


end architecture;