library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- entity declaration of the state-machine controller
entity fsm_datapath is
port (
    -- system signals
    clk : in std_logic;
    reset : in std_logic;
    
    -- input interface
    start : in std_logic;
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0);
    C : in std_logic_vector(3 downto 0);
    X : in std_logic_vector(3 downto 0);

    -- output interface
    output_valid : out std_logic;
    result : out std_logic_vector(12 downto 0)
);
end;

architecture struct of fsm_datapath is

component fsm is
port (
    -- system signals
    clk : in std_logic;
    reset : in std_logic;

    -- start the computation
    start : in std_logic;

    -- datapath mux select
    mult_input1_sel : out std_logic_vector(1 downto 0);
    mutl_input2_sel : out std_logic;
    add_input1_sel : out std_logic;

    -- register enables
    xsquared_reg_enable : out std_logic;
    bxplusc_reg_enable : out std_logic;
    output_reg_enable : std_logic;

    -- indicate output is valid
    output_valid : out std_logic
);
end component;

component datapath is
port (
    -- system signals
    clk : in std_logic;
    reset : in std_logic;

    -- input operands
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0);
    C : in std_logic_vector(3 downto 0);
    X : in std_logic_vector(3 downto 0);
)



end;

