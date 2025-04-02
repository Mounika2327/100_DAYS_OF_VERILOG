module nand_gate (
    input wire A,  // First input
    input wire B,  // Second input
    output wire Y  // Output
);

    // NAND gate logic
    assign Y = ~(A & B);  // Y is the negation of A AND B

endmodule
