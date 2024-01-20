//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sat Jan 20 10:12:52 2024
//Host        : DESKTOP-53FQC58 running 64-bit major release  (build 9200)
//Command     : generate_target dejarik_wrapper.bd
//Design      : dejarik_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dejarik_wrapper
   (matrix_outputs,
    reset_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [15:0]matrix_outputs;
  input reset_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]matrix_outputs;
  wire reset_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  dejarik dejarik_i
       (.matrix_outputs(matrix_outputs),
        .reset_0(reset_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
