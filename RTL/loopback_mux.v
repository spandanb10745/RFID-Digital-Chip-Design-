`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:30:44
// Design Name: 
// Module Name: loopback_mux
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


// -------------------------------------------------------------------------
// Module: loopback_mux
// Description: The central crossbar orchestrator isolating tests from RF.
// Includes a 1-cycle delay on Mode 2 trigger to prevent data race conditions.
// -------------------------------------------------------------------------
module loopback_mux (
    input  wire clk, rst_n,
    
    input  wire [1:0]   ctrl_mode,
    input  wire [431:0] apb_test_data, 
    input  wire         apb_trigger_m1, 
    input  wire         apb_trigger_m2, 
    
    input  wire rfid_rx_bit,
    output reg  rfid_tx_bit,
    
    output reg         dbb_rx_in,
    input  wire [63:0] dbb_framed_data,
    input  wire        dbb_data_ready,
    
    output reg  [63:0] crypto_data_in,
    output reg         crypto_start,
    input  wire [63:0] crypto_ciphertext,
    input  wire        crypto_done,
    
    output reg  [63:0] apb_read_data,
    output reg         mux_busy,
    output reg         mode1_err // ADD: Timeout / bad preamble flag
);

    reg [431:0] shift_reg;
    reg [8:0]   shift_counter; 
    reg         m2_trigger_delayed; // LOGIC FIX: 1-Cycle delay to prevent Data Race
    reg         m1_trigger_delayed; // ADD: 1-cycle delay for Mode 1
    reg [3:0] drain_counter;

    always @(*) begin
        dbb_rx_in      = rfid_rx_bit;
        crypto_data_in = dbb_framed_data;
        crypto_start   = dbb_data_ready;
        apb_read_data  = crypto_ciphertext;
        rfid_tx_bit    = 1'b0;

        case (ctrl_mode)
            2'd0: begin
                dbb_rx_in      = rfid_rx_bit;
                crypto_data_in = dbb_framed_data;
                crypto_start   = dbb_data_ready;
                apb_read_data  = crypto_ciphertext;
                if (crypto_done) rfid_tx_bit = 1'b1;
            end
            2'd1: begin
                dbb_rx_in      = shift_reg[431];
                crypto_data_in = 64'd0; 
                crypto_start   = 1'b0;
                apb_read_data  = dbb_framed_data;
                rfid_tx_bit    = 1'b0;  
            end
            2'd2: begin 
                dbb_rx_in      = 1'b0;
                crypto_data_in = apb_test_data[63:0]; 
                crypto_start   = m2_trigger_delayed; // Trigger fires AFTER data safely latches
                apb_read_data  = crypto_ciphertext;
                rfid_tx_bit    = 1'b0;  
            end
            default: begin
                dbb_rx_in      = rfid_rx_bit;
                crypto_data_in = dbb_framed_data;
                crypto_start   = dbb_data_ready;
                apb_read_data  = crypto_ciphertext;
                rfid_tx_bit    = 1'b0;
            end
        endcase
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            shift_reg          <= 432'd0;
            shift_counter      <= 9'd0;
            drain_counter      <= 4'd0;
            mux_busy           <= 1'b0;
            mode1_err          <= 1'b0;
            m1_trigger_delayed <= 1'b0;
            m2_trigger_delayed <= 1'b0;
        end else begin
            mode1_err <= 1'b0;
            m1_trigger_delayed <= (apb_trigger_m1 && ctrl_mode == 2'd1);
            m2_trigger_delayed <= (apb_trigger_m2 && ctrl_mode == 2'd2);

            if ((apb_trigger_m1 && ctrl_mode == 2'd1) || (apb_trigger_m2 && ctrl_mode == 2'd2)) begin
                mux_busy <= 1'b1;
            end

            if (m1_trigger_delayed && ctrl_mode == 2'd1) begin
                shift_reg     <= apb_test_data;
                shift_counter <= 9'd432;
                drain_counter <= 4'd10; // Extra margin cycles for DBB pipeline latency
            end else if (shift_counter > 0) begin
                shift_reg     <= {shift_reg[430:0], 1'b0};
                shift_counter <= shift_counter - 1'b1;
            end else if (drain_counter > 0) begin
                drain_counter <= drain_counter - 1'b1;
                // If stream is over, pipeline is drained, and no data_ready arrived:
                if (drain_counter == 4'd1 && !dbb_data_ready) begin
                    mux_busy  <= 1'b0; // Release APB bus
                    mode1_err <= 1'b1; // Flag missing preamble error
                end
            end

            if ((ctrl_mode == 2'd0 && crypto_done) || 
                (ctrl_mode == 2'd1 && dbb_data_ready) || 
                (ctrl_mode == 2'd2 && crypto_done)) begin
                mux_busy      <= 1'b0;
                drain_counter <= 4'd0;
            end
        end
    end
endmodule