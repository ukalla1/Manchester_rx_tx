//All global constants are declared here

`ifndef CONSTANTS
    `define CONSTANTS
    
    `define DATAWIDTH 8                     //Width of the data bits
    `define PREAMBLE 8'b1100_1100           //The first data that is transferred 
    `define RAM_DEPTH 125000                     //Memory size, 8 bits per location
    `define RAM_INITFILE "data.mem"         //The initialization file for the memory
    `define BITCOUNTMAX 8                   
    `define SAMPLECOUNTMAX 10417            //Number of samples that UART sends for each bit (freq/baudrate)
    
`endif