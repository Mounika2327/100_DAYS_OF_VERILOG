module d_to_sr_flipflop (
    input clk,
    input rst_n,
    input D,
    output reg Q
);
    wire S, R;

    assign S = D;
    assign R = ~D;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            Q <= 0;
        else begin
            case ({S, R})
                2'b10: Q <= 1; // Set
                2'b01: Q <= 0; // Reset
                2'b00: Q <= Q; // No change
                default: Q <= 1'bx; // Invalid condition S=1, R=1
            endcase
        end
    end
endmodule
