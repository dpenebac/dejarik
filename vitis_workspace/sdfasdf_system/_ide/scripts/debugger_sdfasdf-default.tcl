# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\peneb\Desktop\git\dejarik\vitis_workspace\sdfasdf_system\_ide\scripts\debugger_sdfasdf-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\peneb\Desktop\git\dejarik\vitis_workspace\sdfasdf_system\_ide\scripts\debugger_sdfasdf-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-35T 210319B5837EA" && level==0 && jtag_device_ctx=="jsn-Arty A7-35T-210319B5837EA-0362d093-0"}
fpga -file C:/Users/peneb/Desktop/git/dejarik/vitis_workspace/sdfasdf/_ide/bitstream/dejarik_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/peneb/Desktop/git/dejarik/vitis_workspace/dejarik_wrapper/export/dejarik_wrapper/hw/dejarik_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/peneb/Desktop/git/dejarik/vitis_workspace/sdfasdf/Debug/sdfasdf.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
