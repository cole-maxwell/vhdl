# multibit_4_input_mux

Author: Cole Maxwell
Date:   6/25/2021

Description-------------

Multibit 4-input mux using parametric hardware generation. The width of the mux is defined by a generic, DATA_WIDTH, which sets the range of the vectors in the interface and is later used as the termination value in the generate loop.

VHDL example code from Listing 6.3 from the textbook
'Reconfigurable Computing' by Hauck and Dehon.

Usage-------------------

/bench  :   contains the testbench for simulation
/data   :   contains data files to feed simulation
/doc    :   any resources or documentation
/rtl    :   vhdl source code
/sw     :   source code to program hps
/syn    :   projects in vivado and quartus