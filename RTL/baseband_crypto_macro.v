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
    input  wire        PCLK, PRESETn,
    input  wire        PSEL, PENABLE, PWRITE,
    input  wire [31:0] PADDR,
    input  wire [31:0] PWDATA,
    output wire [31:0] PRDATA,
    output wire        PREADY,
    input  wire        rfid_rx_bit,
    output wire        rfid_tx_bit
);

    wire [1:0]   ctrl_mode_w;
    wire         ctrl_mode_changed_w;
    wire [79:0]  crypto_key_w;
    wire [431:0] apb_test_data_w;
    wire [63:0]  apb_read_data_w;
    wire [63:0]  dbb_framed_data_w;
    wire [63:0]  crypto_ciphertext_w;
    wire [63:0]  crypto_data_in_w;
    
    wire apb_trigger_m1_w, apb_trigger_m2_w, mux_busy_w;
    wire dbb_rx_in_w, dbb_data_ready_w;
    wire crypto_start_w, crypto_done_w;
    wire mode1_err_w;
    // Flush DBB FSM pipeline when switching between modes to prevent stale state retention
    wire dbb_soft_rst_n = PRESETn & ~ctrl_mode_changed_w & ~mode1_err_w;
    wire dbb_preamble_detected_w;

    apb_wrapper U_APB (
        .PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE), .PWRITE(PWRITE),
        .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(PRDATA), .PREADY(PREADY),
        .mux_busy(mux_busy_w), .apb_read_data(apb_read_data_w),
        .dbb_data_ready(dbb_data_ready_w), .crypto_done(crypto_done_w),
        .dbb_preamble_detected(dbb_preamble_detected_w),
        .mode1_err(mode1_err_w),
        .ctrl_mode(ctrl_mode_w), .ctrl_mode_changed(ctrl_mode_changed_w),
        .crypto_key(crypto_key_w), .apb_test_data(apb_test_data_w),
        .apb_trigger_m1(apb_trigger_m1_w), .apb_trigger_m2(apb_trigger_m2_w)
    );

    loopback_mux U_MUX (
        .clk(PCLK), .rst_n(PRESETn), .ctrl_mode(ctrl_mode_w),
        .apb_test_data(apb_test_data_w), .apb_trigger_m1(apb_trigger_m1_w), .apb_trigger_m2(apb_trigger_m2_w),
        .rfid_rx_bit(rfid_rx_bit), .rfid_tx_bit(rfid_tx_bit),
        .dbb_rx_in(dbb_rx_in_w), .dbb_framed_data(dbb_framed_data_w), .dbb_data_ready(dbb_data_ready_w),
        .crypto_data_in(crypto_data_in_w), .crypto_start(crypto_start_w),
        .crypto_ciphertext(crypto_ciphertext_w), .crypto_done(crypto_done_w),
        .apb_read_data(apb_read_data_w), .mux_busy(mux_busy_w),
        .mode1_err(mode1_err_w)
    );

    dbb_top #(.OSR(6), .MAJORITY(3)) U_DBB (
        .clk(PCLK), .rst_n(dbb_soft_rst_n),
        .dbb_rx_in(dbb_rx_in_w), .dbb_framed_data(dbb_framed_data_w), .dbb_data_ready(dbb_data_ready_w),
        .dbb_preamble_detected(dbb_preamble_detected_w)
    );

    present_top U_CRYPTO (
        .plaintext(crypto_data_in_w), .key(crypto_key_w),
        .clk(PCLK), .reset(~PRESETn), .crypto_ready(crypto_start_w),
        .ciphertext(crypto_ciphertext_w), .crypto_done(crypto_done_w)
    );

endmodule