set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

set_property PACKAGE_PIN W19 [get_ports clk_in]
set_property PACKAGE_PIN R4 [get_ports ddr3_addr_h]
set_property PACKAGE_PIN V4 [get_ports ddr3_cs_n]

set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
set_property IOSTANDARD SSTL135 [get_ports ddr3_addr_h]
set_property IOSTANDARD SSTL135 [get_ports ddr3_cs_n]

set_property PACKAGE_PIN P2 [get_ports ad_clk_out_p]
set_property PACKAGE_PIN N2 [get_ports ad_clk_out_n]
set_property PACKAGE_PIN H2 [get_ports DCO_p]
set_property PACKAGE_PIN G2 [get_ports DCO_n]
set_property PACKAGE_PIN G1 [get_ports FCO_p]
set_property PACKAGE_PIN F1 [get_ports FCO_n]

set_property PACKAGE_PIN C2 [get_ports D0_A_p]
set_property PACKAGE_PIN B2 [get_ports D0_A_n]
set_property PACKAGE_PIN E2 [get_ports D1_A_p]
set_property PACKAGE_PIN D2 [get_ports D1_A_n]

set_property PACKAGE_PIN E1 [get_ports D0_B_p]
set_property PACKAGE_PIN D1 [get_ports D0_B_n]
set_property PACKAGE_PIN F3 [get_ports D1_B_p]
set_property PACKAGE_PIN E3 [get_ports D1_B_n]

set_property PACKAGE_PIN K2 [get_ports D0_C_p]
set_property PACKAGE_PIN J2 [get_ports D0_C_n]
set_property PACKAGE_PIN K1 [get_ports D1_C_p]
set_property PACKAGE_PIN J1 [get_ports D1_C_n]

set_property PACKAGE_PIN L3 [get_ports D0_D_p]
set_property PACKAGE_PIN K3 [get_ports D0_D_n]
set_property PACKAGE_PIN L1 [get_ports D1_D_n]
set_property PACKAGE_PIN M1 [get_ports D1_D_p]

set_property IOSTANDARD LVDS_25 [get_ports DCO_p]
set_property IOSTANDARD LVDS_25 [get_ports DCO_n]
set_property IOSTANDARD LVDS_25 [get_ports FCO_p]
set_property IOSTANDARD LVDS_25 [get_ports FCO_n]
set_property IOSTANDARD LVDS_25 [get_ports D0_A_p]
set_property IOSTANDARD LVDS_25 [get_ports D0_A_n]
set_property IOSTANDARD LVDS_25 [get_ports D1_A_p]
set_property IOSTANDARD LVDS_25 [get_ports D1_A_n]
set_property IOSTANDARD LVDS_25 [get_ports D0_B_p]
set_property IOSTANDARD LVDS_25 [get_ports D0_B_n]
set_property IOSTANDARD LVDS_25 [get_ports D1_B_p]
set_property IOSTANDARD LVDS_25 [get_ports D1_B_n]

set_property IOSTANDARD LVDS_25 [get_ports D0_C_p]
set_property IOSTANDARD LVDS_25 [get_ports D0_C_n]
set_property IOSTANDARD LVDS_25 [get_ports D1_C_p]
set_property IOSTANDARD LVDS_25 [get_ports D1_C_n]
set_property IOSTANDARD LVDS_25 [get_ports D0_D_p]
set_property IOSTANDARD LVDS_25 [get_ports D0_D_n]
set_property IOSTANDARD LVDS_25 [get_ports D1_D_p]
set_property IOSTANDARD LVDS_25 [get_ports D1_D_n]

set_property IOSTANDARD LVDS_25 [get_ports ad_clk_out_p]
set_property IOSTANDARD LVDS_25 [get_ports ad_clk_out_n]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DCO_p]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets FCO_p]

set_input_delay 0.000 [get_ports -filter { NAME =~  "*D0_A_p*" && DIRECTION == "IN" }]
set_input_delay 0.000 [get_ports -filter { NAME =~  "*D0_B_p*" && DIRECTION == "IN" }]
set_input_delay 0.000 [get_ports -filter { NAME =~  "*D0_C_p*" && DIRECTION == "IN" }]
set_input_delay 0.000 [get_ports -filter { NAME =~  "*D0_D_p*" && DIRECTION == "IN" }]

set_input_delay 0.000 [get_ports -filter { NAME =~  "*D1_A_p*" && DIRECTION == "IN" }]
set_input_delay 0.000 [get_ports -filter { NAME =~  "*D1_B_p*" && DIRECTION == "IN" }]
set_input_delay 0.000 [get_ports -filter { NAME =~  "*D1_C_p*" && DIRECTION == "IN" }]
set_input_delay 0.000 [get_ports -filter { NAME =~  "*D1_D_p*" && DIRECTION == "IN" }]
set_input_delay 0.000 [get_ports -filter { NAME =~  "*FCO_p*" && DIRECTION == "IN" }]

set_property PACKAGE_PIN W15 [get_ports mdio_rtl_mdio_io]
set_property PACKAGE_PIN W16 [get_ports mdio_rtl_mdc]

set_property PACKAGE_PIN AB15 [get_ports mii_rtl_col]
set_property PACKAGE_PIN AB16 [get_ports mii_rtl_crs]

set_property PACKAGE_PIN AB17 [get_ports mii_rtl_rx_clk]
set_property PACKAGE_PIN Y16 [get_ports mii_rtl_rx_dv]
set_property PACKAGE_PIN AA16 [get_ports mii_rtl_rx_er]
set_property PACKAGE_PIN AA15 [get_ports {mii_rtl_rxd[0]}]
set_property PACKAGE_PIN AA14 [get_ports {mii_rtl_rxd[1]}]
set_property PACKAGE_PIN AB13 [get_ports {mii_rtl_rxd[2]}]
set_property PACKAGE_PIN AA13 [get_ports {mii_rtl_rxd[3]}]

set_property PACKAGE_PIN AA11 [get_ports mii_rtl_tx_en]
set_property PACKAGE_PIN AB12 [get_ports mii_rtl_tx_clk]
set_property PACKAGE_PIN AB11 [get_ports {mii_rtl_txd[0]}]
set_property PACKAGE_PIN AA10 [get_ports {mii_rtl_txd[1]}]
set_property PACKAGE_PIN AB10 [get_ports {mii_rtl_txd[2]}]
set_property PACKAGE_PIN AA9 [get_ports {mii_rtl_txd[3]}]

set_property PACKAGE_PIN Y17 [get_ports eth_ref_clk]
set_property PACKAGE_PIN Y14 [get_ports mii_rtl_rst_n]

set_property IOSTANDARD LVCMOS33 [get_ports mdio_rtl_mdio_io]
set_property IOSTANDARD LVCMOS33 [get_ports mdio_rtl_mdc]

set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_col]
set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_crs]

set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_rx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_rx_dv]
set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_rx_er]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_rxd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_rxd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_rxd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_rxd[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_tx_en]
set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_tx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_txd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_txd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mii_rtl_txd[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports eth_ref_clk]
set_property IOSTANDARD LVCMOS33 [get_ports mii_rtl_rst_n]

set_property PACKAGE_PIN B21 [get_ports uart_rtl_rxd]
set_property PACKAGE_PIN A21 [get_ports uart_rtl_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_txd]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets eth_ref_clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mii_rtl_tx_clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mii_rtl_rx_clk]

set_property PACKAGE_PIN A15 [get_ports pin_isa_adv]
set_property PACKAGE_PIN E14 [get_ports pin_isa_cs]
set_property PACKAGE_PIN B15 [get_ports pin_isa_rd]
set_property PACKAGE_PIN D15 [get_ports pin_isa_wr]
set_property PACKAGE_PIN C15 [get_ports {pin_isa_data[7]}]
set_property PACKAGE_PIN D17 [get_ports {pin_isa_data[6]}]
set_property PACKAGE_PIN C18 [get_ports {pin_isa_data[5]}]
set_property PACKAGE_PIN C19 [get_ports {pin_isa_data[4]}]
set_property PACKAGE_PIN E18 [get_ports {pin_isa_data[3]}]
set_property PACKAGE_PIN A20 [get_ports {pin_isa_data[2]}]
set_property PACKAGE_PIN F16 [get_ports {pin_isa_data[1]}]
set_property PACKAGE_PIN B20 [get_ports {pin_isa_data[0]}]


set_property IOSTANDARD LVCMOS33 [get_ports pin_isa_adv]
set_property IOSTANDARD LVCMOS33 [get_ports pin_isa_cs]
set_property IOSTANDARD LVCMOS33 [get_ports pin_isa_rd]
set_property IOSTANDARD LVCMOS33 [get_ports pin_isa_wr]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pin_isa_data[0]}]

set_false_path -from [get_clocks -of_objects [get_pins PLL_ip_inst/inst/mmcm_adv_inst/CLKOUT1]] -to [get_clocks -of_objects [get_pins sub_BD_inst/sub_BD_i/mig_7series_0/u_sub_BD_mig_7series_0_1_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i/CLKFBOUT]]
set_false_path -from [get_clocks -of_objects [get_pins sub_BD_inst/sub_BD_i/mig_7series_0/u_sub_BD_mig_7series_0_1_mig/u_ddr3_infrastructure/gen_mmcm.mmcm_i/CLKFBOUT]] -to [get_clocks -of_objects [get_pins PLL_ip_inst/inst/mmcm_adv_inst/CLKOUT1]]

set_false_path -from [get_pins system_rstn_inst/sys_rstn1_reg/C] -to [get_pins system_rstn_inst/FDCE_inst1/CLR]
set_false_path -from [get_pins system_rstn_inst/sys_rstn1_reg/C] -to [get_pins system_rstn_inst/FDCE_inst2/CLR]


