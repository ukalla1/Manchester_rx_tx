`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 08:20:52 PM
// Design Name: 
// Module Name: manchester_rx_m_tb
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

module manchester_rx_m_tb(

    );
    
    reg clk = 1'b0;
    reg rst  = 1'b1;
    reg serial_din  = 1'b0;
    wire data_valid;
    wire [`DATAWIDTH-1:0] parallel_dout;
    
    integer period = 10, i;
    
    reg [7:0] data;
    
    manchester_rx_m uut(
        .clk(clk),
        .rst(rst),
        .serial_din(serial_din),
        .data_valid(data_valid),
        .parallel_dout(parallel_dout)
    );
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        rst = 1'b1;
        
        #(2*period);
        rst = 1'b0;
        
        #(10*period);
        #(10*period);
        #(10*period);
        #(10*period);
        #(10*period);
        
        data = `PREAMBLE;
        
        for (i=0; i<`DATAWIDTH; i=i+1) begin
            serial_din = data[i] ^ 1'b1;
            #(5*period);
            serial_din = data[i] ^ 1'b0;
            #(5*period);
        end
        
        data = 8'b1010_1010;
        
        for (i=0; i<`DATAWIDTH; i=i+1) begin
            serial_din = data[i] ^ 1'b1;
            #(5*period);
            serial_din = data[i] ^ 1'b0;
            #(5*period);
        end
        
        serial_din = 1'b0;
        
        #(10*period);
        #(10*period);
        #(10*period);
        #(10*period);
        #(10*period);
        
        #(10*period);
        $finish;
    end
    
endmodule
