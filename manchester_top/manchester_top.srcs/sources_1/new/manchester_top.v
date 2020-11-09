`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 11/05/2020 05:52:01 PM
// Design Name: 
// Module Name: manchester_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`include "parameters.vh"

module manchester_top(
    input clk100M,
    input clk20M,
    input rst,
    input tx_on,
    input uart_tx_on,
    output uart_serial_out,
    output rx_ready,
    output tx_ready,
//    inout serial_data
    input serial_data_in,
    output serial_data_out
    );
    
//    wire manchester_tx_serial_out;
    
//    reg manchester_rx_serial_in;
    
//    assign serial_data = (tx_on) ? manchester_tx_serial_out : 1'bz;
    
    manchester_tx_top TXM(
        .clk(clk20M),
        .rst(rst),
        .tx_on(tx_on),
        .tx_done(tx_ready),
        .manch_out(serial_data_out)
    );
    
    Manchester_rx_uart_top RXM(
        .clk(clk100M),
        .rst(rst),
        .manch_decode_input(serial_data_in),
        .tx_on(uart_tx_on),
        .tx_serial_data(uart_serial_out),
        .rx_ready(rx_ready)
    );
    
//    always @(posedge clk100M) begin
//        if(rst) begin
//            manchester_rx_serial_in <= 1'b0;
//        end
//        else begin
//            if(!tx_on) begin
//                manchester_rx_serial_in <= serial_data;
//            end
//        end
//    end
    
endmodule
