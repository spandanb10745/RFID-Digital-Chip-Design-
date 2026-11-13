`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:32:13
// Design Name: 
// Module Name: dbb_sync
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


module dbb_sync (
    input  wire clk, rst_n, async_in,
    output reg  sync_out
);
    reg flop1;
    always @(posedge clk) begin
        if (!rst_n) begin
            flop1 <= 0;
            sync_out <= 0;
        end else begin
            flop1 <= async_in;
            sync_out <= flop1;
        end
    end
endmodule