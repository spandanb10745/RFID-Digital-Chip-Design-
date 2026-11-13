`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:31:43
// Design Name: 
// Module Name: dbb_voter
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


module dbb_voter #(
    parameter WINDOW = 3
)(
    input  wire [WINDOW-1:0] window_in,
    output reg  voted_bit
);
    wire [1:0] sum;
    assign sum = window_in[0] + window_in[1] + window_in[2];

    always @(*) begin
        voted_bit = (sum >= 2'd2) ? 1'b1 : 1'b0;
    end
endmodule
