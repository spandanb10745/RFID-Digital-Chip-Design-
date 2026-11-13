`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:32:47
// Design Name: 
// Module Name: key_schedule
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


module key_schedule (
    input  wire [79:0] data_in,
    input  wire [4:0]  round_counter,
    output wire [79:0] data_out
);
    wire [79:0] shifted;
    assign shifted = {data_in[18:0], data_in[79:19]};

    sbox SB (
        .data_in (shifted[79:76]),
        .data_out(data_out[79:76])
    );

    assign data_out[75:20] = shifted[75:20];
    assign data_out[19:15] = shifted[19:15] ^ round_counter;
    assign data_out[14:0]  = shifted[14:0];
endmodule