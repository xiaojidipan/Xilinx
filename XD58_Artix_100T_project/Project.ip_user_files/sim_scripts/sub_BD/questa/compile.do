vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/microblaze_v10_0_3
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/axi_intc_v4_1_10
vlib msim/xlconcat_v2_1_1
vlib msim/mdm_v3_2_10
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_11
vlib msim/lib_pkg_v1_0_2
vlib msim/axi_timer_v2_0_15
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_uartlite_v2_0_17
vlib msim/blk_mem_gen_v8_3_6
vlib msim/lib_bmg_v1_0_8
vlib msim/fifo_generator_v13_1_4
vlib msim/lib_fifo_v1_0_8
vlib msim/axi_ethernetlite_v3_0_11
vlib msim/smartconnect_v1_0
vlib msim/xlconstant_v1_1_3
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_13
vlib msim/axi_data_fifo_v2_1_12
vlib msim/axi_crossbar_v2_1_14
vlib msim/lmb_v10_v3_0_9
vlib msim/lmb_bram_if_cntlr_v4_0_12

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap microblaze_v10_0_3 msim/microblaze_v10_0_3
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_10 msim/axi_intc_v4_1_10
vmap xlconcat_v2_1_1 msim/xlconcat_v2_1_1
vmap mdm_v3_2_10 msim/mdm_v3_2_10
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_15 msim/axi_timer_v2_0_15
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_17 msim/axi_uartlite_v2_0_17
vmap blk_mem_gen_v8_3_6 msim/blk_mem_gen_v8_3_6
vmap lib_bmg_v1_0_8 msim/lib_bmg_v1_0_8
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap lib_fifo_v1_0_8 msim/lib_fifo_v1_0_8
vmap axi_ethernetlite_v3_0_11 msim/axi_ethernetlite_v3_0_11
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap xlconstant_v1_1_3 msim/xlconstant_v1_1_3
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_13 msim/axi_register_slice_v2_1_13
vmap axi_data_fifo_v2_1_12 msim/axi_data_fifo_v2_1_12
vmap axi_crossbar_v2_1_14 msim/axi_crossbar_v2_1_14
vmap lmb_v10_v3_0_9 msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_12 msim/lmb_bram_if_cntlr_v4_0_12

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ipshared/9670/hdl/MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI.v" \
"../../../bd/sub_BD/ipshared/9670/hdl/MY_AXI_MASTER_FULL_ip_v1_0.v" \
"../../../bd/sub_BD/ip/sub_BD_MY_AXI_MASTER_FULL_ip_0_1/sim/sub_BD_MY_AXI_MASTER_FULL_ip_0_1.v" \
"../../../bd/sub_BD/hdl/sub_BD.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/sub_BD_mig_7series_0_1_mig_sim.v" \
"../../../bd/sub_BD/ip/sub_BD_mig_7series_0_1/sub_BD_mig_7series_0_1/user_design/rtl/sub_BD_mig_7series_0_1.v" \

vcom -work microblaze_v10_0_3 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/fe06/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_microblaze_0_0/sim/sub_BD_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_10 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/d685/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_microblaze_0_axi_intc_0/sim/sub_BD_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_microblaze_0_xlconcat_0/sim/sub_BD_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_10 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/5967/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_mdm_1_0/sim/sub_BD_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_rst_mig_7series_0_83M_0/sim/sub_BD_rst_mig_7series_0_83M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_15 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/a004/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_axi_timer_0_0/sim/sub_BD_axi_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_17 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/1b8b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_axi_uartlite_0_0/sim/sub_BD_axi_uartlite_0_0.vhd" \

vlog -work blk_mem_gen_v8_3_6 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_8 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/0dfc/hdl/lib_bmg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_8 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_ethernetlite_v3_0_11 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f341/hdl/axi_ethernetlite_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_axi_ethernetlite_0_0/sim/sub_BD_axi_ethernetlite_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/hdl/bd_936a.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/e870/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_10/sim/bd_936a_s00a2s_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_19/sim/bd_936a_s01a2s_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_25/sim/bd_936a_s02a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/224a/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_31/sim/bd_936a_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/986a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_37/sim/bd_936a_m00e_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_32/sim/bd_936a_m00arn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_33/sim/bd_936a_m00rn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_34/sim/bd_936a_m00awn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_35/sim/bd_936a_m00wn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_36/sim/bd_936a_m00bn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_26/sim/bd_936a_sarn_2.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_27/sim/bd_936a_srn_2.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_28/sim/bd_936a_sawn_1.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_29/sim/bd_936a_swn_1.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_30/sim/bd_936a_sbn_1.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/5300/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_22/sim/bd_936a_s02mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/cbcb/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_23/sim/bd_936a_s02tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/cc66/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_24/sim/bd_936a_s02sic_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_20/sim/bd_936a_sarn_1.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_21/sim/bd_936a_srn_1.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_16/sim/bd_936a_s01mmu_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_17/sim/bd_936a_s01tr_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_18/sim/bd_936a_s01sic_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_11/sim/bd_936a_sarn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_12/sim/bd_936a_srn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_13/sim/bd_936a_sawn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_14/sim/bd_936a_swn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_15/sim/bd_936a_sbn_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_7/sim/bd_936a_s00mmu_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_8/sim/bd_936a_s00tr_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_9/sim/bd_936a_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7daf/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L xil_defaultlib "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_2/sim/bd_936a_arsw_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_3/sim/bd_936a_rsw_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_4/sim/bd_936a_awsw_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_5/sim/bd_936a_wsw_0.sv" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_6/sim/bd_936a_bsw_0.sv" \

vlog -work xlconstant_v1_1_3 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/45df/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_0/sim/bd_936a_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/bd_0/ip/ip_1/sim/bd_936a_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_axi_smc_0/sim/sub_BD_axi_smc_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_12 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_14 -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f582/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_xbar_0/sim/sub_BD_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_dlmb_v10_0/sim/sub_BD_dlmb_v10_0.vhd" \
"../../../bd/sub_BD/ip/sub_BD_ilmb_v10_0/sim/sub_BD_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_12 -64 -93 \
"../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/51e1/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sub_BD/ip/sub_BD_dlmb_bram_if_cntlr_0/sim/sub_BD_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/sub_BD/ip/sub_BD_ilmb_bram_if_cntlr_0/sim/sub_BD_ilmb_bram_if_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/39ca/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/f80f/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/bd/sub_BD/ipshared/7e3a/hdl" \
"../../../bd/sub_BD/ip/sub_BD_lmb_bram_0/sim/sub_BD_lmb_bram_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

