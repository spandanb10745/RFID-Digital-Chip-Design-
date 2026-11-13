`timescale 1ns / 1ps

module Reset_Stress_final;

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

    // Golden Test Vectors
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
    // Reset & Recovery Task (Must be automatic for safe thread killing)
    // -------------------------------------------------------------------------
    task automatic clear_tb_state();
        begin
            PSEL = 1'b0;
            PENABLE = 1'b0;
            PWRITE = 1'b0;
            PADDR = 32'd0;
            PWDATA = 32'd0;
            rfid_rx_bit = 1'b0;
        end
    endtask

    // -------------------------------------------------------------------------
    // Base Execution Tasks (Must be automatic)
    // -------------------------------------------------------------------------
    function automatic [431:0] build_stream(input [63:0] payload);
        reg [431:0] stream;
        integer i;
        begin
            stream[431:384] = 48'h1F81_F81F_81C7; 
            for (i = 0; i < 64; i = i + 1) begin
                if (payload[63-i] == 1'b1) stream[383 - (i*6) -: 6] = 6'b000111; 
                else                       stream[383 - (i*6) -: 6] = 6'b111000; 
            end
            build_stream = stream;
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

    task automatic run_mode0(input [79:0] key, input [63:0] payload, input [63:0] expected_ct);
        reg [431:0] stream;
        reg [31:0]  rdata, lower, upper;
        reg [63:0]  actual;
        integer i, timeout;
        begin
            apb_write(ADDR_CTRL, 32'd0);
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
            timeout = 0;
            while ((rdata & 32'h1) == 0 && timeout < 2000) begin
                apb_read(ADDR_STATUS, rdata);
                timeout = timeout + 1;
            end
            if (timeout >= 2000) $display("    [FATAL ERROR] Timeout waiting for Mode 0 completion!");
            
            apb_read(ADDR_DATA_OUT_0, lower);
            apb_read(ADDR_DATA_OUT_1, upper);
            actual = {upper, lower};
            if (actual == expected_ct) $display("    [PASS] Expected: %h, Got: %h", expected_ct, actual);
            else $display("    [FAIL] Expected: %h, Got: %h", expected_ct, actual);
        end
    endtask

    task automatic run_mode1(input [63:0] payload, input [63:0] expected_pt);
        reg [431:0] stream;
        reg [31:0]  rdata, lower, upper;
        reg [63:0]  actual;
        integer timeout;
        begin
            apb_write(ADDR_CTRL, 32'd1);
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
            apb_write(ADDR_DATA_13, {16'd0, stream[431:416]});
            
            rdata = 0;
            timeout = 0;
            while ((rdata & 32'h2) == 0 && timeout < 2000) begin
                apb_read(ADDR_STATUS, rdata);
                timeout = timeout + 1;
            end
            if (timeout >= 2000) $display("    [FATAL ERROR] Timeout waiting for Mode 1 completion!");
            
            apb_read(ADDR_DATA_OUT_0, lower);
            apb_read(ADDR_DATA_OUT_1, upper);
            actual = {upper, lower};
            if (actual == expected_pt) $display("    [PASS] Expected: %h, Got: %h", expected_pt, actual);
            else $display("    [FAIL] Expected: %h, Got: %h", expected_pt, actual);
        end
    endtask

    task automatic run_mode2(input [79:0] key, input [63:0] payload, input [63:0] expected_ct);
        reg [31:0]  rdata, lower, upper;
        reg [63:0]  actual;
        integer timeout;
        begin
            apb_write(ADDR_CTRL, 32'd2);
            apb_write(ADDR_KEY_0, key[31:0]);
            apb_write(ADDR_KEY_1, key[63:32]);
            apb_write(ADDR_KEY_2, {16'd0, key[79:64]}); 
            apb_write(ADDR_DATA_0, payload[31:0]);
            apb_write(ADDR_DATA_1, payload[63:32]); 
            
            rdata = 0;
            timeout = 0;
            while ((rdata & 32'h1) == 0 && timeout < 2000) begin
                apb_read(ADDR_STATUS, rdata);
                timeout = timeout + 1;
            end
            if (timeout >= 2000) $display("    [FATAL ERROR] Timeout waiting for Mode 2 completion!");
            
            apb_read(ADDR_DATA_OUT_0, lower);
            apb_read(ADDR_DATA_OUT_1, upper);
            actual = {upper, lower};
            if (actual == expected_ct) $display("    [PASS] Expected: %h, Got: %h", expected_ct, actual);
            else $display("    [FAIL] Expected: %h, Got: %h", expected_ct, actual);
        end
    endtask

    // -------------------------------------------------------------------------
    // Main Simulation Block
    // -------------------------------------------------------------------------
    initial begin
        clear_tb_state();
        PRESETn = 1'b0;
        #20; PRESETn = 1'b1; #20;

        $display("\n============================================================");
        $display("STARTING RANDOM RESET STRESS TESTS");
        $display("============================================================\n");

        // ---------------------------------------------------------------------
        $display("--- STRESS TEST 1: Mode 0 (Live RF) Mid-Stream Disruption ---");
        fork
            begin
                run_mode0(KEY_ZEROS, PT_ZEROS, CT_ZEROS);
            end
            begin
                repeat($urandom_range(50, 250)) @(posedge PCLK); 
                $display("    !!! [TIME %0t] HOSTILE RESET INJECTED !!!", $time);
                PRESETn = 1'b0; 
                repeat(10) @(posedge PCLK); 
            end
        join_any
        disable fork; // Safely kills the active transaction thread
        
        clear_tb_state();         
        @(posedge PCLK);
        PRESETn = 1'b1;           
        repeat(5) @(posedge PCLK);
        $display("    !!! [TIME %0t] SYSTEM RECOVERED. RUNNING FRESH TRANSACTION...", $time);
        
        run_mode0(KEY_ZEROS, PT_ONES, CT_ONES);


        // ---------------------------------------------------------------------
        $display("\n--- STRESS TEST 2: Mode 1 (DBB Loopback) PREADY Stall Disruption ---");
        fork
            begin
                run_mode1(PT_ZEROS, PT_ZEROS);
            end
            begin
                repeat($urandom_range(100, 350)) @(posedge PCLK); 
                $display("    !!! [TIME %0t] HOSTILE RESET INJECTED !!!", $time);
                PRESETn = 1'b0;
                repeat(10) @(posedge PCLK);
            end
        join_any
        disable fork;
        
        clear_tb_state();
        @(posedge PCLK);
        PRESETn = 1'b1;
        repeat(5) @(posedge PCLK);
        $display("    !!! [TIME %0t] SYSTEM RECOVERED. RUNNING FRESH TRANSACTION...", $time);
        
        run_mode1(PT_ONES, PT_ONES);


        // ---------------------------------------------------------------------
        $display("\n--- STRESS TEST 3: Mode 2 (Crypto Loopback) Engine Disruption ---");
        fork
            begin
                run_mode2(KEY_ZEROS, PT_ZEROS, CT_ZEROS);
            end
            begin
                repeat($urandom_range(5, 25)) @(posedge PCLK); 
                $display("    !!! [TIME %0t] HOSTILE RESET INJECTED !!!", $time);
                PRESETn = 1'b0;
                repeat(10) @(posedge PCLK);
            end
        join_any
        disable fork;
        
        clear_tb_state();
        @(posedge PCLK);
        PRESETn = 1'b1;
        repeat(5) @(posedge PCLK);
        $display("    !!! [TIME %0t] SYSTEM RECOVERED. RUNNING FRESH TRANSACTION...", $time);
        
        run_mode2(KEY_ZEROS, PT_ONES, CT_ONES);


        // ---------------------------------------------------------------------
        $display("\n--- STRESS TEST 4: Mode Switching Disruption (Mode 1 -> Reset -> Mode 2) ---");
        fork
            begin
                run_mode1(PT_ZEROS, PT_ZEROS);
            end
            begin
                repeat($urandom_range(200, 400)) @(posedge PCLK); 
                $display("    !!! [TIME %0t] HOSTILE RESET INJECTED MID-MODE 1 !!!", $time);
                PRESETn = 1'b0;
                repeat(10) @(posedge PCLK);
            end
        join_any
        disable fork;
        
        clear_tb_state();
        @(posedge PCLK);
        PRESETn = 1'b1;
        repeat(5) @(posedge PCLK);
        $display("    !!! [TIME %0t] SYSTEM RECOVERED. PIVOTING IMMEDIATELY TO MODE 2...", $time);
        
        run_mode2(KEY_ZEROS, PT_ONES, CT_ONES);


        $display("\n============================================================");
        $display("ALL STRESS TESTS COMPLETED SUCCESSFULLY");
        $display("============================================================\n");
        $finish;
    end
endmodule