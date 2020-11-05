`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2020 03:15:50 PM
// Design Name: 
// Module Name: manchester_rx_uart_top_tb
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

module manchester_rx_uart_top_tb #(
    parameter ADDRS_WIDTH = 3
    );
    
    reg clk = 1'b0;
    reg rst = 1'b1;
    reg tx_on = 1'b0;
    reg serial_din = 1'b0;
    
    wire tx_serial_data;
    
    integer period = 10, i, j;
    
    reg [7:0] data;
    
    Manchester_rx_uart_top #(
        .RAM_ADDRSWIDTH(ADDRS_WIDTH)
    )uut(
        .clk(clk),
        .rst(rst),
        .tx_on(tx_on),
        .manch_decode_input(serial_din),
        .tx_serial_data(tx_serial_data)
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
        
        for(i=0; i<`RAM_DEPTH-1; i=i+1) begin
            data = i[7:0];
            for(j=0; j<`DATAWIDTH; j=j+1) begin
                serial_din = data[j] ^ 1'b1;
                #(5*period);
                serial_din = data[j] ^ 1'b0;
                #(5*period);
            end
        end
        
        serial_din = 1'b0;
        
        #(10*period);
        #(10*period);
        #(10*period);
        #(10*period);
        #(10*period);
        #(10*period);
        
        tx_on = 1'b1;
        #(`RAM_DEPTH*(`DATAWIDTH*(`SAMPLECOUNTMAX*period)));
        tx_on = 1'b0;
        
        #(100*period);
        $finish;
    end
    
endmodule
