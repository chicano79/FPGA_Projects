library ieee;
use ieee.std_logic_1164.all;

---------- Uncomment the following library declaration if using
---------- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity RTCC is
	generic(
		FREQ: integer := 100e6;
		I2C_FREQ: integer := 100e3;
		DEVICE_ID: std_logic_vector(6 downto 0) := "1101111";
		----------CHIP_SELECT_BITS: std_logic_vector(2 downto 0) := "111";
		WR: std_logic := '0';
		RD: std_logic := '1';
		reset_logic: std_logic := '1'
	);
	
	port(
		CLK100MHZ: in std_logic;
		CPU_RESETN: in std_logic;
		
		SEG_7: buffer std_logic_vector(0 to 6);
		ANODE: buffer std_logic_vector(7 downto 0) := (others => '1');
		
		SCL: out std_logic;
		SDA: inout std_logic
	);	
end entity;

architecture rtl of RTCC is

constant CMD_BUS_RST : std_logic_vector(7 downto 0)         := x"00";
constant CMD_START_CONDITION : std_logic_vector(7 downto 0) := x"01";
constant CMD_TX_BYTE : std_logic_vector(7 downto 0)         := x"02";
constant CMD_RX_BYTE_ACK : std_logic_vector(7 downto 0)     := x"03";
constant CMD_RX_BYTE_NACK : std_logic_vector(7 downto 0)    := x"04";
constant CMD_STOP_CONDITION : std_logic_vector(7 downto 0)  := x"05";

constant startingTimeRegister: std_logic_vector(7 downto 0) := x"00";

signal cmd_tdata: std_logic_vector(7 downto 0) := (others => '0');
signal cmd_tvalid: std_logic := '0';
signal cmd_tready: std_logic;
signal rd_tdata: std_logic_vector(7 downto 0);
signal rd_tvalid: std_logic;
signal rd_tready: std_logic := '0';
signal nack: std_logic;

signal byte_to_send: std_logic_vector(7 downto 0);

signal secondsRegister, minutesRegister, hoursRegister: std_logic_vector(7 downto 0);

signal clk_DISPLAYscan, rst, CLK400KHZ: std_logic;

signal display_segments: std_logic_vector(0 to 55) := (others => '0');
signal disp_selector: integer range 0 to 20 := 0;

type seg_light_pattern is array(0 to 9) of std_logic_vector(0 to 6);

constant mdigits: seg_light_pattern :=  
		(
			"0000001", "1001111", "0010010", "0000110", "1001100",
			"0100100", "0100000", "0001111", "0000000", "0000100"		
		);
		
subtype bcd_digit is std_logic_vector(0 to 6);

signal internal_anode: std_logic_vector(7 downto 0) := (0 => '0', others => '1');

signal i2c_state_variable: integer range 0 to 30 := 1;

signal cpu_rst: std_logic;

function get_segment(dg: integer range 0 to 9) return bcd_digit is
begin
	return mdigits(dg);
end function;


begin

display_segments(0 to 6) <= get_segment(to_integer(unsigned(secondsRegister(3 downto 0))));
display_segments(7 to 13) <= get_segment(to_integer(unsigned('0' & secondsRegister(6 downto 4))));
display_segments(14 to 20) <= get_segment(to_integer(unsigned(minutesRegister(3 downto 0))));
display_segments(21 to 27) <= get_segment(to_integer(unsigned(minutesRegister(7 downto 4))));
display_segments(28 to 34) <= get_segment(to_integer(unsigned(hoursRegister(3 downto 0))));
display_segments(35 to 41) <= get_segment(to_integer(unsigned('0' & hoursRegister(4 downto 4))));
display_segments(42 to 48) <= (others => '1');
display_segments(49 to 55) <= (others => '1');

ANODE <= internal_anode;

cpu_rst <= not CPU_RESETN;

RESET_SYNC:
entity work.reset_sync(rtl)
  port map(
    clk => CLK100MHZ, ---------- Slowest clock that uses rst_out
    rst_in => cpu_rst,
    rst_out => rst
  );

I2C_CONTROLLER:
entity work.i2c_controller(rtl)
	-- generic map(
		-- clk_hz => FREQ,
		-- i2c_hz => I2C_FREQ,
		-- reset_logic => '1'
	-- )
	
	port map(
		CLK100MHZ => CLK100MHZ,
		CPU_RESETN => CPU_RESETN,
		SCL => SCL,
		SDA => SDA		
	);
	
MUX_TO_DISPLAY:
	with disp_selector select
		SEG_7 <= display_segments(0 to 6)     when 0,
				 display_segments(7 to 13)    when 1,
				 display_segments(14 to 20)   when 2,
				 display_segments(21 to 27)   when 3,
				 display_segments(28 to 34)   when 4,
				 display_segments(35 to 41)   when 5,
				 display_segments(42 to 48)   when 6,
				 display_segments(49 to 55)   when 7,				 
				 (others => '1') when others;

CLOCK_1KHz_GEN:
	process(CLK100MHZ)
		constant displayStates: integer range 0 to 10 := 8;
		constant count_range: integer range 0 to FREQ := (FREQ/1e3)-1;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rising_edge(CLK100MHZ) then 
			if counter < count_range then
				counter := counter + 1;
			else 
				counter := 0;
				internal_anode <=  internal_anode(6 downto 0) & internal_anode(7);
				if disp_selector < displayStates-1 then
					disp_selector <= disp_selector + 1;
				else
					disp_selector <= 0;
				end if;
			end if;
		end if;
	end process;
	
CLOCK_400KHz_GEN:
	process(CLK100MHZ)
		constant displayStates: integer range 0 to 10 := 8;
		constant count_range: integer range 0 to FREQ := (FREQ/400e3)-1;
		variable counter: integer range 0 to count_range := 0;
	begin
		if rising_edge(CLK100MHZ) then 
			if counter < count_range then
				counter := counter + 1;
				CLK400KHZ <= '0';
			else 
				counter := 0;
				CLK400KHZ <= '1';		
			end if;
		end if;
	end process;
	
FETCH_RTCC:
	process(CLK400KHZ, rst)
	
        procedure send_cmd(cmd: std_logic_vector(7 downto 0)) is        
        begin            
            cmd_tdata <= cmd;
            cmd_tvalid <= '1';          
			if cmd_tvalid = '1' and cmd_tready = '1' then
			  cmd_tvalid <= '0';
			  i2c_state_variable <= i2c_state_variable + 1; ----------go to the next state                
			end if;
        end procedure;

        procedure read_byte is
        begin
            rd_tready <= '1';       
			if rd_tvalid = '1' and rd_tready = '1' then
				----------the data read at this point is in the rd_tdata register;
				rd_tready <= '0';
				i2c_state_variable <= i2c_state_variable + 1; ----------go to the next state 
			end if;         
        end procedure;

	begin
		if rst = reset_logic then
			----------send_cmd(CMD_BUS_RST);
			i2c_state_variable <= 1;	
		else			
			case i2c_state_variable is
			
				----------reset the I2C Bus
				when 0 =>
					send_cmd(CMD_BUS_RST);					
						
				------ initiate a start condition
				when 1 =>
					send_cmd(CMD_START_CONDITION);
					
				------ prep and send control byte with write option
				when 2 =>
					--byte_to_send <= DEVICE_ID & WR;
					send_cmd(CMD_TX_BYTE);					
				when 3 =>
					send_cmd(DEVICE_ID & WR);
					
				------ prep and send the data address
				when 4 =>
					--byte_to_send <= startingTimeRegister;
					send_cmd(CMD_TX_BYTE);					
				when 5 =>
					send_cmd(x"00");
				
				when 6 =>
					send_cmd(CMD_STOP_CONDITION);
					
				when 7 =>
					i2c_state_variable <= i2c_state_variable;
					
				-------- initiate a repeated start condition
				-- when 6 =>
					-- send_cmd(CMD_START_CONDITION);
					
				-------- send control byte with read option
				-- when 7 =>
					-- byte_to_send <= DEVICE_ID & RD;
					-- send_cmd(CMD_TX_BYTE);
				-- when 8 =>
					-- send_cmd(byte_to_send);
				
				-------- prep and read the 1st byte with ACK
				-- when 9 =>
					-- send_cmd(CMD_RX_BYTE_ACK);
				-- when 10 =>
					-- read_byte;
				
				-------- store the 1st byte and prep for the second byte with ACK
				-- when 11 =>
					-- secondsRegister <= rd_tdata;
					-- send_cmd(CMD_RX_BYTE_ACK);					
				-- when 12 =>
					-- read_byte;

				-------- store the 2nd byte and prep for the third byte with NACK
				-- when 13 =>
					-- minutesRegister <= rd_tdata;
					-- send_cmd(CMD_RX_BYTE_NACK);					
				-- when 14 =>
					-- read_byte;		

				-------- store the 3rd byte and issue stop command
				-- when 15 =>
					-- hoursRegister <= rd_tdata;
					-- send_cmd(CMD_STOP_CONDITION);
				
				-------- start all over after 10secs
				-- when 16 =>
					-- counter := 0;
					-- i2c_state_variable <= 1;
				
				when others =>
					i2c_state_variable <= i2c_state_variable;
			
			end case;
			
		end if;
		
	end process;
	
end architecture;
