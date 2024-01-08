//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sun Jan  7 15:48:42 2024
//Host        : DESKTOP-53FQC58 running 64-bit major release  (build 9200)
//Command     : generate_target dejarik_wrapper.bd
//Design      : dejarik_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dejarik_wrapper
   (led0,
    led1,
    led2,
    led3,
    matrix_outputs,
    reset_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output led0;
  output led1;
  output led2;
  output led3;
  output [15:0]matrix_outputs;
  input reset_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire led0;
  wire led1;
  wire led2;
  wire led3;
  wire [15:0]matrix_outputs;
  wire reset_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  dejarik dejarik_i
       (.led0(led0),
        .led1(led1),
        .led2(led2),
        .led3(led3),
        .matrix_outputs(matrix_outputs),
        .reset_0(reset_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
