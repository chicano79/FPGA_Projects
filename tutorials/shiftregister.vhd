library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_reg is
    port (
        clk : in std_logic;
        Q : out std_logic_vector(7 downto 0);
        D : in std_logic_vector(7 downto 0);
        S_in: in std_logic;
        S_out: out std_logic;
        rst : in std_logic;   --asynchronous reset input
        Test : in std_logic
    );
end shift_reg;

architecture rtl of shift_reg is

    signal shift_reg : std_logic_vector(7 downto 0) := (others => '0');

begin

    S_out <= shift_reg(7);
    Q <= shift_reg;

    process(clk)

    begin
        if rst = '1' then
            shift_reg <= (others => '0');
        elsif rising_edge(clk) then
            if Test = '1' then             
                shift_reg <= shift_reg(6 downto 0) & S_in; --this is left shift
            else
                shift_reg <= D;            
            end if;
        end if;
    end process;

end architecture;




library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uinversal_shift_Reg is
    generic(
        WIDTH: integer range 0 to integer'high 
    );
    port (
        clk : in std_logic;
        Q : out std_logic_vector(WIDTH-1 downto 0);
        D : in std_logic_vector(WIDTH-1 downto 0);
        S_in: in std_logic;
        S_out: out std_logic;
        rst : in std_logic;   --asynchronous reset input
        dir : in std_logic;   --asynchronous direction input
        load : in std_logic   --asynchronous parallel load input
    );
end uinversal_shift_Reg;

architecture rtl of uinversal_shift_Reg is

    signal shift_reg : std_logic_vector(WIDTH-1 downto 0) := (others => '0');

begin
  
    Q <= shift_reg;

    process(clk, rst, load)

    begin
        if rst = '1' then
            shift_reg <= (others => '0');
        elsif load = '1' then
            shift_reg <= D;
        elsif rising_edge(clk) then
            if dir = '0' then             
                shift_reg <= shift_reg(shift_reg'left-1 downto 0) & S_in; --this is left shift
                S_out <= shift_reg(shift_reg'left);
            else
                shift_reg <= S_in & shift_reg(shift_reg'left downto 1); --this is right shift
                S_out <= shift_reg(shift_reg'right);                            
            end if;
        end if;
    end process;

end architecture;











library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uinversal_counter is
    generic(
        WIDTH: integer range 0 to integer'high 
    );
    port (
        clk : in std_logic;
        Q : out std_logic_vector(WIDTH-1 downto 0);
        D : in std_logic_vector(WIDTH-1 downto 0);
        enable: in std_logic;
        rst : in std_logic;   --asynchronous reset input
        dir : in std_logic;   --asynchronous count direction input
        load : in std_logic   --asynchronous parallel load input
    );
end uinversal_counter;

architecture rtl of uinversal_counter is

    signal counter_reg : std_logic_vector(WIDTH-1 downto 0) := (others => '0');

begin
  
    Q <= counter_reg;

    process(clk, rst, load)

    begin
        if rst = '1' then
            counter_reg <= (others => '0');
        elsif load = '1' then
            counter_reg <= D;
        elsif rising_edge(clk) and enable = '1' then
            if dir = '0' then             
                counter_reg <= counter_reg + 1; --this is up count                
            else
                counter_reg <= counter_reg - 1; --this is down count                                           
            end if;
        end if;
    end process;

end architecture;