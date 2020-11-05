// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Nov  4 11:33:06 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ukallakuri/hardware_design/designs/manchester_tx_rx/manchester_tx_behavioural/manchester_tx_behavioural.sim/sim_1/impl/timing/xsim/manchester_tx_top_tb_time_impl.v
// Design      : manchester_tx_top
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

module manchester_tx_m
   (manch_out_OBUF,
    D,
    tx_on_internal_reg,
    E,
    \FSM_sequential_state_reg[1] ,
    \bit_cnt_reg[2]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    CLK,
    Q,
    tx_on_IBUF,
    \ram_addrb_reg[0] ,
    \bit_cnt_reg[2]_1 ,
    rst_IBUF,
    tx_out_reg_0);
  output manch_out_OBUF;
  output [2:0]D;
  output tx_on_internal_reg;
  output [0:0]E;
  output \FSM_sequential_state_reg[1] ;
  output [0:0]\bit_cnt_reg[2]_0 ;
  output \FSM_sequential_state_reg[1]_0 ;
  input CLK;
  input [2:0]Q;
  input tx_on_IBUF;
  input \ram_addrb_reg[0] ;
  input \bit_cnt_reg[2]_1 ;
  input rst_IBUF;
  input [7:0]tx_out_reg_0;

  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [2:0]Q;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire [0:0]\bit_cnt_reg[2]_0 ;
  wire \bit_cnt_reg[2]_1 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire manch_out_OBUF;
  wire \ram_addrb_reg[0] ;
  wire rst_IBUF;
  wire sample_cnt;
  wire sample_cnt_i_1_n_0;
  wire sample_cnt_reg_n_0;
  wire tx_on_IBUF;
  wire tx_on_internal;
  wire tx_on_internal_reg;
  wire tx_out_i_2_n_0;
  wire tx_out_i_3_n_0;
  wire tx_out_i_4_n_0;
  wire [7:0]tx_out_reg_0;

  LUT5 #(
    .INIT(32'h54540504)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(tx_on_IBUF),
        .I4(tx_on_internal_reg),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h50504550)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(Q[2]),
        .I1(\ram_addrb_reg[0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(tx_on_internal_reg),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4044444444444444)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(rst_IBUF),
        .I1(\bit_cnt_reg[2]_1 ),
        .I2(sample_cnt_reg_n_0),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(tx_on_internal_reg));
  LUT4 #(
    .INIT(16'h1F10)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\ram_addrb_reg[0] ),
        .I1(Q[1]),
        .I2(tx_on_internal_reg),
        .I3(Q[0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \bit_cnt[0]_i_1 
       (.I0(sample_cnt_reg_n_0),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg[2]_1 ),
        .I3(rst_IBUF),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00007800)) 
    \bit_cnt[1]_i_1 
       (.I0(sample_cnt_reg_n_0),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg[2]_1 ),
        .I4(rst_IBUF),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006CCC0000)) 
    \bit_cnt[2]_i_1 
       (.I0(sample_cnt_reg_n_0),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg[2]_1 ),
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
    .INIT(64'hFFFFFFFF0080FFFF)) 
    \doutb_internal[7]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(sample_cnt_reg_n_0),
        .I4(\bit_cnt_reg[2]_1 ),
        .I5(rst_IBUF),
        .O(\bit_cnt_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h001F0000)) 
    \ram_addrb[3]_i_1 
       (.I0(tx_on_internal_reg),
        .I1(\ram_addrb_reg[0] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(E));
  LUT3 #(
    .INIT(8'h04)) 
    sample_cnt_i_1
       (.I0(sample_cnt_reg_n_0),
        .I1(\bit_cnt_reg[2]_1 ),
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
    .INIT(16'h0F01)) 
    tx_done_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFAAFFFE00AA0002)) 
    tx_on_internal_i_1
       (.I0(tx_on_internal),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(\bit_cnt_reg[2]_1 ),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    tx_on_internal_i_2
       (.I0(tx_on_IBUF),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tx_on_internal_reg),
        .O(tx_on_internal));
  LUT2 #(
    .INIT(4'hB)) 
    tx_out_i_1
       (.I0(rst_IBUF),
        .I1(\bit_cnt_reg[2]_1 ),
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
    .INIT(64'h00CC1D1D33FF1D1D)) 
    tx_out_i_3
       (.I0(tx_out_reg_0[0]),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(tx_out_reg_0[2]),
        .I3(tx_out_reg_0[3]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(tx_out_reg_0[1]),
        .O(tx_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h00CC1D1D33FF1D1D)) 
    tx_out_i_4
       (.I0(tx_out_reg_0[4]),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(tx_out_reg_0[6]),
        .I3(tx_out_reg_0[7]),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(tx_out_reg_0[5]),
        .O(tx_out_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_out_i_2_n_0),
        .Q(manch_out_OBUF),
        .R(sample_cnt));
endmodule

(* ECO_CHECKSUM = "53aed7bf" *) (* RAM_ADDRSWIDTH = "3" *) (* idle = "3'b000" *) 
(* mem_read = "3'b010" *) (* stop = "3'b100" *) (* tx_data = "3'b011" *) 
(* tx_preamble = "3'b001" *) 
(* NotValidForBitStream *)
module manchester_tx_top
   (clk,
    rst,
    tx_on,
    tx_done,
    manch_out);
  input clk;
  input rst;
  input tx_on;
  output tx_done;
  output manch_out;

  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire manch_out;
  wire manch_out_OBUF;
  wire [3:0]ram_addrb;
  wire \ram_addrb_reg_n_0_[0] ;
  wire \ram_addrb_reg_n_0_[1] ;
  wire \ram_addrb_reg_n_0_[2] ;
  wire \ram_addrb_reg_n_0_[3] ;
  wire rst;
  wire rst_IBUF;
  wire [2:0]state__0;
  wire tx_done;
  wire tx_done_OBUF;
  wire [6:0]tx_in;
  wire [7:0]tx_in0_in;
  wire \tx_in[7]_i_1_n_0 ;
  wire \tx_in_reg_n_0_[7] ;
  wire tx_m_n_1;
  wire tx_m_n_2;
  wire tx_m_n_3;
  wire tx_m_n_4;
  wire tx_m_n_5;
  wire tx_m_n_6;
  wire tx_m_n_8;
  wire tx_on;
  wire tx_on_IBUF;
  wire tx_on_internal_reg_n_0;
  wire tx_ready;

initial begin
 $sdf_annotate("manchester_tx_top_tb_time_impl.sdf",,,,"tool_control");
end
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\ram_addrb_reg_n_0_[3] ),
        .I1(\ram_addrb_reg_n_0_[2] ),
        .I2(\ram_addrb_reg_n_0_[1] ),
        .I3(\ram_addrb_reg_n_0_[0] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_m_n_3),
        .Q(state__0[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_m_n_2),
        .Q(state__0[1]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_m_n_1),
        .Q(state__0[2]),
        .R(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF manch_out_OBUF_inst
       (.I(manch_out_OBUF),
        .O(manch_out));
  ram_dp__sim_par ram
       (.CLK(clk_IBUF_BUFG),
        .D(tx_in0_in),
        .E(tx_ready),
        .Q(state__0[1]),
        .\doutb_internal_reg[7]_0 ({\ram_addrb_reg_n_0_[2] ,\ram_addrb_reg_n_0_[1] ,\ram_addrb_reg_n_0_[0] }),
        .\tx_in_reg[7] (tx_m_n_4),
        .tx_on_IBUF(tx_on_IBUF));
  LUT2 #(
    .INIT(4'h1)) 
    \ram_addrb[0]_i_1 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[0] ),
        .O(ram_addrb[0]));
  LUT3 #(
    .INIT(8'h14)) 
    \ram_addrb[1]_i_1 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[0] ),
        .I2(\ram_addrb_reg_n_0_[1] ),
        .O(ram_addrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \ram_addrb[2]_i_1 
       (.I0(\ram_addrb_reg_n_0_[0] ),
        .I1(\ram_addrb_reg_n_0_[1] ),
        .I2(state__0[0]),
        .I3(\ram_addrb_reg_n_0_[2] ),
        .O(ram_addrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \ram_addrb[3]_i_2 
       (.I0(\ram_addrb_reg_n_0_[2] ),
        .I1(\ram_addrb_reg_n_0_[1] ),
        .I2(\ram_addrb_reg_n_0_[0] ),
        .I3(state__0[0]),
        .I4(\ram_addrb_reg_n_0_[3] ),
        .O(ram_addrb[3]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_5),
        .D(ram_addrb[0]),
        .Q(\ram_addrb_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_5),
        .D(ram_addrb[1]),
        .Q(\ram_addrb_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_5),
        .D(ram_addrb[2]),
        .Q(\ram_addrb_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_5),
        .D(ram_addrb[3]),
        .Q(\ram_addrb_reg_n_0_[3] ),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF tx_done_OBUF_inst
       (.I(tx_done_OBUF),
        .O(tx_done));
  FDRE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_6),
        .D(state__0[1]),
        .Q(tx_done_OBUF),
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
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[0]),
        .Q(tx_in[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[1]),
        .Q(tx_in[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[2]),
        .Q(tx_in[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[3]),
        .Q(tx_in[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[4]),
        .Q(tx_in[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[5]),
        .Q(tx_in[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[6]),
        .Q(tx_in[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_in_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_in[7]_i_1_n_0 ),
        .D(tx_in0_in[7]),
        .Q(\tx_in_reg_n_0_[7] ),
        .R(rst_IBUF));
  manchester_tx_m tx_m
       (.CLK(clk_IBUF_BUFG),
        .D({tx_m_n_1,tx_m_n_2,tx_m_n_3}),
        .E(tx_m_n_5),
        .\FSM_sequential_state_reg[1] (tx_m_n_6),
        .\FSM_sequential_state_reg[1]_0 (tx_m_n_8),
        .Q(state__0),
        .\bit_cnt_reg[2]_0 (tx_ready),
        .\bit_cnt_reg[2]_1 (tx_on_internal_reg_n_0),
        .manch_out_OBUF(manch_out_OBUF),
        .\ram_addrb_reg[0] (\FSM_sequential_state[1]_i_2_n_0 ),
        .rst_IBUF(rst_IBUF),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_on_internal_reg(tx_m_n_4),
        .tx_out_reg_0({\tx_in_reg_n_0_[7] ,tx_in}));
  IBUF tx_on_IBUF_inst
       (.I(tx_on),
        .O(tx_on_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    tx_on_internal_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_m_n_8),
        .Q(tx_on_internal_reg_n_0),
        .R(rst_IBUF));
endmodule

module ram_dp__sim_par
   (D,
    \tx_in_reg[7] ,
    Q,
    tx_on_IBUF,
    E,
    CLK,
    \doutb_internal_reg[7]_0 );
  output [7:0]D;
  input \tx_in_reg[7] ;
  input [0:0]Q;
  input tx_on_IBUF;
  input [0:0]E;
  input CLK;
  input [2:0]\doutb_internal_reg[7]_0 ;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]doutb_internal;
  wire [7:0]doutb_internal0;
  wire [2:0]\doutb_internal_reg[7]_0 ;
  wire \tx_in_reg[7] ;
  wire tx_on_IBUF;
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
        .Q(doutb_internal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[1]),
        .Q(doutb_internal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[2]),
        .Q(doutb_internal[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[3]),
        .Q(doutb_internal[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[4]),
        .Q(doutb_internal[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[5]),
        .Q(doutb_internal[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[6]),
        .Q(doutb_internal[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(doutb_internal0[7]),
        .Q(doutb_internal[7]),
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
  RAM32M_UNIQ_BASE_ ram_dp_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,\doutb_internal_reg[7]_0 }),
        .ADDRB({1'b0,1'b0,\doutb_internal_reg[7]_0 }),
        .ADDRC({1'b0,1'b0,\doutb_internal_reg[7]_0 }),
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
       (.ADDRA({1'b0,1'b0,\doutb_internal_reg[7]_0 }),
        .ADDRB({1'b0,1'b0,\doutb_internal_reg[7]_0 }),
        .ADDRC({1'b0,1'b0,\doutb_internal_reg[7]_0 }),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[0]_i_1 
       (.I0(doutb_internal[0]),
        .I1(Q),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[1]_i_1 
       (.I0(doutb_internal[1]),
        .I1(Q),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA3A0)) 
    \tx_in[2]_i_1 
       (.I0(doutb_internal[2]),
        .I1(\tx_in_reg[7] ),
        .I2(Q),
        .I3(tx_on_IBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA3A0)) 
    \tx_in[3]_i_1 
       (.I0(doutb_internal[3]),
        .I1(\tx_in_reg[7] ),
        .I2(Q),
        .I3(tx_on_IBUF),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[4]_i_1 
       (.I0(doutb_internal[4]),
        .I1(Q),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[5]_i_1 
       (.I0(doutb_internal[5]),
        .I1(Q),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA3A0)) 
    \tx_in[6]_i_1 
       (.I0(doutb_internal[6]),
        .I1(\tx_in_reg[7] ),
        .I2(Q),
        .I3(tx_on_IBUF),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA3A0)) 
    \tx_in[7]_i_2 
       (.I0(doutb_internal[7]),
        .I1(\tx_in_reg[7] ),
        .I2(Q),
        .I3(tx_on_IBUF),
        .O(D[7]));
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
