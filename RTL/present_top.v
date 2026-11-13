`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:32:33
// Design Name: 
// Module Name: present_top
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


module present_top (
    input  wire [63:0] plaintext,
    input  wire [79:0] key,
    input  wire        clk,
    input  wire        reset,         // Active high synchronous reset
    input  wire        crypto_ready,  // Start trigger
    output reg  [63:0] ciphertext,
    output reg         crypto_done    // Finished flag pulse
);

    localparam IDLE = 2'd0;
    localparam BUSY = 2'd1;
    localparam DONE = 2'd2;
    
    reg [1:0] state, next_state;
    reg [63:0] data_state;
    reg [79:0] key_state;
    reg [4:0]  round_counter;

    wire [63:0] data_key_added;
    wire [63:0] data_substituted;
    wire [63:0] data_permuted;
    wire [79:0] key_updated;

    sub_layer SL (.data_in(data_key_added), .data_out(data_substituted));
    perm_layer PL (.data_in(data_substituted), .data_out(data_permuted));
    key_schedule KS (.data_in(key_state), .round_counter(round_counter), .data_out(key_updated));

    assign data_key_added = data_state ^ key_state[79:16];

    // FSM: Combinational Next-State Logic
    always @(*) begin
        next_state = state;
        case (state)
            IDLE: if (crypto_ready) next_state = BUSY;
            BUSY: if (round_counter == 5'd31) next_state = DONE;
            DONE: next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    // FSM: Synchronous State Update and Datapath
    always @(posedge clk) begin
        if (reset) begin
            state         <= IDLE;
            crypto_done   <= 1'b0;
            ciphertext    <= 64'd0;
            round_counter <= 5'd0;
            data_state    <= 64'd0;
            key_state     <= 80'd0;
        end else begin
            state <= next_state;
            crypto_done <= 1'b0; // Default pulse off

            case (state)
                IDLE: begin
                    if (crypto_ready) begin
                        data_state    <= plaintext;
                        key_state     <= key;
                        round_counter <= 5'd1;
                    end
                end
                
                BUSY: begin
                    data_state    <= data_permuted;
                    key_state     <= key_updated;
                    round_counter <= round_counter + 1'b1;
                end
                
                DONE: begin
                    ciphertext  <= data_key_added;
                    crypto_done <= 1'b1; // Pulse 1 cycle 
                end
            endcase
        end
    end
endmodule
