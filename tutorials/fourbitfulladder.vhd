library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fourbitfulladder is
    port (
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector(3 downto 0);
        SUM : out std_logic_vector(3 downto 0);
        Carryin : in std_logic;
        Carryout : out std_logic
    );
end fourbitfulladder;

architecture rtl of fourbitfulladder is


signal Internal_Cin : std_logic_vector(3 downto 0);

    component full_adder is
        port (
            A, B, Cin : in std_logic;
            SUM, Cout : out std_logic
        );
    end component;

begin

    UUT1: full_adder
    port map(
            A => A(0), 
            B => B(0),
            Cin => Carryin,            
            SUM => SUM(0),
            Cout => Internal_Cin(1)
        );

    UUT2: full_adder
    port map(
            A => A(1), 
            B => B(1),
            Cin => Internal_Cin(1),            
            SUM => SUM(1),
            Cout => Internal_Cin(2)
        );

    UUT3: full_adder
    port map(
            A => A(2), 
            B => B(2),
            Cin => Internal_Cin(2),            
            SUM => SUM(2),
            Cout => Internal_Cin(3)
        );

    UUT4: full_adder
    port map(
            A => A(3), 
            B => B(3),
            Cin => Internal_Cin(3),            
            SUM => SUM(3),
            Cout => Carryout
        );

end architecture;