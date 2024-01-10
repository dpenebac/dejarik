-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Tue Jan  9 17:29:29 2024
-- Host        : DESKTOP-53FQC58 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/peneb/Desktop/git/dejarik/fpga_dejarik/fpga_dejarik.gen/sources_1/bd/dejarik/ip/dejarik_matrix_controller_0_13/dejarik_matrix_controller_0_13_stub.vhdl
-- Design      : dejarik_matrix_controller_0_13
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dejarik_matrix_controller_0_13 is
  Port ( 
    master_c : in STD_LOGIC;
    r1 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    r2 : out STD_LOGIC;
    g2 : out STD_LOGIC;
    b2 : out STD_LOGIC;
    gnd0 : out STD_LOGIC;
    gnd1 : out STD_LOGIC;
    matrix_c : out STD_LOGIC;
    lat : out STD_LOGIC;
    HA : out STD_LOGIC;
    HB : out STD_LOGIC;
    HC : out STD_LOGIC;
    HD : out STD_LOGIC;
    HE : out STD_LOGIC;
    OE : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end dejarik_matrix_controller_0_13;

architecture stub of dejarik_matrix_controller_0_13 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "master_c,r1,g1,b1,r2,g2,b2,gnd0,gnd1,matrix_c,lat,HA,HB,HC,HD,HE,OE,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[6:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[6:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "matrix_controller_v1_0,Vivado 2022.1";
begin
end;
