onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+FIFO_wr_ddr3_ip -L xil_defaultlib -L xpm -L fifo_generator_v13_1_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO_wr_ddr3_ip xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FIFO_wr_ddr3_ip.udo}

run -all

endsim

quit -force
