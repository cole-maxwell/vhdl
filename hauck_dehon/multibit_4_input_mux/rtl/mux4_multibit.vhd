library ieee;
use ieee.std_logic_1164.all;

entity mux4_multibit is

-- definition of the generic for the multibit mux
generic (
    DATA_WIDTH : integer := 16
);

port (
    -- clk and reset for registered outputs
    clk     : in std_logic;
    reset   : in std_logic;
    -- use DATA_WIDTH generic for variable vector length
    a       : in std_logic_vector(DATA_WIDTH-1 downto 0);
    b       : in std_logic_vector(DATA_WIDTH-1 downto 0);
    c       : in std_logic_vector(DATA_WIDTH-1 downto 0);
    d       : in std_logic_vector(DATA_WIDTH-1 downto 0);
    sel     : in std_logic_vector(1 downto 0);
    y       : out std_logic_vector(DATA_WIDTH-1 downto 0)
);
end;

-- parametric code is used in the architecture block
architecture parametric of mux4_multibit is

-- declare the component being used (like structural VHDL)
component mux4 is
port (
    clk     : in std_logic;
    reset   : in std_logic;
    a       : in std_logic;
    b       : in std_logic;
    c       : in std_logic;
    sel     : in std_logic_vector(1 downto 0);
    y       : out std_logic
);
end component;

begin

-- loop for generating a programmable number of mux4 instances
bitslices_gen : for i in 0 to DATA_WIDTH-1 generate
    inst_mux : mux4
    port map (
        clk => clk,
        reset => reset,
        -- use i to index into the array
        a => a(i),
        b => b(i),
        c => c(i),
        d => d(i),
        sel => sel,
        e => e(i)
    );
end generate bitslices_gen;

end;

