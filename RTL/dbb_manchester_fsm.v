`timescale 1ns / 1ps

module dbb_manchester_fsm #(
    parameter [7:0] OSR = 8'd6
)(
    input  wire clk, rst_n,
    input  wire voted_bit,
    input  wire frame_complete, 
    output reg  decoded_bit,
    output reg  bit_valid
);
    localparam [1:0] IDLE  = 2'd0;
    localparam [1:0] SKIP  = 2'd1;
    localparam [1:0] ARMED = 2'd2;

    localparam [2:0] SKIP_LIMIT = (OSR * 3) / 4;

    reg [1:0] state, next_state;
    reg [2:0] skip_ctr;
    reg voted_bit_reg;
    wire bit_edge;
    reg       initialized; // ADD: Startup line sampling qualification

    // Gate edge detection until line baseline is sampled
    assign bit_edge = initialized && (voted_bit != voted_bit_reg);

    // FSM: Combinational Next-State Logic
    always @(*) begin
        next_state = state;
        if (frame_complete) begin
            next_state = IDLE; 
        end else begin
            case (state)
                IDLE, ARMED: if (bit_edge) next_state = SKIP;
                SKIP:        if (skip_ctr == SKIP_LIMIT - 3'd1) next_state = ARMED;
                default:     next_state = IDLE;
            endcase
        end
    end

    // FSM: Synchronous State Update and Datapath
    always @(posedge clk) begin
        if (!rst_n) begin
            state <= IDLE;
            skip_ctr <= 3'd0;
            bit_valid <= 1'b0;
            voted_bit_reg <= 1'b0;
            decoded_bit <= 1'b0;
            initialized   <= 1'b0;
        end else begin
            state <= next_state;
            voted_bit_reg <= voted_bit;
            bit_valid <= 1'b0;
            initialized   <= 1'b1;

            if (frame_complete) begin
                skip_ctr <= 3'd0;
            end else if (initialized) begin
                if (state == IDLE || state == ARMED) begin
                    if (bit_edge) begin
                        decoded_bit <= voted_bit;
                        bit_valid   <= 1'b1;
                        skip_ctr    <= 3'd0;
                    end
                end else if (state == SKIP) begin
                    skip_ctr <= skip_ctr + 3'd1;
                end
            end
        end
    end
endmodule
       
