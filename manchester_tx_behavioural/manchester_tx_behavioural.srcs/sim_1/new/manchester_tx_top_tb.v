`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 11/03/2020 12:30:43 PM
// Design Name: 
// Module Name: manchester_tx_top_tb
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

module manchester_tx_top_tb(

    );
    
    reg clk = 1'b0;
    reg rst = 1'b1;
    reg tx_on = 1'b0;
    wire tx_done;
    wire manch_out;
    
    integer period = 100;
    
    manchester_tx_top uut(
        .clk(clk),
        .rst(rst),
        .tx_on(tx_on),
        .tx_done(tx_done),
        .manch_out(manch_out)
    );
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        rst = 1'b1;
        
        #(2*period);
        rst = 1'b0;
        
        #(2*period);
        tx_on = 1'b1;
        
        #(`DATAWIDTH*(2*period));
        
        #((`RAM_DEPTH+1)*(`DATAWIDTH*(2*period)));
        
        tx_on = 1'b0;
        
        #(20*period);
        
        $finish;
    end
endmodule
