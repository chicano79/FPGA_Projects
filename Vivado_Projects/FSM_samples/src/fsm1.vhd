library ieee;
use ieee.std_logic_1164.all;


entity traffic_light is
	generic(
		FREQ: integer := 100e6	
	);
	
	port(
		clk_100MHz: in std_logic := '0';
		rst: in std_logic;
		LED: out std_logic_vector := (1 downto 0)	
	);
end entity;

architecture rtl of traffic_light is

signal presentState, nextState: std_logic_vector(1 downto 0);

begin


TRAFFIC_STATES:
	process(clk_100MHz)		

	begin
		if rst = '1' then 
		
			presentState <= "00";
			nextState <= "00";
			
		elsif clk_100MHz'event and clk_100MHz = '1' then
			case presentState is
			
				when "00" =>
					LED <= "00";
					nextState <= "01";
					
				when "01" =>
					LED <= "01";
					nextState <= "10";
			
				when "10" =>	
					LED <= "10";
					nextState <= "11";
			
				when "11" =>
					LED <= "11";
					nextState <= "00";
												
				when others =>
					LED <= "00";
					nextState <= "00";
			
			end case;
			presentState <= nextState;
		end if;	
	end process;


end architecture;