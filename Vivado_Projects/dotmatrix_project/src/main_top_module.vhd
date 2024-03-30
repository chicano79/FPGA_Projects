library ieee;
use ieee.std_logic_1164.all;


entity main_top_module is
	generic(
		FREQ: positive := 100e6;  --50MHz
		DOTMATRIX_WIDTH: natural range 0 to 32 := 32	
	);	
	
	port(
		MAIN_CLK:   in std_logic;		
		CPU_RESETN: in std_logic;
		SEL_BUTN:   in std_logic;
		LEDR:       out std_logic  := '0';
		GPIO:       out std_logic_vector(0 to 16) := (10 => 'Z', 11 => 'Z', 13 => 'Z', 15 => 'Z', others => '0')
	);

end entity;



architecture rtl of main_top_module is

	signal	MAIN_CLK_arch1:   std_logic;
	signal	CPU_RESETN_arch1: std_logic;
	signal	LEDR_arch1:       std_logic; 	
	signal	GPIO_arch1:       std_logic_vector(0 to 16);
	
	signal	MAIN_CLK_arch2:   std_logic;
	signal	CPU_RESETN_arch2: std_logic;
	signal	LEDR_arch2:       std_logic;	
	signal	GPIO_arch2:       std_logic_vector(0 to 16);
	
	type arch_states is (ARCH1, ARCH2);
	signal arch_variable: arch_states := ARCH1;
	
	--signal change_state: std_logic;

begin

arch_variable <= ARCH2 when SEL_BUTN = '1' else ARCH1;

UUT1:
	entity work.movingText(rtl)
	
	generic map(
		FREQ => FREQ,
		DOTMATRIX_WIDTH => DOTMATRIX_WIDTH 	
	)
	
	port map(
		MAIN_CLK => MAIN_CLK_arch1,
		LEDR => LEDR_arch1,
		CPU_RESETN => CPU_RESETN_arch1,
		GPIO => GPIO_arch1
	);


UUT2:
	entity work.dotmatrix_show(rtl)
	
	generic map(
		FREQ => FREQ,
		DOTMATRIX_WIDTH => DOTMATRIX_WIDTH 	
	)
	
	port map(
		MAIN_CLK => MAIN_CLK_arch2,
		LEDR => LEDR_arch2,
		CPU_RESETN => CPU_RESETN_arch2,
		GPIO => GPIO_arch2
	);

	
process(MAIN_CLK)
begin
	case arch_variable is 
		when ARCH1 =>
			MAIN_CLK_arch1 <= MAIN_CLK;
			CPU_RESETN_arch1 <= CPU_RESETN;
			LEDR <= LEDR_arch1;
			GPIO <= GPIO_arch1;
			
			MAIN_CLK_arch2 <= '0';
			CPU_RESETN_arch2 <= '0';
	
		when ARCH2 =>
			MAIN_CLK_arch2 <= MAIN_CLK;
			CPU_RESETN_arch2 <= CPU_RESETN;
			LEDR <= LEDR_arch2;
			GPIO <= GPIO_arch2;
			
			MAIN_CLK_arch1 <= '0';
			CPU_RESETN_arch1 <= '0';	
	end case;	
end process;

end architecture;