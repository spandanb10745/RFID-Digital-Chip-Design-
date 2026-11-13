`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:31:58
// Design Name: 
// Module Name: dbb_oversampler
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


module dbb_oversampler #(
    parameter WINDOW = 3 // For OSR 6, plateau is 3
)(
    input  wire clk, rst_n, sync_in,
    output reg [WINDOW-1:0] window_out
);
    always @(posedge clk) begin
        if (!rst_n) window_out <= 0;
        else        window_out <= {window_out[WINDOW-2:0], sync_in};
    end
endmodule
