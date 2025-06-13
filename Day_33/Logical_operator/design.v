module logical_operator (
    input a,
    input b,
    output and_out,
    output or_out,
    output not_a,
    output not_b
);

assign and_out = a && b;  // Logical AND
assign or_out  = a || b;  // Logical OR
assign not_a   = !a;      // Logical NOT of a
assign not_b   = !b;      // Logical NOT of b

endmodule
