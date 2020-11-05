`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 11/03/2020 11:56:49 AM
// Design Name: 
// Module Name: manchester_tx_top
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

module manchester_tx_top(
    input clk,
    input rst,
    input tx_on,
    output reg tx_done,
    output manch_out
    );
    
    localparam RAM_ADDRSWIDTH = clogb2(`RAM_DEPTH-1);
    
    reg tx_on_internal;
    
    reg [RAM_ADDRSWIDTH:0] ram_addrb;
    
    wire [`DATAWIDTH-1:0] mem_out;
    
    wire tx_ready;
    
    reg [2:0] state;
    
    reg [`DATAWIDTH-1:0] preamble = `PREAMBLE, tx_in;
    
    localparam idle = 3'b000, tx_preamble = 3'b001, mem_read = 3'b010, tx_data = 3'b011, stop = 3'b100;
    
    ram_dp__sim_par #(
        .DATA_WIDTH(`DATAWIDTH),
        .RAM_DEPTH(`RAM_DEPTH),
        .INIT_FILE(`RAM_INITFILE),
        .ADDRS_WIDTH(RAM_ADDRSWIDTH)
    )ram(
        .clk(clk),
        .wea(1'b0),
        .enb(tx_ready),
        .dina({8{1'b0}}),
        .addra({RAM_ADDRSWIDTH{1'b0}}),
        .addrb(ram_addrb[RAM_ADDRSWIDTH-1:0]),
        .doutb(mem_out)
    );
    
    manchester_tx_m tx_m(
        .clk(clk),
        .rst(rst),
        .parallel_din(tx_in),
        .tx_on(tx_on_internal),
        .tx_ready(tx_ready),
        .dout(manch_out)
    );
    
    always @(posedge clk) begin
        if(rst) begin
            state <= idle;
            tx_on_internal <= 1'b0;
            ram_addrb <= {RAM_ADDRSWIDTH{1'b0}};
            tx_in <= {`DATAWIDTH{1'b0}};
            tx_done <= 1'b0;
        end
        else begin
            case(state)
                idle: begin
                    tx_done <= 1'b0;
                    if(tx_on) begin
                        if(tx_ready) begin
                            state <= tx_preamble;
                            tx_on_internal <= tx_on;
                            tx_in <= preamble;
                        end
                        else begin
                            state <= idle;
                            tx_on_internal <= 1'b0;
                            tx_in <= {`DATAWIDTH{1'b0}};
                        end
                    end
                    else begin
                        state <= idle;
                        tx_on_internal <= 1'b0;
                        tx_in <= {`DATAWIDTH{1'b0}};
                    end
                end
                
                tx_preamble: begin
                    if(!tx_ready) begin
                        state <= tx_preamble;
                    end
                    else begin
                        state <= mem_read;
                    end
                end
                
                mem_read: begin
                    ram_addrb <= ram_addrb + 1'b1;
                    tx_in <= mem_out;
                    state <= tx_data;
                end
                
                tx_data: begin
                    if(!tx_ready) begin
                        state <= tx_data;
                    end
                    else begin
                        if(ram_addrb == {1'b1,{RAM_ADDRSWIDTH{1'b0}}}) begin
                            state <= stop;
                            ram_addrb <= {RAM_ADDRSWIDTH{1'b0}};
                            tx_done <= 1'b1;
                            tx_on_internal <= 1'b0;
                        end
                        else begin
                            state <= mem_read;
                        end
                    end
                end
                
                stop: begin
                    state <= stop;
                end
                
                default: begin
                    state <= idle;
                end
                
            endcase
        end
    end
    
    function integer clogb2;
        input integer depth;
        integer result;
        begin
            result = depth;
            for (clogb2=0; result>0; clogb2=clogb2+1) begin
                result = result >> 1;
            end
        end
    endfunction
    
endmodule
