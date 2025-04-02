module nor_gate (
    input wire A,  // First input
    input wire B,  // Second input
    output wire Y  // Output
);

    // NOR gate logic: Y = NOT(A OR B)
    assign Y = ~(A | B);

endmodule
