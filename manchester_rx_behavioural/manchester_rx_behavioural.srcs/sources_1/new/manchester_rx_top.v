`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 09:26:54 PM
// Design Name: 
// Module Name: manchester_rx_top
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

module manchester_rx_top #(
    parameter RAM_ADDRSWIDTH = 3
)(
    input clk,
    input rst,
    input enb,
    input serial_din,
    input [RAM_ADDRSWIDTH-1:0] ram_addrb,
    output [`DATAWIDTH-1:0] parallel_dout
    );
    
    wire data_valid;
    
    reg [RAM_ADDRSWIDTH-1:0] ram_addra, ram_addrb_delayed;
    
    wire [`DATAWIDTH-1:0] parallel_dout_rx;
    
    ram_dp__sim_par #(
        .DATA_WIDTH(`DATAWIDTH),
        .RAM_DEPTH(`RAM_DEPTH),
        .ADDRS_WIDTH(RAM_ADDRSWIDTH)
    )ram(
        .clk(clk),
        .wea(data_valid),
        .enb(enb),
        .addra(ram_addra),
        .addrb(ram_addrb),
        .dina(parallel_dout_rx),
        .doutb(parallel_dout)
    );
    
    manchester_rx_m rxm(
        .clk(clk),
        .rst(rst),
        .serial_din(serial_din),
        .data_valid(data_valid),
        .parallel_dout(parallel_dout_rx)
    );
    
    always @(posedge clk) begin
        if(rst) begin
            ram_addra <= {RAM_ADDRSWIDTH{1'b0}};
        end
        else begin
            if(data_valid) begin
                ram_addra <= ram_addra + 1'b1;
            end
        end
    end
    
endmodule
