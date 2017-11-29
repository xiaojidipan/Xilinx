################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk_ref_in -period 10 [get_ports clk_ref_in]
create_clock -name sys_clk_in -period 10 [get_ports sys_clk_in]
create_clock -name mii_rtl_rx_clk -period 10 [get_ports mii_rtl_rx_clk]
create_clock -name mii_rtl_tx_clk -period 10 [get_ports mii_rtl_tx_clk]

################################################################################