library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity state_machine is
	port(
		clk, rst: in std_logic;
		key: in std_logic_vector(1 to 3);
		ledr: out std_logic_vector(1 to 3)
	);
end entity;



architecture rtl of state_machine is

type states is (STATE1, STATE2, STATE3);
signal stateVariable: states := STATE1;

begin

STATE_MACHINE_PROC: process(clk, rst)
	
	begin
		if rst = '0' then
			stateVariable <= STATE1;
			ledr <= "100";		
		elsif rising_edge(clk) then
		
			case stateVariable is  --this is the state machine implemented with case
			
				when STATE1 =>     --state1
					ledr <= "100";
					if key(1) = '0' then
						stateVariable <= STATE2;					
					end if;
					
				when STATE2 =>     --state2
					ledr <= "010";
					if key(2) = '0' then
						stateVariable <= STATE3;					
					end if;
					
				when STATE3 =>     --state3
					ledr <= "001";
					if key(3) = '0' then
						stateVariable <= STATE1;					
					end if;	
					
				when others  =>    --unkown state
					stateVariable <= STATE1;
					
			end case;		
		end if;
	end process;
	
end architecture;