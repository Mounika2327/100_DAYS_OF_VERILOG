module bitwise_operator (
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] and_out,
    output [3:0] or_out,
    output [3:0] xor_out,
    output [3:0] not_a,
    output [3:0] not_b
);

assign and_out = a & b;  // Bitwise AND
assign or_out  = a | b;  // Bitwise OR
assign xor_out = a ^ b;  // Bitwise XOR
assign not_a   = ~a;     // Bitwise NOT of a
assign not_b   = ~b;     // Bitwise NOT of b

endmodule
