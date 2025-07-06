module d_latch (
    input D,
    input En,
    output reg Q
);

    always @(*) begin
        case (En)
            1'b0: Q = Q;
            1'b1: Q = D;
        endcase
    end
endmodule
