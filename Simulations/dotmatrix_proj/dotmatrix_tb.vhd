library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity dotmatrix_tb is
    generic(
        FREQ: positive := 100e6;
		BUS_WIDTH: integer range 0 to 64 := 32
	);
end dotmatrix_tb;

architecture sim of dotmatrix_tb is

    constant clk_hz : integer := FREQ;
    constant clk_period : time := (1 sec) / clk_hz;

    signal MAIN_CLK:    std_logic := '0';
    signal LEDR:        std_logic := '0';
    signal CPU_RESETN:  std_logic := '1';
	signal GPIO:        std_logic_vector(0 to 16) := (others => '0');
    signal SEL_BUTN:    std_logic := '0';
    
    signal Q: std_logic_vector(BUS_WIDTH-1 downto 0) := (others => '0');

begin

    MAIN_CLK <= not MAIN_CLK after clk_period/2;

    e74HC595: entity work.e74HC595(rtl)
        generic map(
            BUS_WIDTH => BUS_WIDTH
        )
        port map(
            CLK     => GPIO(6),
            D_in    => GPIO(0),
            LAT_CLK => GPIO(4),
            OE      => GPIO(2),
            RST     => '1',
            Q       => Q
        ); 

    TOP_ENTITY: entity work.main_top_module(rtl)
        generic map(
            FREQ => FREQ,
            DOTMATRIX_WIDTH => BUS_WIDTH
        )	
        
        port map(
            MAIN_CLK => MAIN_CLK,		
            CPU_RESETN => CPU_RESETN,
            SEL_BUTN => SEL_BUTN,
            LEDR => LEDR,
            GPIO => GPIO
        );


    SEQUENCER_PROC : process
    begin
        
         --wait for 20 ns;

        CPU_RESETN <= '0';

        wait for 100 ns;

        CPU_RESETN <= '1';
        SEL_BUTN <= '1';
        
        wait for clk_period * 100e6;  --wait until after 8 ms.

        SEL_BUTN <= '0';

        wait for clk_period * 100e6;  --wait until after 2 ms.

        SEL_BUTN <= '1';

        wait for clk_period * 100e6;  --wait until after 8 ms.

        SEL_BUTN <= '0';

        wait for clk_period * 100e6;  --wait until after 2 ms.

        SEL_BUTN <= '1';




        -- wait for clk_period * 10;
        -- assert false
        --     report "Replace this with your test cases"
        --     severity failure;

        wait;
        
        --finish;
    end process;

    -- FileWriteProcess: process
    --     file outputfile: text;
    --     variable linebuffer: line;
    -- begin
    --     file_open(outputfile, "outputfile.txt", write_mode);

    --     write(linebuffer, string'("Signal X is : "));
    --     write(linebuffer, X);
    --     writeline(outputfile, linebuffer);

    --     write(linebuffer, string'("Signal Y is : "));
    --     write(linebuffer, Y);
    --     writeline(outputfile, linebuffer);

    --     write(linebuffer, string'("Signal C is : "));
    --     write(linebuffer, C);
    --     writeline(outputfile, linebuffer);

    --     file_close(outputfile);

    --     report "Text file written!";

    --     wait;

    -- end process;



    -- FileReadProcess: process
    --     file inputfile: text;  --file handle
    --     variable linebuffer: line;
    --     variable int: integer;
    --     variable char: character;
    --     variable vector: std_logic_vector(3 downto 0);
    -- begin
    -- file_open(inputfile, "inputfile.txt", read_mode);

    -- while not endfile(inputfile) loop
    --     readline(inputfile, linebuffer);
    --     read (linebuffer, int);
    --     read (linebuffer, char);
    --     read (linebuffer, vector);
    -- end loop;

    -- file_close(inputfile);

    -- wait;

    -- end process;

end architecture;