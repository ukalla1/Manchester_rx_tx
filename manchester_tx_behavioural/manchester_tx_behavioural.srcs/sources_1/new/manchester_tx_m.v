`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 11/03/2020 10:52:25 AM
// Design Name: 
// Module Name: manchester_tx_m
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

module manchester_tx_m (
    input clk,
    input rst,
    input tx_on,
    input [`DATAWIDTH-1:0] parallel_din,
    output tx_ready,
    output dout
    );
    
    reg [2:0] bit_cnt;
    
    reg sample_cnt;
    
    reg tx_out;
    
    wire tx_ready_internal;
    
    assign dout = tx_out;
    
    assign tx_ready = tx_ready_internal;
    
    //Actual logic computation
    //If tx_on, and the number of bits transmitter are less than 8, transmit the manchester encoded output of the input (It takes 2 clock cycles)
    always @(posedge clk) begin
        if(rst) begin
            tx_out <= 1'b0;
            sample_cnt <= 1'b0;
            bit_cnt <= {3{1'b0}};
        end
        else begin
            if(!tx_on) begin
                tx_out <= 1'b0;
                sample_cnt <= 1'b0;
                bit_cnt <= {3{1'b0}};
            end
            else begin
                if(bit_cnt < (`DATAWIDTH-1)) begin
                    if(sample_cnt == 1'b0) begin
                        bit_cnt <= bit_cnt;
                        sample_cnt <= 1'b1;
                        tx_out <= parallel_din[bit_cnt] ^ 1'b1; //Manchester output computation
                    end
                    else begin
                        bit_cnt <= bit_cnt + 1'b1;
                        sample_cnt <= 1'b0;
                        tx_out <= parallel_din[bit_cnt] ^ 1'b0; //Manchester output computation
                    end
                end
                else if(bit_cnt == (`DATAWIDTH-1)) begin
                    if(sample_cnt == 1'b0) begin
                        bit_cnt <= bit_cnt;
                        sample_cnt <= 1'b1;
                        tx_out <= parallel_din[bit_cnt] ^ 1'b1; //Manchester output computation
                    end
                    else begin
                        bit_cnt <= {3{1'b0}};
                        sample_cnt <= 1'b0;
                        tx_out <= parallel_din[bit_cnt] ^ 1'b0; //Manchester output computation
                    end
                end
                else begin
                    bit_cnt <= {3{1'b0}};
                    sample_cnt <= 1'b1;
                end
            end
        end
    end
    
    assign tx_ready_internal = (rst) ? 1'b1 : (!tx_on) ? 1'b1 : (bit_cnt == (`DATAWIDTH-1) && sample_cnt == 1'b0) ? 1'b1 : 1'b0;
    
endmodule
