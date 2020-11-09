// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Nov  5 14:58:09 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ukallakuri/hardware_design/designs/manchester_tx_rx/manchester_rx_behavioural/manchester_rx_behavioural.sim/sim_1/impl/timing/xsim/Manchester_rx_uart_top_tb_time_impl.v
// Design      : Manchester_rx_uart_top
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

(* ECO_CHECKSUM = "f012bd6" *) (* RAM_ADDRSWIDTH = "3" *) (* idle = "3'b000" *) 
(* mem_read = "3'b001" *) (* tx_data = "3'b011" *) (* tx_idle = "3'b010" *) 
(* NotValidForBitStream *)
module Manchester_rx_uart_top
   (clk,
    rst,
    manch_decode_input,
    tx_on,
    tx_serial_data);
  input clk;
  input rst;
  input manch_decode_input;
  input tx_on;
  output tx_serial_data;

  wire \FSM_sequential_state_reg_n_0_[0] ;
  wire [2:0]addrb;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire enb__0;
  wire manch_decode_input;
  wire manch_decode_input_IBUF;
  wire \ram_addrb[0]_i_1_n_0 ;
  wire \ram_addrb[1]_i_1_n_0 ;
  wire \ram_addrb[2]_i_1_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire rx_top_n_0;
  wire rx_top_n_1;
  wire rx_top_n_2;
  wire rx_top_n_3;
  wire rx_top_n_4;
  wire rx_top_n_5;
  wire rx_top_n_6;
  wire rx_top_n_7;
  wire [1:1]state__0;
  wire tx_data_load_reg_n_0;
  wire tx_on;
  wire tx_on_IBUF;
  wire tx_serial_data;
  wire tx_serial_data_OBUF;
  wire uart_tx_n_1;
  wire uart_tx_n_2;
  wire uart_tx_n_3;
  wire uart_tx_n_4;
PULLUP pullup_manch_decode_input
       (.O(manch_decode_input));

initial begin
 $sdf_annotate("Manchester_rx_uart_top_tb_time_impl.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "tx_idle:10,mem_read:01,tx_data:11,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_n_4),
        .Q(\FSM_sequential_state_reg_n_0_[0] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:10,mem_read:01,tx_data:11,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_n_3),
        .Q(state__0),
        .R(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_n_2),
        .Q(enb__0),
        .R(rst_IBUF));
  IBUF manch_decode_input_IBUF_inst
       (.I(manch_decode_input),
        .O(manch_decode_input_IBUF));
  LUT3 #(
    .INIT(8'hB4)) 
    \ram_addrb[0]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[0] ),
        .I2(addrb[0]),
        .O(\ram_addrb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \ram_addrb[1]_i_1 
       (.I0(addrb[0]),
        .I1(\FSM_sequential_state_reg_n_0_[0] ),
        .I2(state__0),
        .I3(addrb[1]),
        .O(\ram_addrb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \ram_addrb[2]_i_1 
       (.I0(addrb[0]),
        .I1(addrb[1]),
        .I2(\FSM_sequential_state_reg_n_0_[0] ),
        .I3(state__0),
        .I4(addrb[2]),
        .O(\ram_addrb[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addrb[0]_i_1_n_0 ),
        .Q(addrb[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addrb[1]_i_1_n_0 ),
        .Q(addrb[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addrb[2]_i_1_n_0 ),
        .Q(addrb[2]),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  manchester_rx_top rx_top
       (.ADDRA(addrb),
        .D(manch_decode_input_IBUF),
        .E(enb__0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .tx_data_load_reg({rx_top_n_0,rx_top_n_1,rx_top_n_2,rx_top_n_3,rx_top_n_4,rx_top_n_5,rx_top_n_6,rx_top_n_7}),
        .\tx_reg_reg[0] (tx_data_load_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_data_load_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(uart_tx_n_1),
        .Q(tx_data_load_reg_n_0),
        .R(rst_IBUF));
  IBUF tx_on_IBUF_inst
       (.I(tx_on),
        .O(tx_on_IBUF));
  OBUF tx_serial_data_OBUF_inst
       (.I(tx_serial_data_OBUF),
        .O(tx_serial_data));
  uart_tx_wrapper uart_tx
       (.CLK(clk_IBUF_BUFG),
        .D({rx_top_n_0,rx_top_n_1,rx_top_n_2,rx_top_n_3,rx_top_n_4,rx_top_n_5,rx_top_n_6,rx_top_n_7}),
        .E(enb__0),
        .\FSM_sequential_state_reg[0] (tx_data_load_reg_n_0),
        .\FSM_sequential_state_reg[1] (uart_tx_n_2),
        .Q({state__0,\FSM_sequential_state_reg_n_0_[0] }),
        .SS(rst_IBUF),
        .ready_internal_reg(uart_tx_n_1),
        .ready_internal_reg_0({uart_tx_n_3,uart_tx_n_4}),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_serial_data_OBUF(tx_serial_data_OBUF));
endmodule

module manchester_rx_m
   (data_valid,
    Q,
    rst_IBUF,
    D,
    clk_IBUF_BUFG);
  output data_valid;
  output [7:0]Q;
  input rst_IBUF;
  input [0:0]D;
  input clk_IBUF_BUFG;

  wire [0:0]D;
  wire [7:0]Q;
  wire bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \bit_cnt[2]_i_4_n_0 ;
  wire \bit_cnt[2]_i_5_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire clk_IBUF_BUFG;
  wire \cntr[2]_i_1_n_0 ;
  wire \cntr[3]_i_1_n_0 ;
  wire [3:0]cntr_reg__0;
  wire data_valid;
  wire data_valid_i_1_n_0;
  wire data_valid_i_2_n_0;
  wire data_valid_i_3_n_0;
  wire en;
  wire en_i_1_n_0;
  wire [3:0]p_0_in;
  wire [6:0]p_0_in_0;
  wire [7:7]p_1_out;
  wire parallel_dout_internal;
  wire rst_IBUF;
  wire \rx_shift_reg_reg_n_0_[0] ;
  wire sample_5;
  wire sample_5_15;
  wire [3:0]shift_reg_0Comp;
  wire \shift_reg_0Comp[0]_i_1_n_0 ;
  wire \shift_reg_0Comp[1]_i_1_n_0 ;
  wire \shift_reg_0Comp[2]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt[2]_i_3_n_0 ),
        .I2(\bit_cnt[2]_i_2_n_0 ),
        .I3(bit_cnt),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(\bit_cnt[2]_i_3_n_0 ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(bit_cnt),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAAAAAA)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(\bit_cnt[2]_i_3_n_0 ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(bit_cnt),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \bit_cnt[2]_i_2 
       (.I0(cntr_reg__0[3]),
        .I1(cntr_reg__0[2]),
        .I2(cntr_reg__0[1]),
        .I3(cntr_reg__0[0]),
        .O(\bit_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \bit_cnt[2]_i_3 
       (.I0(shift_reg_0Comp[0]),
        .I1(shift_reg_0Comp[1]),
        .I2(shift_reg_0Comp[2]),
        .I3(shift_reg_0Comp[3]),
        .I4(\bit_cnt[2]_i_4_n_0 ),
        .I5(\bit_cnt[2]_i_5_n_0 ),
        .O(\bit_cnt[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \bit_cnt[2]_i_4 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .O(\bit_cnt[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \bit_cnt[2]_i_5 
       (.I0(p_0_in_0[0]),
        .I1(\rx_shift_reg_reg_n_0_[0] ),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .O(\bit_cnt[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cntr[0]_i_1 
       (.I0(cntr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cntr[1]_i_1 
       (.I0(cntr_reg__0[0]),
        .I1(cntr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cntr[2]_i_1 
       (.I0(cntr_reg__0[1]),
        .I1(cntr_reg__0[0]),
        .I2(cntr_reg__0[2]),
        .O(\cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFDFDFDFDDD)) 
    \cntr[3]_i_1 
       (.I0(en),
        .I1(rst_IBUF),
        .I2(cntr_reg__0[3]),
        .I3(cntr_reg__0[2]),
        .I4(cntr_reg__0[1]),
        .I5(cntr_reg__0[0]),
        .O(\cntr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \cntr[3]_i_2 
       (.I0(cntr_reg__0[0]),
        .I1(cntr_reg__0[1]),
        .I2(cntr_reg__0[2]),
        .I3(cntr_reg__0[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(cntr_reg__0[0]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(cntr_reg__0[1]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cntr[2]_i_1_n_0 ),
        .Q(cntr_reg__0[2]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(cntr_reg__0[3]),
        .R(\cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0555001000000000)) 
    data_valid_i_1
       (.I0(rst_IBUF),
        .I1(data_valid_i_2_n_0),
        .I2(\bit_cnt[2]_i_3_n_0 ),
        .I3(\bit_cnt[2]_i_2_n_0 ),
        .I4(data_valid),
        .I5(data_valid_i_3_n_0),
        .O(data_valid_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    data_valid_i_2
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .O(data_valid_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    data_valid_i_3
       (.I0(shift_reg_0Comp[0]),
        .I1(shift_reg_0Comp[1]),
        .I2(shift_reg_0Comp[2]),
        .I3(shift_reg_0Comp[3]),
        .O(data_valid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_valid_i_1_n_0),
        .Q(data_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    en_i_1
       (.I0(D),
        .I1(shift_reg_0Comp[3]),
        .I2(shift_reg_0Comp[2]),
        .I3(shift_reg_0Comp[1]),
        .I4(shift_reg_0Comp[0]),
        .O(en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_reg
       (.C(clk_IBUF_BUFG),
        .CE(en_i_1_n_0),
        .D(D),
        .Q(en),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \parallel_dout_internal[7]_i_1 
       (.I0(rst_IBUF),
        .I1(shift_reg_0Comp[3]),
        .I2(shift_reg_0Comp[2]),
        .I3(shift_reg_0Comp[1]),
        .I4(shift_reg_0Comp[0]),
        .O(bit_cnt));
  LUT5 #(
    .INIT(32'h00800000)) 
    \parallel_dout_internal[7]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt[2]_i_2_n_0 ),
        .I4(\bit_cnt[2]_i_3_n_0 ),
        .O(parallel_dout_internal));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(\rx_shift_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[0]),
        .Q(Q[1]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[1]),
        .Q(Q[2]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[2]),
        .Q(Q[3]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[3]),
        .Q(Q[4]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[4]),
        .Q(Q[5]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[5]),
        .Q(Q[6]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[6]),
        .Q(Q[7]),
        .R(bit_cnt));
  LUT4 #(
    .INIT(16'h0008)) 
    \rx_shift_reg[7]_i_1 
       (.I0(cntr_reg__0[0]),
        .I1(cntr_reg__0[1]),
        .I2(cntr_reg__0[2]),
        .I3(cntr_reg__0[3]),
        .O(sample_5));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_shift_reg[7]_i_2 
       (.I0(D),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in_0[0]),
        .Q(\rx_shift_reg_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in_0[2]),
        .Q(p_0_in_0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in_0[3]),
        .Q(p_0_in_0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in_0[4]),
        .Q(p_0_in_0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in_0[5]),
        .Q(p_0_in_0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_0_in_0[6]),
        .Q(p_0_in_0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5),
        .D(p_1_out),
        .Q(p_0_in_0[6]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'hFFFEFFBF00020080)) 
    \shift_reg_0Comp[0]_i_1 
       (.I0(shift_reg_0Comp[1]),
        .I1(cntr_reg__0[0]),
        .I2(cntr_reg__0[1]),
        .I3(cntr_reg__0[2]),
        .I4(cntr_reg__0[3]),
        .I5(shift_reg_0Comp[0]),
        .O(\shift_reg_0Comp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFBF00020080)) 
    \shift_reg_0Comp[1]_i_1 
       (.I0(shift_reg_0Comp[2]),
        .I1(cntr_reg__0[0]),
        .I2(cntr_reg__0[1]),
        .I3(cntr_reg__0[2]),
        .I4(cntr_reg__0[3]),
        .I5(shift_reg_0Comp[1]),
        .O(\shift_reg_0Comp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFBF00020080)) 
    \shift_reg_0Comp[2]_i_1 
       (.I0(shift_reg_0Comp[3]),
        .I1(cntr_reg__0[0]),
        .I2(cntr_reg__0[1]),
        .I3(cntr_reg__0[2]),
        .I4(cntr_reg__0[3]),
        .I5(shift_reg_0Comp[2]),
        .O(\shift_reg_0Comp[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0108)) 
    \shift_reg_0Comp[3]_i_1 
       (.I0(cntr_reg__0[0]),
        .I1(cntr_reg__0[1]),
        .I2(cntr_reg__0[2]),
        .I3(cntr_reg__0[3]),
        .O(sample_5_15));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg_0Comp[0]_i_1_n_0 ),
        .Q(shift_reg_0Comp[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg_0Comp[1]_i_1_n_0 ),
        .Q(shift_reg_0Comp[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg_0Comp[2]_i_1_n_0 ),
        .Q(shift_reg_0Comp[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_5_15),
        .D(D),
        .Q(shift_reg_0Comp[3]),
        .R(rst_IBUF));
endmodule

module manchester_rx_top
   (tx_data_load_reg,
    rst_IBUF,
    D,
    clk_IBUF_BUFG,
    \tx_reg_reg[0] ,
    E,
    ADDRA);
  output [7:0]tx_data_load_reg;
  input rst_IBUF;
  input [0:0]D;
  input clk_IBUF_BUFG;
  input \tx_reg_reg[0] ;
  input [0:0]E;
  input [2:0]ADDRA;

  wire [2:0]ADDRA;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]addra;
  wire clk_IBUF_BUFG;
  wire data_valid;
  wire [7:0]parallel_dout_internal;
  wire \ram_addra[0]_i_1_n_0 ;
  wire \ram_addra[1]_i_1_n_0 ;
  wire \ram_addra[2]_i_1_n_0 ;
  wire rst_IBUF;
  wire [7:0]tx_data_load_reg;
  wire \tx_reg_reg[0] ;

  ram_dp__sim_par ram
       (.ADDRA(ADDRA),
        .E(E),
        .Q(parallel_dout_internal),
        .addra(addra),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_valid(data_valid),
        .tx_data_load_reg(tx_data_load_reg),
        .\tx_reg_reg[0] (\tx_reg_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addra[0]_i_1 
       (.I0(data_valid),
        .I1(addra[0]),
        .O(\ram_addra[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addra[1]_i_1 
       (.I0(addra[0]),
        .I1(data_valid),
        .I2(addra[1]),
        .O(\ram_addra[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addra[0]_i_1_n_0 ),
        .Q(addra[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addra[1]_i_1_n_0 ),
        .Q(addra[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ram_addra[2]_i_1_n_0 ),
        .Q(addra[2]),
        .R(rst_IBUF));
  manchester_rx_m rxm
       (.D(D),
        .Q(parallel_dout_internal),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_valid(data_valid),
        .rst_IBUF(rst_IBUF));
endmodule

module ram_dp__sim_par
   (tx_data_load_reg,
    \tx_reg_reg[0] ,
    E,
    clk_IBUF_BUFG,
    data_valid,
    Q,
    ADDRA,
    addra);
  output [7:0]tx_data_load_reg;
  input \tx_reg_reg[0] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input data_valid;
  input [7:0]Q;
  input [2:0]ADDRA;
  input [2:0]addra;

  wire [2:0]ADDRA;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]addra;
  wire clk_IBUF_BUFG;
  wire data_valid;
  wire [7:0]doutb_internal;
  wire [7:0]doutb_internal0;
  wire [7:0]tx_data_load_reg;
  wire \tx_reg_reg[0] ;
  wire [1:0]NLW_ram_dp_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[0]),
        .Q(doutb_internal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[1]),
        .Q(doutb_internal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[2]),
        .Q(doutb_internal[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[3]),
        .Q(doutb_internal[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[4]),
        .Q(doutb_internal[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[5]),
        .Q(doutb_internal[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[6]),
        .Q(doutb_internal[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[7]),
        .Q(doutb_internal[7]),
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
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,addra}),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0[1:0]),
        .DOB(doutb_internal0[3:2]),
        .DOC(doutb_internal0[5:4]),
        .DOD(NLW_ram_dp_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD3 ram_dp_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,addra}),
        .DIA(Q[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0[7:6]),
        .DOB(NLW_ram_dp_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_dp_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_dp_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(data_valid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[0]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[0]),
        .O(tx_data_load_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[1]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[1]),
        .O(tx_data_load_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[2]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[2]),
        .O(tx_data_load_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[3]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[3]),
        .O(tx_data_load_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[4]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[4]),
        .O(tx_data_load_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[5]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[5]),
        .O(tx_data_load_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[6]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[6]),
        .O(tx_data_load_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[7]_i_2 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[7]),
        .O(tx_data_load_reg[7]));
endmodule

module uart_tx_wrapper
   (tx_serial_data_OBUF,
    ready_internal_reg,
    \FSM_sequential_state_reg[1] ,
    ready_internal_reg_0,
    SS,
    CLK,
    \FSM_sequential_state_reg[0] ,
    tx_on_IBUF,
    Q,
    E,
    D);
  output tx_serial_data_OBUF;
  output ready_internal_reg;
  output \FSM_sequential_state_reg[1] ;
  output [1:0]ready_internal_reg_0;
  input [0:0]SS;
  input CLK;
  input \FSM_sequential_state_reg[0] ;
  input tx_on_IBUF;
  input [1:0]Q;
  input [0:0]E;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire ready_internal_reg;
  wire [1:0]ready_internal_reg_0;
  wire tx_on_IBUF;
  wire tx_serial_data_OBUF;

  uart_txm_ex tx
       (.CLK(CLK),
        .D(D),
        .E(E),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state_reg[1] ),
        .Q(Q),
        .SS(SS),
        .ready_internal_reg_0(ready_internal_reg),
        .ready_internal_reg_1(ready_internal_reg_0),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_serial_data_OBUF(tx_serial_data_OBUF));
endmodule

module uart_txm_ex
   (tx_serial_data_OBUF,
    ready_internal_reg_0,
    \FSM_sequential_state_reg[1]_0 ,
    ready_internal_reg_1,
    SS,
    CLK,
    \FSM_sequential_state_reg[0]_0 ,
    tx_on_IBUF,
    Q,
    E,
    D);
  output tx_serial_data_OBUF;
  output ready_internal_reg_0;
  output \FSM_sequential_state_reg[1]_0 ;
  output [1:0]ready_internal_reg_1;
  input [0:0]SS;
  input CLK;
  input \FSM_sequential_state_reg[0]_0 ;
  input tx_on_IBUF;
  input [1:0]Q;
  input [0:0]E;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[2]_i_2_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire ready_internal_i_1_n_0;
  wire ready_internal_reg_0;
  wire [1:0]ready_internal_reg_1;
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
  wire tx_on_IBUF;
  wire tx_ready;
  wire [7:0]tx_reg;
  wire tx_reg_0;
  wire tx_serial_data_OBUF;
  wire tx_serial_data_internal;
  wire tx_serial_data_internal_i_2_n_0;
  wire [7:0]tx_shift_reg;
  wire tx_shift_reg_1;
  wire \tx_shift_reg_reg_n_0_[0] ;
  wire \tx_shift_reg_reg_n_0_[1] ;
  wire \tx_shift_reg_reg_n_0_[2] ;
  wire \tx_shift_reg_reg_n_0_[3] ;
  wire \tx_shift_reg_reg_n_0_[4] ;
  wire \tx_shift_reg_reg_n_0_[5] ;
  wire \tx_shift_reg_reg_n_0_[6] ;
  wire \tx_shift_reg_reg_n_0_[7] ;
  wire [2:0]NLW_sample_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sample_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sample_count0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sample_count0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sample_count0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h5410BABABABABABA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h22EA)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(Q[1]),
        .I1(tx_ready),
        .I2(tx_on_IBUF),
        .I3(Q[0]),
        .O(ready_internal_reg_1[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEAEAAAAAAAA)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\sample_count_reg_n_0_[12] ),
        .I1(\sample_count_reg_n_0_[7] ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(\sample_count_reg_n_0_[6] ),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(\sample_count_reg_n_0_[11] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\sample_count_reg_n_0_[5] ),
        .I1(\sample_count_reg_n_0_[4] ),
        .I2(\sample_count_reg_n_0_[1] ),
        .I3(\sample_count_reg_n_0_[2] ),
        .I4(\sample_count_reg_n_0_[0] ),
        .I5(\sample_count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(tx_ready),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(ready_internal_reg_1[1]));
  LUT6 #(
    .INIT(64'h6A6A6A6AAAAA6AAA)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\sample_count_reg_n_0_[13] ),
        .I3(\sample_count_reg_n_0_[11] ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(\sample_count_reg_n_0_[12] ),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055557FFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\sample_count_reg_n_0_[7] ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\sample_count_reg_n_0_[4] ),
        .I3(\sample_count_reg_n_0_[5] ),
        .I4(\sample_count_reg_n_0_[6] ),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\sample_count_reg_n_0_[3] ),
        .I1(\sample_count_reg_n_0_[0] ),
        .I2(\sample_count_reg_n_0_[2] ),
        .I3(\sample_count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\sample_count_reg_n_0_[10] ),
        .I1(\sample_count_reg_n_0_[9] ),
        .I2(\sample_count_reg_n_0_[8] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "tx_start:01,tx_data:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(SS));
  (* FSM_ENCODED_STATES = "tx_start:01,tx_data:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(SS));
  LUT5 #(
    .INIT(32'hAEEE4000)) 
    \bit_count[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count_reg_n_0_[13] ),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDCFCFCFC20000000)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\sample_count_reg_n_0_[13] ),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDCFCFCFC20000000)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count[2]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\sample_count_reg_n_0_[13] ),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bit_count[2]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAFF0040)) 
    enb_i_1
       (.I0(Q[1]),
        .I1(tx_on_IBUF),
        .I2(tx_ready),
        .I3(Q[0]),
        .I4(E),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hEAAAAA00EAAAAAFF)) 
    ready_internal_i_1
       (.I0(tx_ready),
        .I1(\sample_count_reg_n_0_[13] ),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(ready_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ready_internal_i_1_n_0),
        .Q(tx_ready),
        .S(SS));
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
    .INIT(32'h40545454)) 
    \sample_count[0]_i_1 
       (.I0(\sample_count_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .O(\sample_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[10]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__1_n_6),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[11]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__1_n_5),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[12]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__1_n_4),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777FF7FFFFFFFFF)) 
    \sample_count[13]_i_1 
       (.I0(state[0]),
        .I1(\sample_count_reg_n_0_[13] ),
        .I2(\sample_count_reg_n_0_[11] ),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\sample_count_reg_n_0_[12] ),
        .I5(state[1]),
        .O(\sample_count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[13]_i_2 
       (.I0(state[1]),
        .I1(sample_count0_carry__2_n_7),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \sample_count[13]_i_3 
       (.I0(\sample_count[13]_i_4_n_0 ),
        .I1(\sample_count[13]_i_5_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(state[1]),
        .O(\sample_count[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_count[13]_i_4 
       (.I0(\sample_count_reg_n_0_[12] ),
        .I1(\sample_count_reg_n_0_[5] ),
        .I2(\sample_count_reg_n_0_[11] ),
        .I3(\sample_count_reg_n_0_[7] ),
        .O(\sample_count[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_count[13]_i_5 
       (.I0(\sample_count_reg_n_0_[6] ),
        .I1(\sample_count_reg_n_0_[13] ),
        .I2(\sample_count_reg_n_0_[4] ),
        .O(\sample_count[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[1]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry_n_7),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[2]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry_n_6),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[3]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry_n_5),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[4]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry_n_4),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[5]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__0_n_7),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[6]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__0_n_6),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[7]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__0_n_5),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[8]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__0_n_4),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080C0CCC0CCC0CC)) 
    \sample_count[9]_i_1 
       (.I0(state[1]),
        .I1(sample_count0_carry__1_n_7),
        .I2(state[0]),
        .I3(\sample_count[13]_i_3_n_0 ),
        .I4(\sample_count_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\sample_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[10]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[10] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[11] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[11]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[11] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[12] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[12]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[12] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[13] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[13]_i_2_n_0 ),
        .Q(\sample_count_reg_n_0_[13] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[4] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[5] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[6] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[7]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[7] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[8]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[8] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[9]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[9] ),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF070F00)) 
    tx_data_load_i_1
       (.I0(tx_on_IBUF),
        .I1(tx_ready),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .O(ready_internal_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_reg[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(tx_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[0] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[0]),
        .Q(tx_reg[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[1] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[1]),
        .Q(tx_reg[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[2] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[2]),
        .Q(tx_reg[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[3] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[3]),
        .Q(tx_reg[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[4] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[4]),
        .Q(tx_reg[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[5] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[5]),
        .Q(tx_reg[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[6] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[6]),
        .Q(tx_reg[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[7] 
       (.C(CLK),
        .CE(tx_reg_0),
        .D(D[7]),
        .Q(tx_reg[7]),
        .R(SS));
  LUT6 #(
    .INIT(64'h55F7FFFFFFFF0000)) 
    tx_serial_data_internal_i_1
       (.I0(\sample_count_reg_n_0_[13] ),
        .I1(\sample_count_reg_n_0_[11] ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\sample_count_reg_n_0_[12] ),
        .I4(state[0]),
        .I5(state[1]),
        .O(tx_serial_data_internal));
  LUT5 #(
    .INIT(32'h2EEE0000)) 
    tx_serial_data_internal_i_2
       (.I0(\tx_shift_reg_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(\sample_count_reg_n_0_[13] ),
        .I4(state[1]),
        .O(tx_serial_data_internal_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_serial_data_internal_reg
       (.C(CLK),
        .CE(tx_serial_data_internal),
        .D(tx_serial_data_internal_i_2_n_0),
        .Q(tx_serial_data_OBUF),
        .S(SS));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[0]_i_1 
       (.I0(\tx_shift_reg_reg_n_0_[1] ),
        .I1(state[1]),
        .I2(tx_reg[0]),
        .O(tx_shift_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[1]_i_1 
       (.I0(\tx_shift_reg_reg_n_0_[2] ),
        .I1(state[1]),
        .I2(tx_reg[1]),
        .O(tx_shift_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[2]_i_1 
       (.I0(\tx_shift_reg_reg_n_0_[3] ),
        .I1(state[1]),
        .I2(tx_reg[2]),
        .O(tx_shift_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[3]_i_1 
       (.I0(\tx_shift_reg_reg_n_0_[4] ),
        .I1(state[1]),
        .I2(tx_reg[3]),
        .O(tx_shift_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[4]_i_1 
       (.I0(\tx_shift_reg_reg_n_0_[5] ),
        .I1(state[1]),
        .I2(tx_reg[4]),
        .O(tx_shift_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[5]_i_1 
       (.I0(\tx_shift_reg_reg_n_0_[6] ),
        .I1(state[1]),
        .I2(tx_reg[5]),
        .O(tx_shift_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[6]_i_1 
       (.I0(\tx_shift_reg_reg_n_0_[7] ),
        .I1(state[1]),
        .I2(tx_reg[6]),
        .O(tx_shift_reg[6]));
  LUT6 #(
    .INIT(64'h6060606000006000)) 
    \tx_shift_reg[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\sample_count_reg_n_0_[13] ),
        .I3(\sample_count_reg_n_0_[11] ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(\sample_count_reg_n_0_[12] ),
        .O(tx_shift_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tx_shift_reg[7]_i_2 
       (.I0(state[1]),
        .I1(tx_reg[7]),
        .O(tx_shift_reg[7]));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[0] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[0]),
        .Q(\tx_shift_reg_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[1] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[1]),
        .Q(\tx_shift_reg_reg_n_0_[1] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[2] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[2]),
        .Q(\tx_shift_reg_reg_n_0_[2] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[3] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[3]),
        .Q(\tx_shift_reg_reg_n_0_[3] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[4] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[4]),
        .Q(\tx_shift_reg_reg_n_0_[4] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[5] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[5]),
        .Q(\tx_shift_reg_reg_n_0_[5] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[6] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[6]),
        .Q(\tx_shift_reg_reg_n_0_[6] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[7] 
       (.C(CLK),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[7]),
        .Q(\tx_shift_reg_reg_n_0_[7] ),
        .S(SS));
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
