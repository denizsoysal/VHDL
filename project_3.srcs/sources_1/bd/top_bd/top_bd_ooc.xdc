################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk_ref -period 50 [get_ports clk_ref]
create_clock -name CLOCK_OUT_0 -period 10 [get_ports CLOCK_OUT_0]

################################################################################