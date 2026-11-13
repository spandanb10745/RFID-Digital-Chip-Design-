`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 17:31:14
// Design Name: 
// Module Name: dbb_framer
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


module dbb_framer (
    input  wire clk, rst_n,
    input  wire bit_valid,
    input  wire decoded_bit,
    output wire preamble_detected, // ADD: Real-time sync flag
    output reg [63:0] framed_data,
    output reg  data_ready
);
    localparam HUNTING = 1'b0;
    localparam FRAMING = 1'b1;

    reg state, next_state;
    reg [7:0] preamble_reg;
    reg [6:0] bit_count;
    reg [63:0] shift_data;

    // FSM: Combinational Next-State Logic
    always @(*) begin
        next_state = state;
        case (state)
            HUNTING: begin
                if (bit_valid && {preamble_reg[6:0], decoded_bit} == 8'b10101011)
                    next_state = FRAMING;
            end
            FRAMING: begin
                if (bit_valid && bit_count == 7'd63)
                    next_state = HUNTING; // Returns to Hunting at packet end
            end
        endcase
    end

    // FSM: Synchronous State Update and Datapath
    always @(posedge clk) begin
        if (!rst_n) begin
            state <= HUNTING;
            preamble_reg <= 8'd0;
            shift_data <= 64'd0;
            framed_data <= 64'd0;
            data_ready <= 1'b0;
            bit_count <= 7'd0;
        end else begin
            state <= next_state;
            data_ready <= 1'b0; // Default pulse off
            
            if (bit_valid) begin
                if (state == HUNTING) begin
                    preamble_reg <= {preamble_reg[6:0], decoded_bit};
                    bit_count <= 7'd0;
                end else if (state == FRAMING) begin
                    shift_data <= {shift_data[62:0], decoded_bit};
                    if (bit_count == 7'd63) begin
                        framed_data <= {shift_data[62:0], decoded_bit};
                        data_ready <= 1'b1;
                        bit_count <= 7'd0;
                    end else begin
                        bit_count <= bit_count + 1'b1;
                    end
                end
            end
            
            // Clear preamble buffer upon exit to prevent false immediate re-trigger
            if (state == FRAMING && next_state == HUNTING) begin
                preamble_reg <= 8'd0;
            end
        end
    end
    
    // In logic body:
    assign preamble_detected = (state == FRAMING);
endmodule
