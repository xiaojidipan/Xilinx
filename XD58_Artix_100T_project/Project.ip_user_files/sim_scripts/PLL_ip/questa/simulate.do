onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib PLL_ip_opt

do {wave.do}

view wave
view structure
view signals

do {PLL_ip.udo}

run -all

quit -force
