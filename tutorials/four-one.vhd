library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity four_one_mux is
    port (
        D : in std_logic_vector(0 to 3);
        Q : out std_logic;
        SEL: in std_logic_vector(0 to 1)
    );
end four_one_mux;

architecture rtl of four_one_mux is

begin
    with SEL select
        Q <= D(0) when "00",
        Q <= D(1) when "01",
        Q <= D(2) when "10",
        Q <= D(3) when "11";

end architecture;

-------------------------------------------------------
-------------------------------------------------------
--****************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eight_one_mux is
    port (
        D : in std_logic_vector(0 to 7);
        Q : out std_logic;
        SEL: in std_logic_vector(0 to 2)
    );
end eight_one_mux;

architecture rtl of eight_one_mux is

    signal internal_Q : std_logic_vector(0 to 1);

    component four_one_mux is
        port (
            D : in std_logic_vector(0 to 3);
            Q : out std_logic;
            SEL: in std_logic_vector(0 to 1)
        );
    end component;

begin
    
    UUT1: four_one_mux    
    port map(
            D => D(0 to 3),
            Q => internal_Q(0),
            SEL => SEL(0 to 1)
        );

    UUT2: four_one_mux    
    port map(
            D => D(4 to 7),
            Q => internal_Q(1),
            SEL => SEL(0 to 1)
        );    

    with SEL(2) select
        Q <= internal_Q(0) when '0',
        Q <= internal_Q(1) when '1';

end architecture;