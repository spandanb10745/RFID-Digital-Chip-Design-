`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:30:27
// Design Name: 
// Module Name: apb_wrapper
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
// Module: apb_wrapper
// Description: APB4 Slave interface enforcing Streaming-Only constraints.
// PRDATA is combinationally driven to eliminate read latency.
// -------------------------------------------------------------------------
module apb_wrapper (
    input  wire        PCLK, PRESETn,
    input  wire        PSEL, PENABLE, PWRITE,
    input  wire [31:0] PADDR,
    input  wire [31:0] PWDATA,
    output reg  [31:0] PRDATA, 
    output wire        PREADY,
    
    input  wire        mux_busy,
    input  wire [63:0] apb_read_data,
    input  wire        dbb_data_ready,
    input  wire        crypto_done,
    input  wire        dbb_preamble_detected,
    input  wire        mode1_err,
    
    output reg  [1:0]   ctrl_mode,
    output reg          ctrl_mode_changed, 
    output reg  [79:0]  crypto_key,
    output reg  [431:0] apb_test_data,
    output wire         apb_trigger_m1,
    output wire         apb_trigger_m2
);

    reg [3:0] status_reg;
    assign PREADY = ~mux_busy; 
    
    // Single-cycle pulses directly decoding full 32-bit addresses
    assign apb_trigger_m2 = (PSEL && PENABLE && PWRITE && PREADY && (PADDR == 32'h4002_0018) && (ctrl_mode == 2'd2));
    assign apb_trigger_m1 = (PSEL && PENABLE && PWRITE && PREADY && (PADDR == 32'h4002_0048) && (ctrl_mode == 2'd1));

    always @(*) begin
        if (PSEL && !PWRITE) begin
            case (PADDR)
                32'h4002_0000: PRDATA = {30'd0, ctrl_mode};
                32'h4002_0004: PRDATA = {28'd0, status_reg};
                32'h4002_004C: PRDATA = apb_read_data[31:0];  
                32'h4002_0050: PRDATA = apb_read_data[63:32]; 
                default:       PRDATA = 32'd0;
            endcase
        end else begin
            PRDATA = 32'd0;
        end
    end

    always @(posedge PCLK) begin
        if (!PRESETn) begin
            ctrl_mode         <= 2'd0;
            ctrl_mode_changed <= 1'b0;
            crypto_key        <= 80'd0;
            apb_test_data     <= 432'd0;
            status_reg        <= 4'd0;
        end else begin
            ctrl_mode_changed <= 1'b0;

            if (crypto_done)           status_reg[0] <= 1'b1;
            if (dbb_data_ready)        status_reg[1] <= 1'b1;
            if (dbb_preamble_detected) status_reg[2] <= 1'b1;
            if (mode1_err)             status_reg[3] <= 1'b1;

            // Clear all 4 bits when reading STATUS_REG (0x4002_0004)
            if (PSEL && PENABLE && !PWRITE && PREADY && (PADDR == 32'h4002_0004)) begin
                status_reg <= 4'd0;
            end

            if (PSEL && PENABLE && PREADY && PWRITE) begin
                case (PADDR)
                    32'h4002_0000: begin
                        if (ctrl_mode != PWDATA[1:0]) begin
                            ctrl_mode         <= PWDATA[1:0];
                            ctrl_mode_changed <= 1'b1; 
                            status_reg        <= 4'd0;
                        end
                    end
                    32'h4002_0008: crypto_key[31:0]        <= PWDATA;
                    32'h4002_000C: crypto_key[63:32]       <= PWDATA;
                    32'h4002_0010: crypto_key[79:64]       <= PWDATA[15:0];
                    32'h4002_0014: apb_test_data[31:0]     <= PWDATA;
                    32'h4002_0018: apb_test_data[63:32]    <= PWDATA;      
                    32'h4002_001C: apb_test_data[95:64]    <= PWDATA;
                    32'h4002_0020: apb_test_data[127:96]   <= PWDATA;
                    32'h4002_0024: apb_test_data[159:128]  <= PWDATA;
                    32'h4002_0028: apb_test_data[191:160]  <= PWDATA;
                    32'h4002_002C: apb_test_data[223:192]  <= PWDATA;
                    32'h4002_0030: apb_test_data[255:224]  <= PWDATA;
                    32'h4002_0034: apb_test_data[287:256]  <= PWDATA;
                    32'h4002_0038: apb_test_data[319:288]  <= PWDATA;
                    32'h4002_003C: apb_test_data[351:320]  <= PWDATA;
                    32'h4002_0040: apb_test_data[383:352]  <= PWDATA;
                    32'h4002_0044: apb_test_data[415:384]  <= PWDATA;
                    32'h4002_0048: apb_test_data[431:416]  <= PWDATA[15:0]; 
                endcase
            end
        end
    end
endmodule