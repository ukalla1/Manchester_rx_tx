`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 07:26:41 PM
// Design Name: 
// Module Name: manchester_rx_m
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

module manchester_rx_m(
    input clk,
    input rst,
    input serial_din,
    output reg data_valid,
    output [`DATAWIDTH-1:0] parallel_dout,
    output rx_ready
    );
    
    wire sample_5, sample_5_15;
    
    reg [4:0] cntr;
    
    reg [3:0] shift_reg_0Comp;
    
    reg [2:0] bit_cnt;
    
    reg en;
    
    reg [`DATAWIDTH-1:0] rx_shift_reg, parallel_dout_internal;
    
    assign sample_5 = (cntr == 5'b00011) ? 1'b1 : 1'b0;
    
    assign sample_5_15 = ((cntr == 5'b00011) || (cntr == 5'b01000)) ? 1'b1 : 1'b0;
    
    assign parallel_dout = parallel_dout_internal;
    
    assign rx_ready = ~en;
    
    always @(posedge clk) begin
        if(rst) begin
            en <= 1'b0;
            cntr <= {5{1'b0}};
            shift_reg_0Comp <= {4{1'b0}};
            rx_shift_reg <= {`DATAWIDTH{1'b0}};
            parallel_dout_internal <= {`DATAWIDTH{1'b0}};
            bit_cnt <= {3{1'b0}};
            data_valid <= 1'b0;
        end
        else begin
            ///counter en
            if (serial_din) begin
                en <= 1'b1;
            end
            else if(shift_reg_0Comp == 4'b0000) begin
                en <= 1'b0;
            end
            else begin
                en <= en;
            end
            
            ////sample counter 1 to 20
            if(en) begin
                if(cntr < 5'b01001) begin
                    cntr <= cntr + 1'b1;
                end
                else begin
                    cntr <= {5{1'b0}};
                end
            end
            else begin
                cntr <= {5{1'b0}};
            end
            
            ////receive shift reg
            if(sample_5) begin
                rx_shift_reg <= {~serial_din, rx_shift_reg[`DATAWIDTH-1:1]};
            end
            else begin
                rx_shift_reg <= rx_shift_reg;
            end
            
            ////zero_compare shift reg
            if(sample_5_15) begin
                shift_reg_0Comp <= {serial_din, shift_reg_0Comp[3:1]};
            end
            else begin
                shift_reg_0Comp <= shift_reg_0Comp;
            end
            
            ///output logic
            if(shift_reg_0Comp == 4'b0000) begin
                parallel_dout_internal <= {`DATAWIDTH{1'b0}};
                data_valid <= 1'b0;
                bit_cnt <= {3{1'b0}};
            end
            else if((rx_shift_reg == `PREAMBLE) || (shift_reg_0Comp != 4'b0000)) begin
                if(sample_5) begin
                    if(bit_cnt < `DATAWIDTH-1) begin
                        bit_cnt <= bit_cnt + 1'b1;
                    end
                    else if (bit_cnt == `DATAWIDTH-1) begin
                        bit_cnt <= {3{1'b0}};
                        parallel_dout_internal <= rx_shift_reg;
                        data_valid <= 1'b1;
                    end
                end
                else begin
                    bit_cnt <= bit_cnt;
                    parallel_dout_internal <= parallel_dout_internal;
                    data_valid <= 1'b0;
                end
            end
            
        end
    end
    
endmodule
