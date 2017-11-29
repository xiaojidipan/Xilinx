onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_wr_ddr3_ip_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_wr_ddr3_ip.udo}

run -all

quit -force
