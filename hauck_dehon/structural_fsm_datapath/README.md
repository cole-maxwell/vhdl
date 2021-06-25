# structural_fsm_datapath

Author: Cole Maxwell
Date:   6/25/2021

Description-------------

A time-shared datapath that computes Ax^2 + Bx + X using only one multiplier and one adder. The design is naturally separated into state machine controller and datapath components. The control signals are connected from the controller to the datapath in the structural code.

VHDL example code from Listing 6.4 from the textbook
'Reconfigurable Computing' by Hauck and Dehon.

Usage-------------------

/bench  :   contains the testbench for simulation
/data   :   contains data files to feed simulation
/doc    :   any resources or documentation
/rtl    :   vhdl source code
/sw     :   source code to program hps
/syn    :   projects in vivado and quartus