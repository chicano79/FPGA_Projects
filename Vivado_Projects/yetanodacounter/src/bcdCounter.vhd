library ieee;
use ieee.std_logic_1164.all;


entity eightDigitBCDcounter is
	generic(
		FREQ: integer := 100e6	
	);
	port(
		clk_main: in std_logic;
		rst: in std_logic;
		anode: out std_logic_vector(7 downto 0);
		segment: out std_logic_vector(0 to 6) := (6 => '1', others => '0')	
	);
end entity;


architecture rtl of eightDigitBCDcounter is

type bcd_digits is array(0 to 7) of integer range 0 to 10;
signal BCDcounter: bcd_digits := (others => 0);

type display_segments is array(0 to 7) of std_logic_vector(0 to 6);
signal seg: display_segments := (others => (6 => '1', others => '0'));

signal clk_1HZ: std_logic;
signal selector: integer range 0 to 7 := 0;
signal internal_anode: std_logic_vector(7 downto 0) := (0 => '0', others => '1');

begin

anode <= internal_anode;

with selector select
	segment <= seg(0) when 0,
			   seg(1) when 1,
			   seg(2) when 2,
			   seg(3) when 3,
			   seg(4) when 4,
			   seg(5) when 5,
			   seg(6) when 6,
			   seg(7) when 7;		  

BLOCK_AA:
	process(clk_main, rst)
		constant count_range: integer range 0 to FREQ := FREQ/500;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter := 0;
			internal_anode <= (0 => '0', others => '1');
			selector <= 0;
		elsif rising_edge(clk_main) then
			if counter < count_range then
				counter := counter + 1;			
			else	
				counter := 0;
				internal_anode <=  internal_anode(6 downto 0) & internal_anode(7);
				if selector < 7 then
					selector <= selector + 1;
				else
					selector <= 0;
				end if; 
			end if;
		end if;
	end process;


	
BLOCK_A:
	process(clk_main, rst)
		constant count_range: integer range 0 to FREQ := FREQ/1000;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rst = '0' then
			counter := 0;
			clk_1HZ <= '0';
		elsif rising_edge(clk_main) then
			if counter < count_range then
				counter := counter + 1;
				clk_1HZ <= '0';
			else	
				counter := 0;
				clk_1HZ <= '1';
			end if;
		end if;
	end process;
		
BLOCK_B:
	process(clk_1HZ, rst)
	
	begin
		if rst = '0' then
			BCDcounter <= (others => 0);
			seg <= (others => (6 => '1', others => '0'));
		elsif rising_edge(clk_1HZ) then
			case BCDcounter(0) is
				when 0 =>
					seg(0) <= "0000001";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 1 =>
					seg(0) <= "1001111";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 2 =>
					seg(0) <= "0010010";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 3 =>
					seg(0) <= "0000110";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 4 =>
					seg(0) <= "1001100";
					BCDcounter(0) <= BCDcounter(0) + 1;					
				when 5 =>
					seg(0) <= "0100100";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 6 =>
					seg(0) <= "0100000";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 7 =>
					seg(0) <= "0001111";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 8 =>
					seg(0) <= "0000000";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 9 =>
					seg(0) <= "0000100";
					BCDcounter(0) <= BCDcounter(0) + 1;
				when 10 =>
					BCDcounter(1) <= BCDcounter(1) + 1;
					BCDcounter(0) <= 0;			
			end case;	
			
			case BCDcounter(1) is
				when 0 =>
					seg(1) <= "0000001";
				when 1 =>
					seg(1) <= "1001111";
				when 2 =>
					seg(1) <= "0010010";
				when 3 =>
					seg(1) <= "0000110";
				when 4 =>
					seg(1) <= "1001100";					
				when 5 =>
					seg(1) <= "0100100";
				when 6 =>
					seg(1) <= "0100000";
				when 7 =>
					seg(1) <= "0001111";
				when 8 =>
					seg(1) <= "0000000";
				when 9 =>					
					seg(1) <= "0000100";
				when 10 =>
					BCDcounter(2) <= BCDcounter(2) + 1;
					BCDcounter(1) <= 0;			
			end case;
			
			case BCDcounter(2) is
				when 0 =>
					seg(2) <= "0000001";
				when 1 =>
					seg(2) <= "1001111";
				when 2 =>
					seg(2) <= "0010010";
				when 3 =>
					seg(2) <= "0000110";
				when 4 =>
					seg(2) <= "1001100";					
				when 5 =>
					seg(2) <= "0100100";
				when 6 =>
					seg(2) <= "0100000";
				when 7 =>
					seg(2) <= "0001111";
				when 8 =>
					seg(2) <= "0000000";
				when 9 =>					
					seg(2) <= "0000100";
				when 10 =>
					BCDcounter(3) <= BCDcounter(3) + 1;
					BCDcounter(2) <= 0;			
			end case;

			case BCDcounter(3) is
				when 0 =>
					seg(3) <= "0000001";
				when 1 =>
					seg(3) <= "1001111";
				when 2 =>
					seg(3) <= "0010010";
				when 3 =>
					seg(3) <= "0000110";
				when 4 =>
					seg(3) <= "1001100";					
				when 5 =>
					seg(3) <= "0100100";
				when 6 =>
					seg(3) <= "0100000";
				when 7 =>
					seg(3) <= "0001111";
				when 8 =>
					seg(3) <= "0000000";
				when 9 =>					
					seg(3) <= "0000100";
				when 10 =>
					BCDcounter(4) <= BCDcounter(4) + 1;
					BCDcounter(3) <= 0;			
			end case;

			case BCDcounter(4) is
				when 0 =>
					seg(4) <= "0000001";
				when 1 =>
					seg(4) <= "1001111";
				when 2 =>
					seg(4) <= "0010010";
				when 3 =>
					seg(4) <= "0000110";
				when 4 =>
					seg(4) <= "1001100";					
				when 5 =>
					seg(4) <= "0100100";
				when 6 =>
					seg(4) <= "0100000";
				when 7 =>
					seg(4) <= "0001111";
				when 8 =>
					seg(4) <= "0000000";
				when 9 =>					
					seg(4) <= "0000100";
				when 10 =>
					BCDcounter(5) <= BCDcounter(5) + 1;
					BCDcounter(4) <= 0;			
			end case;

			case BCDcounter(5) is
				when 0 =>
					seg(5) <= "0000001";
				when 1 =>
					seg(5) <= "1001111";
				when 2 =>
					seg(5) <= "0010010";
				when 3 =>
					seg(5) <= "0000110";
				when 4 =>
					seg(5) <= "1001100";					
				when 5 =>
					seg(5) <= "0100100";
				when 6 =>
					seg(5) <= "0100000";
				when 7 =>
					seg(5) <= "0001111";
				when 8 =>
					seg(5) <= "0000000";
				when 9 =>					
					seg(5) <= "0000100";
				when 10 =>
					BCDcounter(6) <= BCDcounter(6) + 1;
					BCDcounter(5) <= 0;			
			end case;

			case BCDcounter(6) is
				when 0 =>
					seg(6) <= "0000001";
				when 1 =>
					seg(6) <= "1001111";
				when 2 =>
					seg(6) <= "0010010";
				when 3 =>
					seg(6) <= "0000110";
				when 4 =>
					seg(6) <= "1001100";					
				when 5 =>
					seg(6) <= "0100100";
				when 6 =>
					seg(6) <= "0100000";
				when 7 =>
					seg(6) <= "0001111";
				when 8 =>
					seg(6) <= "0000000";
				when 9 =>					
					seg(6) <= "0000100";
				when 10 =>
					BCDcounter(7) <= BCDcounter(7) + 1;
					BCDcounter(6) <= 0;			
			end case;

			case BCDcounter(7) is
				when 0 =>
					seg(7) <= "0000001";
				when 1 =>
					seg(7) <= "1001111";
				when 2 =>
					seg(7) <= "0010010";
				when 3 =>
					seg(7) <= "0000110";
				when 4 =>
					seg(7) <= "1001100";					
				when 5 =>
					seg(7) <= "0100100";
				when 6 =>
					seg(7) <= "0100000";
				when 7 =>
					seg(7) <= "0001111";
				when 8 =>
					seg(7) <= "0000000";
				when 9 =>					
					seg(7) <= "0000100";
				when 10 =>
					BCDcounter(7) <= 0;			
			end case;			
			
		end if;	
	end process;



end architecture;