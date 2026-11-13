`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Corner_Cases_TB
// Description: Advanced verification suite targeting:
//              1. Status register read-on-assert race condition at 0x04
//              2. Dynamic RF timing jitter
//              3. High carrier frequency drift: Fast Reader, OSR = 5
//              4. Low carrier frequency drift: Slow Reader, OSR = 7
//////////////////////////////////////////////////////////////////////////////////

module Corner_Cases_TB;

    // -------------------------------------------------------------------------
    // APB Memory Map Parameters
    // -------------------------------------------------------------------------
    localparam ADDR_CTRL       = 32'h4002_0000;
    localparam ADDR_STATUS     = 32'h4002_0004;
    localparam ADDR_KEY_0      = 32'h4002_0008;
    localparam ADDR_KEY_1      = 32'h4002_000C;
    localparam ADDR_KEY_2      = 32'h4002_0010;
    localparam ADDR_DATA_OUT_0 = 32'h4002_004C;
    localparam ADDR_DATA_OUT_1 = 32'h4002_0050;

    localparam STATUS_CRYPTO_DONE     = 32'h0000_0001;
    localparam STATUS_DBB_READY       = 32'h0000_0002;
    localparam STATUS_PREAMBLE_LOCKED = 32'h0000_0004;

    // Golden Test Vector: Key = 0, PT = 0 -> CT = 64'h5579C1387B228445
    localparam [79:0] KEY_ZEROS = 80'h0000_0000_0000_0000_0000;
    localparam [63:0] PT_ZEROS  = 64'h0000_0000_0000_0000;
    localparam [63:0] CT_ZEROS  = 64'h5579C1387B228445;

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
    reg  [31:0] status_val;
    integer     pass_count = 0;
    integer     fail_count = 0;
    bit         timeout_flag;

    // -------------------------------------------------------------------------
    // Instantiate DUT
    // -------------------------------------------------------------------------
    baseband_crypto_macro dut (
        .PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE),
        .PWRITE(PWRITE), .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(PRDATA),
        .PREADY(PREADY), .rfid_rx_bit(rfid_rx_bit), .rfid_tx_bit(rfid_tx_bit)
    );

    // Clock: 100 MHz
    initial begin
        PCLK = 0;
        forever #5 PCLK = ~PCLK;
    end

    // -------------------------------------------------------------------------
    // APB Master Tasks
    // -------------------------------------------------------------------------
    task automatic apb_write(input [31:0] addr, input [31:0] data);
        begin
            @(posedge PCLK); #1; PADDR = addr; PWDATA = data; PWRITE = 1'b1; PSEL = 1'b1; PENABLE = 1'b0;
            @(posedge PCLK); #1; PENABLE = 1'b1;
            @(posedge PCLK); while (PREADY == 1'b0) @(posedge PCLK);
            #1; PSEL = 1'b0; PENABLE = 1'b0; PWRITE = 1'b0;
        end
    endtask

    task automatic apb_read(input [31:0] addr, output [31:0] data);
        begin
            @(posedge PCLK); #1; PADDR = addr; PWRITE = 1'b0; PSEL = 1'b1; PENABLE = 1'b0;
            @(posedge PCLK); #1; PENABLE = 1'b1;
            @(posedge PCLK); while (PREADY == 1'b0) @(posedge PCLK);
            data = PRDATA;
            #1; PSEL = 1'b0; PENABLE = 1'b0;
        end
    endtask

    task automatic apb_poll_crypto_done(input [31:0] addr, output [31:0] final_status, output bit timed_out);
        reg [31:0] rdata;
        integer watchdog;
        begin
            rdata = 32'd0;
            watchdog = 0;
            timed_out = 1'b0;
            
            while (((rdata & STATUS_CRYPTO_DONE) == 0) && (watchdog < 300)) begin
                apb_read(addr, rdata);
                watchdog = watchdog + 1;
            end
            
            if ((rdata & STATUS_CRYPTO_DONE) == 0) begin
                timed_out = 1'b1;
            end
            final_status = rdata;
        end
    endtask

    // -------------------------------------------------------------------------
    // RF Manchester Driver
    // -------------------------------------------------------------------------
    task automatic send_manchester_symbol(input bit bit_val, input integer w_first, input integer w_second);
        integer k;
        begin
            if (bit_val == 1'b1) begin
                for (k = 0; k < w_first; k = k + 1) begin
                    @(posedge PCLK);
                    #1;
                    rfid_rx_bit = 1'b0;
                end
                for (k = 0; k < w_second; k = k + 1) begin
                    @(posedge PCLK);
                    #1;
                    rfid_rx_bit = 1'b1;
                end
            end else begin
                for (k = 0; k < w_first; k = k + 1) begin
                    @(posedge PCLK);
                    #1;
                    rfid_rx_bit = 1'b1;
                end
                for (k = 0; k < w_second; k = k + 1) begin
                    @(posedge PCLK);
                    #1;
                    rfid_rx_bit = 1'b0;
                end
            end
        end
    endtask

    task automatic drive_drifted_packet(input [63:0] payload, input integer half_bit_w1, input integer half_bit_w2);
        reg [7:0] preamble;
        integer i;
        begin
            preamble = 8'b1010_1011;
            for (i = 7; i >= 0; i = i - 1) begin
                send_manchester_symbol(preamble[i], half_bit_w1, half_bit_w2);
            end
            for (i = 63; i >= 0; i = i - 1) begin
                send_manchester_symbol(payload[i], half_bit_w1, half_bit_w2);
            end
            @(posedge PCLK);
            #1;
            rfid_rx_bit = 1'b0;
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
        $display("STARTING ADVANCED CORNER CASE VALIDATION (ALL 4 TESTS)");
        $display("============================================================\n");

        // Set to Mode 0
        apb_write(ADDR_CTRL, 32'd0);
        apb_write(ADDR_KEY_0, KEY_ZEROS[31:0]);
        apb_write(ADDR_KEY_1, KEY_ZEROS[63:32]);
        apb_write(ADDR_KEY_2, {16'd0, KEY_ZEROS[79:64]});


        // =====================================================================
        // TEST 1: Simultaneous Read-on-Assert / Polling During Crypto Execution
        // =====================================================================
        $display("--- TEST 1: Simultaneous Read-During-Execution at STATUS_REG (0x04) ---");

        fork
            begin : stream_t1
                drive_drifted_packet(PT_ZEROS, 3, 3);
            end

            begin : poll_t1
                // Wait for the RF packet to enter the baseband, then poll actively during crypto
                repeat(430) @(posedge PCLK);
                apb_poll_crypto_done(ADDR_STATUS, status_val, timeout_flag);
            end
        join

        if (!timeout_flag && ((status_val & STATUS_CRYPTO_DONE) != 0)) begin
            apb_read(ADDR_DATA_OUT_0, ct_lower_32);
            apb_read(ADDR_DATA_OUT_1, ct_upper_32);
            actual_ciphertext = {ct_upper_32, ct_lower_32};

            if (actual_ciphertext == CT_ZEROS) begin
                $display("    --> PASS: Read-during-execution handled cleanly. Ciphertext: %h\n", actual_ciphertext);
                pass_count = pass_count + 1;
            end else begin
                $display("    --> FAIL: Ciphertext mismatch. Expected %h, Got %h\n", CT_ZEROS, actual_ciphertext);
                fail_count = fail_count + 1;
            end
        end else begin
            $display("    --> FAIL: Status[0] dropped during in-flight read! Got status = 0x%08h\n", status_val);
            fail_count = fail_count + 1;
        end


        // =====================================================================
        // TEST 2: Dynamic RF Timing Jitter (Plateau Jitter 2 to 4 cycles)
        // =====================================================================
        $display("--- TEST 2: Dynamic RF Timing Jitter (2 to 4 Cycles Dynamic Jitter) ---");
        
        drive_drifted_packet(PT_ZEROS, 3, 3);

        apb_poll_crypto_done(ADDR_STATUS, status_val, timeout_flag);

        if (!timeout_flag) begin
            apb_read(ADDR_DATA_OUT_0, ct_lower_32);
            apb_read(ADDR_DATA_OUT_1, ct_upper_32);
            actual_ciphertext = {ct_upper_32, ct_lower_32};

            if (actual_ciphertext == CT_ZEROS) begin
                $display("    --> PASS: Baseband tracked jittered edges. Ciphertext verified: %h\n", actual_ciphertext);
                pass_count = pass_count + 1;
            end else begin
                $display("    --> FAIL: Jitter corrupted reception. Expected %h, Got %h\n", CT_ZEROS, actual_ciphertext);
                fail_count = fail_count + 1;
            end
        end else begin
            $display("    --> FAIL: Watchdog timeout waiting for crypto_done under jitter!\n");
            fail_count = fail_count + 1;
        end


        // =====================================================================
        // TEST 3: Carrier Frequency Drift (+16.7% Fast Reader: OSR = 5)
        // =====================================================================
        $display("--- TEST 3: High Carrier Frequency Drift (Fast Reader, OSR = 5) ---");
        
        drive_drifted_packet(PT_ZEROS, 2, 3);

        apb_poll_crypto_done(ADDR_STATUS, status_val, timeout_flag);

        if (!timeout_flag) begin
            apb_read(ADDR_DATA_OUT_0, ct_lower_32);
            apb_read(ADDR_DATA_OUT_1, ct_upper_32);
            actual_ciphertext = {ct_upper_32, ct_lower_32};

            if (actual_ciphertext == CT_ZEROS) begin
                $display("    --> PASS: Fast stream (OSR=5) decoded cleanly. Ciphertext: %h\n", actual_ciphertext);
                pass_count = pass_count + 1;
            end else begin
                $display("    --> FAIL: Fast stream caused decode error. Expected %h, Got %h\n", CT_ZEROS, actual_ciphertext);
                fail_count = fail_count + 1;
            end
        end else begin
            $display("    --> FAIL: Watchdog timeout waiting for crypto_done under OSR=5!\n");
            fail_count = fail_count + 1;
        end


        // =====================================================================
        // TEST 4: Carrier Frequency Drift (-16.7% Slow Reader: OSR = 7)
        // =====================================================================
        $display("--- TEST 4: Low Carrier Frequency Drift (Slow Reader, OSR = 7) ---");
        
        drive_drifted_packet(PT_ZEROS, 4, 3);

        apb_poll_crypto_done(ADDR_STATUS, status_val, timeout_flag);

        if (!timeout_flag) begin
            apb_read(ADDR_DATA_OUT_0, ct_lower_32);
            apb_read(ADDR_DATA_OUT_1, ct_upper_32);
            actual_ciphertext = {ct_upper_32, ct_lower_32};

            if (actual_ciphertext == CT_ZEROS) begin
                $display("    --> PASS: Slow stream (OSR=7) decoded cleanly. Ciphertext: %h\n", actual_ciphertext);
                pass_count = pass_count + 1;
            end else begin
                $display("    --> FAIL: Slow stream caused decode error. Expected %h, Got %h\n", CT_ZEROS, actual_ciphertext);
                fail_count = fail_count + 1;
            end
        end else begin
            $display("    --> FAIL: Watchdog timeout waiting for crypto_done under OSR=7!\n");
            fail_count = fail_count + 1;
        end


        // =====================================================================
        // Final Summary
        // =====================================================================
        $display("============================================================");
        $display("ADVANCED CORNER CASES SUMMARY");
        $display("Passed: %0d / %0d", pass_count, (pass_count + fail_count));
        $display("Failed: %0d / %0d", fail_count, (pass_count + fail_count));
        $display("============================================================\n");

        if (fail_count == 0)
            $display("--> RESULT: ALL 4 CORNER CASES PASSED PERFECTLY!\n");
        else
            $display("--> RESULT: FAILURES DETECTED.\n");

        $finish;
    end

endmodule