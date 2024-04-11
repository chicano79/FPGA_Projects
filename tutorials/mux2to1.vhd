library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2to1 is
    port (
        D : in std_logic_vector(0 to 1);
        SEL : in std_logic;
        Q : out std_logic
    );
end mux2to1;

architecture walid of mux2to1 is

begin

Q <= D(0) when SEL = '0' else D(1);

end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4to1 is
    port (
        D : in std_logic_vector(0 to 3);
        SEL : in std_logic_vector(0 to 1);
        Q : out std_logic
    );
end mux4to1;

architecture walid of mux2to1 is

    component mux2to1 is
        port (
            D : in std_logic_vector(0 to 1);
            SEL : in std_logic;
            Q : out std_logic
        );
    end component;

    signal internal_D: std_logic_vector(0 to 1);

begin

    DUT1: mux2to1
        port map(
            D => D(0 to 1),
            SEL =>SEL(0),
            Q : => internal_D(0)
        ); 
        
    DUT2: mux2to1
    port map(
        D => D(2 to 3),
        SEL => SEL(0),
        Q : => internal_D(1)
    );       

    DUT3: mux2to1
    port map(
        D => internal_D,
        SEL => SEL(1),
        Q => Q
    ); 

end architecture;





library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux8to1 is
    port (
        D : in std_logic_vector(0 to 7);
        SEL : in std_logic_vector(0 to 2);
        Q : out std_logic
    );
end mux8to1;

architecture walid of mux8to1 is

    component mux2to1 is
        port (
            D : in std_logic_vector(0 to 1);
            SEL : in std_logic;
            Q : out std_logic
        );
    end component;

    component mux4to1 is
        port (
            D : in std_logic_vector(0 to 3);
            SEL : in std_logic_vector(0 to 1);
            Q : out std_logic
        );
    end component;

    signal internal_D: std_logic_vector(0 to 1);

begin

    DUT1: mux4to1
        port map(
            D => D(0 to 3),
            SEL =>SEL(0 to 1),
            Q : => internal_D(0)
        ); 
        
    DUT2: mux4to1
    port map(
        D => D(4 to 7),
        SEL => SEL(0 to 1),
        Q : => internal_D(1)
    );       

    DUT3: mux2to1
    port map(
        D => internal_D,
        SEL => SEL(2),
        Q => Q
    ); 

end architecture;