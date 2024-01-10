// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Jan  9 16:00:34 2024
// Host        : DESKTOP-53FQC58 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/peneb/Desktop/git/dejarik/fpga_dejarik/fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_clk_generator_0_0/dejarik_clk_generator_0_0_sim_netlist.v
// Design      : dejarik_clk_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dejarik_clk_generator_0_0,clk_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clk_generator,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module dejarik_clk_generator_0_0
   (clk,
    reset,
    clk_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dejarik_sys_clock, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output clk_o;

  wire clk;
  wire clk_o;
  wire reset;

  dejarik_clk_generator_0_0_clk_generator inst
       (.clk(clk),
        .clk_o(clk_o),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_generator" *) 
module dejarik_clk_generator_0_0_clk_generator
   (clk_o,
    reset,
    clk);
  output clk_o;
  input reset;
  input clk;

  wire clk;
  wire clk_o;
  wire [31:0]counter;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_i_1_n_0;
  wire counter0_carry__3_i_2_n_0;
  wire counter0_carry__3_i_3_n_0;
  wire counter0_carry__3_i_4_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_i_1_n_0;
  wire counter0_carry__4_i_2_n_0;
  wire counter0_carry__4_i_3_n_0;
  wire counter0_carry__4_i_4_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_i_1_n_0;
  wire counter0_carry__5_i_2_n_0;
  wire counter0_carry__5_i_3_n_0;
  wire counter0_carry__5_i_4_n_0;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_i_1_n_0;
  wire counter0_carry__6_i_2_n_0;
  wire counter0_carry__6_i_3_n_0;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [31:0]counter_0;
  wire [31:1]data0;
  wire reset;
  wire sq_wave_reg_i_1_n_0;
  wire sq_wave_reg_i_2_n_0;
  wire sq_wave_reg_i_3_n_0;
  wire sq_wave_reg_i_4_n_0;
  wire sq_wave_reg_i_5_n_0;
  wire sq_wave_reg_i_6_n_0;
  wire sq_wave_reg_i_7_n_0;
  wire sq_wave_reg_i_8_n_0;
  wire sq_wave_reg_i_9_n_0;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O(data0[4:1]),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O(data0[8:5]),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_1
       (.I0(counter[8]),
        .O(counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_2
       (.I0(counter[7]),
        .O(counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_3
       (.I0(counter[6]),
        .O(counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_4
       (.I0(counter[5]),
        .O(counter0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter[12:9]),
        .O(data0[12:9]),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_1
       (.I0(counter[12]),
        .O(counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_2
       (.I0(counter[11]),
        .O(counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_3
       (.I0(counter[10]),
        .O(counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_4
       (.I0(counter[9]),
        .O(counter0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(counter[16:13]),
        .O(data0[16:13]),
        .S({counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_1
       (.I0(counter[16]),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_2
       (.I0(counter[15]),
        .O(counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_3
       (.I0(counter[14]),
        .O(counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_4
       (.I0(counter[13]),
        .O(counter0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(counter[20:17]),
        .O(data0[20:17]),
        .S({counter0_carry__3_i_1_n_0,counter0_carry__3_i_2_n_0,counter0_carry__3_i_3_n_0,counter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_1
       (.I0(counter[20]),
        .O(counter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_2
       (.I0(counter[19]),
        .O(counter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_3
       (.I0(counter[18]),
        .O(counter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_4
       (.I0(counter[17]),
        .O(counter0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(counter[24:21]),
        .O(data0[24:21]),
        .S({counter0_carry__4_i_1_n_0,counter0_carry__4_i_2_n_0,counter0_carry__4_i_3_n_0,counter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_1
       (.I0(counter[24]),
        .O(counter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_2
       (.I0(counter[23]),
        .O(counter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_3
       (.I0(counter[22]),
        .O(counter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_4
       (.I0(counter[21]),
        .O(counter0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(counter[28:25]),
        .O(data0[28:25]),
        .S({counter0_carry__5_i_1_n_0,counter0_carry__5_i_2_n_0,counter0_carry__5_i_3_n_0,counter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_1
       (.I0(counter[28]),
        .O(counter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_2
       (.I0(counter[27]),
        .O(counter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_3
       (.I0(counter[26]),
        .O(counter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_4
       (.I0(counter[25]),
        .O(counter0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[30:29]}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,counter0_carry__6_i_1_n_0,counter0_carry__6_i_2_n_0,counter0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__6_i_1
       (.I0(counter[31]),
        .O(counter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__6_i_2
       (.I0(counter[30]),
        .O(counter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__6_i_3
       (.I0(counter[29]),
        .O(counter0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_1
       (.I0(counter[4]),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_2
       (.I0(counter[3]),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_3
       (.I0(counter[2]),
        .O(counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_4
       (.I0(counter[1]),
        .O(counter0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[10]),
        .O(counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[11]),
        .O(counter_0[11]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[12]_i_1 
       (.I0(data0[12]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[12]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[13]_i_1 
       (.I0(data0[13]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[13]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[14]_i_1 
       (.I0(data0[14]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[14]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[15]_i_1 
       (.I0(data0[15]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[16]),
        .O(counter_0[16]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[17]_i_1 
       (.I0(data0[17]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[18]),
        .O(counter_0[18]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[19]_i_1 
       (.I0(data0[19]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[1]_i_1 
       (.I0(data0[1]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[1]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[20]_i_1 
       (.I0(data0[20]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[20]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[21]_i_1 
       (.I0(data0[21]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[22]_i_1 
       (.I0(data0[22]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[22]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[23]_i_1 
       (.I0(data0[23]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[24]),
        .O(counter_0[24]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[25]_i_1 
       (.I0(data0[25]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[26]),
        .O(counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[27]),
        .O(counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[28]),
        .O(counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[29]),
        .O(counter_0[29]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[2]_i_1 
       (.I0(data0[2]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[30]),
        .O(counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[31]),
        .O(counter_0[31]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[3]_i_1 
       (.I0(data0[3]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[3]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[4]_i_1 
       (.I0(data0[4]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[5]_i_1 
       (.I0(data0[5]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \counter[6]_i_1 
       (.I0(data0[6]),
        .I1(sq_wave_reg_i_2_n_0),
        .I2(sq_wave_reg_i_3_n_0),
        .I3(sq_wave_reg_i_4_n_0),
        .I4(sq_wave_reg_i_5_n_0),
        .O(counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[7]),
        .O(counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[8]),
        .O(counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(data0[9]),
        .O(counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[16]),
        .Q(counter[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[17]),
        .Q(counter[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[18]),
        .Q(counter[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[19]),
        .Q(counter[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[20]),
        .Q(counter[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[21]),
        .Q(counter[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[22]),
        .Q(counter[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[23]),
        .Q(counter[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[24]),
        .Q(counter[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[25]),
        .Q(counter[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[26]),
        .Q(counter[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[27]),
        .Q(counter[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[28]),
        .Q(counter[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[29]),
        .Q(counter[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[30]),
        .Q(counter[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[31]),
        .Q(counter[31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    sq_wave_reg_i_1
       (.I0(sq_wave_reg_i_2_n_0),
        .I1(sq_wave_reg_i_3_n_0),
        .I2(sq_wave_reg_i_4_n_0),
        .I3(sq_wave_reg_i_5_n_0),
        .I4(clk_o),
        .O(sq_wave_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sq_wave_reg_i_2
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(sq_wave_reg_i_6_n_0),
        .O(sq_wave_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sq_wave_reg_i_3
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(sq_wave_reg_i_7_n_0),
        .O(sq_wave_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sq_wave_reg_i_4
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(sq_wave_reg_i_8_n_0),
        .O(sq_wave_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sq_wave_reg_i_5
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .I4(sq_wave_reg_i_9_n_0),
        .O(sq_wave_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sq_wave_reg_i_6
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .O(sq_wave_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sq_wave_reg_i_7
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(sq_wave_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sq_wave_reg_i_8
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(sq_wave_reg_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sq_wave_reg_i_9
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(sq_wave_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sq_wave_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sq_wave_reg_i_1_n_0),
        .Q(clk_o),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
