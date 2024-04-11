library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory is
    generic (
        A_WIDTH: integer range 0 to integer'high;
        D_WIDTH: integer range 0 to integer'high
    );
    port (
        A_BUS: in std_logic_vector(A_WIDTH - 1 downto 0);
        D_BUS: inout std_logic_vector(D_WIDTH - 1 downto 0);
        WR_EN : in std_logic;  --write enable
        CLK : in std_logic
    );
end entity memory;

architecture rtl of memory is
    type RAM_storage is array((2**A_WIDTH)-1 downto 0) of std_logic_vector(D_WIDTH-1 downto 0);

    signal RAM_memory : RAM_storage;
    
begin
RAM_PROC: process(CLK)
    begin
        if rising_edge(CLK) then 
            if WR_EN  = '1' then
                RAM_memory(to_integer(unsigned(A_BUS))) <= D_BUS;  --write mode
            else
                D_BUS <= RAM_memory(to_integer(unsigned(A_BUS)));  --read mode
            end if;
        end if;        
    end process;
    
end architecture rtl;