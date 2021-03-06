`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2020 06:17:29 PM
// Design Name: 
// Module Name: manchester_top_tb
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

module manchester_top_tb #(
//    inout serial_data
    parameter output_path = "/home/ukallakuri/hardware_design/designs/manchester_tx_rx/output.txt",
    parameter test_path = "/home/ukallakuri/hardware_design/designs/manchester_tx_rx/tmp.txt"
    );
    
    reg clk100M = 1'b0;
    reg clk20M = 1'b0;
    reg rst = 1'b1;
    reg tx_on = 1'b0;
    reg uart_tx_on = 1'b0;
//    reg serial_data_reg = 0;
    reg serial_data_in = 0;
    wire serial_data_out;
    wire uart_serial_out;
    wire rx_ready;
    wire tx_ready;
    
    integer period20M = 50, period100M = 10;
    integer i=0,j=0, f_o, f_t, k=0, l=0;
    reg [7:0]data = 0;
    reg [7:0] test_reg = 0;
    
    manchester_top uut(
        .clk100M(clk100M),
        .clk20M(clk20M),
        .rst(rst),
        .tx_on(tx_on),
        .uart_tx_on(uart_tx_on),
        .uart_serial_out(uart_serial_out),
        .rx_ready(rx_ready),
        .tx_ready(tx_ready),
//        .serial_data(serial_data)
        .serial_data_in(serial_data_in),
        .serial_data_out(serial_data_out)
    );
    
//    assign serial_data = (!tx_on) ? serial_data_reg : 1'bz;
    
    initial begin
        forever #(period100M/2) clk100M = ~clk100M;
    end
    
    initial begin
        forever #(period20M/2) clk20M = ~clk20M;
    end
    
    initial begin
        f_o = $fopen(output_path,"w");
        f_t = $fopen(test_path,"w");
    end
    
    initial begin
        rst = 1'b1;
        
        #(2*period20M);
        
        rst = 1'b0;
        
        #(2*period20M);
        
        fork
            tx_opn;
            
            rx_opn;
        join
        
        #(100*period100M);
        uart_tx_on = 0;
        #(200*period100M);  
        uart_tx_on = 1;
        
        fork
            op_write;
            
            test_write;
        join
//        uart_tx_on = 0;      
        #(10*period100M);
        
//        uart_tx_on = 0;
        $fclose(f_o);
        $fclose(f_t);
        
        #(1000*period100M);
        $finish;
        
    end
    
    task tx_opn;
        begin
            tx_on = 1'b1;
            #(`DATAWIDTH*(2*period20M));
            #((`RAM_DEPTH+1)*(`DATAWIDTH*(2*period20M)));
            tx_on = 1'b0;
            #(20*period20M);
        end
    endtask
    
    task rx_opn;
        begin
            data = 8'b1100_1100;
            #(period20M);
            for(j=0; j < 8 ; j=j+1)begin
                serial_data_in = data[j]^1;
                #(5 * period100M);
                serial_data_in = data[j]^0;
                #(5 * period100M);
            end
            
            for ( i=0 ; i < `RAM_DEPTH-1 ; i=i+1)begin
                data = i;
                for(j=0; j < 8 ; j=j+1)begin
                    serial_data_in = data[j]^1;
                    #(5 * period100M);
                    serial_data_in = data[j]^0;
                   #(5 * period100M);
                end
            end
            serial_data_in = 1'b0;
        end
    endtask
    
    task op_write;
        begin
            #(4*period100M);
            for(i=0; i<`RAM_DEPTH; i=i+1) begin
                for(j=0; j<10; j=j+1) begin
                    if(i==`RAM_DEPTH-1) begin
                        uart_tx_on = 0;
                    end
                    if(j==0) begin
                        #((`SAMPLECOUNTMAX) * period100M);
                    end
                    else if(j==9) begin
                        #((`SAMPLECOUNTMAX) * period100M);
                    end
                    else begin
                        #((`SAMPLECOUNTMAX) * period100M);
                        test_reg = {uart_serial_out, test_reg[7:1]};
                    end
                end
                $fwrite(f_o,"%d\n", test_reg);
            end
//            #((`DATAWIDTH+1+1)*(`SAMPLECOUNTMAX * period100M));
        end
    endtask
    
    task test_write;
        begin
            $fwrite(f_t, "%d\n", `PREAMBLE);
//            #(period100M);
            for(k=0; k<`RAM_DEPTH-1; k=k+1) begin
                $fwrite(f_t, "%d\n", l);
                l= l+1;
                if(l == 256) begin
                    l=0;
                end
            end
//            #(period100M);
        end
    endtask
    
endmodule