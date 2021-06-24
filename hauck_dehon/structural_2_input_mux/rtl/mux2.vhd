library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration:
-- > is a name and a list of ports into the module,
-- > specifies the interface of the module with the outside world,
-- > is analagous to a java interface or function header delcaration in C.
entity mux2 is
port (
    a : in std_logic;
    b : in std_logic;
    sel : in std_logic;
    y : out std_logic
);
end;

-- Define the overall structure of the mux.
architecture struct of mux2

-- Define the internal gates.
component notgate is
port (
    a : in std_logic;
    b : out std_logic
);
end component;

component andgate is
port (
    a : in std_logic;
    b : in std_logic;
    y : out std_logic   
);
end component;

component orgate is
port (
    a : in std_logic;
    b : in std_logic;
    y : out std_logic;
);
end component;

-- Define internal signals/wires that connect components.
signal sel_inv : std_logic;
signal sel_a : std_logic;
signal sel_b : std_logic;

-- "begin" signifies the start of the structural code
begin

    -- instantiate the NOT gate (inverter)
    inverter_inst_0 : notgate
    port map (
        a => sel,
        b => sel_inv
    );

    -- instantiate both AND gates
    and_inst_0 : andgate
    port map (
        a => a,
        b => sel_inv,
        y => sel_a
    );

    and_inst_1 : andgate
    port map (
        a => b,
        b => sel,
        y => sel_b
    )

    -- instantiate OR gate
    or_inst_0 : orgate
    port map (
        a => sel_a,
        b => sel_b,
        y => y
    );

end;


