`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 11:12:19
// Design Name: 
// Module Name: Mode_1
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

module Mode_1;

    // -------------------------------------------------------------------------
    // APB Memory Map Parameters
    // -------------------------------------------------------------------------
    localparam ADDR_CTRL       = 32'h4002_0000;
    localparam ADDR_STATUS     = 32'h4002_0004;
    localparam ADDR_DATA_0     = 32'h4002_0014;
    localparam ADDR_DATA_1     = 32'h4002_0018; 
    localparam ADDR_DATA_2     = 32'h4002_001C; 
    localparam ADDR_DATA_3     = 32'h4002_0020; 
    localparam ADDR_DATA_4     = 32'h4002_0024; 
    localparam ADDR_DATA_5     = 32'h4002_0028; 
    localparam ADDR_DATA_6     = 32'h4002_002C; 
    localparam ADDR_DATA_7     = 32'h4002_0030; 
    localparam ADDR_DATA_8     = 32'h4002_0034; 
    localparam ADDR_DATA_9     = 32'h4002_0038; 
    localparam ADDR_DATA_10    = 32'h4002_003C; 
    localparam ADDR_DATA_11    = 32'h4002_0040; 
    localparam ADDR_DATA_12    = 32'h4002_0044; 
    localparam ADDR_DATA_13    = 32'h4002_0048; // Trigger for Mode 1
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

    reg  [31:0] dbb_lower_32;
    reg  [31:0] dbb_upper_32;
    reg  [63:0] actual_payload;
    reg  [431:0] test_stream;

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
    function [431:0] build_mode1_stream(input [63:0] payload);
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
            build_mode1_stream = stream;
        end
    endfunction

    // -------------------------------------------------------------------------
    // APB Master Tasks (Synchronous with #1ns Margins)
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

    // Poll Status Register for dbb_data_ready (Bit 1) with Watchdog
    task apb_poll_dbb_done(input [31:0] addr);
        reg [31:0] rdata;
        integer timeout;
        begin
            rdata = 32'd0;
            timeout = 0;
            $display("[%0t] Polling STATUS_REG for DBB completion...", $time);
            while (((rdata & 32'h0000_0002) == 0) && (timeout < 500)) begin
                apb_read(addr, rdata);
                timeout = timeout + 1;
            end
            
            if ((rdata & 32'h0000_0002) == 0) begin
                $display("    [ERROR @ %0t] Watchdog Timeout! DBB data ready failed to assert. STATUS = 0x%08h", $time, rdata);
            end else begin
                $display("[%0t] dbb_data_ready asserted!", $time);
            end
        end
    endtask

    // Task to write all 432 bits into the 14 ADDR_DATA registers
    task apb_write_432_stream(input [431:0] stream);
        begin
            apb_write(ADDR_DATA_0,  stream[31:0]);
            apb_write(ADDR_DATA_1,  stream[63:32]);
            apb_write(ADDR_DATA_2,  stream[95:64]);
            apb_write(ADDR_DATA_3,  stream[127:96]);
            apb_write(ADDR_DATA_4,  stream[159:128]);
            apb_write(ADDR_DATA_5,  stream[191:160]);
            apb_write(ADDR_DATA_6,  stream[223:192]);
            apb_write(ADDR_DATA_7,  stream[255:224]);
            apb_write(ADDR_DATA_8,  stream[287:256]);
            apb_write(ADDR_DATA_9,  stream[319:288]);
            apb_write(ADDR_DATA_10, stream[351:320]);
            apb_write(ADDR_DATA_11, stream[383:352]);
            apb_write(ADDR_DATA_12, stream[415:384]);
            
            $display("[%0t] Writing ADDR_DATA_13. PREADY will stall CPU for 432 cycles...", $time);
            apb_write(ADDR_DATA_13, {16'd0, stream[431:416]}); // Triggers pipeline
            $display("[%0t] PREADY stall released! Stream injection complete.", $time);
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
        $display("STARTING MODE 1 (DBB LOOPBACK) SIMULATION");
        $display("============================================================\n");

        apb_write(ADDR_CTRL, 32'd1); // Switch to Mode 1
        $display("[%0t] Switched to Mode 1 (DBB Loopback)\n", $time);

        // =====================================================================
        // TEST CASE 1: Alternating Bits
        // Expected: 64'h5555_5555_5555_5555 (01010101...)
        // =====================================================================
        $display("--- Running Test 1: Alternating Bits ---");
        test_stream = build_mode1_stream(64'h5555_5555_5555_5555);
        apb_write_432_stream(test_stream);
        apb_poll_dbb_done(ADDR_STATUS);
        
        apb_read(ADDR_DATA_OUT_0, dbb_lower_32);
        apb_read(ADDR_DATA_OUT_1, dbb_upper_32);
        actual_payload = {dbb_upper_32, dbb_lower_32};

        if (actual_payload == 64'h5555555555555555) $display("--> Test 1 PASS!\n");
        else $display("--> Test 1 FAIL. Got %h\n", actual_payload);

        // =====================================================================
        // TEST CASE 2: All Zeros
        // Expected: 64'h0000_0000_0000_0000
        // =====================================================================
        $display("--- Running Test 2: All Zeros ---");
        test_stream = build_mode1_stream(64'h0000_0000_0000_0000);
        apb_write_432_stream(test_stream);
        apb_poll_dbb_done(ADDR_STATUS);
        
        apb_read(ADDR_DATA_OUT_0, dbb_lower_32);
        apb_read(ADDR_DATA_OUT_1, dbb_upper_32);
        actual_payload = {dbb_upper_32, dbb_lower_32};

        if (actual_payload == 64'h0000000000000000) $display("--> Test 2 PASS!\n");
        else $display("--> Test 2 FAIL. Got %h\n", actual_payload);

        // =====================================================================
        // TEST CASE 3: All Ones
        // Expected: 64'hFFFF_FFFF_FFFF_FFFF
        // =====================================================================
        $display("--- Running Test 3: All Ones ---");
        test_stream = build_mode1_stream(64'hFFFF_FFFF_FFFF_FFFF);
        apb_write_432_stream(test_stream);
        apb_poll_dbb_done(ADDR_STATUS);
        
        apb_read(ADDR_DATA_OUT_0, dbb_lower_32);
        apb_read(ADDR_DATA_OUT_1, dbb_upper_32);
        actual_payload = {dbb_upper_32, dbb_lower_32};

        if (actual_payload == 64'hFFFFFFFFFFFFFFFF) $display("--> Test 3 PASS!\n");
        else $display("--> Test 3 FAIL. Got %h\n", actual_payload);

        // =====================================================================
        // TEST CASE 4: Random Mixed Data (Consecutive 0s and 1s)
        // Expected: 64'hC33C_0FF0_AAAA_5555
        // =====================================================================
        $display("--- Running Test 4: Mixed Blocks ---");
        test_stream = build_mode1_stream(64'hC33C_0FF0_AAAA_5555);
        apb_write_432_stream(test_stream);
        apb_poll_dbb_done(ADDR_STATUS);
        
        apb_read(ADDR_DATA_OUT_0, dbb_lower_32);
        apb_read(ADDR_DATA_OUT_1, dbb_upper_32);
        actual_payload = {dbb_upper_32, dbb_lower_32};

        if (actual_payload == 64'hC33C0FF0AAAA5555) $display("--> Test 4 PASS!\n");
        else $display("--> Test 4 FAIL. Got %h\n", actual_payload);

        $display("============================================================");
        $display("SIMULATION COMPLETE");
        $display("============================================================\n");
        $finish;
    end
endmodule