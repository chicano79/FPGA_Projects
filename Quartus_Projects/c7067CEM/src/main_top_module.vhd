library ieee;
use ieee.std_logic_1164.all;


entity main_top_module is
	generic(
		FREQ: positive := 50e6;  --50MHz
		DOTMATRIX_WIDTH: natural range 0 to 32 := 32	
	);	
	
	port(
		CLK50MHZ:   in std_logic;		
		CPU_RESETN: in std_logic;
		BUTN:       in std_logic;
		LEDR:       out std_logic_vector(0 to 9)  := (others => '0');
		GPIO:       out std_logic_vector(0 to 19) := (others => '0')
	);

end entity;



architecture rtl of main_top_module is

	signal	CLK50MHZ_arch1:   std_logic;
	signal	CPU_RESETN_arch1: std_logic;
	signal	LEDR_arch1:       std_logic_vector(0 to 9); 	
	signal	GPIO_arch1:       std_logic_vector(0 to 19);
	
	signal	CLK50MHZ_arch2:   std_logic;
	signal	CPU_RESETN_arch2: std_logic;
	signal	LEDR_arch2:       std_logic_vector(0 to 9);	
	signal	GPIO_arch2:       std_logic_vector(0 to 19);
	
	type arch_states is (ARCH1, ARCH2);
	signal arch_variable: arch_states := ARCH1;
	
	signal change_state: std_logic;

begin

change_state <= not BUTN;

UUT1:
	entity work.movingText(rtl)
	
	generic map(
		FREQ => FREQ,
		DOTMATRIX_WIDTH => DOTMATRIX_WIDTH 	
	)
	
	port map(
		CLK50MHZ => CLK50MHZ_arch1,
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
		CLK50MHZ => CLK50MHZ_arch2,
		LEDR => LEDR_arch2,
		CPU_RESETN => CPU_RESETN_arch2,
		GPIO => GPIO_arch2
	);

	
process(CLK50MHZ)
begin
	case arch_variable is 
		when ARCH1 =>
			CLK50MHZ_arch1 <= CLK50MHZ;
			CPU_RESETN_arch1 <= CPU_RESETN;
			LEDR <= LEDR_arch1;
			GPIO <= GPIO_arch1;
			
			CLK50MHZ_arch2 <= '0';
			CPU_RESETN_arch2 <= '0';
	
		when ARCH2 =>
			CLK50MHZ_arch2 <= CLK50MHZ;
			CPU_RESETN_arch2 <= CPU_RESETN;
			LEDR <= LEDR_arch2;
			GPIO <= GPIO_arch2;
			
			CLK50MHZ_arch1 <= '0';
			CPU_RESETN_arch1 <= '0';	
	end case;	
end process;

process(change_state)
begin
	if rising_edge(change_state) then
		case arch_variable is 
			when ARCH1 =>	
				arch_variable <= ARCH2;
		
			when ARCH2 =>	
				arch_variable <= ARCH1;		
		end case;
	end if;
end process;

end architecture;