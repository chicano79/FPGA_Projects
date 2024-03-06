library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity RAM_tb is
	generic(
		d_width: integer range 0 to 64 := 64;
		add_width: integer range 0 to 10 := 5
	);
end entity;


architecture behavioural of RAM_tb is
	
	
	component RAM is
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

	end component;
	
signal main_clk, w_en: std_logic := '0';
signal add_line: std_logic_vector(add_width-1 downto 0) := (others => '0');
signal d_line: std_logic_vector(d_width-1 downto 0) := x"00000000000000AA";
signal sample: std_logic_vector(d_width-1 downto 0) := (others => '0');



begin
	UUT: RAM 
		generic map(
			data_width => d_width,
			address_width => add_width		
		)
		
	   port map(
			address_line => add_line,
			data_line => d_line,
			write_en => w_en,
			clk_100MHz => main_clk	
		);
	

main_clk <= not main_clk after 10 ns;

process

begin   
	
	--if rising_edge(main_clk) then
	
	   --d_line <= x"00000000000000AA";
	   add_line <= std_logic_vector(to_unsigned(8, add_width));	
	   
	   wait for 10 ns;
	   
	   
	   w_en <= '1';
	   
	   wait for 100 ns;
	   
	--else
	 --  w_en <= '0';
	
	 --sample <= d_line;
	
	--end if;


end process;





end behavioural;