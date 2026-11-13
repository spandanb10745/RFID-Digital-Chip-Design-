`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Preamble_Validation_TB
// Description: Fully corrected self-checking testbench for:
//              1. Positive Preamble Locking & Payload Reception (Status[2] & Status[1])
//              2. Rejection of Corrupted All-Zero Preamble (Status[3])
//              3. Rejection of Delimiter Symbol Mutation (Status[3])
//              4. Autonomous Pipeline Recovery Without Reset
//////////////////////////////////////////////////////////////////////////////////

module Preamble_Validation_TB;

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

    // Status Bit Masks
    localparam STATUS_CRYPTO_DONE     = 32'h0000_0001;
    localparam STATUS_DBB_READY       = 32'h0000_0002;
    localparam STATUS_PREAMBLE_LOCKED = 32'h0000_0004;
    localparam STATUS_MODE1_ERR       = 32'h0000_0008;

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
    reg  [31:0] status_val;
    reg  [31:0] status_flush_dummy;
    integer     test_pass_count = 0;
    integer     test_fail_count = 0;

    // -------------------------------------------------------------------------
    // Device Under Test (DUT)
    // -------------------------------------------------------------------------
    baseband_crypto_macro dut (
        .PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE),
        .PWRITE(PWRITE), .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(PRDATA),
        .PREADY(PREADY), .rfid_rx_bit(rfid_rx_bit), .rfid_tx_bit(rfid_tx_bit)
    );

    // Clock: 100 MHz (10 ns period)
    initial begin
        PCLK = 0;
        forever #5 PCLK = ~PCLK;
    end

    // -------------------------------------------------------------------------
    // Helper Functions & Tasks
    // -------------------------------------------------------------------------
    function automatic [431:0] build_mode1_stream(input [63:0] payload);
        reg [431:0] stream;
        integer i;
        begin
            // 48-bit Preamble (8'b10101011 encoded with OSR=6)
            stream[431:384] = 48'h1F81_F81F_81C7;

            // Encode 64-bit Payload
            for (i = 0; i < 64; i = i + 1) begin
                if (payload[63-i] == 1'b1)
                    stream[383 - (i*6) -: 6] = 6'b000111; // Logic 1
                else
                    stream[383 - (i*6) -: 6] = 6'b111000; // Logic 0
            end
            build_mode1_stream = stream;
        end
    endfunction

    task automatic apb_write(input [31:0] addr, input [31:0] data);
        begin
            @(posedge PCLK); PADDR = addr; PWDATA = data; PWRITE = 1'b1; PSEL = 1'b1; PENABLE = 1'b0;
            @(posedge PCLK); PENABLE = 1'b1;
            wait (PREADY == 1'b1);
            @(posedge PCLK); PSEL = 1'b0; PENABLE = 1'b0;
        end
    endtask

    task automatic apb_read(input [31:0] addr, output [31:0] data);
        begin
            @(posedge PCLK); PADDR = addr; PWRITE = 1'b0; PSEL = 1'b1; PENABLE = 1'b0;
            @(posedge PCLK); PENABLE = 1'b1;
            wait (PREADY == 1'b1);
            data = PRDATA;
            @(posedge PCLK); PSEL = 1'b0; PENABLE = 1'b0;
        end
    endtask

    // Explicit bit slices applied to prevent implicit 32-bit truncation
    task automatic apb_write_432_stream(input [431:0] stream);
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
            apb_write(ADDR_DATA_13, {16'd0, stream[431:416]}); // Mode 1 Trigger

            // Wait for 432-cycle stream shift and pipeline drain to complete
            @(posedge PCLK);
            while (PREADY == 1'b0) @(posedge PCLK);
            
            // Allow 2 clock cycles for status_reg to latch the error/ready bit
            repeat(2) @(posedge PCLK);
        end
    endtask

    // Polls STATUS_REG until either dbb_data_ready (bit 1) or mode1_err (bit 3) asserts
    task automatic apb_poll_event(input [31:0] addr, output [31:0] final_status);
        reg [31:0] rdata;
        integer timeout;
        begin
            rdata = 32'd0;
            timeout = 0;
            while (((rdata & (STATUS_DBB_READY | STATUS_MODE1_ERR)) == 0) && (timeout < 2500)) begin
                apb_read(addr, rdata);
                timeout = timeout + 1;
            end
            if (timeout >= 2500) begin
                $display("    [ERROR] APB Poll Watchdog Timeout! Neither Ready nor Error asserted.");
            end
            final_status = rdata;
        end
    endtask

    // -------------------------------------------------------------------------
    // Main Stimulus
    // -------------------------------------------------------------------------
    initial begin
        PRESETn     = 1'b0;
        PSEL        = 1'b0;
        PENABLE     = 1'b0;
        PWRITE      = 1'b0;
        PADDR       = 32'd0;
        PWDATA      = 32'd0;
        rfid_rx_bit = 1'b0;
        #20; PRESETn = 1'b1; #20;

        $display("\n============================================================");
        $display("STARTING DBB PREAMBLE DETECTION & ERROR RECOVERY TESTBENCH");
        $display("============================================================\n");

        apb_write(ADDR_CTRL, 32'd1); // Configure Mode 1
        $display("[%0t] Subsystem set to Mode 1 (DBB Loopback)\n", $time);


        // =====================================================================
        // TEST 1: Positive Test (Valid Preamble & Payload)
        // =====================================================================
        $display("--- TEST 1: Valid Preamble Transmission ---");
        apb_read(ADDR_STATUS, status_flush_dummy); // Flush status register for isolated baseline
        test_stream = build_mode1_stream(64'hA5A5_5A5A_DEAD_BEEF);

        apb_write_432_stream(test_stream);
        apb_poll_event(ADDR_STATUS, status_val);

        apb_read(ADDR_DATA_OUT_0, dbb_lower_32);
        apb_read(ADDR_DATA_OUT_1, dbb_upper_32);
        actual_payload = {dbb_upper_32, dbb_lower_32};

        if ((actual_payload == 64'hA5A5_5A5A_DEAD_BEEF) &&
            (status_val & STATUS_DBB_READY) &&
            (status_val & STATUS_PREAMBLE_LOCKED) &&
            !(status_val & STATUS_MODE1_ERR)) begin
            $display("    --> PASS: Preamble locked (Status[2]), Data ready (Status[1]), Payload verified: %h\n", actual_payload);
            test_pass_count = test_pass_count + 1;
        end else begin
            $display("    --> FAIL: Status=%h (Expected Bits 1 & 2 high), Got Payload=%h\n", status_val, actual_payload);
            test_fail_count = test_fail_count + 1;
        end


        // =====================================================================
        // TEST 2: Negative Test (All-Zero Corrupted Preamble)
        // =====================================================================
        $display("--- TEST 2: Corrupted All-Zero Preamble Rejection ---");
        apb_read(ADDR_STATUS, status_flush_dummy); // Flush status register for isolated baseline
        test_stream = build_mode1_stream(64'h0000_0000_0000_0000); // Zero-transition payload, no 0xAB byte
        test_stream[431:384] = 48'h0000_0000_0000; // Corrupt preamble header

        apb_write_432_stream(test_stream);
        apb_poll_event(ADDR_STATUS, status_val);

        if ((status_val & STATUS_MODE1_ERR) &&
            !(status_val & STATUS_DBB_READY) &&
            !(status_val & STATUS_PREAMBLE_LOCKED)) begin
            $display("    --> PASS: Corrupted stream rejected! Error asserted (Status[3]=1), DBB Ready remained 0.");
            $display("    --> Bus Liveness Check: PREADY was released cleanly without bus hang.\n");
            test_pass_count = test_pass_count + 1;
        end else begin
            $display("    --> FAIL: Frame improperly accepted or Error bit missed. Status=%h\n", status_val);
            test_fail_count = test_fail_count + 1;
        end


        // =====================================================================
        // TEST 3: Negative Test (Preamble Delimiter Symbol Mutation)
        // =====================================================================
        $display("--- TEST 3: Mutated Preamble Delimiter Rejection ---");
        apb_read(ADDR_STATUS, status_flush_dummy); // Flush status register for isolated baseline
        test_stream = build_mode1_stream(64'hF0F0_F0F0_0F0F_0F0F);
        // Mutates delimiter from 8'b10101011 (48'h1F81_F81F_81C7) to 8'b10101010 (48'h1F81_F81F_81F8)
        test_stream[431:384] = 48'h1F81_F81F_81F8;

        apb_write_432_stream(test_stream);
        apb_poll_event(ADDR_STATUS, status_val);

        if ((status_val & STATUS_MODE1_ERR) && !(status_val & STATUS_DBB_READY)) begin
            $display("    --> PASS: Mutated preamble rejected! Error timeout flagged (Status[3]=1).\n");
            test_pass_count = test_pass_count + 1;
        end else begin
            $display("    --> FAIL: Mutated preamble accepted or timed out incorrectly. Status=%h\n", status_val);
            test_fail_count = test_fail_count + 1;
        end


        // =====================================================================
        // TEST 4: Post-Error Pipeline Recovery Test
        // =====================================================================
        $display("--- TEST 4: Immediate Recovery with Valid Frame (No Reset) ---");
        apb_read(ADDR_STATUS, status_flush_dummy); // Flush status register for isolated baseline
        test_stream = build_mode1_stream(64'hCAFE_BABE_0123_4567);

        apb_write_432_stream(test_stream);
        apb_poll_event(ADDR_STATUS, status_val);

        apb_read(ADDR_DATA_OUT_0, dbb_lower_32);
        apb_read(ADDR_DATA_OUT_1, dbb_upper_32);
        actual_payload = {dbb_upper_32, dbb_lower_32};

        if ((actual_payload == 64'hCAFE_BABE_0123_4567) &&
            (status_val & STATUS_DBB_READY) &&
            !(status_val & STATUS_MODE1_ERR)) begin
            $display("    --> PASS: Receiver recovered autonomously without manual reset. Got: %h\n", actual_payload);
            test_pass_count = test_pass_count + 1;
        end else begin
            $display("    --> FAIL: Pipeline stalled after prior errors. Status=%h, Got: %h\n", status_val, actual_payload);
            test_fail_count = test_fail_count + 1;
        end


        // =====================================================================
        // Simulation Summary
        // =====================================================================
        $display("============================================================");
        $display("PREAMBLE & TIMEOUT VALIDATION SUMMARY");
        $display("Passed: %0d / %0d", test_pass_count, (test_pass_count + test_fail_count));
        $display("Failed: %0d / %0d", test_fail_count, (test_pass_count + test_fail_count));
        $display("============================================================\n");

        if (test_fail_count == 0)
            $display("--> RESULT: ALL TESTCASES PASSED PERFECTLY!\n");
        else
            $display("--> RESULT: VERIFICATION FAILED.\n");

        $finish;
    end

endmodule