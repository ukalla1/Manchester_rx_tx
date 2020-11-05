`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/30/2020 10:31:35 PM
// Design Name:
// Module Name: top_rx_uart_tb
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

module Manchester_rx_uart_top_tb #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX = 5209,
    parameter counter_max = 20,
    parameter half_counter_max = 10,
    parameter DATA_WIDTH = 8,
    parameter RAM_DEPTH = 8,
    parameter INIT_FILE = "",
    parameter ADDRS_WIDTH = 3, //clogb2(RAM_DEPTH-1)
    parameter preamble = {{24{1'b0}},{8'b0100_0001}}
);

    // Inputs
    reg rst = 0;
    reg clk_20x = 0;
    reg manch_decode_input = 0;
    reg clk = 1;
    reg tx_ready = 1;
    reg tx_on = 0;
   
    //output
    wire tx_serial_data;
   
    integer period_10M = 10;
    integer period_200M = 10;
    integer i=0,j;
   
    reg [7:0]data = 0;
   

    // Instantiate the Unit Under Test (UUT)
Manchester_rx_uart_top uut(
    .clk(clk_20x),
    .rst(rst),
    .manch_decode_input(manch_decode_input),
    .tx_on(tx_on),
    .tx_serial_data(tx_serial_data)
    );
   
   
//    always begin
//        #(period_10M/2) clk = ~clk;
//        #(period_200M/2) clk_20x = ~clk_20x;
//    end
   
    initial begin
        forever #(period_10M/2) clk = ~clk;
    end
    initial begin
        forever #(period_200M/2) clk_20x = ~clk_20x;
    end
       

    initial begin
        rst = 1;
        #(2*period_10M);
        rst = 0;
        #(2*period_10M);
        data = 8'b11001100;
        for(j=0; j < 8 ; j=j+1)begin
            manch_decode_input = data[j]^1;
            #(5 * period_10M);
            manch_decode_input = data[j]^0;
            #(5 * period_10M);
        end
       
        for ( i=0 ; i < RAM_DEPTH-1 ; i=i+1)begin
            data = i;
            for(j=0; j < 8 ; j=j+1)begin
                manch_decode_input = data[j]^1;
                #(5 * period_10M);
                manch_decode_input = data[j]^0;
               #(5 * period_10M);
            end
        end
       
      #(2*period_10M);
     
 //     enb = 1'b1;
 //     #(20*period_10M);
 //     enb = 1'b0;  
 //        rst = 1;
        #(2*period_10M);
        rst = 0;
        #(2*period_10M);
//        data = 8'b11001100;
//        for(j=0; j < 8 ; j=j+1)begin
//            manch_decode_input = data[j]^1;
//            #(period_10M/2);
//            manch_decode_input = data[j]^0;
//            #(period_10M/2);
//        end
       
//        for ( i=21 ; i < 50 ; i=i+1)begin
//            data = i;
//            for(j=0; j < 8 ; j=j+1)begin
//                manch_decode_input = data[j]^1;
//                #(period_10M/2);
//                manch_decode_input = data[j]^0;
//                #(period_10M/2);
//            end
//        end
       
      #(100*period_10M);
      tx_on = 0;
      #(20*period_10M);  
      tx_on = 1;
      #(((SAMPLECOUNTMAX * 10)*RAM_DEPTH)*(period_200M*2));  
    //  #(SAMPLECOUNTMAX*(period_200M*2))
      tx_on = 0;      
      #(10*period_10M);    
    $finish;
    end
endmodule