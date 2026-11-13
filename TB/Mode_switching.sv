`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 11:31:29
// Design Name: 
// Module Name: Mode_switching
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


module Mode_switching;

    // -------------------------------------------------------------------------
    // APB Memory Map Parameters
    // -------------------------------------------------------------------------
    localparam ADDR_CTRL       = 32'h4002_0000;
    localparam ADDR_STATUS     = 32'h4002_0004;
    localparam ADDR_KEY_0      = 32'h4002_0008;
    localparam ADDR_KEY_1      = 32'h4002_000C;
    localparam ADDR_KEY_2      = 32'h4002_0010;
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
    localparam ADDR_DATA_13    = 32'h4002_0048; 
    localparam ADDR_DATA_OUT_0 = 32'h4002_004C; 
    localparam ADDR_DATA_OUT_1 = 32'h4002_0050; 

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

    // Test Vectors
    localparam [79:0] KEY_ZEROS  = 80'h0000_0000_0000_0000_0000;
    localparam [63:0] PT_ZEROS   = 64'h0000_0000_0000_0000;
    localparam [63:0] CT_ZEROS   = 64'h5579C1387B228445;

    localparam [63:0] PT_ONES    = 64'hFFFF_FFFF_FFFF_FFFF;
    localparam [63:0] CT_ONES    = 64'hA112FFC72F68417B;

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
    // Base Tasks
    // -------------------------------------------------------------------------
    function [431:0] build_stream(input [63:0] payload);
        reg [431:0] stream;
        integer i;
        begin
            stream[431:384] = 48'h1F81_F81F_81C7; // Preamble OSR=6
            for (i = 0; i < 64; i = i + 1) begin
                if (payload[63-i] == 1'b1) stream[383 - (i*6) -: 6] = 6'b000111; 
                else                       stream[383 - (i*6) -: 6] = 6'b111000; 
            end
            build_stream = stream;
        end
    endfunction

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

    // -------------------------------------------------------------------------
    // Execution Macros (Makes Test Sequence Clean)
    // -------------------------------------------------------------------------
    
    // Executes a full Mode 0 transaction (Live RF -> DBB -> Crypto)
    task run_mode0(input [79:0] key, input [63:0] payload, input [63:0] expected_ct);
        reg [431:0] stream;
        reg [31:0]  rdata, lower, upper;
        reg [63:0]  actual;
        integer i;
        begin
            apb_write(ADDR_KEY_0, key[31:0]);
            apb_write(ADDR_KEY_1, key[63:32]);
            apb_write(ADDR_KEY_2, {16'd0, key[79:64]}); 
            
            stream = build_stream(payload);
            for (i = 431; i >= 0; i = i - 1) begin
                rfid_rx_bit = stream[i];
                @(posedge PCLK);
            end
            rfid_rx_bit = 1'b0; 
            
            rdata = 0;
            while ((rdata & 32'h1) == 0) apb_read(ADDR_STATUS, rdata); // Wait for crypto_done
            
            apb_read(ADDR_DATA_OUT_0, lower);
            apb_read(ADDR_DATA_OUT_1, upper);
            actual = {upper, lower};
            if (actual == expected_ct) $display("    [MODE 0] PASS! Output: %h", actual);
            else $display("    [MODE 0] FAIL! Expected %h, Got %h", expected_ct, actual);
        end
    endtask

    // Executes a full Mode 1 transaction (APB -> DBB)
    task run_mode1(input [63:0] payload, input [63:0] expected_pt);
        reg [431:0] stream;
        reg [31:0]  rdata, lower, upper;
        reg [63:0]  actual;
        begin
            stream = build_stream(payload);
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
            apb_write(ADDR_DATA_13, {16'd0, stream[431:416]}); // Triggers Stall
            
            rdata = 0;
            while ((rdata & 32'h2) == 0) apb_read(ADDR_STATUS, rdata); // Wait for dbb_data_ready
            
            apb_read(ADDR_DATA_OUT_0, lower);
            apb_read(ADDR_DATA_OUT_1, upper);
            actual = {upper, lower};
            if (actual == expected_pt) $display("    [MODE 1] PASS! Output: %h", actual);
            else $display("    [MODE 1] FAIL! Expected %h, Got %h", expected_pt, actual);
        end
    endtask

    // Executes a full Mode 2 transaction (APB -> Crypto)
    task run_mode2(input [79:0] key, input [63:0] payload, input [63:0] expected_ct);
        reg [31:0]  rdata, lower, upper;
        reg [63:0]  actual;
        begin
            apb_write(ADDR_KEY_0, key[31:0]);
            apb_write(ADDR_KEY_1, key[63:32]);
            apb_write(ADDR_KEY_2, {16'd0, key[79:64]}); 
            
            apb_write(ADDR_DATA_0, payload[31:0]);
            apb_write(ADDR_DATA_1, payload[63:32]); // Triggers Stall
            
            rdata = 0;
            while ((rdata & 32'h1) == 0) apb_read(ADDR_STATUS, rdata); // Wait for crypto_done
            
            apb_read(ADDR_DATA_OUT_0, lower);
            apb_read(ADDR_DATA_OUT_1, upper);
            actual = {upper, lower};
            if (actual == expected_ct) $display("    [MODE 2] PASS! Output: %h", actual);
            else $display("    [MODE 2] FAIL! Expected %h, Got %h", expected_ct, actual);
        end
    endtask

    // -------------------------------------------------------------------------
    // Main Simulation Block
    // -------------------------------------------------------------------------
    initial begin
        PRESETn = 1'b0; PSEL = 1'b0; PENABLE = 1'b0; PWRITE = 1'b0; PADDR = 32'd0; PWDATA = 32'd0; rfid_rx_bit = 1'b0;
        #20; PRESETn = 1'b1; #20;

        $display("\n============================================================");
        $display("STARTING MODE SWITCHING PERMUTATION TESTS");
        $display("============================================================\n");

        // ---------------------------------------------------------------------
        $display("--- TESTCASE: mode01 (Mode 0 -> Mode 1) ---");
        $display("  > Switch to Mode 0 (Zeros Payload)");
        apb_write(ADDR_CTRL, 32'd0);
        run_mode0(KEY_ZEROS, PT_ZEROS, CT_ZEROS);

        $display("  > Switch to Mode 1 (Ones Payload)");
        apb_write(ADDR_CTRL, 32'd1);
        run_mode1(PT_ONES, PT_ONES); 

        // ---------------------------------------------------------------------
        $display("\n--- TESTCASE: mode10 (Mode 1 -> Mode 0) ---");
        $display("  > Switch to Mode 1 (Zeros Payload)");
        apb_write(ADDR_CTRL, 32'd1);
        run_mode1(PT_ZEROS, PT_ZEROS);

        $display("  > Switch to Mode 0 (Ones Payload)");
        apb_write(ADDR_CTRL, 32'd0);
        run_mode0(KEY_ZEROS, PT_ONES, CT_ONES);

        // ---------------------------------------------------------------------
        $display("\n--- TESTCASE: mode12 (Mode 1 -> Mode 2) ---");
        $display("  > Switch to Mode 1 (Zeros Payload)");
        apb_write(ADDR_CTRL, 32'd1);
        run_mode1(PT_ZEROS, PT_ZEROS);

        $display("  > Switch to Mode 2 (Ones Payload)");
        apb_write(ADDR_CTRL, 32'd2);
        run_mode2(KEY_ZEROS, PT_ONES, CT_ONES);

        // ---------------------------------------------------------------------
        $display("\n--- TESTCASE: mode21 (Mode 2 -> Mode 1) ---");
        $display("  > Switch to Mode 2 (Zeros Payload)");
        apb_write(ADDR_CTRL, 32'd2);
        run_mode2(KEY_ZEROS, PT_ZEROS, CT_ZEROS);

        $display("  > Switch to Mode 1 (Ones Payload)");
        apb_write(ADDR_CTRL, 32'd1);
        run_mode1(PT_ONES, PT_ONES);

        // ---------------------------------------------------------------------
        $display("\n--- TESTCASE: mode02 (Mode 0 -> Mode 2) ---");
        $display("  > Switch to Mode 0 (Zeros Payload)");
        apb_write(ADDR_CTRL, 32'd0);
        run_mode0(KEY_ZEROS, PT_ZEROS, CT_ZEROS);

        $display("  > Switch to Mode 2 (Ones Payload)");
        apb_write(ADDR_CTRL, 32'd2);
        run_mode2(KEY_ZEROS, PT_ONES, CT_ONES);

        // ---------------------------------------------------------------------
        $display("\n--- TESTCASE: mode20 (Mode 2 -> Mode 0) ---");
        $display("  > Switch to Mode 2 (Zeros Payload)");
        apb_write(ADDR_CTRL, 32'd2);
        run_mode2(KEY_ZEROS, PT_ZEROS, CT_ZEROS);

        $display("  > Switch to Mode 0 (Ones Payload)");
        apb_write(ADDR_CTRL, 32'd0);
        run_mode0(KEY_ZEROS, PT_ONES, CT_ONES);

        // ---------------------------------------------------------------------
        $display("\n============================================================");
        $display("ALL PERMUTATION TESTS COMPLETE");
        $display("============================================================\n");
        $finish;
    end
endmodule