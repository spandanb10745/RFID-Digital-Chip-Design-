`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 10:45:51
// Design Name: 
// Module Name: Golden_Vectors
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


module Golden_Vectors;

    // -------------------------------------------------------------------------
    // APB Memory Map Parameters
    // -------------------------------------------------------------------------
    localparam ADDR_CTRL       = 32'h4002_0000;
    localparam ADDR_STATUS     = 32'h4002_0004;
    localparam ADDR_KEY_0      = 32'h4002_0008;
    localparam ADDR_KEY_1      = 32'h4002_000C;
    localparam ADDR_KEY_2      = 32'h4002_0010;
    localparam ADDR_DATA_0     = 32'h4002_0014;
    localparam ADDR_DATA_1     = 32'h4002_0018; // Trigger for Mode 2
    localparam ADDR_DATA_OUT_0 = 32'h4002_004C; // Appended after ADDR_DATA_13 (0x48)
    localparam ADDR_DATA_OUT_1 = 32'h4002_0050; // Appended after ADDR_DATA_13 (0x48)

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
    
    // Physical RF Pins (Tied off for Mode 2)
    reg         rfid_rx_bit;
    wire        rfid_tx_bit;

    // Testbench Variables
    reg  [31:0] ct_lower_32;
    reg  [31:0] ct_upper_32;
    reg  [63:0] actual_ciphertext;

    // -------------------------------------------------------------------------
    // Instantiate Device Under Test (DUT)
    // -------------------------------------------------------------------------
    baseband_crypto_macro dut (
        .PCLK(PCLK),
        .PRESETn(PRESETn),
        .PSEL(PSEL),
        .PENABLE(PENABLE),
        .PWRITE(PWRITE),
        .PADDR(PADDR),
        .PWDATA(PWDATA),
        .PRDATA(PRDATA),
        .PREADY(PREADY),
        .rfid_rx_bit(rfid_rx_bit),
        .rfid_tx_bit(rfid_tx_bit)
    );

    // -------------------------------------------------------------------------
    // Clock Generation (100 MHz)
    // -------------------------------------------------------------------------
    initial begin
        PCLK = 0;
        forever #5 PCLK = ~PCLK;
    end

    // -------------------------------------------------------------------------
    // APB Master Tasks
    // -------------------------------------------------------------------------
    
    // Task: APB Write Transaction (Fixed Race Condition with #1 delay)
    task apb_write(input [31:0] addr, input [31:0] data);
        begin
            @(posedge PCLK);
            #1; // Give setup/hold margin to gates
            PADDR   = addr;
            PWDATA  = data;
            PWRITE  = 1'b1;
            PSEL    = 1'b1;
            PENABLE = 1'b0;
            
            @(posedge PCLK);
            #1;
            PENABLE = 1'b1;
            
            // Wait for slave to assert PREADY
            @(posedge PCLK);
            while (!PREADY) @(posedge PCLK);
            
            #1;
            PSEL    = 1'b0;
            PENABLE = 1'b0;
            PWRITE  = 1'b0;
        end
    endtask

    // Task: APB Read Transaction (Fixed Race Condition with #1 delay)
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

    // Task: Poll Status Register for crypto_done (Bit 0)
    task apb_poll_done(input [31:0] addr);
        reg [31:0] rdata;
        begin
            rdata = 32'd0;
            $display("[%0t] Polling STATUS_REG for completion...", $time);
            while ((rdata & 32'h0000_0001) == 0) begin
                apb_read(addr, rdata);
            end
            $display("[%0t] crypto_done asserted!", $time);
        end
    endtask

    // -------------------------------------------------------------------------
    // Main Stimulus
    // -------------------------------------------------------------------------
    initial begin
        // Initialize APB Bus
        PRESETn     = 1'b0;
        PSEL        = 1'b0;
        PENABLE     = 1'b0;
        PWRITE      = 1'b0;
        PADDR       = 32'd0;
        PWDATA      = 32'd0;
        rfid_rx_bit = 1'b0;

        // Apply Reset
        #20;
        PRESETn = 1'b1;
        #20;

        $display("\n============================================================");
        $display("STARTING MODE 2 (CRYPTO LOOPBACK) SIMULATION");
        $display("============================================================\n");

        // Step 0: Switch to Mode 2 (Crypto Loopback)
        apb_write(ADDR_CTRL, 32'd2);
        $display("[%0t] Switched to Mode 2", $time);


        // =====================================================================
        // TEST VECTOR 1 (All Zeros)
        // Key: 80'h0000_0000_0000_0000_0000
        // PT:  64'h0000_0000_0000_0000
        // Exp: 64'h5579C1387B228445
        // =====================================================================
        
        // 1. Upload 80-bit Key sequentially
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000);
        $display("[%0t] Uploaded 80-bit Key", $time);

        // 2. Upload 64-bit Plaintext sequentially
        apb_write(ADDR_DATA_0, 32'h00000000);
        
        $display("[%0t] Writing ADDR_DATA_1. CPU will now STALL due to PREADY=0...", $time);
        apb_write(ADDR_DATA_1, 32'h00000000); // Triggers M2. PREADY stalls here for 31 clock cycles.
        $display("[%0t] PREADY stall released. CPU un-frozen.", $time);

        // 3. Poll Status Register
        apb_poll_done(ADDR_STATUS);

        // 4. Read the Ciphertext sequentially
        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        // 5. Compare
        if (actual_ciphertext == 64'h5579C1387B228445) begin
            $display("--> Test Vector 1: PASS. Got %h\n", actual_ciphertext);
        end else begin
            $display("--> Test Vector 1: FAIL. Expected 5579C1387B228445, Got %h\n", actual_ciphertext);
        end


        // =====================================================================
        // TEST VECTOR 2 (All F's Key)
        // Key: 80'hFFFF_FFFF_FFFF_FFFF_FFFF
        // PT:  64'h0000_0000_0000_0000
        // Exp: 64'hE72C46C0F5945049
        // =====================================================================
        
        apb_write(ADDR_KEY_0, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_1, 32'hFFFFFFFF);
        apb_write(ADDR_KEY_2, 32'h0000FFFF); 

        apb_write(ADDR_DATA_0, 32'h00000000);
        apb_write(ADDR_DATA_1, 32'h00000000); // Trigger

        apb_poll_done(ADDR_STATUS);

        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'hE72C46C0F5945049) begin
            $display("--> Test Vector 2: PASS. Got %h\n", actual_ciphertext);
        end else begin
            $display("--> Test Vector 2: FAIL. Expected E72C46C0F5945049, Got %h\n", actual_ciphertext);
        end


        // =====================================================================
        // TEST VECTOR 3 (All F's Plaintext)
        // Key: 80'h0000_0000_0000_0000_0000
        // PT:  64'hFFFF_FFFF_FFFF_FFFF
        // Exp: 64'hA112FFC72F68417B
        // =====================================================================
        
        apb_write(ADDR_KEY_0, 32'h00000000);
        apb_write(ADDR_KEY_1, 32'h00000000);
        apb_write(ADDR_KEY_2, 32'h00000000); 

        apb_write(ADDR_DATA_0, 32'hFFFFFFFF);
        apb_write(ADDR_DATA_1, 32'hFFFFFFFF); // Trigger

        apb_poll_done(ADDR_STATUS);

        apb_read(ADDR_DATA_OUT_0, ct_lower_32);
        apb_read(ADDR_DATA_OUT_1, ct_upper_32);
        actual_ciphertext = {ct_upper_32, ct_lower_32};

        if (actual_ciphertext == 64'hA112FFC72F68417B) begin
            $display("--> Test Vector 3: PASS. Got %h\n", actual_ciphertext);
        end else begin
            $display("--> Test Vector 3: FAIL. Expected A112FFC72F68417B, Got %h\n", actual_ciphertext);
        end

        $display("============================================================");
        $display("SIMULATION COMPLETE");
        $display("============================================================\n");
        $finish;
    end

endmodule