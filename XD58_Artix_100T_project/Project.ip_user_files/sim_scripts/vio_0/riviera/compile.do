vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl" "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl" "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../Project.srcs/sources_1/ip/vio_0/hdl" \
"../../../../Project.srcs/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

