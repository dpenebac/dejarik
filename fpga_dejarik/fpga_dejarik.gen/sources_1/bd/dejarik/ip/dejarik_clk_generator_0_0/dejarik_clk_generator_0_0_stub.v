// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Jan  9 16:00:34 2024
// Host        : DESKTOP-53FQC58 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/peneb/Desktop/git/dejarik/fpga_dejarik/fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_clk_generator_0_0/dejarik_clk_generator_0_0_stub.v
// Design      : dejarik_clk_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk_generator,Vivado 2022.1" *)
module dejarik_clk_generator_0_0(clk, reset, clk_o)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,clk_o" */;
  input clk;
  input reset;
  output clk_o;
endmodule
