`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/30/2020 09:55:49 PM
// Design Name: 
// Module Name: manch_uart_tx_top
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

module Manchester_rx_uart_top (
    input clk,
    input rst,
    input manch_decode_input,
    input tx_on,
    output tx_serial_data,
    output rx_ready
    );

    localparam RAM_ADDRSWIDTH = clogb2(`RAM_DEPTH-1);
    
    localparam idle = 3'b000, mem_read = 3'b001, tx_idle = 3'b010, tx_data = 3'b011;
     
    wire tx_ready;
    
    reg tx_data_load;
    
    wire [`DATAWIDTH-1:0]tx_parallel_data;
    
    reg [2:0] state;
    
    reg enb;
    
    reg [RAM_ADDRSWIDTH-1:0] ram_addrb;
    
    manchester_rx_top #(
        .RAM_ADDRSWIDTH(RAM_ADDRSWIDTH)
    )rx_top(
        .clk(clk),
        .rst(rst),
        .enb(enb),
        .serial_din(manch_decode_input),
        .ram_addrb(ram_addrb),
        .parallel_dout(tx_parallel_data),
        .rx_ready(rx_ready)
        );
        
    uart_tx_wrapper #(
        .DATAWIDTH(`DATAWIDTH),
        .BITCOUNTMAX(`BITCOUNTMAX),
        .SAMPLECOUNTMAX(`SAMPLECOUNTMAX)
    )uart_tx(
        .clk(clk),
        .rst(rst),
        .tx_parallel_data(tx_parallel_data),
        .tx_data_load(tx_data_load),
        .tx_serial_data(tx_serial_data),
        .tx_ready(tx_ready)
        );
        
    always @(posedge clk) begin
        if(rst) begin
            state <= idle;
            enb <= 1'b0;
            ram_addrb <= {RAM_ADDRSWIDTH{1'b0}};
            tx_data_load <= 1'b0;
//            cntr <= 0;
        //                tx_data_load_delayed <= tx_data_load;
        end
        else begin
            case(state)
                idle: begin
//                    cntr <= 0;
                    if(tx_on) begin
                        if(tx_ready) begin
                            enb <= 1'b1;
                            tx_data_load <= 1'b0;
                            state <= mem_read;
                        end
                        else begin
                            state <= idle;
                        end
                    end
                    else begin
                        state <= idle;
                    end
                end
                
                mem_read: begin
                    enb <= 1'b0;
                    tx_data_load <= 1'b1;
                    ram_addrb <= ram_addrb + 1'b1;
                    state <= tx_idle;
                end
                
                tx_idle: begin
                    tx_data_load <= 1'b0;
                    state <= tx_data;
//                    if(cntr < 4'b1000) begin
//                        cntr <= cntr + 1'b1;
//                        state <= tx_idle;
//                    end
//                    else begin
//                        state <= tx_data;
//                        cntr <= 0;
//                    end
                end
                
                tx_data: begin
                    if(tx_ready) begin
                        state <= idle;
                    end
                    else begin
                        state <= tx_data;
                    end
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