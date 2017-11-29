onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_time_code_ip_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_time_code_ip.udo}

run -all

quit -force
