`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 11:28:18
// Design Name: 
// Module Name: Mode_0_async_data
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


module Mode_0_async_data;

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

    // Clock Generation (100 MHz / 10 ns period)
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
    // Task: Simulate Synchronous Live RF Antenna
    // Drives the physical pin exactly 1 bit per clock cycle
    // -------------------------------------------------------------------------
    task drive_rf_antenna_sync(input [431:0] stream);
        integer i;
        begin
            $display("[%0t] Incoming SYNCHRONOUS Radio Wave Detected...", $time);
            for (i = 431; i >= 0; i = i - 1) begin
                rfid_rx_bit = stream[i];
                @(posedge PCLK);
            end
            rfid_rx_bit = 1'b0; 
            $display("[%0t] Radio stream complete. Awaiting DBB & Crypto handoff.", $time);
        end
    endtask

    // -------------------------------------------------------------------------
    // Task: Simulate Asynchronous Live RF Antenna
    // Drives the physical pin with a 3.7ns phase shift to test DBB synchronizer
    // -------------------------------------------------------------------------
    task drive_rf_antenna_async(input [431:0] stream);
        integer i;
        begin
            $display("[%0t] Incoming ASYNCHRONOUS Radio Wave Detected (Phase Shifted 3.7ns)...", $time);
            
            // Wait for a clock edge, then add a 3.7ns fractional offset.
            @(posedge PCLK);
            #3.7; 

            for (i = 431; i >= 0; i = i - 1) begin
                rfid_rx_bit = stream[i];
                #10; // Hold bit for exactly 1 clock period, but physically out of phase
            end
            
            rfid_rx_bit = 1'b0; 
            
            // Re-align the testbench sequence back to the clock edge for the APB reads
            @(posedge PCLK); 
            $display("[%0t] Async Radio stream complete. Awaiting DBB & Crypto handoff.", $time);
        end
    endtask

    // -------------------------------------------------------------------------
    // APB Master Tasks
    // -------------------------------------------------------------------------
    task apb_write(input [31:0] addr, input [31:0] data);
        begin
            @(posedge PCLK); PADDR = addr; PWDATA = data; PWRITE = 1'b1; PSEL = 1'b1; PENABLE = 1'b0;
            @(posedge PCLK); PENABLE = 1'b1;
            wait (PREADY == 1'b1);
            @(posedge PCLK); PSEL = 1'b0; PENABLE = 1'b0;
        end
    endtask

    task apb_read(input [31:0] addr, output [31:0] data);
        begin
            @(posedge PCLK); PADDR = addr; PWRITE = 1'b0; PSEL = 1'b1; PENABLE = 1'b0;
            @(posedge PCLK); PENABLE = 1'b1;
            wait (PREADY == 1'b1);
            data = PRDATA;
            @(posedge PCLK); PSEL = 1'b0; PENABLE = 1'b0;
        end
    endtask

    task apb_poll_crypto_done(input [31:0] addr);
        reg [31:0] rdata;
        integer timeout;
        begin
            rdata = 32'd0;
            timeout = 0;
            $display("[%0t] CPU polling STATUS_REG for Crypto completion...", $time);
            
            // Allow up to 300 iterations (900 clock cycles) with diagnostic prints
            while (((rdata & 32'h0000_0001) == 0) && (timeout < 300)) begin
                apb_read(addr, rdata);
                timeout = timeout + 1;
                
                if (timeout % 30 == 0) begin
                    $display("    [POLLING @ %0t] Timeout=%0d | STATUS=0x%08h (PreambleLock=%0b, DataReady=%0b, CryptoDone=%0b)",
                             $time, timeout, rdata, rdata[2], rdata[1], rdata[0]);
                end
            end
            
            if ((rdata & 32'h0000_0001) == 0) begin
                $display("    [ERROR @ %0t] Watchdog Timeout! Final STATUS=0x%08h", $time, rdata);
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
        PRESETn = 1'b0; PSEL = 1'b0; PENABLE = 1'b0; PWRITE = 1'b0; PADDR = 32'd0; PWDATA = 32'd0; rfid_rx_bit = 1'b0;
        #20; PRESETn = 1'b1; #20;

        $display("\n============================================================");
        $display("STARTING MODE 0 (LIVE RF) SIMULATION");
        $display("============================================================\n");

        apb_write(ADDR_CTRL, 32'd0); // Switch to Mode 0
        $display("[%0t] Switched to Mode 0 (Live RF)\n", $time);

        // =====================================================================
        // PART 1: SYNCHRONOUS DELIVERY
        // =====================================================================
        $display("\n============================================================");
        $display("PHASE 1: SYNCHRONOUS RF TESTING");
        $display("============================================================\n");

        // --- TEST 1 (Sync): Key=0, PT=0 ---
        $display("--- Running Test 1 (Sync): All Zeros ---");
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000); 
        live_rf_stream = build_live_rf_stream(64'h0000_0000_0000_0000);
        
        drive_rf_antenna_sync(live_rf_stream);
        apb_poll_crypto_done(ADDR_STATUS);
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'h5579C1387B228445) $display("--> Test 1 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 1 FAIL. Expected 5579C1387B228445, Got %h\n", actual_ciphertext);


        // --- TEST 2 (Sync): Key=All Fs, PT=0 ---
        $display("--- Running Test 2 (Sync): All F's Key ---");
        apb_write(ADDR_KEY_0, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_1, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_2, 32'h0000FFFF); 
        live_rf_stream = build_live_rf_stream(64'h0000_0000_0000_0000);
        
        drive_rf_antenna_sync(live_rf_stream);
        apb_poll_crypto_done(ADDR_STATUS);
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'hE72C46C0F5945049) $display("--> Test 2 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 2 FAIL. Expected E72C46C0F5945049, Got %h\n", actual_ciphertext);


        // --- TEST 3 (Sync): Key=0, PT=All Fs ---
        $display("--- Running Test 3 (Sync): All F's Plaintext ---");
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000); 
        live_rf_stream = build_live_rf_stream(64'hFFFF_FFFF_FFFF_FFFF);
        
        drive_rf_antenna_sync(live_rf_stream);
        apb_poll_crypto_done(ADDR_STATUS);
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'hA112FFC72F68417B) $display("--> Test 3 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 3 FAIL. Expected A112FFC72F68417B, Got %h\n", actual_ciphertext);


        // =====================================================================
        // PART 2: ASYNCHRONOUS DELIVERY
        // =====================================================================
        $display("\n============================================================");
        $display("PHASE 2: ASYNCHRONOUS RF TESTING (DBB_SYNC CHECK)");
        $display("============================================================\n");

        // --- TEST 4 (Async): Key=0, PT=0 ---
        $display("--- Running Test 4 (Async): All Zeros ---");
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000); 
        live_rf_stream = build_live_rf_stream(64'h0000_0000_0000_0000);
        
        drive_rf_antenna_async(live_rf_stream); // Uses the async task
        repeat(35) @(posedge PCLK); // Allow internal DBB & Crypto pipeline to complete
        apb_poll_crypto_done(ADDR_STATUS);
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'h5579C1387B228445) $display("--> Test 4 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 4 FAIL. Expected 5579C1387B228445, Got %h\n", actual_ciphertext);


        // --- TEST 5 (Async): Key=All Fs, PT=0 ---
        $display("--- Running Test 5 (Async): All F's Key ---");
        apb_write(ADDR_KEY_0, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_1, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_2, 32'h0000FFFF); 
        live_rf_stream = build_live_rf_stream(64'h0000_0000_0000_0000);
        
        drive_rf_antenna_async(live_rf_stream);
        repeat(35) @(posedge PCLK); // Allow internal DBB & Crypto pipeline to complete
        apb_poll_crypto_done(ADDR_STATUS);
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'hE72C46C0F5945049) $display("--> Test 5 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 5 FAIL. Expected E72C46C0F5945049, Got %h\n", actual_ciphertext);


        // --- TEST 6 (Async): Key=0, PT=All Fs ---
        $display("--- Running Test 6 (Async): All F's Plaintext ---");
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000); 
        live_rf_stream = build_live_rf_stream(64'hFFFF_FFFF_FFFF_FFFF);
        
        drive_rf_antenna_async(live_rf_stream);
        repeat(35) @(posedge PCLK); // Allow internal DBB & Crypto pipeline to complete
        apb_poll_crypto_done(ADDR_STATUS);
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'hA112FFC72F68417B) $display("--> Test 6 PASS! Got %h\n", actual_ciphertext);
        else $display("--> Test 6 FAIL. Expected A112FFC72F68417B, Got %h\n", actual_ciphertext);


        $display("============================================================");
        $display("SIMULATION COMPLETE");
        $display("============================================================\n");
        $finish;
    end

endmodule