`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:30:59
// Design Name: 
// Module Name: dbb_top
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


module dbb_top #(
    parameter OSR = 6,
    parameter MAJORITY = OSR / 2
)(
    input  wire clk, rst_n, dbb_rx_in,
    output wire [63:0] dbb_framed_data,
    output wire dbb_data_ready,
    output wire dbb_preamble_detected // ADD: Port
);
    wire sync_w;
    wire [MAJORITY-1:0] window_w;
    wire voted_w, decoded_w, valid_w;
    wire frame_complete_w;

    assign dbb_data_ready = frame_complete_w;

    dbb_sync             U_SYNC (.clk(clk), .rst_n(rst_n), .async_in(dbb_rx_in), .sync_out(sync_w));
    dbb_oversampler #(.WINDOW(MAJORITY)) U_OS (.clk(clk), .rst_n(rst_n), .sync_in(sync_w), .window_out(window_w));
    dbb_voter       #(.WINDOW(MAJORITY)) U_VOTE (.window_in(window_w), .voted_bit(voted_w));
    
    dbb_manchester_fsm #(.OSR(OSR)) U_FSM (
        .clk(clk), .rst_n(rst_n), .voted_bit(voted_w), 
        .frame_complete(frame_complete_w), // Packet Boundary Feedback
        .decoded_bit(decoded_w), .bit_valid(valid_w)
    );
    
    dbb_framer U_FRAMER (
        .clk(clk), .rst_n(rst_n), .bit_valid(valid_w), .decoded_bit(decoded_w),
        .preamble_detected(dbb_preamble_detected), // ADD: Connection
        .framed_data(dbb_framed_data), .data_ready(frame_complete_w)
    );
endmodule
