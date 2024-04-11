library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
    port (
        A, B, Cin : in std_logic;
        SUM, Cout : out std_logic
    );
end full_adder;

architecture rtl of full_adder is
    signal sig1, sig2, sig3 : std_logic;

begin

    sig1 <= A xor B;
    sig2 <= sig1 and Cin;
    sig3 <= A and B;

    SUM <= sig1 xor Cin;
    Cout <= sig2 or sig3;

end architecture;