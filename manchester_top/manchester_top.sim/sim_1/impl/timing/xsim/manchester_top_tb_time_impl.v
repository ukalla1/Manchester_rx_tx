// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Nov 20 12:07:28 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ukallakuri/hardware_design/designs/manchester_tx_rx/manchester_top/manchester_top.sim/sim_1/impl/timing/xsim/manchester_top_tb_time_impl.v
// Design      : manchester_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h000000AA),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h000000CC),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h000000F0),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module Manchester_rx_uart_top
   (uart_serial_out_OBUF,
    rx_ready_OBUF,
    rst_IBUF,
    D,
    clk100M_IBUF_BUFG,
    uart_tx_on_IBUF);
  output uart_serial_out_OBUF;
  output rx_ready_OBUF;
  input rst_IBUF;
  input [0:0]D;
  input clk100M_IBUF_BUFG;
  input uart_tx_on_IBUF;

  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire clk100M_IBUF_BUFG;
  wire enb;
  wire [3:0]p_0_in;
  wire ram_addrb;
  wire [2:0]ram_addrb_reg__0;
  wire [3:3]ram_addrb_reg__1;
  wire rst_IBUF;
  wire rx_ready_OBUF;
  wire [1:0]state__0;
  wire tx_on_int;
  wire tx_on_int_delayed;
  wire [7:0]tx_parallel_data;
  wire uart_serial_out_OBUF;
  wire uart_tx_n_2;
  wire uart_tx_n_3;
  wire uart_tx_on_IBUF;

  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(state__0[1]),
        .I1(ram_addrb_reg__0[2]),
        .I2(ram_addrb_reg__1),
        .I3(ram_addrb_reg__0[0]),
        .I4(ram_addrb_reg__0[1]),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "tx_idle:10,tx_data:11,idle:00,mem_read:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_n_3),
        .Q(state__0[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:10,tx_data:11,idle:00,mem_read:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_n_2),
        .Q(state__0[1]),
        .R(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \ram_addrb[0]_i_1 
       (.I0(ram_addrb_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addrb[1]_i_1 
       (.I0(ram_addrb_reg__0[0]),
        .I1(ram_addrb_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ram_addrb[2]_i_1 
       (.I0(ram_addrb_reg__0[2]),
        .I1(ram_addrb_reg__0[1]),
        .I2(ram_addrb_reg__0[0]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addrb[3]_i_1__0 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(ram_addrb));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ram_addrb[3]_i_2 
       (.I0(ram_addrb_reg__1),
        .I1(ram_addrb_reg__0[0]),
        .I2(ram_addrb_reg__0[1]),
        .I3(ram_addrb_reg__0[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in[0]),
        .Q(ram_addrb_reg__0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in[1]),
        .Q(ram_addrb_reg__0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in[2]),
        .Q(ram_addrb_reg__0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in[3]),
        .Q(ram_addrb_reg__1),
        .R(rst_IBUF));
  manchester_rx_top rx_top
       (.D(D),
        .E(enb),
        .Q(tx_parallel_data),
        .clk100M_IBUF_BUFG(clk100M_IBUF_BUFG),
        .\doutb_internal_reg[1] (ram_addrb_reg__0),
        .rst_IBUF(rst_IBUF),
        .rx_ready_OBUF(rx_ready_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    tx_on_int_delayed_reg
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_on_int),
        .Q(tx_on_int_delayed),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    tx_on_int_reg
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_on_IBUF),
        .Q(tx_on_int),
        .R(rst_IBUF));
  uart_tx_wrapper uart_tx
       (.D({uart_tx_n_2,uart_tx_n_3}),
        .E(enb),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state[0]_i_2__0_n_0 ),
        .Q(state__0),
        .clk100M_IBUF_BUFG(clk100M_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .tx_on_int(tx_on_int),
        .tx_on_int_delayed(tx_on_int_delayed),
        .\tx_reg_reg[7] (tx_parallel_data),
        .uart_serial_out_OBUF(uart_serial_out_OBUF),
        .uart_tx_on_IBUF(uart_tx_on_IBUF));
endmodule

module manchester_rx_m
   (data_valid,
    rx_ready_OBUF,
    Q,
    rst_IBUF,
    D,
    clk100M_IBUF_BUFG);
  output data_valid;
  output rx_ready_OBUF;
  output [7:0]Q;
  input rst_IBUF;
  input [0:0]D;
  input clk100M_IBUF_BUFG;

  wire [0:0]D;
  wire [7:0]Q;
  wire bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire clk100M_IBUF_BUFG;
  wire \cntr[3]_i_1_n_0 ;
  wire [3:0]cntr_reg__0;
  wire data_valid;
  wire data_valid_i_1_n_0;
  wire data_valid_i_2_n_0;
  wire data_valid_i_3_n_0;
  wire en;
  wire en_i_1_n_0;
  wire [6:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [7:7]p_1_out;
  wire parallel_dout_internal;
  wire \parallel_dout_internal[7]_i_3_n_0 ;
  wire \parallel_dout_internal[7]_i_4_n_0 ;
  wire \parallel_dout_internal[7]_i_5_n_0 ;
  wire \parallel_dout_internal[7]_i_6_n_0 ;
  wire rst_IBUF;
  wire rx_ready_OBUF;
  wire \rx_shift_reg_reg_n_0_[0] ;
  wire sample_5;
  wire sample_5_15;
  wire [3:0]shift_reg_0Comp;
  wire \shift_reg_0Comp[0]_i_1_n_0 ;
  wire \shift_reg_0Comp[1]_i_1_n_0 ;
  wire \shift_reg_0Comp[2]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'h06)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\parallel_dout_internal[7]_i_3_n_0 ),
        .I2(bit_cnt),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\parallel_dout_internal[7]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(bit_cnt),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\parallel_dout_internal[7]_i_3_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(bit_cnt),
        .O(\bit_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cntr[0]_i_1 
       (.I0(cntr_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cntr[1]_i_1 
       (.I0(cntr_reg__0[0]),
        .I1(cntr_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cntr[2]_i_1 
       (.I0(cntr_reg__0[2]),
        .I1(cntr_reg__0[1]),
        .I2(cntr_reg__0[0]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00FFFF)) 
    \cntr[3]_i_1 
       (.I0(cntr_reg__0[1]),
        .I1(cntr_reg__0[0]),
        .I2(cntr_reg__0[2]),
        .I3(cntr_reg__0[3]),
        .I4(en),
        .I5(rst_IBUF),
        .O(\cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cntr[3]_i_2 
       (.I0(cntr_reg__0[3]),
        .I1(cntr_reg__0[0]),
        .I2(cntr_reg__0[1]),
        .I3(cntr_reg__0[2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(cntr_reg__0[0]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(cntr_reg__0[1]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(cntr_reg__0[2]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(cntr_reg__0[3]),
        .R(\cntr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BA88)) 
    data_valid_i_1
       (.I0(data_valid),
        .I1(data_valid_i_2_n_0),
        .I2(data_valid_i_3_n_0),
        .I3(sample_5),
        .I4(bit_cnt),
        .O(data_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    data_valid_i_2
       (.I0(\parallel_dout_internal[7]_i_6_n_0 ),
        .I1(\parallel_dout_internal[7]_i_5_n_0 ),
        .I2(p_0_in[5]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(\rx_shift_reg_reg_n_0_[0] ),
        .O(data_valid_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    data_valid_i_3
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .O(data_valid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_reg
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(data_valid_i_1_n_0),
        .Q(data_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    en_i_1
       (.I0(D),
        .I1(shift_reg_0Comp[1]),
        .I2(shift_reg_0Comp[3]),
        .I3(shift_reg_0Comp[0]),
        .I4(shift_reg_0Comp[2]),
        .O(en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_reg
       (.C(clk100M_IBUF_BUFG),
        .CE(en_i_1_n_0),
        .D(D),
        .Q(en),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \parallel_dout_internal[7]_i_1 
       (.I0(rst_IBUF),
        .I1(shift_reg_0Comp[1]),
        .I2(shift_reg_0Comp[3]),
        .I3(shift_reg_0Comp[0]),
        .I4(shift_reg_0Comp[2]),
        .O(bit_cnt));
  LUT4 #(
    .INIT(16'h8000)) 
    \parallel_dout_internal[7]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\parallel_dout_internal[7]_i_3_n_0 ),
        .O(parallel_dout_internal));
  LUT4 #(
    .INIT(16'h08AA)) 
    \parallel_dout_internal[7]_i_3 
       (.I0(sample_5),
        .I1(\parallel_dout_internal[7]_i_4_n_0 ),
        .I2(\parallel_dout_internal[7]_i_5_n_0 ),
        .I3(\parallel_dout_internal[7]_i_6_n_0 ),
        .O(\parallel_dout_internal[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \parallel_dout_internal[7]_i_4 
       (.I0(p_0_in[5]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\rx_shift_reg_reg_n_0_[0] ),
        .O(\parallel_dout_internal[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \parallel_dout_internal[7]_i_5 
       (.I0(p_0_in[4]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[6]),
        .O(\parallel_dout_internal[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \parallel_dout_internal[7]_i_6 
       (.I0(shift_reg_0Comp[2]),
        .I1(shift_reg_0Comp[0]),
        .I2(shift_reg_0Comp[3]),
        .I3(shift_reg_0Comp[1]),
        .O(\parallel_dout_internal[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(\rx_shift_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in[0]),
        .Q(Q[1]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in[1]),
        .Q(Q[2]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in[2]),
        .Q(Q[3]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[4] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in[3]),
        .Q(Q[4]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[5] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in[4]),
        .Q(Q[5]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[6] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in[5]),
        .Q(Q[6]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[7] 
       (.C(clk100M_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in[6]),
        .Q(Q[7]),
        .R(bit_cnt));
  LUT1 #(
    .INIT(2'h1)) 
    rx_ready_OBUF_inst_i_1
       (.I0(en),
        .O(rx_ready_OBUF));
  LUT4 #(
    .INIT(16'h0008)) 
    \rx_shift_reg[7]_i_1 
       (.I0(cntr_reg__0[1]),
        .I1(cntr_reg__0[0]),
        .I2(cntr_reg__0[3]),
        .I3(cntr_reg__0[2]),
        .O(sample_5));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_shift_reg[7]_i_2 
       (.I0(D),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in[0]),
        .Q(\rx_shift_reg_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in[3]),
        .Q(p_0_in[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[4] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in[4]),
        .Q(p_0_in[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[5] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in[5]),
        .Q(p_0_in[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[6] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in[6]),
        .Q(p_0_in[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[7] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5),
        .D(p_1_out),
        .Q(p_0_in[6]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'hFEFFFFEF02000020)) 
    \shift_reg_0Comp[0]_i_1 
       (.I0(shift_reg_0Comp[1]),
        .I1(cntr_reg__0[2]),
        .I2(cntr_reg__0[3]),
        .I3(cntr_reg__0[0]),
        .I4(cntr_reg__0[1]),
        .I5(shift_reg_0Comp[0]),
        .O(\shift_reg_0Comp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFEF02000020)) 
    \shift_reg_0Comp[1]_i_1 
       (.I0(shift_reg_0Comp[2]),
        .I1(cntr_reg__0[2]),
        .I2(cntr_reg__0[3]),
        .I3(cntr_reg__0[0]),
        .I4(cntr_reg__0[1]),
        .I5(shift_reg_0Comp[1]),
        .O(\shift_reg_0Comp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFEF02000020)) 
    \shift_reg_0Comp[2]_i_1 
       (.I0(shift_reg_0Comp[3]),
        .I1(cntr_reg__0[2]),
        .I2(cntr_reg__0[3]),
        .I3(cntr_reg__0[0]),
        .I4(cntr_reg__0[1]),
        .I5(shift_reg_0Comp[2]),
        .O(\shift_reg_0Comp[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1004)) 
    \shift_reg_0Comp[3]_i_1 
       (.I0(cntr_reg__0[2]),
        .I1(cntr_reg__0[3]),
        .I2(cntr_reg__0[0]),
        .I3(cntr_reg__0[1]),
        .O(sample_5_15));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg_0Comp[0]_i_1_n_0 ),
        .Q(shift_reg_0Comp[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg_0Comp[1]_i_1_n_0 ),
        .Q(shift_reg_0Comp[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg_0Comp[2]_i_1_n_0 ),
        .Q(shift_reg_0Comp[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(sample_5_15),
        .D(D),
        .Q(shift_reg_0Comp[3]),
        .R(rst_IBUF));
endmodule

module manchester_rx_top
   (rx_ready_OBUF,
    Q,
    rst_IBUF,
    D,
    clk100M_IBUF_BUFG,
    E,
    \doutb_internal_reg[1] );
  output rx_ready_OBUF;
  output [7:0]Q;
  input rst_IBUF;
  input [0:0]D;
  input clk100M_IBUF_BUFG;
  input [0:0]E;
  input [2:0]\doutb_internal_reg[1] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]addra;
  wire clk100M_IBUF_BUFG;
  wire data_valid;
  wire [2:0]\doutb_internal_reg[1] ;
  wire [7:0]parallel_dout_internal;
  wire \ram_addra[0]_i_1_n_0 ;
  wire \ram_addra[1]_i_1_n_0 ;
  wire \ram_addra[2]_i_1_n_0 ;
  wire rst_IBUF;
  wire rx_ready_OBUF;

  ram_dp__sim_par__parameterized0 ram
       (.E(E),
        .Q(Q),
        .addra(addra),
        .clk100M_IBUF_BUFG(clk100M_IBUF_BUFG),
        .data_valid(data_valid),
        .\doutb_internal_reg[1]_0 (\doutb_internal_reg[1] ),
        .\doutb_internal_reg[7]_0 (parallel_dout_internal));
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addra[0]_i_1 
       (.I0(data_valid),
        .I1(addra[0]),
        .O(\ram_addra[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addra[1]_i_1 
       (.I0(addra[0]),
        .I1(data_valid),
        .I2(addra[1]),
        .O(\ram_addra[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addra[2]_i_1 
       (.I0(addra[0]),
        .I1(addra[1]),
        .I2(data_valid),
        .I3(addra[2]),
        .O(\ram_addra[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addra[0]_i_1_n_0 ),
        .Q(addra[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addra[1]_i_1_n_0 ),
        .Q(addra[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addra[2]_i_1_n_0 ),
        .Q(addra[2]),
        .R(rst_IBUF));
  manchester_rx_m rxm
       (.D(D),
        .Q(parallel_dout_internal),
        .clk100M_IBUF_BUFG(clk100M_IBUF_BUFG),
        .data_valid(data_valid),
        .rst_IBUF(rst_IBUF),
        .rx_ready_OBUF(rx_ready_OBUF));
endmodule

(* ECO_CHECKSUM = "9a126efe" *) 
(* NotValidForBitStream *)
module manchester_top
   (clk100M,
    clk20M,
    rst,
    tx_on,
    uart_tx_on,
    uart_serial_out,
    rx_ready,
    tx_ready,
    serial_data_in,
    serial_data_out);
  input clk100M;
  input clk20M;
  input rst;
  input tx_on;
  input uart_tx_on;
  output uart_serial_out;
  output rx_ready;
  output tx_ready;
  input serial_data_in;
  output serial_data_out;

  wire clk100M;
  wire clk100M_IBUF;
  wire clk100M_IBUF_BUFG;
  wire clk20M;
  wire clk20M_IBUF;
  wire clk20M_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;
  wire rx_ready;
  wire rx_ready_OBUF;
  wire serial_data_in;
  wire serial_data_in_IBUF;
  wire serial_data_out;
  wire serial_data_out_OBUF;
  wire tx_on;
  wire tx_on_IBUF;
  wire tx_ready;
  wire tx_ready_OBUF;
  wire uart_serial_out;
  wire uart_serial_out_OBUF;
  wire uart_tx_on;
  wire uart_tx_on_IBUF;

initial begin
 $sdf_annotate("manchester_top_tb_time_impl.sdf",,,,"tool_control");
end
  Manchester_rx_uart_top RXM
       (.D(serial_data_in_IBUF),
        .clk100M_IBUF_BUFG(clk100M_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .rx_ready_OBUF(rx_ready_OBUF),
        .uart_serial_out_OBUF(uart_serial_out_OBUF),
        .uart_tx_on_IBUF(uart_tx_on_IBUF));
  manchester_tx_top TXM
       (.CLK(clk20M_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .serial_data_out_OBUF(serial_data_out_OBUF),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_ready_OBUF(tx_ready_OBUF));
  BUFG clk100M_IBUF_BUFG_inst
       (.I(clk100M_IBUF),
        .O(clk100M_IBUF_BUFG));
  IBUF clk100M_IBUF_inst
       (.I(clk100M),
        .O(clk100M_IBUF));
  BUFG clk20M_IBUF_BUFG_inst
       (.I(clk20M_IBUF),
        .O(clk20M_IBUF_BUFG));
  IBUF clk20M_IBUF_inst
       (.I(clk20M),
        .O(clk20M_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF rx_ready_OBUF_inst
       (.I(rx_ready_OBUF),
        .O(rx_ready));
  IBUF serial_data_in_IBUF_inst
       (.I(serial_data_in),
        .O(serial_data_in_IBUF));
  OBUF serial_data_out_OBUF_inst
       (.I(serial_data_out_OBUF),
        .O(serial_data_out));
  IBUF tx_on_IBUF_inst
       (.I(tx_on),
        .O(tx_on_IBUF));
  OBUF tx_ready_OBUF_inst
       (.I(tx_ready_OBUF),
        .O(tx_ready));
  OBUF uart_serial_out_OBUF_inst
       (.I(uart_serial_out_OBUF),
        .O(uart_serial_out));
  IBUF uart_tx_on_IBUF_inst
       (.I(uart_tx_on),
        .O(uart_tx_on_IBUF));
endmodule

module manchester_tx_m
   (serial_data_out_OBUF,
    E,
    D,
    sample_cnt_reg_0,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[2]_0 ,
    CLK,
    Q,
    \ram_addrb_reg[0] ,
    tx_on_IBUF,
    rst_IBUF,
    \bit_cnt_reg[2]_0 ,
    tx_out_reg_0,
    \tx_in_reg[7] );
  output serial_data_out_OBUF;
  output [0:0]E;
  output [2:0]D;
  output [0:0]sample_cnt_reg_0;
  output [3:0]\FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[2]_0 ;
  input CLK;
  input [2:0]Q;
  input \ram_addrb_reg[0] ;
  input tx_on_IBUF;
  input rst_IBUF;
  input \bit_cnt_reg[2]_0 ;
  input [7:0]tx_out_reg_0;
  input [3:0]\tx_in_reg[7] ;

  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [3:0]\FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [2:0]Q;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt_reg[2]_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \ram_addrb_reg[0] ;
  wire rst_IBUF;
  wire sample_cnt;
  wire sample_cnt_i_1_n_0;
  wire [0:0]sample_cnt_reg_0;
  wire sample_cnt_reg_n_0;
  wire serial_data_out_OBUF;
  wire [3:0]\tx_in_reg[7] ;
  wire tx_on_IBUF;
  wire tx_on_internal;
  wire tx_out_i_2_n_0;
  wire tx_out_i_3_n_0;
  wire tx_out_i_4_n_0;
  wire [7:0]tx_out_reg_0;

  LUT5 #(
    .INIT(32'h0000FA0E)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[1]),
        .I1(tx_on_IBUF),
        .I2(Q[0]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(Q[2]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h33230030)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\ram_addrb_reg[0] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2222222202222222)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\bit_cnt_reg[2]_0 ),
        .I1(rst_IBUF),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(sample_cnt_reg_n_0),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\ram_addrb_reg[0] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(sample_cnt_reg_n_0),
        .I2(\bit_cnt_reg[2]_0 ),
        .I3(rst_IBUF),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00006C00)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(sample_cnt_reg_n_0),
        .I3(\bit_cnt_reg[2]_0 ),
        .I4(rst_IBUF),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078F00000)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(sample_cnt_reg_n_0),
        .I4(\bit_cnt_reg[2]_0 ),
        .I5(rst_IBUF),
        .O(\bit_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF4000FFFFFFFF)) 
    \doutb_internal[7]_i_1 
       (.I0(sample_cnt_reg_n_0),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(rst_IBUF),
        .I5(\bit_cnt_reg[2]_0 ),
        .O(sample_cnt_reg_0));
  LUT5 #(
    .INIT(32'h00044444)) 
    \ram_addrb[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\ram_addrb_reg[0] ),
        .I4(Q[0]),
        .O(E));
  LUT3 #(
    .INIT(8'h04)) 
    sample_cnt_i_1
       (.I0(sample_cnt_reg_n_0),
        .I1(\bit_cnt_reg[2]_0 ),
        .I2(rst_IBUF),
        .O(sample_cnt_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sample_cnt_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sample_cnt_i_1_n_0),
        .Q(sample_cnt_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4445)) 
    tx_done_i_1
       (.I0(Q[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_sequential_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF202)) 
    \tx_in[2]_i_1 
       (.I0(tx_on_IBUF),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\tx_in_reg[7] [0]),
        .O(\FSM_sequential_state_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF202)) 
    \tx_in[3]_i_1 
       (.I0(tx_on_IBUF),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\tx_in_reg[7] [1]),
        .O(\FSM_sequential_state_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF202)) 
    \tx_in[6]_i_1 
       (.I0(tx_on_IBUF),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\tx_in_reg[7] [2]),
        .O(\FSM_sequential_state_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF202)) 
    \tx_in[7]_i_2 
       (.I0(tx_on_IBUF),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\tx_in_reg[7] [3]),
        .O(\FSM_sequential_state_reg[1] [3]));
  LUT6 #(
    .INIT(64'hEFEFEFEE20202022)) 
    tx_on_internal_i_1
       (.I0(tx_on_internal),
        .I1(Q[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\bit_cnt_reg[2]_0 ),
        .O(\FSM_sequential_state_reg[2] ));
  LUT4 #(
    .INIT(16'h0004)) 
    tx_on_internal_i_2
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(tx_on_IBUF),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(tx_on_internal));
  LUT2 #(
    .INIT(4'hB)) 
    tx_out_i_1
       (.I0(rst_IBUF),
        .I1(\bit_cnt_reg[2]_0 ),
        .O(sample_cnt));
  LUT4 #(
    .INIT(16'h56A6)) 
    tx_out_i_2
       (.I0(sample_cnt_reg_n_0),
        .I1(tx_out_i_3_n_0),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(tx_out_i_4_n_0),
        .O(tx_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    tx_out_i_3
       (.I0(tx_out_reg_0[3]),
        .I1(tx_out_reg_0[2]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(tx_out_reg_0[1]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(tx_out_reg_0[0]),
        .O(tx_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    tx_out_i_4
       (.I0(tx_out_reg_0[7]),
        .I1(tx_out_reg_0[6]),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(tx_out_reg_0[5]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(tx_out_reg_0[4]),
        .O(tx_out_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_out_i_2_n_0),
        .Q(serial_data_out_OBUF),
        .R(sample_cnt));
endmodule

module manchester_tx_top
   (tx_ready_OBUF,
    serial_data_out_OBUF,
    rst_IBUF,
    CLK,
    tx_on_IBUF);
  output tx_ready_OBUF;
  output serial_data_out_OBUF;
  input rst_IBUF;
  input CLK;
  input tx_on_IBUF;

  wire CLK;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire [3:0]ram_addrb;
  wire \ram_addrb_reg_n_0_[0] ;
  wire \ram_addrb_reg_n_0_[1] ;
  wire \ram_addrb_reg_n_0_[2] ;
  wire \ram_addrb_reg_n_0_[3] ;
  wire ram_n_4;
  wire ram_n_5;
  wire ram_n_6;
  wire ram_n_7;
  wire rst_IBUF;
  wire serial_data_out_OBUF;
  wire [2:0]state__0;
  wire [6:0]tx_in;
  wire [7:0]tx_in0_in;
  wire \tx_in[7]_i_1_n_0 ;
  wire \tx_in_reg_n_0_[7] ;
  wire tx_m_n_1;
  wire tx_m_n_10;
  wire tx_m_n_11;
  wire tx_m_n_2;
  wire tx_m_n_3;
  wire tx_m_n_4;
  wire tx_on_IBUF;
  wire tx_on_internal_reg_n_0;
  wire tx_ready;
  wire tx_ready_OBUF;

  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\ram_addrb_reg_n_0_[1] ),
        .I1(\ram_addrb_reg_n_0_[0] ),
        .I2(\ram_addrb_reg_n_0_[3] ),
        .I3(\ram_addrb_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(tx_m_n_4),
        .Q(state__0[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(tx_m_n_3),
        .Q(state__0[1]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(tx_m_n_2),
        .Q(state__0[2]),
        .R(rst_IBUF));
  ram_dp__sim_par ram
       (.CLK(CLK),
        .D({tx_in0_in[5:4],tx_in0_in[1:0]}),
        .E(tx_ready),
        .Q(state__0[1]),
        .\doutb_internal_reg[7]_0 ({ram_n_4,ram_n_5,ram_n_6,ram_n_7}),
        .\doutb_internal_reg[7]_1 ({\ram_addrb_reg_n_0_[2] ,\ram_addrb_reg_n_0_[1] ,\ram_addrb_reg_n_0_[0] }));
  LUT2 #(
    .INIT(4'h1)) 
    \ram_addrb[0]_i_1__0 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[0] ),
        .O(ram_addrb[0]));
  LUT3 #(
    .INIT(8'h14)) 
    \ram_addrb[1]_i_1__0 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[1] ),
        .I2(\ram_addrb_reg_n_0_[0] ),
        .O(ram_addrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \ram_addrb[2]_i_1__0 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[0] ),
        .I2(\ram_addrb_reg_n_0_[1] ),
        .I3(\ram_addrb_reg_n_0_[2] ),
        .O(ram_addrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \ram_addrb[3]_i_2__0 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[2] ),
        .I2(\ram_addrb_reg_n_0_[1] ),
        .I3(\ram_addrb_reg_n_0_[0] ),
        .I4(\ram_addrb_reg_n_0_[3] ),
        .O(ram_addrb[3]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[0] 
       (.C(CLK),
        .CE(tx_m_n_1),
        .D(ram_addrb[0]),
        .Q(\ram_addrb_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[1] 
       (.C(CLK),
        .CE(tx_m_n_1),
        .D(ram_addrb[1]),
        .Q(\ram_addrb_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[2] 
       (.C(CLK),
        .CE(tx_m_n_1),
        .D(ram_addrb[2]),
        .Q(\ram_addrb_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[3] 
       (.C(CLK),
        .CE(tx_m_n_1),
        .D(ram_addrb[3]),
        .Q(\ram_addrb_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(CLK),
        .CE(tx_m_n_11),
        .D(state__0[1]),
        .Q(tx_ready_OBUF),
        .R(rst_IBUF));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_in[7]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .O(\tx_in[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[0] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[0]),
        .Q(tx_in[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[1] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[1]),
        .Q(tx_in[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[2] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[2]),
        .Q(tx_in[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[3] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[3]),
        .Q(tx_in[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[4] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[4]),
        .Q(tx_in[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[5] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[5]),
        .Q(tx_in[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[6] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[6]),
        .Q(tx_in[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[7] 
       (.C(CLK),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[7]),
        .Q(\tx_in_reg_n_0_[7] ),
        .R(rst_IBUF));
  manchester_tx_m tx_m
       (.CLK(CLK),
        .D({tx_m_n_2,tx_m_n_3,tx_m_n_4}),
        .E(tx_m_n_1),
        .\FSM_sequential_state_reg[1] ({tx_in0_in[7:6],tx_in0_in[3:2]}),
        .\FSM_sequential_state_reg[2] (tx_m_n_10),
        .\FSM_sequential_state_reg[2]_0 (tx_m_n_11),
        .Q(state__0),
        .\bit_cnt_reg[2]_0 (tx_on_internal_reg_n_0),
        .\ram_addrb_reg[0] (\FSM_sequential_state[1]_i_2_n_0 ),
        .rst_IBUF(rst_IBUF),
        .sample_cnt_reg_0(tx_ready),
        .serial_data_out_OBUF(serial_data_out_OBUF),
        .\tx_in_reg[7] ({ram_n_4,ram_n_5,ram_n_6,ram_n_7}),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_out_reg_0({\tx_in_reg_n_0_[7] ,tx_in}));
  FDRE #(
    .INIT(1'b0)) 
    tx_on_internal_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_m_n_10),
        .Q(tx_on_internal_reg_n_0),
        .R(rst_IBUF));
endmodule

module ram_dp__sim_par
   (D,
    \doutb_internal_reg[7]_0 ,
    Q,
    E,
    CLK,
    \doutb_internal_reg[7]_1 );
  output [3:0]D;
  output [3:0]\doutb_internal_reg[7]_0 ;
  input [0:0]Q;
  input [0:0]E;
  input CLK;
  input [2:0]\doutb_internal_reg[7]_1 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]doutb_internal0;
  wire [3:0]\doutb_internal_reg[7]_0 ;
  wire [2:0]\doutb_internal_reg[7]_1 ;
  wire \doutb_internal_reg_n_0_[0] ;
  wire \doutb_internal_reg_n_0_[1] ;
  wire \doutb_internal_reg_n_0_[4] ;
  wire \doutb_internal_reg_n_0_[5] ;
  wire [1:0]NLW_ram_dp_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[0]),
        .Q(\doutb_internal_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[1]),
        .Q(\doutb_internal_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[2]),
        .Q(\doutb_internal_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[3]),
        .Q(\doutb_internal_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[4]),
        .Q(\doutb_internal_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[5]),
        .Q(\doutb_internal_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[6]),
        .Q(\doutb_internal_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[7]),
        .Q(\doutb_internal_reg[7]_0 [3]),
        .R(1'b0));
  (* INIT_A = "64'h000000000000E4E4" *) 
  (* INIT_B = "64'h0000000000005500" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD2 ram_dp_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,\doutb_internal_reg[7]_1 }),
        .ADDRB({1'b0,1'b0,\doutb_internal_reg[7]_1 }),
        .ADDRC({1'b0,1'b0,\doutb_internal_reg[7]_1 }),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA({1'b0,1'b0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0[1:0]),
        .DOB(doutb_internal0[3:2]),
        .DOC(doutb_internal0[5:4]),
        .DOD(NLW_ram_dp_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M_HD3 ram_dp_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,\doutb_internal_reg[7]_1 }),
        .ADDRB({1'b0,1'b0,\doutb_internal_reg[7]_1 }),
        .ADDRC({1'b0,1'b0,\doutb_internal_reg[7]_1 }),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA({1'b0,1'b0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0[7:6]),
        .DOB(NLW_ram_dp_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_dp_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_dp_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[0]_i_1 
       (.I0(\doutb_internal_reg_n_0_[0] ),
        .I1(Q),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[1]_i_1 
       (.I0(\doutb_internal_reg_n_0_[1] ),
        .I1(Q),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[4]_i_1 
       (.I0(\doutb_internal_reg_n_0_[4] ),
        .I1(Q),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[5]_i_1 
       (.I0(\doutb_internal_reg_n_0_[5] ),
        .I1(Q),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "ram_dp__sim_par" *) 
module ram_dp__sim_par__parameterized0
   (Q,
    E,
    clk100M_IBUF_BUFG,
    data_valid,
    \doutb_internal_reg[7]_0 ,
    \doutb_internal_reg[1]_0 ,
    addra);
  output [7:0]Q;
  input [0:0]E;
  input clk100M_IBUF_BUFG;
  input data_valid;
  input [7:0]\doutb_internal_reg[7]_0 ;
  input [2:0]\doutb_internal_reg[1]_0 ;
  input [2:0]addra;

  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]addra;
  wire clk100M_IBUF_BUFG;
  wire data_valid;
  wire [7:0]doutb_internal0__0;
  wire [2:0]\doutb_internal_reg[1]_0 ;
  wire [7:0]\doutb_internal_reg[7]_0 ;
  wire [1:0]NLW_ram_dp_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[4] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[5] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[6] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[7] 
       (.C(clk100M_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0__0[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ ram_dp_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,\doutb_internal_reg[1]_0 }),
        .ADDRB({1'b0,1'b0,\doutb_internal_reg[1]_0 }),
        .ADDRC({1'b0,1'b0,\doutb_internal_reg[1]_0 }),
        .ADDRD({1'b0,1'b0,addra}),
        .DIA(\doutb_internal_reg[7]_0 [1:0]),
        .DIB(\doutb_internal_reg[7]_0 [3:2]),
        .DIC(\doutb_internal_reg[7]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0__0[1:0]),
        .DOB(doutb_internal0__0[3:2]),
        .DOC(doutb_internal0__0[5:4]),
        .DOD(NLW_ram_dp_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk100M_IBUF_BUFG),
        .WE(data_valid));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M_HD1 ram_dp_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,\doutb_internal_reg[1]_0 }),
        .ADDRB({1'b0,1'b0,\doutb_internal_reg[1]_0 }),
        .ADDRC({1'b0,1'b0,\doutb_internal_reg[1]_0 }),
        .ADDRD({1'b0,1'b0,addra}),
        .DIA(\doutb_internal_reg[7]_0 [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0__0[7:6]),
        .DOB(NLW_ram_dp_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_dp_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_dp_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk100M_IBUF_BUFG),
        .WE(data_valid));
endmodule

module uart_tx_wrapper
   (uart_serial_out_OBUF,
    E,
    D,
    rst_IBUF,
    clk100M_IBUF_BUFG,
    Q,
    uart_tx_on_IBUF,
    \tx_reg_reg[7] ,
    tx_on_int_delayed,
    \FSM_sequential_state_reg[0] ,
    tx_on_int);
  output uart_serial_out_OBUF;
  output [0:0]E;
  output [1:0]D;
  input rst_IBUF;
  input clk100M_IBUF_BUFG;
  input [1:0]Q;
  input uart_tx_on_IBUF;
  input [7:0]\tx_reg_reg[7] ;
  input tx_on_int_delayed;
  input \FSM_sequential_state_reg[0] ;
  input tx_on_int;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire [1:0]Q;
  wire clk100M_IBUF_BUFG;
  wire rst_IBUF;
  wire tx_on_int;
  wire tx_on_int_delayed;
  wire [7:0]\tx_reg_reg[7] ;
  wire uart_serial_out_OBUF;
  wire uart_tx_on_IBUF;

  uart_txm_ex tx
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .Q(Q),
        .clk100M_IBUF_BUFG(clk100M_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .tx_on_int(tx_on_int),
        .tx_on_int_delayed(tx_on_int_delayed),
        .\tx_reg_reg[7]_0 (\tx_reg_reg[7] ),
        .uart_serial_out_OBUF(uart_serial_out_OBUF),
        .uart_tx_on_IBUF(uart_tx_on_IBUF));
endmodule

module uart_txm_ex
   (uart_serial_out_OBUF,
    E,
    D,
    rst_IBUF,
    clk100M_IBUF_BUFG,
    Q,
    uart_tx_on_IBUF,
    \tx_reg_reg[7]_0 ,
    tx_on_int_delayed,
    \FSM_sequential_state_reg[0]_0 ,
    tx_on_int);
  output uart_serial_out_OBUF;
  output [0:0]E;
  output [1:0]D;
  input rst_IBUF;
  input clk100M_IBUF_BUFG;
  input [1:0]Q;
  input uart_tx_on_IBUF;
  input [7:0]\tx_reg_reg[7]_0 ;
  input tx_on_int_delayed;
  input \FSM_sequential_state_reg[0]_0 ;
  input tx_on_int;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1__1_n_0 ;
  wire \FSM_sequential_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [1:0]Q;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire clk100M_IBUF_BUFG;
  wire ready_internal_i_1_n_0;
  wire rst_IBUF;
  wire sample_count0_carry__0_n_0;
  wire sample_count0_carry__0_n_4;
  wire sample_count0_carry__0_n_5;
  wire sample_count0_carry__0_n_6;
  wire sample_count0_carry__0_n_7;
  wire sample_count0_carry__1_n_0;
  wire sample_count0_carry__1_n_4;
  wire sample_count0_carry__1_n_5;
  wire sample_count0_carry__1_n_6;
  wire sample_count0_carry__1_n_7;
  wire sample_count0_carry__2_n_7;
  wire sample_count0_carry_n_0;
  wire sample_count0_carry_n_4;
  wire sample_count0_carry_n_5;
  wire sample_count0_carry_n_6;
  wire sample_count0_carry_n_7;
  wire \sample_count[0]_i_1_n_0 ;
  wire \sample_count[10]_i_1_n_0 ;
  wire \sample_count[11]_i_1_n_0 ;
  wire \sample_count[12]_i_1_n_0 ;
  wire \sample_count[13]_i_1_n_0 ;
  wire \sample_count[13]_i_2_n_0 ;
  wire \sample_count[13]_i_3_n_0 ;
  wire \sample_count[13]_i_4_n_0 ;
  wire \sample_count[13]_i_5_n_0 ;
  wire \sample_count[13]_i_6_n_0 ;
  wire \sample_count[13]_i_7_n_0 ;
  wire \sample_count[13]_i_8_n_0 ;
  wire \sample_count[13]_i_9_n_0 ;
  wire \sample_count[1]_i_1_n_0 ;
  wire \sample_count[2]_i_1_n_0 ;
  wire \sample_count[3]_i_1_n_0 ;
  wire \sample_count[4]_i_1_n_0 ;
  wire \sample_count[5]_i_1_n_0 ;
  wire \sample_count[6]_i_1_n_0 ;
  wire \sample_count[7]_i_1_n_0 ;
  wire \sample_count[8]_i_1_n_0 ;
  wire \sample_count[9]_i_1_n_0 ;
  wire \sample_count_reg_n_0_[0] ;
  wire \sample_count_reg_n_0_[10] ;
  wire \sample_count_reg_n_0_[11] ;
  wire \sample_count_reg_n_0_[12] ;
  wire \sample_count_reg_n_0_[13] ;
  wire \sample_count_reg_n_0_[1] ;
  wire \sample_count_reg_n_0_[2] ;
  wire \sample_count_reg_n_0_[3] ;
  wire \sample_count_reg_n_0_[4] ;
  wire \sample_count_reg_n_0_[5] ;
  wire \sample_count_reg_n_0_[6] ;
  wire \sample_count_reg_n_0_[7] ;
  wire \sample_count_reg_n_0_[8] ;
  wire \sample_count_reg_n_0_[9] ;
  wire [1:0]state;
  wire tx_on_int;
  wire tx_on_int_delayed;
  wire tx_ready;
  wire tx_reg;
  wire \tx_reg[0]_i_1_n_0 ;
  wire \tx_reg[1]_i_1_n_0 ;
  wire \tx_reg[2]_i_1_n_0 ;
  wire \tx_reg[3]_i_1_n_0 ;
  wire \tx_reg[4]_i_1_n_0 ;
  wire \tx_reg[5]_i_1_n_0 ;
  wire \tx_reg[6]_i_1_n_0 ;
  wire \tx_reg[7]_i_2_n_0 ;
  wire \tx_reg[7]_i_3_n_0 ;
  wire \tx_reg[7]_i_4_n_0 ;
  wire [7:0]\tx_reg_reg[7]_0 ;
  wire \tx_reg_reg_n_0_[0] ;
  wire \tx_reg_reg_n_0_[1] ;
  wire \tx_reg_reg_n_0_[2] ;
  wire \tx_reg_reg_n_0_[3] ;
  wire \tx_reg_reg_n_0_[4] ;
  wire \tx_reg_reg_n_0_[5] ;
  wire \tx_reg_reg_n_0_[6] ;
  wire \tx_reg_reg_n_0_[7] ;
  wire tx_serial_data_internal;
  wire tx_serial_data_internal_i_2_n_0;
  wire uart_serial_out_OBUF;
  wire uart_tx_on_IBUF;
  wire [2:0]NLW_sample_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sample_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sample_count0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sample_count0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sample_count0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hADE4A8E4)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I3(state[1]),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF2E2A2A)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(Q[1]),
        .I1(tx_ready),
        .I2(Q[0]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(tx_on_int),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00900000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(tx_on_int_delayed),
        .I3(rst_IBUF),
        .I4(tx_ready),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(tx_ready),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(state[0]),
        .O(\FSM_sequential_state[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I1(\sample_count_reg_n_0_[11] ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state[1]_i_5_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .O(\FSM_sequential_state[1]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_3__0 
       (.I0(\sample_count_reg_n_0_[9] ),
        .I1(\sample_count_reg_n_0_[10] ),
        .I2(\sample_count_reg_n_0_[8] ),
        .O(\FSM_sequential_state[1]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\sample_count_reg_n_0_[5] ),
        .I1(\sample_count_reg_n_0_[7] ),
        .I2(\sample_count_reg_n_0_[11] ),
        .I3(\sample_count_reg_n_0_[4] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h070F)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\sample_count_reg_n_0_[7] ),
        .I1(\sample_count_reg_n_0_[11] ),
        .I2(\sample_count_reg_n_0_[12] ),
        .I3(\sample_count_reg_n_0_[6] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "tx_data:10,stop:11,idle:00,tx_start:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_data:10,stop:11,idle:00,tx_start:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__1_n_0 ),
        .Q(state[1]),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEA04)) 
    \bit_count[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I3(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFCDC0020)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F7F000000800)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h00900000)) 
    \doutb_internal[7]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(uart_tx_on_IBUF),
        .I3(rst_IBUF),
        .I4(tx_ready),
        .O(E));
  LUT6 #(
    .INIT(64'hDDFFFF55D1000055)) 
    ready_internal_i_1
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\tx_reg[7]_i_3_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(tx_ready),
        .O(ready_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(clk100M_IBUF_BUFG),
        .CE(1'b1),
        .D(ready_internal_i_1_n_0),
        .Q(tx_ready),
        .S(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry
       (.CI(1'b0),
        .CO({sample_count0_carry_n_0,NLW_sample_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\sample_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry_n_4,sample_count0_carry_n_5,sample_count0_carry_n_6,sample_count0_carry_n_7}),
        .S({\sample_count_reg_n_0_[4] ,\sample_count_reg_n_0_[3] ,\sample_count_reg_n_0_[2] ,\sample_count_reg_n_0_[1] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry__0
       (.CI(sample_count0_carry_n_0),
        .CO({sample_count0_carry__0_n_0,NLW_sample_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry__0_n_4,sample_count0_carry__0_n_5,sample_count0_carry__0_n_6,sample_count0_carry__0_n_7}),
        .S({\sample_count_reg_n_0_[8] ,\sample_count_reg_n_0_[7] ,\sample_count_reg_n_0_[6] ,\sample_count_reg_n_0_[5] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry__1
       (.CI(sample_count0_carry__0_n_0),
        .CO({sample_count0_carry__1_n_0,NLW_sample_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry__1_n_4,sample_count0_carry__1_n_5,sample_count0_carry__1_n_6,sample_count0_carry__1_n_7}),
        .S({\sample_count_reg_n_0_[12] ,\sample_count_reg_n_0_[11] ,\sample_count_reg_n_0_[10] ,\sample_count_reg_n_0_[9] }));
  CARRY4 sample_count0_carry__2
       (.CI(sample_count0_carry__1_n_0),
        .CO(NLW_sample_count0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sample_count0_carry__2_O_UNCONNECTED[3:1],sample_count0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\sample_count_reg_n_0_[13] }));
  LUT5 #(
    .INIT(32'h04040400)) 
    \sample_count[0]_i_1 
       (.I0(\sample_count_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\sample_count[13]_i_4_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .O(\sample_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[10]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__1_n_6),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[11]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__1_n_5),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[12]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__1_n_4),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \sample_count[13]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .O(\sample_count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[13]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__2_n_7),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \sample_count[13]_i_3 
       (.I0(state[0]),
        .I1(\sample_count[13]_i_5_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I3(\sample_count[13]_i_6_n_0 ),
        .I4(\sample_count[13]_i_7_n_0 ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sample_count[13]_i_4 
       (.I0(\sample_count[13]_i_8_n_0 ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\sample_count[13]_i_9_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I5(\sample_count[13]_i_5_n_0 ),
        .O(\sample_count[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_count[13]_i_5 
       (.I0(\sample_count_reg_n_0_[2] ),
        .I1(\sample_count_reg_n_0_[0] ),
        .I2(\sample_count_reg_n_0_[3] ),
        .I3(\sample_count_reg_n_0_[1] ),
        .O(\sample_count[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_count[13]_i_6 
       (.I0(\sample_count_reg_n_0_[12] ),
        .I1(\sample_count_reg_n_0_[6] ),
        .I2(\sample_count_reg_n_0_[5] ),
        .I3(\sample_count_reg_n_0_[4] ),
        .O(\sample_count[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_count[13]_i_7 
       (.I0(\sample_count_reg_n_0_[13] ),
        .I1(\sample_count_reg_n_0_[11] ),
        .I2(\sample_count_reg_n_0_[7] ),
        .O(\sample_count[13]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[13]_i_8 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\sample_count[13]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \sample_count[13]_i_9 
       (.I0(\sample_count_reg_n_0_[12] ),
        .I1(\sample_count_reg_n_0_[6] ),
        .I2(\sample_count_reg_n_0_[13] ),
        .O(\sample_count[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry_n_7),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry_n_6),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry_n_5),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry_n_4),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__0_n_7),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[6]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__0_n_6),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__0_n_5),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[8]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__0_n_4),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \sample_count[9]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count[13]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(sample_count0_carry__1_n_7),
        .I5(\sample_count[13]_i_4_n_0 ),
        .O(\sample_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[10]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[11] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[11]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[11] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[12] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[12]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[12] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[13] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[13]_i_2_n_0 ),
        .Q(\sample_count_reg_n_0_[13] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[7]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[8]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[8] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(clk100M_IBUF_BUFG),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[9]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[9] ),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'hFCFF3000B8003000)) 
    \tx_reg[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_reg_reg_n_0_[1] ),
        .I3(state[1]),
        .I4(\tx_reg_reg[7]_0 [0]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\tx_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000B8003000)) 
    \tx_reg[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_reg_reg_n_0_[2] ),
        .I3(state[1]),
        .I4(\tx_reg_reg[7]_0 [1]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\tx_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000B8003000)) 
    \tx_reg[2]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_reg_reg_n_0_[3] ),
        .I3(state[1]),
        .I4(\tx_reg_reg[7]_0 [2]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\tx_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000B8003000)) 
    \tx_reg[3]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_reg_reg_n_0_[4] ),
        .I3(state[1]),
        .I4(\tx_reg_reg[7]_0 [3]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\tx_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000B8003000)) 
    \tx_reg[4]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_reg_reg_n_0_[5] ),
        .I3(state[1]),
        .I4(\tx_reg_reg[7]_0 [4]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\tx_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000B8003000)) 
    \tx_reg[5]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_reg_reg_n_0_[6] ),
        .I3(state[1]),
        .I4(\tx_reg_reg[7]_0 [5]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\tx_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000B8003000)) 
    \tx_reg[6]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_reg_reg_n_0_[7] ),
        .I3(state[1]),
        .I4(\tx_reg_reg[7]_0 [6]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\tx_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h44F3)) 
    \tx_reg[7]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[1]),
        .I2(\tx_reg[7]_i_3_n_0 ),
        .I3(state[0]),
        .O(tx_reg));
  LUT5 #(
    .INIT(32'hC8C0EAEA)) 
    \tx_reg[7]_i_2 
       (.I0(state[1]),
        .I1(\tx_reg_reg[7]_0 [7]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(state[0]),
        .O(\tx_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \tx_reg[7]_i_3 
       (.I0(\tx_reg[7]_i_4_n_0 ),
        .I1(\sample_count_reg_n_0_[5] ),
        .I2(\sample_count_reg_n_0_[7] ),
        .I3(\sample_count_reg_n_0_[11] ),
        .I4(\sample_count[13]_i_9_n_0 ),
        .I5(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .O(\tx_reg[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \tx_reg[7]_i_4 
       (.I0(\sample_count_reg_n_0_[3] ),
        .I1(\sample_count_reg_n_0_[2] ),
        .I2(\sample_count_reg_n_0_[0] ),
        .I3(\sample_count_reg_n_0_[1] ),
        .I4(\sample_count_reg_n_0_[4] ),
        .O(\tx_reg[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[0] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[0]_i_1_n_0 ),
        .Q(\tx_reg_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[1] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[1]_i_1_n_0 ),
        .Q(\tx_reg_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[2] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[2]_i_1_n_0 ),
        .Q(\tx_reg_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[3] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[3]_i_1_n_0 ),
        .Q(\tx_reg_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[4] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[4]_i_1_n_0 ),
        .Q(\tx_reg_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[5] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[5]_i_1_n_0 ),
        .Q(\tx_reg_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[6] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[6]_i_1_n_0 ),
        .Q(\tx_reg_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[7] 
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_reg),
        .D(\tx_reg[7]_i_2_n_0 ),
        .Q(\tx_reg_reg_n_0_[7] ),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hFF7FBB4C)) 
    tx_serial_data_internal_i_1
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[1]),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(state[0]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(tx_serial_data_internal));
  LUT5 #(
    .INIT(32'hB4B4B080)) 
    tx_serial_data_internal_i_2
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\tx_reg_reg_n_0_[0] ),
        .O(tx_serial_data_internal_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_serial_data_internal_reg
       (.C(clk100M_IBUF_BUFG),
        .CE(tx_serial_data_internal),
        .D(tx_serial_data_internal_i_2_n_0),
        .Q(uart_serial_out_OBUF),
        .S(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
