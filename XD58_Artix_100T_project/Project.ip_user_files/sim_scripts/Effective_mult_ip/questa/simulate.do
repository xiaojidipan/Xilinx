onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Effective_mult_ip_opt

do {wave.do}

view wave
view structure
view signals

do {Effective_mult_ip.udo}

run -all

quit -force
