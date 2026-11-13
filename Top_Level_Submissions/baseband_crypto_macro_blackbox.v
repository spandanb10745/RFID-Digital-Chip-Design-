`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:29:51
// Design Name: 
// Module Name: baseband_crypto_macro
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


module baseband_crypto_macro (
    input  wire PCLK, PRESETn,
    input  wire PSEL, PENABLE, PWRITE,
    input  wire [31:0]  PADDR,
    input  wire [31:0] PWDATA,
    output wire [31:0] PRDATA,
    output wire        PREADY,
    input  wire rfid_rx_bit,
    output wire rfid_tx_bit
);

endmodule
