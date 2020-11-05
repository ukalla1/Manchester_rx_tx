// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Nov  3 17:05:23 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/ukallakuri/hardware_design/designs/manchester_tx_rx/manchester_tx_behavioural/manchester_tx_behavioural.sim/sim_1/synth/func/xsim/manchester_tx_top_tb_func_synth.v
// Design      : manchester_tx_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module manchester_tx_m
   (manch_out_OBUF,
    E,
    tx_on_internal_reg,
    D,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[2]_0 ,
    CLK,
    \ram_addrb_reg[0] ,
    Q,
    rst_IBUF,
    \bit_cnt_reg[2]_0 ,
    tx_on_IBUF,
    tx_out_reg_0,
    \tx_in_reg[7] );
  output manch_out_OBUF;
  output [0:0]E;
  output [0:0]tx_on_internal_reg;
  output [2:0]D;
  output [3:0]\FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[2]_0 ;
  input CLK;
  input \ram_addrb_reg[0] ;
  input [2:0]Q;
  input rst_IBUF;
  input \bit_cnt_reg[2]_0 ;
  input tx_on_IBUF;
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
  wire manch_out_OBUF;
  wire \ram_addrb_reg[0] ;
  wire rst_IBUF;
  wire sample_cnt;
  wire sample_cnt_i_1_n_0;
  wire sample_cnt_reg_n_0;
  wire [3:0]\tx_in_reg[7] ;
  wire tx_on_IBUF;
  wire tx_on_internal;
  wire [0:0]tx_on_internal_reg;
  wire tx_out_i_2_n_0;
  wire tx_out_i_3_n_0;
  wire tx_out_i_4_n_0;
  wire [7:0]tx_out_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FA0E)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[1]),
        .I1(tx_on_IBUF),
        .I2(Q[0]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
    .INIT(64'h00000000F7FF0000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(sample_cnt_reg_n_0),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg[2]_0 ),
        .I5(rst_IBUF),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(sample_cnt_reg_n_0),
        .I2(\bit_cnt_reg[2]_0 ),
        .I3(rst_IBUF),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
    .INIT(64'h000000006AAA0000)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
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
    .INIT(64'hBBFBBBBBBBBBBBBB)) 
    \doutb_internal[7]_i_1 
       (.I0(rst_IBUF),
        .I1(\bit_cnt_reg[2]_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(sample_cnt_reg_n_0),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\bit_cnt_reg_n_0_[0] ),
        .O(tx_on_internal_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001F00)) 
    \ram_addrb[3]_i_1 
       (.I0(\ram_addrb_reg[0] ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4445)) 
    tx_done_i_1
       (.I0(Q[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_sequential_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF202)) 
    \tx_in[2]_i_1 
       (.I0(tx_on_IBUF),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\tx_in_reg[7] [0]),
        .O(\FSM_sequential_state_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF202)) 
    \tx_in[3]_i_1 
       (.I0(tx_on_IBUF),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\tx_in_reg[7] [1]),
        .O(\FSM_sequential_state_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF202)) 
    \tx_in[6]_i_1 
       (.I0(tx_on_IBUF),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\tx_in_reg[7] [2]),
        .O(\FSM_sequential_state_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .Q(manch_out_OBUF),
        .R(sample_cnt));
endmodule

(* RAM_ADDRSWIDTH = "3" *) (* idle = "3'b000" *) (* mem_read = "3'b010" *) 
(* stop = "3'b100" *) (* tx_data = "3'b011" *) (* tx_preamble = "3'b001" *) 
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
  wire [7:2]doutb_internal;
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
  wire tx_m_n_10;
  wire tx_m_n_11;
  wire tx_m_n_3;
  wire tx_m_n_4;
  wire tx_m_n_5;
  wire tx_on;
  wire tx_on_IBUF;
  wire tx_on_internal_reg_n_0;
  wire tx_ready;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_m_n_5),
        .Q(state__0[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_m_n_4),
        .Q(state__0[1]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "idle:000,tx_preamble:001,tx_data:011,mem_read:010,stop:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_m_n_3),
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
        .D({tx_in0_in[5:4],tx_in0_in[1:0]}),
        .E(tx_ready),
        .Q(state__0[1]),
        .\doutb_internal_reg[7]_0 ({doutb_internal[7:6],doutb_internal[3:2]}),
        .\doutb_internal_reg[7]_1 ({\ram_addrb_reg_n_0_[2] ,\ram_addrb_reg_n_0_[1] ,\ram_addrb_reg_n_0_[0] }));
  LUT2 #(
    .INIT(4'h1)) 
    \ram_addrb[0]_i_1 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[0] ),
        .O(ram_addrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \ram_addrb[1]_i_1 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[1] ),
        .I2(\ram_addrb_reg_n_0_[0] ),
        .O(ram_addrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \ram_addrb[2]_i_1 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[0] ),
        .I2(\ram_addrb_reg_n_0_[1] ),
        .I3(\ram_addrb_reg_n_0_[2] ),
        .O(ram_addrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \ram_addrb[3]_i_2 
       (.I0(state__0[0]),
        .I1(\ram_addrb_reg_n_0_[2] ),
        .I2(\ram_addrb_reg_n_0_[1] ),
        .I3(\ram_addrb_reg_n_0_[0] ),
        .I4(\ram_addrb_reg_n_0_[3] ),
        .O(ram_addrb[3]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_1),
        .D(ram_addrb[0]),
        .Q(\ram_addrb_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_1),
        .D(ram_addrb[1]),
        .Q(\ram_addrb_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_1),
        .D(ram_addrb[2]),
        .Q(\ram_addrb_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tx_m_n_1),
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
        .CE(tx_m_n_11),
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
        .D({tx_m_n_3,tx_m_n_4,tx_m_n_5}),
        .E(tx_m_n_1),
        .\FSM_sequential_state_reg[1] ({tx_in0_in[7:6],tx_in0_in[3:2]}),
        .\FSM_sequential_state_reg[2] (tx_m_n_10),
        .\FSM_sequential_state_reg[2]_0 (tx_m_n_11),
        .Q(state__0),
        .\bit_cnt_reg[2]_0 (tx_on_internal_reg_n_0),
        .manch_out_OBUF(manch_out_OBUF),
        .\ram_addrb_reg[0] (\FSM_sequential_state[1]_i_2_n_0 ),
        .rst_IBUF(rst_IBUF),
        .\tx_in_reg[7] ({doutb_internal[7:6],doutb_internal[3:2]}),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_on_internal_reg(tx_ready),
        .tx_out_reg_0({\tx_in_reg_n_0_[7] ,tx_in}));
  IBUF tx_on_IBUF_inst
       (.I(tx_on),
        .O(tx_on_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    tx_on_internal_reg
       (.C(clk_IBUF_BUFG),
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
  wire [5:0]doutb_internal;
  wire [7:0]doutb_internal0;
  wire [3:0]\doutb_internal_reg[7]_0 ;
  wire [2:0]\doutb_internal_reg[7]_1 ;
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
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h000000000000E4E4),
    .INIT_B(64'h0000000000005500),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_dp_reg_0_7_0_5
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
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_dp_reg_0_7_6_7
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[0]_i_1 
       (.I0(doutb_internal[0]),
        .I1(Q),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[1]_i_1 
       (.I0(doutb_internal[1]),
        .I1(Q),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[4]_i_1 
       (.I0(doutb_internal[4]),
        .I1(Q),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_in[5]_i_1 
       (.I0(doutb_internal[5]),
        .I1(Q),
        .O(D[3]));
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
