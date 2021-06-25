# vhdl

Author: Cole Maxwell
Date:   6/19/2021

This directory builds off various VHDL examples from the textbooks 'Reconfigurable Computing' by Hauck and Dehon and 'The Designer's Guide to VHDL' by Peter Ashenden.

I'm building out these examples with my own test benches and making them synthesizable Quartus/Vivado projects that can run on my DE1-SoC and Basys 3 boards.

Each project directory generally has the following structure:

/bench  :   contains the test bench for simulation
/data   :   contains data files to feed simulation
/doc    :   any resources or documentation
/rtl    :   vhdl source code
/sw     :   source code to program hps
/syn    :   projects in vivado and quartus