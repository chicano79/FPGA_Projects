library ieee;
use ieee.std_logic_1164.all;

entity dec2to4 is
    port(
        A: in std_logic_vector(1 downto 0);
        Q: out std_logic_vector(3 downto 0);
        E: in std_logic
    );
end entity;


architecture behaviour of dec2to4 is

    signal EA: std_logic_vector(2 downto 0);

begin

    EA <= E & A;

    with EA select
        Q <= "0001" when "100",
             "0010" when "101",
             "0100" when "110",
             "1000" when "111",
             "0000" when others;


--- using when-else statement in

end architecture;