// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Nov  4 12:11:07 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/ukallakuri/hardware_design/designs/manchester_tx_rx/manchester_rx_behavioural/manchester_rx_behavioural.sim/sim_1/impl/func/xsim/manchester_rx_top_tb_func_impl.v
// Design      : manchester_rx_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module manchester_rx_m
   (data_valid,
    \ram_addra_reg[0] ,
    \ram_addra_reg[0]_0 ,
    data_valid_reg_0,
    Q,
    rst_IBUF,
    D,
    CLK,
    addra);
  output data_valid;
  output \ram_addra_reg[0] ;
  output \ram_addra_reg[0]_0 ;
  output data_valid_reg_0;
  output [7:0]Q;
  input rst_IBUF;
  input [0:0]D;
  input CLK;
  input [2:0]addra;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire [2:0]addra;
  wire bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \cntr[2]_i_1_n_0 ;
  wire \cntr[3]_i_1_n_0 ;
  wire [3:0]cntr_reg__0;
  wire data_valid;
  wire data_valid_i_1_n_0;
  wire data_valid_i_2_n_0;
  wire data_valid_i_3_n_0;
  wire data_valid_reg_0;
  wire en;
  wire en_i_1_n_0;
  wire [3:0]p_0_in;
  wire [6:0]p_0_in_0;
  wire [7:7]p_1_out;
  wire parallel_dout_internal;
  wire \parallel_dout_internal[7]_i_3_n_0 ;
  wire \parallel_dout_internal[7]_i_4_n_0 ;
  wire \parallel_dout_internal[7]_i_5_n_0 ;
  wire \parallel_dout_internal[7]_i_6_n_0 ;
  wire \ram_addra_reg[0] ;
  wire \ram_addra_reg[0]_0 ;
  wire rst_IBUF;
  wire \rx_shift_reg_reg_n_0_[0] ;
  wire sample_5;
  wire sample_5_15;
  wire [3:0]shift_reg_0Comp;
  wire \shift_reg_0Comp[0]_i_1_n_0 ;
  wire \shift_reg_0Comp[1]_i_1_n_0 ;
  wire \shift_reg_0Comp[2]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\parallel_dout_internal[7]_i_4_n_0 ),
        .I2(\parallel_dout_internal[7]_i_3_n_0 ),
        .I3(bit_cnt),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\parallel_dout_internal[7]_i_3_n_0 ),
        .I2(\parallel_dout_internal[7]_i_4_n_0 ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(bit_cnt),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAAAAAA)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\parallel_dout_internal[7]_i_3_n_0 ),
        .I2(\parallel_dout_internal[7]_i_4_n_0 ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(bit_cnt),
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
  LUT1 #(
    .INIT(2'h1)) 
    \cntr[0]_i_1 
       (.I0(cntr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cntr[1]_i_1 
       (.I0(cntr_reg__0[0]),
        .I1(cntr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(cntr_reg__0[0]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(cntr_reg__0[1]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cntr[2]_i_1_n_0 ),
        .Q(cntr_reg__0[2]),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(cntr_reg__0[3]),
        .R(\cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0555001000000000)) 
    data_valid_i_1
       (.I0(rst_IBUF),
        .I1(data_valid_i_2_n_0),
        .I2(\parallel_dout_internal[7]_i_4_n_0 ),
        .I3(\parallel_dout_internal[7]_i_3_n_0 ),
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
       (.C(CLK),
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
       (.C(CLK),
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
        .I3(\parallel_dout_internal[7]_i_3_n_0 ),
        .I4(\parallel_dout_internal[7]_i_4_n_0 ),
        .O(parallel_dout_internal));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \parallel_dout_internal[7]_i_3 
       (.I0(cntr_reg__0[3]),
        .I1(cntr_reg__0[2]),
        .I2(cntr_reg__0[1]),
        .I3(cntr_reg__0[0]),
        .O(\parallel_dout_internal[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \parallel_dout_internal[7]_i_4 
       (.I0(shift_reg_0Comp[0]),
        .I1(shift_reg_0Comp[1]),
        .I2(shift_reg_0Comp[2]),
        .I3(shift_reg_0Comp[3]),
        .I4(\parallel_dout_internal[7]_i_5_n_0 ),
        .I5(\parallel_dout_internal[7]_i_6_n_0 ),
        .O(\parallel_dout_internal[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \parallel_dout_internal[7]_i_5 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .O(\parallel_dout_internal[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \parallel_dout_internal[7]_i_6 
       (.I0(p_0_in_0[0]),
        .I1(\rx_shift_reg_reg_n_0_[0] ),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .O(\parallel_dout_internal[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[0] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(\rx_shift_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[1] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[0]),
        .Q(Q[1]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[2] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[1]),
        .Q(Q[2]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[3] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[2]),
        .Q(Q[3]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[4] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[3]),
        .Q(Q[4]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[5] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[4]),
        .Q(Q[5]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[6] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[5]),
        .Q(Q[6]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_dout_internal_reg[7] 
       (.C(CLK),
        .CE(parallel_dout_internal),
        .D(p_0_in_0[6]),
        .Q(Q[7]),
        .R(bit_cnt));
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addra[0]_i_1 
       (.I0(data_valid),
        .I1(addra[0]),
        .O(data_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addra[1]_i_1 
       (.I0(addra[0]),
        .I1(data_valid),
        .I2(addra[1]),
        .O(\ram_addra_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addra[2]_i_1 
       (.I0(addra[0]),
        .I1(addra[1]),
        .I2(data_valid),
        .I3(addra[2]),
        .O(\ram_addra_reg[0]_0 ));
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
       (.C(CLK),
        .CE(sample_5),
        .D(p_0_in_0[0]),
        .Q(\rx_shift_reg_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[1] 
       (.C(CLK),
        .CE(sample_5),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[2] 
       (.C(CLK),
        .CE(sample_5),
        .D(p_0_in_0[2]),
        .Q(p_0_in_0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[3] 
       (.C(CLK),
        .CE(sample_5),
        .D(p_0_in_0[3]),
        .Q(p_0_in_0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[4] 
       (.C(CLK),
        .CE(sample_5),
        .D(p_0_in_0[4]),
        .Q(p_0_in_0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[5] 
       (.C(CLK),
        .CE(sample_5),
        .D(p_0_in_0[5]),
        .Q(p_0_in_0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[6] 
       (.C(CLK),
        .CE(sample_5),
        .D(p_0_in_0[6]),
        .Q(p_0_in_0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[7] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\shift_reg_0Comp[0]_i_1_n_0 ),
        .Q(shift_reg_0Comp[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\shift_reg_0Comp[1]_i_1_n_0 ),
        .Q(shift_reg_0Comp[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\shift_reg_0Comp[2]_i_1_n_0 ),
        .Q(shift_reg_0Comp[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_0Comp_reg[3] 
       (.C(CLK),
        .CE(sample_5_15),
        .D(D),
        .Q(shift_reg_0Comp[3]),
        .R(rst_IBUF));
endmodule

(* ECO_CHECKSUM = "5f1c0e37" *) (* RAM_ADDRSWIDTH = "3" *) 
(* NotValidForBitStream *)
module manchester_rx_top
   (clk,
    rst,
    enb,
    serial_din,
    ram_addrb,
    parallel_dout);
  input clk;
  input rst;
  input enb;
  input serial_din;
  input [2:0]ram_addrb;
  output [7:0]parallel_dout;

  wire [2:0]addra;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data_valid;
  wire enb;
  wire enb_IBUF;
  wire [7:0]parallel_dout;
  wire [7:0]parallel_dout_OBUF;
  wire [7:0]parallel_dout_internal;
  wire [2:0]ram_addrb;
  wire [2:0]ram_addrb_IBUF;
  wire rst;
  wire rst_IBUF;
  wire rxm_n_1;
  wire rxm_n_2;
  wire rxm_n_3;
  wire serial_din;
  wire serial_din_IBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF enb_IBUF_inst
       (.I(enb),
        .O(enb_IBUF));
  OBUF \parallel_dout_OBUF[0]_inst 
       (.I(parallel_dout_OBUF[0]),
        .O(parallel_dout[0]));
  OBUF \parallel_dout_OBUF[1]_inst 
       (.I(parallel_dout_OBUF[1]),
        .O(parallel_dout[1]));
  OBUF \parallel_dout_OBUF[2]_inst 
       (.I(parallel_dout_OBUF[2]),
        .O(parallel_dout[2]));
  OBUF \parallel_dout_OBUF[3]_inst 
       (.I(parallel_dout_OBUF[3]),
        .O(parallel_dout[3]));
  OBUF \parallel_dout_OBUF[4]_inst 
       (.I(parallel_dout_OBUF[4]),
        .O(parallel_dout[4]));
  OBUF \parallel_dout_OBUF[5]_inst 
       (.I(parallel_dout_OBUF[5]),
        .O(parallel_dout[5]));
  OBUF \parallel_dout_OBUF[6]_inst 
       (.I(parallel_dout_OBUF[6]),
        .O(parallel_dout[6]));
  OBUF \parallel_dout_OBUF[7]_inst 
       (.I(parallel_dout_OBUF[7]),
        .O(parallel_dout[7]));
  ram_dp__sim_par ram
       (.Q(parallel_dout_internal),
        .addra(addra),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_valid(data_valid),
        .doutb_internal(parallel_dout_OBUF),
        .enb(enb_IBUF),
        .ram_addrb(ram_addrb_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rxm_n_3),
        .Q(addra[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rxm_n_1),
        .Q(addra[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rxm_n_2),
        .Q(addra[2]),
        .R(rst_IBUF));
  IBUF \ram_addrb_IBUF[0]_inst 
       (.I(ram_addrb[0]),
        .O(ram_addrb_IBUF[0]));
  IBUF \ram_addrb_IBUF[1]_inst 
       (.I(ram_addrb[1]),
        .O(ram_addrb_IBUF[1]));
  IBUF \ram_addrb_IBUF[2]_inst 
       (.I(ram_addrb[2]),
        .O(ram_addrb_IBUF[2]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  manchester_rx_m rxm
       (.CLK(clk_IBUF_BUFG),
        .D(serial_din_IBUF),
        .Q(parallel_dout_internal),
        .addra(addra),
        .data_valid(data_valid),
        .data_valid_reg_0(rxm_n_3),
        .\ram_addra_reg[0] (rxm_n_1),
        .\ram_addra_reg[0]_0 (rxm_n_2),
        .rst_IBUF(rst_IBUF));
  IBUF serial_din_IBUF_inst
       (.I(serial_din),
        .O(serial_din_IBUF));
endmodule

module ram_dp__sim_par
   (doutb_internal,
    enb,
    clk_IBUF_BUFG,
    data_valid,
    Q,
    ram_addrb,
    addra);
  output [7:0]doutb_internal;
  input enb;
  input clk_IBUF_BUFG;
  input data_valid;
  input [7:0]Q;
  input [2:0]ram_addrb;
  input [2:0]addra;

  wire [7:0]Q;
  wire [2:0]addra;
  wire clk_IBUF_BUFG;
  wire data_valid;
  wire [7:0]doutb_internal;
  wire [7:0]doutb_internal0;
  wire enb;
  wire [2:0]ram_addrb;
  wire [1:0]NLW_ram_dp_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_7_6_7_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[0]),
        .Q(doutb_internal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[1]),
        .Q(doutb_internal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[2]),
        .Q(doutb_internal[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[3]),
        .Q(doutb_internal[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[4]),
        .Q(doutb_internal[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[5]),
        .Q(doutb_internal[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[6]),
        .Q(doutb_internal[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(enb),
        .D(doutb_internal0[7]),
        .Q(doutb_internal[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_dp_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,ram_addrb}),
        .ADDRB({1'b0,1'b0,ram_addrb}),
        .ADDRC({1'b0,1'b0,ram_addrb}),
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
       (.ADDRA({1'b0,1'b0,ram_addrb}),
        .ADDRB({1'b0,1'b0,ram_addrb}),
        .ADDRC({1'b0,1'b0,ram_addrb}),
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
