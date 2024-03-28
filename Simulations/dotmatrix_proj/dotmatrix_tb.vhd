library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity dotmatrix_tb is
end dotmatrix_tb;

architecture sim of dotmatrix_tb is

    constant clk_hz : integer := 50e6;
    constant clk_period : time := 1 sec / clk_hz;

    signal CLK50MHZ : std_logic := '0';
    signal LEDR: std_logic_vector(0 to 9) := (others => '0');
    signal CPU_RESETN: std_logic := '1';
	signal GPIO: std_logic_vector(0 to 19) := (others => '0');

    -- constant C: string := "This is a string";
    -- signal X: std_logic_vector(3 downto 0) := "1010";
    -- signal Y: integer := 100;

begin

    CLK50MHZ <= not CLK50MHZ after clk_period / 2;

    DUT : entity work.dotmatrix_show(rtl)
	generic map(
		FREQ => 50e6,  --50MHz
		DOTMATRIX_WIDTH => 32  -- := 32	
	)
	
	port map(
		CLK50MHZ => CLK50MHZ,
		LEDR => LEDR, 
		CPU_RESETN => CPU_RESETN,
		GPIO => GPIO
	);


    SEQUENCER_PROC : process
    begin
        CPU_RESETN <= '0';

        wait for 100 ns;

        CPU_RESETN <= '1';

        --wait until rising_edge(CLK50MHZ);
        
        wait for clk_period * 2000;


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