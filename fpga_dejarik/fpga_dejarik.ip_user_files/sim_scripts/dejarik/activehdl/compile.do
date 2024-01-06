vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_9
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_17
vlib activehdl/lmb_v10_v3_0_12
vlib activehdl/lmb_bram_if_cntlr_v4_0_21
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/mdm_v3_2_23
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_crossbar_v2_1_27
vlib activehdl/util_vector_logic_v2_0_2
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_30

vmap xpm activehdl/xpm
vmap microblaze_v11_0_9 activehdl/microblaze_v11_0_9
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 activehdl/axi_intc_v4_1_17
vmap lmb_v10_v3_0_12 activehdl/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_21 activehdl/lmb_bram_if_cntlr_v4_0_21
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap mdm_v3_2_23 activehdl/mdm_v3_2_23
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 activehdl/axi_crossbar_v2_1_27
vmap util_vector_logic_v2_0_2 activehdl/util_vector_logic_v2_0_2
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_30 activehdl/axi_uartlite_v2_0_30

vlog -work xpm  -sv2k12 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"C:/Users/peneb/Desktop/FPGA/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Users/peneb/Desktop/FPGA/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Users/peneb/Desktop/FPGA/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_9 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/057e/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_microblaze_0_0/sim/dejarik_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_axi_intc_0_0/sim/dejarik_axi_intc_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_dlmb_v10_0/sim/dejarik_dlmb_v10_0.vhd" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_ilmb_v10_0/sim/dejarik_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_21 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_dlmb_bram_if_cntlr_0/sim/dejarik_dlmb_bram_if_cntlr_0.vhd" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_ilmb_bram_if_cntlr_0/sim/dejarik_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_lmb_bram_0/sim/dejarik_lmb_bram_0.v" \

vcom -work mdm_v3_2_23 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_mdm_1_0/sim/dejarik_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_clk_wiz_1_0/dejarik_clk_wiz_1_0_clk_wiz.v" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_clk_wiz_1_0/dejarik_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_rst_clk_wiz_1_100M_0/sim/dejarik_rst_clk_wiz_1_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_xbar_0/sim/dejarik_xbar_0.v" \

vlog -work util_vector_logic_v2_0_2  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_reset_inv_0_2/sim/dejarik_reset_inv_0_2.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_30 -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/5d2b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_axi_uartlite_0_0/sim/dejarik_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" "+incdir+../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/sim/dejarik.v" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/d9fc/hdl/ioiptest_v1_0_S00_AXI.v" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/d9fc/hdl/ioiptest_v1_0.v" \
"../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_ioiptest_0_2/sim/dejarik_ioiptest_0_2.v" \

vlog -work xil_defaultlib \
"glbl.v"
