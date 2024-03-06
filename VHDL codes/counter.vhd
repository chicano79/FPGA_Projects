library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity counter is

	port(
		clk_50MHz: in std_logic;
		rst: in std_logic;
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(0 to 6)
	);

end entity;


architecture rtl of counter is

subtype bcd_digit is std_logic_vector(0 to 6);

type bcd_counters is array(0 to 5) of integer range 0 to 9;
type bcd_digit_array is array(0 to 9) of bcd_digit;

constant div: integer := 250e3;

constant digits: bcd_digit_array :=
		(
			"0000001", "1001111", "0010010", "0000110", "1001100",
			"0100100", "0100000", "0001111", "0000000", "0000100"		
		);


signal digit_counters: bcd_counters := (0, 0, 0, 0, 0, 0);
signal counter: integer range 0 to div := 0;
signal clk_200Hz: std_logic;

function get_segment(d: integer range 0 to 9) return bcd_digit is
begin
	return digits(d);
end function;
 


begin

--HEX0 <= get_segment(digit_counters(0));
--HEX1 <= get_segment(digit_counters(1));
--HEX2 <= get_segment(digit_counters(2));
--HEX3 <= get_segment(digit_counters(3));
--HEX4 <= get_segment(digit_counters(4));
--HEX5 <= get_segment(digit_counters(5));

HEX0 <= digits(digit_counters(0));
HEX1 <= digits(digit_counters(1));
HEX2 <= digits(digit_counters(2));
HEX3 <= digits(digit_counters(3));
HEX4 <= digits(digit_counters(4));
HEX5 <= digits(digit_counters(5));

	process(clk_50MHz) 	
	begin			
		if clk_50MHz'event and clk_50MHz = '1' then 
			counter <= counter + 1;
			if counter >= div then 
				counter <= 0;
				clk_200Hz <= not clk_200Hz;
			end if;		
		end if;	
	end process;
	
	
	process(clk_200Hz, rst)
	begin
		if rst = '0' then
			digit_counters <= (0, 0, 0, 0, 0, 0);
		elsif rising_edge(clk_200Hz) then 
			if digit_counters(0) < 9 then
				digit_counters(0) <= digit_counters(0) + 1;
			else
				digit_counters(0) <= 0;
				if digit_counters(1) < 9 then 
					digit_counters(1) <= digit_counters(1) + 1;
				else
					digit_counters(1) <= 0;
					if digit_counters(2) < 9 then
						digit_counters(2) <= digit_counters(2) + 1;
					else 
						digit_counters(2) <= 0;
						if digit_counters(3) < 9 then
							digit_counters(3) <= digit_counters(3) + 1;
						else
							digit_counters(3) <= 0;
							if digit_counters(4) < 9 then 
								digit_counters(4) <= digit_counters(4) + 1;
							else
								digit_counters(4) <= 0;
								if digit_counters(5) < 9 then 
									digit_counters(5) <= digit_counters(5) + 1;
								else
									digit_counters(5) <= 0;								
								end if;							
							end if;						
						end if;					
					end if;				
				end if;			
			end if;		
		end if;
	end process;


end architecture;