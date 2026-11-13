`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:33:16
// Design Name: 
// Module Name: sub_layer
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


module sub_layer (
    input  wire [63:0] data_in,
    output wire [63:0] data_out
);
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : GEN_SBOXES
            sbox SX (
                .data_in (data_in[4*i+3 : 4*i]),
                .data_out(data_out[4*i+3 : 4*i])
            );
        end
    endgenerate
endmodule
