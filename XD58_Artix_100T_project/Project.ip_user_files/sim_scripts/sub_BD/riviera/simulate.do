onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+sub_BD -L xil_defaultlib -L xpm -L microblaze_v10_0_3 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_10 -L xlconcat_v2_1_1 -L mdm_v3_2_10 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_11 -L lib_pkg_v1_0_2 -L axi_timer_v2_0_15 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_17 -L blk_mem_gen_v8_3_6 -L lib_bmg_v1_0_8 -L fifo_generator_v13_1_4 -L lib_fifo_v1_0_8 -L axi_ethernetlite_v3_0_11 -L smartconnect_v1_0 -L xlconstant_v1_1_3 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_13 -L axi_data_fifo_v2_1_12 -L axi_crossbar_v2_1_14 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sub_BD xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {sub_BD.udo}

run -all

endsim

quit -force
