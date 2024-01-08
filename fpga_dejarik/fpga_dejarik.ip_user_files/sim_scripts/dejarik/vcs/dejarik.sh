#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : dejarik.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Sun Jan 07 15:48:46 -1000 2024
# SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
#
# Tool Version Limit: 2022.04 
#
# usage: dejarik.sh [-help]
# usage: dejarik.sh [-lib_map_path]
# usage: dejarik.sh [-noclean_files]
# usage: dejarik.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'dejarik.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Set vlogan compile options
vlogan_opts="-full64"

# Set vhdlan compile options
vhdlan_opts="-full64"

# Set vcs elaboration options
vcs_elab_opts="-full64 -debug_acc+pp+dmptf -t ps -licqueue -l elaborate.log"

# Set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xpm axi_lite_ipif_v3_0_4 axi_intc_v4_1_17 xil_defaultlib lmb_v10_v3_0_12 lmb_bram_if_cntlr_v4_0_21 blk_mem_gen_v8_4_5 mdm_v3_2_23 lib_cdc_v1_0_2 proc_sys_reset_v5_0_13 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_26 fifo_generator_v13_2_7 axi_data_fifo_v2_1_25 axi_crossbar_v2_1_27 util_vector_logic_v2_0_2 lib_pkg_v1_0_2 lib_srl_fifo_v1_0_2 axi_uartlite_v2_0_30 microblaze_v11_0_9 xlconcat_v2_1_4)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "dejarik.sh - Script generated by export_simulation (Vivado v2022.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xpm $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "C:/Users/peneb/Desktop/FPGA/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Users/peneb/Desktop/FPGA/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Users/peneb/Desktop/FPGA/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_intc_v4_1_17 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_axi_intc_0_0/sim/dejarik_axi_intc_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_v10_v3_0_12 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_dlmb_v10_0/sim/dejarik_dlmb_v10_0.vhd" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_ilmb_v10_0/sim/dejarik_ilmb_v10_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_bram_if_cntlr_v4_0_21 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_dlmb_bram_if_cntlr_0/sim/dejarik_dlmb_bram_if_cntlr_0.vhd" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_ilmb_bram_if_cntlr_0/sim/dejarik_ilmb_bram_if_cntlr_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_lmb_bram_0/sim/dejarik_lmb_bram_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work mdm_v3_2_23 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_mdm_1_0/sim/dejarik_mdm_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_clk_wiz_1_0/dejarik_clk_wiz_1_0_clk_wiz.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_clk_wiz_1_0/dejarik_clk_wiz_1_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_rst_clk_wiz_1_100M_0/sim/dejarik_rst_clk_wiz_1_100M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_26 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_7 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_7 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_7 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_25 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_27 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_xbar_0/sim/dejarik_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work util_vector_logic_v2_0_2 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_reset_inv_0_2/sim/dejarik_reset_inv_0_2.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uartlite_v2_0_30 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/5d2b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_axi_uartlite_0_0/sim/dejarik_axi_uartlite_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work microblaze_v11_0_9 $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/057e/hdl/microblaze_v11_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_microblaze_0_0/sim/dejarik_microblaze_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconcat_v2_1_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/4e49" +incdir+"$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/ec67/hdl" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_xlconcat_0_3/sim/dejarik_xlconcat_0_3.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/a73b/hdl/ioiptest_v1_0_S00_AXI.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/a73b/hdl/ioiptest_v1_0.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_ioiptest_0_4/sim/dejarik_ioiptest_0_4.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/eb7b/hdl/matrix_controller_v1_0_S00_AXI.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ipshared/eb7b/hdl/matrix_controller_v1_0.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_matrix_controller_0_13/sim/dejarik_matrix_controller_0_13.v" \
    "$ref_dir/../../../../fpga_dejarik.gen/sources_1/bd/dejarik/sim/dejarik.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.dejarik xil_defaultlib.glbl -o dejarik_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./dejarik_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./dejarik.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key dejarik_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc dejarik_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./dejarik.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: dejarik.sh [-help]\n\
Usage: dejarik.sh [-lib_map_path]\n\
Usage: dejarik.sh [-reset_run]\n\
Usage: dejarik.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
