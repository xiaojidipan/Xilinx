connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-HS1 210512180066"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-HS1 210512180066"} -index 0
dow E:/Xilinx/XD58_Project/XD58/XD58_Artix_100T_project/Project.sdk/ddr3_test/Debug/ddr3_test.elf
bpadd -addr &main
