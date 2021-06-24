library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
port (
    -- clk and reset for registered outputs
    clk     : in std_logic;
    reset   : in std_logic;
    a       : in std_logic;
    b       : in std_logic;
    c       : in std_logic;
    d       : in std_logic;
    sel     : in std_logic_vector (1 downto 0);
    y       : out std_logic
);
end;

architecture rtl of mux4 is

signal e_c : std_logic;

-- RTL code starts here
begin

-- concurrent signal assignment
e_c <=  a when sel="00" else
        b when sel="01" else
        c when sel="10" else
        d;

-- sequential signal assignment
process (clk, reset)
begin

-- acion under reset
if (reset ='1') then
    e <= '0';
-- action under rising clock edge
elsif (clk' EVENT and clk='1') then
    e <= e_c;
end if;

end process;

end;

