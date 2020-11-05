`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 11/03/2020 11:17:02 AM
// Design Name: 
// Module Name: manchester_tx_m_tb
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

module manchester_tx_m_tb(

    );
    
    reg clk;
    reg rst;
    reg tx_on;
    reg [`DATAWIDTH-1:0] din;
    wire tx_ready;
    wire dout;
    
    integer period = 100;
    
    manchester_tx_m uut(
        .clk(clk),
        .rst(rst),
        .din(din),
        .tx_on(tx_on),
        .tx_ready(tx_ready),
        .dout(dout)
    );
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        tx_on = 1'b1;
        din = 8'h42;
        
        #(2*period);
        tx_on = 1'b0;
        
        #(2*period);
        rst = 1'b0;
        
        #(2*period);
        tx_on = 1'b1;
        din = 8'b0011_1001;
        
        #((`DATAWIDTH)*(2*period));
        tx_on = 1'b0;
        
        #(10*period);
        
        #(2*period);
        tx_on = 1'b1;
        din = 8'b11100111;
        
        #((`DATAWIDTH)*(2*period));
        tx_on = 1'b0;
        
        #(10*period);
        $finish;
    end
endmodule
