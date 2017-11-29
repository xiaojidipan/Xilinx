onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Effective_add_ip_opt

do {wave.do}

view wave
view structure
view signals

do {Effective_add_ip.udo}

run -all

quit -force
