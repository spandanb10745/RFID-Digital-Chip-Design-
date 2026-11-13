`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 11:22:10
// Design Name: 
// Module Name: Mode_0
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

module Mode_0;

    // -------------------------------------------------------------------------
    // APB Memory Map Parameters
    // -------------------------------------------------------------------------
    localparam ADDR_CTRL       = 32'h4002_0000;
    localparam ADDR_STATUS     = 32'h4002_0004;
    localparam ADDR_KEY_0      = 32'h4002_0008;
    localparam ADDR_KEY_1      = 32'h4002_000C;
    localparam ADDR_KEY_2      = 32'h4002_0010;
    localparam ADDR_DATA_OUT_0 = 32'h4002_004C; // Read-Only Output Lower 32
    localparam ADDR_DATA_OUT_1 = 32'h4002_0050; // Read-Only Output Upper 32

    // -------------------------------------------------------------------------
    // Signals
    // -------------------------------------------------------------------------
    reg         PCLK;
    reg         PRESETn;
    reg         PSEL;
    reg         PENABLE;
    reg         PWRITE;
    reg  [31:0] PADDR;
    reg  [31:0] PWDATA;
    wire [31:0] PRDATA;
    wire        PREADY;
    
    reg         rfid_rx_bit;
    wire        rfid_tx_bit;

    reg  [31:0] ct_lower_32;
    reg  [31:0] ct_upper_32;
    reg  [63:0] actual_ciphertext;
    reg  [431:0] live_rf_stream;

    // -------------------------------------------------------------------------
    // Instantiate Device Under Test (DUT)
    // -------------------------------------------------------------------------
    baseband_crypto_macro dut (
        .PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE),
        .PWRITE(PWRITE), .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(PRDATA),
        .PREADY(PREADY), .rfid_rx_bit(rfid_rx_bit), .rfid_tx_bit(rfid_tx_bit)
    );

    // Clock Generation (100 MHz)
    initial begin
        PCLK = 0;
        forever #5 PCLK = ~PCLK;
    end

    // -------------------------------------------------------------------------
    // Helper Function: Construct 432-bit Oversampled Waveform
    // -------------------------------------------------------------------------
    function [431:0] build_live_rf_stream(input [63:0] payload);
        reg [431:0] stream;
        integer i;
        begin
            // 1. Insert 48-bit Preamble (8'b10101011 encoded with OSR=6)
            stream[431:384] = 48'h1F81_F81F_81C7;
            
            // 2. Encode the 64-bit Payload
            for (i = 0; i < 64; i = i + 1) begin
                if (payload[63-i] == 1'b1)
                    stream[383 - (i*6) -: 6] = 6'b000111; // Logic 1
                else
                    stream[383 - (i*6) -: 6] = 6'b111000; // Logic 0
            end
            build_live_rf_stream = stream;
        end
    endfunction

    // -------------------------------------------------------------------------
    // Task: Simulate the Live RF Antenna
    // Drives the physical pin with a #1 margin to prevent clock-edge race
    // -------------------------------------------------------------------------
    task drive_rf_antenna(input [431:0] stream);
        integer i;
        begin
            $display("[%0t] Incoming Radio Wave Detected. Streaming 432 bits...", $time);
            for (i = 431; i >= 0; i = i - 1) begin
                @(posedge PCLK);
                #1;
                rfid_rx_bit = stream[i];
            end
            @(posedge PCLK);
            #1;
            rfid_rx_bit = 1'b0; // Antenna returns to silence
            $display("[%0t] Radio stream complete. Awaiting DBB & Crypto handoff.", $time);
        end
    endtask

    // -------------------------------------------------------------------------
    // APB Master Tasks
    // -------------------------------------------------------------------------
    task apb_write(input [31:0] addr, input [31:0] data);
        begin
            @(posedge PCLK);
            #1;
            PADDR   = addr;
            PWDATA  = data;
            PWRITE  = 1'b1;
            PSEL    = 1'b1;
            PENABLE = 1'b0;

            @(posedge PCLK);
            #1;
            PENABLE = 1'b1;

            @(posedge PCLK);
            while (!PREADY) @(posedge PCLK);

            #1;
            PSEL    = 1'b0;
            PENABLE = 1'b0;
            PWRITE  = 1'b0;
        end
    endtask

    task apb_read(input [31:0] addr, output [31:0] data);
        begin
            @(posedge PCLK);
            #1;
            PADDR   = addr;
            PWRITE  = 1'b0;
            PSEL    = 1'b1;
            PENABLE = 1'b0;

            @(posedge PCLK);
            #1;
            PENABLE = 1'b1;

            @(posedge PCLK);
            while (!PREADY) @(posedge PCLK);
            data = PRDATA;

            #1;
            PSEL    = 1'b0;
            PENABLE = 1'b0;
        end
    endtask

    // Poll Status Register for crypto_done (Bit 0) with a watchdog timeout
    task apb_poll_crypto_done(input [31:0] addr);
        reg [31:0] rdata;
        integer timeout;
        begin
            rdata = 32'd0;
            timeout = 0;
            $display("[%0t] CPU polling STATUS_REG for Crypto completion...", $time);
            while (((rdata & 32'h0000_0001) == 0) && (timeout < 400)) begin
                apb_read(addr, rdata);
                timeout = timeout + 1;
            end
            
            if ((rdata & 32'h0000_0001) == 0) begin
                $display("    [ERROR @ %0t] Watchdog Timeout! Crypto failed to assert. STATUS = 0x%08h", $time, rdata);
            end else begin
                $display("[%0t] crypto_done asserted! Hardware pipeline finished autonomously.", $time);
            end
        end
    endtask

    // -------------------------------------------------------------------------
    // Main Stimulus
    // -------------------------------------------------------------------------
    initial begin
        // Reset sequence
        PRESETn     = 1'b0;
        PSEL        = 1'b0;
        PENABLE     = 1'b0;
        PWRITE      = 1'b0;
        PADDR       = 32'd0;
        PWDATA      = 32'd0;
        rfid_rx_bit = 1'b0;
        #20; PRESETn = 1'b1; #20;

        $display("\n============================================================");
        $display("STARTING MODE 0 (LIVE RF) SIMULATION");
        $display("============================================================\n");

        apb_write(ADDR_CTRL, 32'd0); // Switch to Mode 0
        $display("[%0t] Switched to Mode 0 (Live RF)\n", $time);


        // =====================================================================
        // TEST VECTOR 1 (All Zeros)
        // Key: 80'h0000_0000_0000_0000_0000
        // PT:  64'h0000_0000_0000_0000
        // Exp: 64'h5579C1387B228445
        // =====================================================================
        $display("--- Running Test 1: All Zeros ---");
        
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000); 
        
        // Construct the physical radio stream
        live_rf_stream = build_live_rf_stream(64'h0000_0000_0000_0000);
        
        // Drive the physical antenna pin (takes 432 clock cycles)
        drive_rf_antenna(live_rf_stream);
        
        // Poll for Crypto Done
        apb_poll_crypto_done(ADDR_STATUS);
        
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'h5579C1387B228445) $display("--> Test 1 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 1 FAIL. Expected 5579C1387B228445, Got %h\n", actual_ciphertext);


        // =====================================================================
        // TEST VECTOR 2 (All F's Key, All Zeros PT)
        // Key: 80'hFFFF_FFFF_FFFF_FFFF_FFFF
        // PT:  64'h0000_0000_0000_0000
        // Exp: 64'hE72C46C0F5945049
        // =====================================================================
        $display("--- Running Test 2: All F's Key ---");
        
        apb_write(ADDR_KEY_0, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_1, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_2, 32'h0000FFFF); 
        
        live_rf_stream = build_live_rf_stream(64'h0000_0000_0000_0000);
        drive_rf_antenna(live_rf_stream);
        apb_poll_crypto_done(ADDR_STATUS);
        
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'hE72C46C0F5945049) $display("--> Test 2 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 2 FAIL. Expected E72C46C0F5945049, Got %h\n", actual_ciphertext);


        // =====================================================================
        // TEST VECTOR 3 (Mixed Plaintext, Zero Key)
        // Key: 80'h0000_0000_0000_0000_0000
        // PT:  64'hC33C_0FF0_AAAA_5555
        // =====================================================================
        $display("--- Running Test 3: Mixed Plaintext Payload ---");
        
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000); 
        
        live_rf_stream = build_live_rf_stream(64'hC33C_0FF0_AAAA_5555);
        drive_rf_antenna(live_rf_stream);
        apb_poll_crypto_done(ADDR_STATUS);
        
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        $display("--> Test 3 Completed. Ciphertext for Mixed Payload: %h\n", actual_ciphertext);
        
        // =====================================================================
        // CORNER CASE: Pre-Packet Noise Followed by Preamble-Aliased Payload
        // =====================================================================
        $display("--- Running Corner Case: Pre-Packet Noise & Preamble Aliasing ---");
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000);
        
        // 1. Inject 80 cycles of arbitrary line noise (with #1 margin)
        repeat (80) begin
            @(posedge PCLK);
            #1;
            rfid_rx_bit = $urandom_range(0, 1);
        end
        @(posedge PCLK);
        #1;
        rfid_rx_bit = 1'b0;
        repeat (10) @(posedge PCLK);
        
        // 2. Deliver valid stream containing 0xAB throughout the payload
        live_rf_stream = build_live_rf_stream(64'hABAB_ABAB_ABAB_ABAB);
        drive_rf_antenna(live_rf_stream);
        
        apb_poll_crypto_done(ADDR_STATUS);
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};
        
        $display("--> Corner Case Done. Ciphertext for 0xAB Payload: %h\n", actual_ciphertext);


        $display("============================================================");
        $display("SIMULATION COMPLETE");
        $display("============================================================\n");
        $finish;
    end
endmodule